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
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xab0eec_type = type <{ [4 x i8] }>
%G_0xab0ef8_type = type <{ [8 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G__0x57e35d_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\09\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G_0xab0eec = global %G_0xab0eec_type zeroinitializer
@G_0xab0ef8 = global %G_0xab0ef8_type zeroinitializer
@G_0xab0f28 = global %G_0xab0f28_type zeroinitializer
@G__0x57e35d = global %G__0x57e35d_type zeroinitializer

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

declare %struct.Memory* @sub_4141e0.find_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_46a930.attack_and_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_413b00.chainlinks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_47c1b0.find_superstring_stones_and_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @owl_find_lunches(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_441720 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_441720, %struct.Memory** %MEMORY
  %loadMem_441721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i354 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i354
  %27 = load i64, i64* %PC.i353
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i353
  store i64 %26, i64* %RBP.i355, align 8
  store %struct.Memory* %loadMem_441721, %struct.Memory** %MEMORY
  %loadMem_441724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i726 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i726
  %36 = load i64, i64* %PC.i725
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i725
  %38 = sub i64 %35, 5248
  store i64 %38, i64* %RSP.i726, align 8
  %39 = icmp ult i64 %35, 5248
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
  %49 = xor i64 5248, %35
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
  store %struct.Memory* %loadMem_441724, %struct.Memory** %MEMORY
  %loadMem_44172b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i738 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i737
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i737
  store i64 3, i64* %RAX.i738, align 8
  store %struct.Memory* %loadMem_44172b, %struct.Memory** %MEMORY
  %loadMem_441730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RDI.i824 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i825
  %85 = sub i64 %84, 8
  %86 = load i64, i64* %RDI.i824
  %87 = load i64, i64* %PC.i823
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC.i823
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89
  store %struct.Memory* %loadMem_441730, %struct.Memory** %MEMORY
  %loadMem_441734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i821 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 15
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %95 to i64*
  %96 = load i64, i64* %RBP.i822
  %97 = sub i64 %96, 24
  %98 = load i64, i64* %PC.i821
  %99 = add i64 %98, 7
  store i64 %99, i64* %PC.i821
  %100 = inttoptr i64 %97 to i32*
  store i32 0, i32* %100
  store %struct.Memory* %loadMem_441734, %struct.Memory** %MEMORY
  %loadMem_44173b = load %struct.Memory*, %struct.Memory** %MEMORY
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 33
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 11
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RDI.i819 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i820 = bitcast %union.anon* %109 to i64*
  %110 = load i64, i64* %RBP.i820
  %111 = sub i64 %110, 8
  %112 = load i64, i64* %PC.i818
  %113 = add i64 %112, 4
  store i64 %113, i64* %PC.i818
  %114 = inttoptr i64 %111 to i64*
  %115 = load i64, i64* %114
  store i64 %115, i64* %RDI.i819, align 8
  store %struct.Memory* %loadMem_44173b, %struct.Memory** %MEMORY
  %loadMem_44173f = load %struct.Memory*, %struct.Memory** %MEMORY
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RCX.i816 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 11
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RDI.i817 = bitcast %union.anon* %124 to i64*
  %125 = load i64, i64* %RDI.i817
  %126 = add i64 %125, 1200
  %127 = load i64, i64* %PC.i815
  %128 = add i64 %127, 6
  store i64 %128, i64* %PC.i815
  %129 = inttoptr i64 %126 to i32*
  %130 = load i32, i32* %129
  %131 = zext i32 %130 to i64
  store i64 %131, i64* %RCX.i816, align 8
  store %struct.Memory* %loadMem_44173f, %struct.Memory** %MEMORY
  %loadMem_441745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 33
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %ECX.i813 = bitcast %union.anon* %137 to i32*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 15
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %RBP.i814 = bitcast %union.anon* %140 to i64*
  %141 = load i64, i64* %RBP.i814
  %142 = sub i64 %141, 52
  %143 = load i32, i32* %ECX.i813
  %144 = zext i32 %143 to i64
  %145 = load i64, i64* %PC.i812
  %146 = add i64 %145, 3
  store i64 %146, i64* %PC.i812
  %147 = inttoptr i64 %142 to i32*
  store i32 %143, i32* %147
  store %struct.Memory* %loadMem_441745, %struct.Memory** %MEMORY
  %loadMem_441748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RAX.i810 = bitcast %union.anon* %153 to i64*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 15
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %156 to i64*
  %157 = load i64, i64* %RAX.i810
  %158 = load i64, i64* %RBP.i811
  %159 = sub i64 %158, 52
  %160 = load i64, i64* %PC.i809
  %161 = add i64 %160, 3
  store i64 %161, i64* %PC.i809
  %162 = trunc i64 %157 to i32
  %163 = inttoptr i64 %159 to i32*
  %164 = load i32, i32* %163
  %165 = sub i32 %162, %164
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RAX.i810, align 8
  %167 = icmp ult i32 %162, %164
  %168 = zext i1 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %168, i8* %169, align 1
  %170 = and i32 %165, 255
  %171 = call i32 @llvm.ctpop.i32(i32 %170)
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %174, i8* %175, align 1
  %176 = xor i32 %164, %162
  %177 = xor i32 %176, %165
  %178 = lshr i32 %177, 4
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %180, i8* %181, align 1
  %182 = icmp eq i32 %165, 0
  %183 = zext i1 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %183, i8* %184, align 1
  %185 = lshr i32 %165, 31
  %186 = trunc i32 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %186, i8* %187, align 1
  %188 = lshr i32 %162, 31
  %189 = lshr i32 %164, 31
  %190 = xor i32 %189, %188
  %191 = xor i32 %185, %188
  %192 = add i32 %191, %190
  %193 = icmp eq i32 %192, 2
  %194 = zext i1 %193 to i8
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %194, i8* %195, align 1
  store %struct.Memory* %loadMem_441748, %struct.Memory** %MEMORY
  %loadMem_44174b = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %EAX.i807 = bitcast %union.anon* %201 to i32*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i808 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RBP.i808
  %206 = sub i64 %205, 56
  %207 = load i32, i32* %EAX.i807
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %PC.i806
  %210 = add i64 %209, 3
  store i64 %210, i64* %PC.i806
  %211 = inttoptr i64 %206 to i32*
  store i32 %207, i32* %211
  store %struct.Memory* %loadMem_44174b, %struct.Memory** %MEMORY
  %loadMem_44174e = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 11
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RDI.i805 = bitcast %union.anon* %217 to i64*
  %218 = load i64, i64* %PC.i804
  %219 = add i64 %218, 8
  store i64 %219, i64* %PC.i804
  %220 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store i64 %220, i64* %RDI.i805, align 8
  store %struct.Memory* %loadMem_44174e, %struct.Memory** %MEMORY
  %loadMem_441756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 11
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RDI.i802 = bitcast %union.anon* %226 to i64*
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 15
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %RBP.i803 = bitcast %union.anon* %229 to i64*
  %230 = load i64, i64* %RBP.i803
  %231 = sub i64 %230, 472
  %232 = load i64, i64* %RDI.i802
  %233 = load i64, i64* %PC.i801
  %234 = add i64 %233, 7
  store i64 %234, i64* %PC.i801
  %235 = inttoptr i64 %231 to i64*
  store i64 %232, i64* %235
  store %struct.Memory* %loadMem_441756, %struct.Memory** %MEMORY
  %loadMem_44175d = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RAX.i800 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %PC.i799
  %243 = add i64 %242, 7
  store i64 %243, i64* %PC.i799
  %244 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  %245 = zext i32 %244 to i64
  store i64 %245, i64* %RAX.i800, align 8
  store %struct.Memory* %loadMem_44175d, %struct.Memory** %MEMORY
  %loadMem_441764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %EAX.i797 = bitcast %union.anon* %251 to i32*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 15
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %RBP.i798 = bitcast %union.anon* %254 to i64*
  %255 = load i64, i64* %RBP.i798
  %256 = sub i64 %255, 476
  %257 = load i32, i32* %EAX.i797
  %258 = zext i32 %257 to i64
  %259 = load i64, i64* %PC.i796
  %260 = add i64 %259, 6
  store i64 %260, i64* %PC.i796
  %261 = inttoptr i64 %256 to i32*
  store i32 %257, i32* %261
  store %struct.Memory* %loadMem_441764, %struct.Memory** %MEMORY
  %loadMem_44176a = load %struct.Memory*, %struct.Memory** %MEMORY
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 33
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %PC.i795
  %266 = add i64 %265, 12
  store i64 %266, i64* %PC.i795
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store %struct.Memory* %loadMem_44176a, %struct.Memory** %MEMORY
  %loadMem_441776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 33
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %269 to i64*
  %270 = load i64, i64* %PC.i794
  %271 = add i64 %270, 11
  store i64 %271, i64* %PC.i794
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  store %struct.Memory* %loadMem_441776, %struct.Memory** %MEMORY
  %loadMem_441781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 33
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 15
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RBP.i793 = bitcast %union.anon* %277 to i64*
  %278 = load i64, i64* %RBP.i793
  %279 = sub i64 %278, 28
  %280 = load i64, i64* %PC.i792
  %281 = add i64 %280, 7
  store i64 %281, i64* %PC.i792
  %282 = inttoptr i64 %279 to i32*
  store i32 0, i32* %282
  store %struct.Memory* %loadMem_441781, %struct.Memory** %MEMORY
  br label %block_.L_441788

block_.L_441788:                                  ; preds = %block_441792, %entry
  %loadMem_441788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 15
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %RBP.i791 = bitcast %union.anon* %288 to i64*
  %289 = load i64, i64* %RBP.i791
  %290 = sub i64 %289, 28
  %291 = load i64, i64* %PC.i790
  %292 = add i64 %291, 4
  store i64 %292, i64* %PC.i790
  %293 = inttoptr i64 %290 to i32*
  %294 = load i32, i32* %293
  %295 = sub i32 %294, 10
  %296 = icmp ult i32 %294, 10
  %297 = zext i1 %296 to i8
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %297, i8* %298, align 1
  %299 = and i32 %295, 255
  %300 = call i32 @llvm.ctpop.i32(i32 %299)
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %303, i8* %304, align 1
  %305 = xor i32 %294, 10
  %306 = xor i32 %305, %295
  %307 = lshr i32 %306, 4
  %308 = trunc i32 %307 to i8
  %309 = and i8 %308, 1
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %309, i8* %310, align 1
  %311 = icmp eq i32 %295, 0
  %312 = zext i1 %311 to i8
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %312, i8* %313, align 1
  %314 = lshr i32 %295, 31
  %315 = trunc i32 %314 to i8
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %315, i8* %316, align 1
  %317 = lshr i32 %294, 31
  %318 = xor i32 %314, %317
  %319 = add i32 %318, %317
  %320 = icmp eq i32 %319, 2
  %321 = zext i1 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %321, i8* %322, align 1
  store %struct.Memory* %loadMem_441788, %struct.Memory** %MEMORY
  %loadMem_44178c = load %struct.Memory*, %struct.Memory** %MEMORY
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 33
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %325 to i64*
  %326 = load i64, i64* %PC.i789
  %327 = add i64 %326, 39
  %328 = load i64, i64* %PC.i789
  %329 = add i64 %328, 6
  %330 = load i64, i64* %PC.i789
  %331 = add i64 %330, 6
  store i64 %331, i64* %PC.i789
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %333 = load i8, i8* %332, align 1
  %334 = icmp ne i8 %333, 0
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %336 = load i8, i8* %335, align 1
  %337 = icmp ne i8 %336, 0
  %338 = xor i1 %334, %337
  %339 = xor i1 %338, true
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %BRANCH_TAKEN, align 1
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %342 = select i1 %338, i64 %329, i64 %327
  store i64 %342, i64* %341, align 8
  store %struct.Memory* %loadMem_44178c, %struct.Memory** %MEMORY
  %loadBr_44178c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44178c = icmp eq i8 %loadBr_44178c, 1
  br i1 %cmpBr_44178c, label %block_.L_4417b3, label %block_441792

block_441792:                                     ; preds = %block_.L_441788
  %loadMem_441792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 33
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %345 to i64*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %RAX.i787 = bitcast %union.anon* %348 to i64*
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 15
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %RBP.i788 = bitcast %union.anon* %351 to i64*
  %352 = load i64, i64* %RBP.i788
  %353 = sub i64 %352, 8
  %354 = load i64, i64* %PC.i786
  %355 = add i64 %354, 4
  store i64 %355, i64* %PC.i786
  %356 = inttoptr i64 %353 to i64*
  %357 = load i64, i64* %356
  store i64 %357, i64* %RAX.i787, align 8
  store %struct.Memory* %loadMem_441792, %struct.Memory** %MEMORY
  %loadMem_441796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 5
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RCX.i784 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 15
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RBP.i785 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %RBP.i785
  %368 = sub i64 %367, 28
  %369 = load i64, i64* %PC.i783
  %370 = add i64 %369, 4
  store i64 %370, i64* %PC.i783
  %371 = inttoptr i64 %368 to i32*
  %372 = load i32, i32* %371
  %373 = sext i32 %372 to i64
  store i64 %373, i64* %RCX.i784, align 8
  store %struct.Memory* %loadMem_441796, %struct.Memory** %MEMORY
  %loadMem_44179a = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RAX.i781 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 5
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RCX.i782 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RAX.i781
  %384 = load i64, i64* %RCX.i782
  %385 = mul i64 %384, 4
  %386 = add i64 %383, 34804
  %387 = add i64 %386, %385
  %388 = load i64, i64* %PC.i780
  %389 = add i64 %388, 11
  store i64 %389, i64* %PC.i780
  %390 = inttoptr i64 %387 to i32*
  store i32 0, i32* %390
  store %struct.Memory* %loadMem_44179a, %struct.Memory** %MEMORY
  %loadMem_4417a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 1
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RAX.i778 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 15
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %399 to i64*
  %400 = load i64, i64* %RBP.i779
  %401 = sub i64 %400, 28
  %402 = load i64, i64* %PC.i777
  %403 = add i64 %402, 3
  store i64 %403, i64* %PC.i777
  %404 = inttoptr i64 %401 to i32*
  %405 = load i32, i32* %404
  %406 = zext i32 %405 to i64
  store i64 %406, i64* %RAX.i778, align 8
  store %struct.Memory* %loadMem_4417a5, %struct.Memory** %MEMORY
  %loadMem_4417a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %408 = getelementptr inbounds %struct.GPR, %struct.GPR* %407, i32 0, i32 33
  %409 = getelementptr inbounds %struct.Reg, %struct.Reg* %408, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %409 to i64*
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 1
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %412 to i64*
  %413 = load i64, i64* %RAX.i776
  %414 = load i64, i64* %PC.i775
  %415 = add i64 %414, 3
  store i64 %415, i64* %PC.i775
  %416 = trunc i64 %413 to i32
  %417 = add i32 1, %416
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RAX.i776, align 8
  %419 = icmp ult i32 %417, %416
  %420 = icmp ult i32 %417, 1
  %421 = or i1 %419, %420
  %422 = zext i1 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %422, i8* %423, align 1
  %424 = and i32 %417, 255
  %425 = call i32 @llvm.ctpop.i32(i32 %424)
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %428, i8* %429, align 1
  %430 = xor i64 1, %413
  %431 = trunc i64 %430 to i32
  %432 = xor i32 %431, %417
  %433 = lshr i32 %432, 4
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %435, i8* %436, align 1
  %437 = icmp eq i32 %417, 0
  %438 = zext i1 %437 to i8
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %438, i8* %439, align 1
  %440 = lshr i32 %417, 31
  %441 = trunc i32 %440 to i8
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %441, i8* %442, align 1
  %443 = lshr i32 %416, 31
  %444 = xor i32 %440, %443
  %445 = add i32 %444, %440
  %446 = icmp eq i32 %445, 2
  %447 = zext i1 %446 to i8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %447, i8* %448, align 1
  store %struct.Memory* %loadMem_4417a8, %struct.Memory** %MEMORY
  %loadMem_4417ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %EAX.i773 = bitcast %union.anon* %454 to i32*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 15
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %457 to i64*
  %458 = load i64, i64* %RBP.i774
  %459 = sub i64 %458, 28
  %460 = load i32, i32* %EAX.i773
  %461 = zext i32 %460 to i64
  %462 = load i64, i64* %PC.i772
  %463 = add i64 %462, 3
  store i64 %463, i64* %PC.i772
  %464 = inttoptr i64 %459 to i32*
  store i32 %460, i32* %464
  store %struct.Memory* %loadMem_4417ab, %struct.Memory** %MEMORY
  %loadMem_4417ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %467 to i64*
  %468 = load i64, i64* %PC.i771
  %469 = add i64 %468, -38
  %470 = load i64, i64* %PC.i771
  %471 = add i64 %470, 5
  store i64 %471, i64* %PC.i771
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %469, i64* %472, align 8
  store %struct.Memory* %loadMem_4417ae, %struct.Memory** %MEMORY
  br label %block_.L_441788

block_.L_4417b3:                                  ; preds = %block_.L_441788
  %loadMem_4417b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 33
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %EAX.i769 = bitcast %union.anon* %478 to i32*
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 1
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %RAX.i770 = bitcast %union.anon* %481 to i64*
  %482 = load i64, i64* %RAX.i770
  %483 = load i32, i32* %EAX.i769
  %484 = zext i32 %483 to i64
  %485 = load i64, i64* %PC.i768
  %486 = add i64 %485, 2
  store i64 %486, i64* %PC.i768
  %487 = xor i64 %484, %482
  %488 = trunc i64 %487 to i32
  %489 = and i64 %487, 4294967295
  store i64 %489, i64* %RAX.i770, align 8
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %490, align 1
  %491 = and i32 %488, 255
  %492 = call i32 @llvm.ctpop.i32(i32 %491)
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %495, i8* %496, align 1
  %497 = icmp eq i32 %488, 0
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %498, i8* %499, align 1
  %500 = lshr i32 %488, 31
  %501 = trunc i32 %500 to i8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %501, i8* %502, align 1
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %503, align 1
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %504, align 1
  store %struct.Memory* %loadMem_4417b3, %struct.Memory** %MEMORY
  %loadMem_4417b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 33
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %507 to i64*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 5
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %RCX.i767 = bitcast %union.anon* %510 to i64*
  %511 = load i64, i64* %PC.i766
  %512 = add i64 %511, 5
  store i64 %512, i64* %PC.i766
  store i64 400, i64* %RCX.i767, align 8
  store %struct.Memory* %loadMem_4417b5, %struct.Memory** %MEMORY
  %loadMem_4417ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 33
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 5
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %ECX.i764 = bitcast %union.anon* %518 to i32*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 7
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RDX.i765 = bitcast %union.anon* %521 to i64*
  %522 = load i32, i32* %ECX.i764
  %523 = zext i32 %522 to i64
  %524 = load i64, i64* %PC.i763
  %525 = add i64 %524, 2
  store i64 %525, i64* %PC.i763
  %526 = and i64 %523, 4294967295
  store i64 %526, i64* %RDX.i765, align 8
  store %struct.Memory* %loadMem_4417ba, %struct.Memory** %MEMORY
  %loadMem_4417bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 11
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RDI.i761 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 15
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %535 to i64*
  %536 = load i64, i64* %RBP.i762
  %537 = sub i64 %536, 464
  %538 = load i64, i64* %PC.i760
  %539 = add i64 %538, 7
  store i64 %539, i64* %PC.i760
  store i64 %537, i64* %RDI.i761, align 8
  store %struct.Memory* %loadMem_4417bc, %struct.Memory** %MEMORY
  %loadMem_4417c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 33
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 9
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RSI.i758 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 15
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %RBP.i759
  %550 = sub i64 %549, 8
  %551 = load i64, i64* %PC.i757
  %552 = add i64 %551, 4
  store i64 %552, i64* %PC.i757
  %553 = inttoptr i64 %550 to i64*
  %554 = load i64, i64* %553
  store i64 %554, i64* %RSI.i758, align 8
  store %struct.Memory* %loadMem_4417c3, %struct.Memory** %MEMORY
  %loadMem_4417c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 33
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 9
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RSI.i756 = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %RSI.i756
  %562 = load i64, i64* %PC.i755
  %563 = add i64 %562, 7
  store i64 %563, i64* %PC.i755
  %564 = add i64 35004, %561
  store i64 %564, i64* %RSI.i756, align 8
  %565 = icmp ult i64 %564, %561
  %566 = icmp ult i64 %564, 35004
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %568, i8* %569, align 1
  %570 = trunc i64 %564 to i32
  %571 = and i32 %570, 255
  %572 = call i32 @llvm.ctpop.i32(i32 %571)
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %575, i8* %576, align 1
  %577 = xor i64 35004, %561
  %578 = xor i64 %577, %564
  %579 = lshr i64 %578, 4
  %580 = trunc i64 %579 to i8
  %581 = and i8 %580, 1
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %581, i8* %582, align 1
  %583 = icmp eq i64 %564, 0
  %584 = zext i1 %583 to i8
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %584, i8* %585, align 1
  %586 = lshr i64 %564, 63
  %587 = trunc i64 %586 to i8
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %587, i8* %588, align 1
  %589 = lshr i64 %561, 63
  %590 = xor i64 %586, %589
  %591 = add i64 %590, %586
  %592 = icmp eq i64 %591, 2
  %593 = zext i1 %592 to i8
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %593, i8* %594, align 1
  store %struct.Memory* %loadMem_4417c7, %struct.Memory** %MEMORY
  %loadMem_4417ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 33
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %597 to i64*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 11
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %RDI.i753 = bitcast %union.anon* %600 to i64*
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 15
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %RBP.i754 = bitcast %union.anon* %603 to i64*
  %604 = load i64, i64* %RBP.i754
  %605 = sub i64 %604, 5216
  %606 = load i64, i64* %RDI.i753
  %607 = load i64, i64* %PC.i752
  %608 = add i64 %607, 7
  store i64 %608, i64* %PC.i752
  %609 = inttoptr i64 %605 to i64*
  store i64 %606, i64* %609
  store %struct.Memory* %loadMem_4417ce, %struct.Memory** %MEMORY
  %loadMem_4417d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 33
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %612 to i64*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 9
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %RSI.i750 = bitcast %union.anon* %615 to i64*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 11
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %RDI.i751 = bitcast %union.anon* %618 to i64*
  %619 = load i64, i64* %RSI.i750
  %620 = load i64, i64* %PC.i749
  %621 = add i64 %620, 3
  store i64 %621, i64* %PC.i749
  store i64 %619, i64* %RDI.i751, align 8
  store %struct.Memory* %loadMem_4417d5, %struct.Memory** %MEMORY
  %loadMem_4417d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 1
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %EAX.i747 = bitcast %union.anon* %627 to i32*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 9
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RSI.i748 = bitcast %union.anon* %630 to i64*
  %631 = load i32, i32* %EAX.i747
  %632 = zext i32 %631 to i64
  %633 = load i64, i64* %PC.i746
  %634 = add i64 %633, 2
  store i64 %634, i64* %PC.i746
  %635 = and i64 %632, 4294967295
  store i64 %635, i64* %RSI.i748, align 8
  store %struct.Memory* %loadMem_4417d8, %struct.Memory** %MEMORY
  %loadMem_4417da = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 7
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RDX.i744 = bitcast %union.anon* %641 to i64*
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 15
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %644 to i64*
  %645 = load i64, i64* %RBP.i745
  %646 = sub i64 %645, 5224
  %647 = load i64, i64* %RDX.i744
  %648 = load i64, i64* %PC.i743
  %649 = add i64 %648, 7
  store i64 %649, i64* %PC.i743
  %650 = inttoptr i64 %646 to i64*
  store i64 %647, i64* %650
  store %struct.Memory* %loadMem_4417da, %struct.Memory** %MEMORY
  %loadMem_4417e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 33
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %653 to i64*
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %655 = getelementptr inbounds %struct.GPR, %struct.GPR* %654, i32 0, i32 1
  %656 = getelementptr inbounds %struct.Reg, %struct.Reg* %655, i32 0, i32 0
  %EAX.i741 = bitcast %union.anon* %656 to i32*
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 15
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %659 to i64*
  %660 = load i64, i64* %RBP.i742
  %661 = sub i64 %660, 5228
  %662 = load i32, i32* %EAX.i741
  %663 = zext i32 %662 to i64
  %664 = load i64, i64* %PC.i740
  %665 = add i64 %664, 6
  store i64 %665, i64* %PC.i740
  %666 = inttoptr i64 %661 to i32*
  store i32 %662, i32* %666
  store %struct.Memory* %loadMem_4417e1, %struct.Memory** %MEMORY
  %loadMem1_4417e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %669 to i64*
  %670 = load i64, i64* %PC.i739
  %671 = add i64 %670, -264055
  %672 = load i64, i64* %PC.i739
  %673 = add i64 %672, 5
  %674 = load i64, i64* %PC.i739
  %675 = add i64 %674, 5
  store i64 %675, i64* %PC.i739
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %677 = load i64, i64* %676, align 8
  %678 = add i64 %677, -8
  %679 = inttoptr i64 %678 to i64*
  store i64 %673, i64* %679
  store i64 %678, i64* %676, align 8
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %671, i64* %680, align 8
  store %struct.Memory* %loadMem1_4417e7, %struct.Memory** %MEMORY
  %loadMem2_4417e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4417e7 = load i64, i64* %3
  %681 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_4417e7)
  store %struct.Memory* %681, %struct.Memory** %MEMORY
  %loadMem_4417ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 33
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 11
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RDI.i735 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 15
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RBP.i736 = bitcast %union.anon* %690 to i64*
  %691 = load i64, i64* %RBP.i736
  %692 = sub i64 %691, 5216
  %693 = load i64, i64* %PC.i734
  %694 = add i64 %693, 7
  store i64 %694, i64* %PC.i734
  %695 = inttoptr i64 %692 to i64*
  %696 = load i64, i64* %695
  store i64 %696, i64* %RDI.i735, align 8
  store %struct.Memory* %loadMem_4417ec, %struct.Memory** %MEMORY
  %loadMem_4417f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 9
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RSI.i732 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 15
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RBP.i733 = bitcast %union.anon* %705 to i64*
  %706 = load i64, i64* %RBP.i733
  %707 = sub i64 %706, 5228
  %708 = load i64, i64* %PC.i731
  %709 = add i64 %708, 6
  store i64 %709, i64* %PC.i731
  %710 = inttoptr i64 %707 to i32*
  %711 = load i32, i32* %710
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %RSI.i732, align 8
  store %struct.Memory* %loadMem_4417f3, %struct.Memory** %MEMORY
  %loadMem_4417f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 7
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RDX.i729 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 15
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RBP.i730 = bitcast %union.anon* %721 to i64*
  %722 = load i64, i64* %RBP.i730
  %723 = sub i64 %722, 5224
  %724 = load i64, i64* %PC.i728
  %725 = add i64 %724, 7
  store i64 %725, i64* %PC.i728
  %726 = inttoptr i64 %723 to i64*
  %727 = load i64, i64* %726
  store i64 %727, i64* %RDX.i729, align 8
  store %struct.Memory* %loadMem_4417f9, %struct.Memory** %MEMORY
  %loadMem1_441800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %730 to i64*
  %731 = load i64, i64* %PC.i727
  %732 = add i64 %731, -264080
  %733 = load i64, i64* %PC.i727
  %734 = add i64 %733, 5
  %735 = load i64, i64* %PC.i727
  %736 = add i64 %735, 5
  store i64 %736, i64* %PC.i727
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %738 = load i64, i64* %737, align 8
  %739 = add i64 %738, -8
  %740 = inttoptr i64 %739 to i64*
  store i64 %734, i64* %740
  store i64 %739, i64* %737, align 8
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %732, i64* %741, align 8
  store %struct.Memory* %loadMem1_441800, %struct.Memory** %MEMORY
  %loadMem2_441800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441800 = load i64, i64* %3
  %742 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_441800)
  store %struct.Memory* %742, %struct.Memory** %MEMORY
  %loadMem_441805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 33
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 15
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %RBP.i724
  %750 = sub i64 %749, 12
  %751 = load i64, i64* %PC.i723
  %752 = add i64 %751, 7
  store i64 %752, i64* %PC.i723
  %753 = inttoptr i64 %750 to i32*
  store i32 0, i32* %753
  store %struct.Memory* %loadMem_441805, %struct.Memory** %MEMORY
  br label %block_.L_44180c

block_.L_44180c:                                  ; preds = %block_.L_441eab, %block_.L_4417b3
  %loadMem_44180c = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 1
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RAX.i721 = bitcast %union.anon* %759 to i64*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 15
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %762 to i64*
  %763 = load i64, i64* %RBP.i722
  %764 = sub i64 %763, 12
  %765 = load i64, i64* %PC.i720
  %766 = add i64 %765, 3
  store i64 %766, i64* %PC.i720
  %767 = inttoptr i64 %764 to i32*
  %768 = load i32, i32* %767
  %769 = zext i32 %768 to i64
  store i64 %769, i64* %RAX.i721, align 8
  store %struct.Memory* %loadMem_44180c, %struct.Memory** %MEMORY
  %loadMem_44180f = load %struct.Memory*, %struct.Memory** %MEMORY
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 33
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %772 to i64*
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 1
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %EAX.i719 = bitcast %union.anon* %775 to i32*
  %776 = load i32, i32* %EAX.i719
  %777 = zext i32 %776 to i64
  %778 = load i64, i64* %PC.i718
  %779 = add i64 %778, 7
  store i64 %779, i64* %PC.i718
  %780 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %781 = sub i32 %776, %780
  %782 = icmp ult i32 %776, %780
  %783 = zext i1 %782 to i8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %783, i8* %784, align 1
  %785 = and i32 %781, 255
  %786 = call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %789, i8* %790, align 1
  %791 = xor i32 %780, %776
  %792 = xor i32 %791, %781
  %793 = lshr i32 %792, 4
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %795, i8* %796, align 1
  %797 = icmp eq i32 %781, 0
  %798 = zext i1 %797 to i8
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %798, i8* %799, align 1
  %800 = lshr i32 %781, 31
  %801 = trunc i32 %800 to i8
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %801, i8* %802, align 1
  %803 = lshr i32 %776, 31
  %804 = lshr i32 %780, 31
  %805 = xor i32 %804, %803
  %806 = xor i32 %800, %803
  %807 = add i32 %806, %805
  %808 = icmp eq i32 %807, 2
  %809 = zext i1 %808 to i8
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %809, i8* %810, align 1
  store %struct.Memory* %loadMem_44180f, %struct.Memory** %MEMORY
  %loadMem_441816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 33
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %813 to i64*
  %814 = load i64, i64* %PC.i717
  %815 = add i64 %814, 1699
  %816 = load i64, i64* %PC.i717
  %817 = add i64 %816, 6
  %818 = load i64, i64* %PC.i717
  %819 = add i64 %818, 6
  store i64 %819, i64* %PC.i717
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %821 = load i8, i8* %820, align 1
  %822 = icmp ne i8 %821, 0
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %824 = load i8, i8* %823, align 1
  %825 = icmp ne i8 %824, 0
  %826 = xor i1 %822, %825
  %827 = xor i1 %826, true
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %BRANCH_TAKEN, align 1
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %830 = select i1 %826, i64 %817, i64 %815
  store i64 %830, i64* %829, align 8
  store %struct.Memory* %loadMem_441816, %struct.Memory** %MEMORY
  %loadBr_441816 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441816 = icmp eq i8 %loadBr_441816, 1
  br i1 %cmpBr_441816, label %block_.L_441eb9, label %block_44181c

block_44181c:                                     ; preds = %block_.L_44180c
  %loadMem_44181c = load %struct.Memory*, %struct.Memory** %MEMORY
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 33
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 15
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %RBP.i716 = bitcast %union.anon* %836 to i64*
  %837 = load i64, i64* %RBP.i716
  %838 = sub i64 %837, 16
  %839 = load i64, i64* %PC.i715
  %840 = add i64 %839, 7
  store i64 %840, i64* %PC.i715
  %841 = inttoptr i64 %838 to i32*
  store i32 0, i32* %841
  store %struct.Memory* %loadMem_44181c, %struct.Memory** %MEMORY
  br label %block_.L_441823

block_.L_441823:                                  ; preds = %block_.L_441e98, %block_44181c
  %loadMem_441823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 1
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RAX.i713 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 15
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RBP.i714 = bitcast %union.anon* %850 to i64*
  %851 = load i64, i64* %RBP.i714
  %852 = sub i64 %851, 16
  %853 = load i64, i64* %PC.i712
  %854 = add i64 %853, 3
  store i64 %854, i64* %PC.i712
  %855 = inttoptr i64 %852 to i32*
  %856 = load i32, i32* %855
  %857 = zext i32 %856 to i64
  store i64 %857, i64* %RAX.i713, align 8
  store %struct.Memory* %loadMem_441823, %struct.Memory** %MEMORY
  %loadMem_441826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 1
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %EAX.i711 = bitcast %union.anon* %863 to i32*
  %864 = load i32, i32* %EAX.i711
  %865 = zext i32 %864 to i64
  %866 = load i64, i64* %PC.i710
  %867 = add i64 %866, 7
  store i64 %867, i64* %PC.i710
  %868 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %869 = sub i32 %864, %868
  %870 = icmp ult i32 %864, %868
  %871 = zext i1 %870 to i8
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %871, i8* %872, align 1
  %873 = and i32 %869, 255
  %874 = call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %877, i8* %878, align 1
  %879 = xor i32 %868, %864
  %880 = xor i32 %879, %869
  %881 = lshr i32 %880, 4
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %883, i8* %884, align 1
  %885 = icmp eq i32 %869, 0
  %886 = zext i1 %885 to i8
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %886, i8* %887, align 1
  %888 = lshr i32 %869, 31
  %889 = trunc i32 %888 to i8
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %889, i8* %890, align 1
  %891 = lshr i32 %864, 31
  %892 = lshr i32 %868, 31
  %893 = xor i32 %892, %891
  %894 = xor i32 %888, %891
  %895 = add i32 %894, %893
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %897, i8* %898, align 1
  store %struct.Memory* %loadMem_441826, %struct.Memory** %MEMORY
  %loadMem_44182d = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %901 to i64*
  %902 = load i64, i64* %PC.i709
  %903 = add i64 %902, 1657
  %904 = load i64, i64* %PC.i709
  %905 = add i64 %904, 6
  %906 = load i64, i64* %PC.i709
  %907 = add i64 %906, 6
  store i64 %907, i64* %PC.i709
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %909 = load i8, i8* %908, align 1
  %910 = icmp ne i8 %909, 0
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %912 = load i8, i8* %911, align 1
  %913 = icmp ne i8 %912, 0
  %914 = xor i1 %910, %913
  %915 = xor i1 %914, true
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %BRANCH_TAKEN, align 1
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %918 = select i1 %914, i64 %905, i64 %903
  store i64 %918, i64* %917, align 8
  store %struct.Memory* %loadMem_44182d, %struct.Memory** %MEMORY
  %loadBr_44182d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44182d = icmp eq i8 %loadBr_44182d, 1
  br i1 %cmpBr_44182d, label %block_.L_441ea6, label %block_441833

block_441833:                                     ; preds = %block_.L_441823
  %loadMem_441833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 33
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %921 to i64*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 1
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RAX.i707 = bitcast %union.anon* %924 to i64*
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 15
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %927 to i64*
  %928 = load i64, i64* %RBP.i708
  %929 = sub i64 %928, 12
  %930 = load i64, i64* %PC.i706
  %931 = add i64 %930, 4
  store i64 %931, i64* %PC.i706
  %932 = inttoptr i64 %929 to i32*
  %933 = load i32, i32* %932
  %934 = sext i32 %933 to i64
  %935 = mul i64 %934, 20
  %936 = trunc i64 %935 to i32
  %937 = and i64 %935, 4294967295
  store i64 %937, i64* %RAX.i707, align 8
  %938 = shl i64 %935, 32
  %939 = ashr exact i64 %938, 32
  %940 = icmp ne i64 %939, %935
  %941 = zext i1 %940 to i8
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %941, i8* %942, align 1
  %943 = and i32 %936, 255
  %944 = call i32 @llvm.ctpop.i32(i32 %943)
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  %947 = xor i8 %946, 1
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %947, i8* %948, align 1
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %949, align 1
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %950, align 1
  %951 = lshr i32 %936, 31
  %952 = trunc i32 %951 to i8
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %952, i8* %953, align 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %941, i8* %954, align 1
  store %struct.Memory* %loadMem_441833, %struct.Memory** %MEMORY
  %loadMem_441837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 1
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %960 to i64*
  %961 = load i64, i64* %RAX.i705
  %962 = load i64, i64* %PC.i704
  %963 = add i64 %962, 3
  store i64 %963, i64* %PC.i704
  %964 = trunc i64 %961 to i32
  %965 = add i32 21, %964
  %966 = zext i32 %965 to i64
  store i64 %966, i64* %RAX.i705, align 8
  %967 = icmp ult i32 %965, %964
  %968 = icmp ult i32 %965, 21
  %969 = or i1 %967, %968
  %970 = zext i1 %969 to i8
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %970, i8* %971, align 1
  %972 = and i32 %965, 255
  %973 = call i32 @llvm.ctpop.i32(i32 %972)
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  %976 = xor i8 %975, 1
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %976, i8* %977, align 1
  %978 = xor i64 21, %961
  %979 = trunc i64 %978 to i32
  %980 = xor i32 %979, %965
  %981 = lshr i32 %980, 4
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %983, i8* %984, align 1
  %985 = icmp eq i32 %965, 0
  %986 = zext i1 %985 to i8
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %986, i8* %987, align 1
  %988 = lshr i32 %965, 31
  %989 = trunc i32 %988 to i8
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %989, i8* %990, align 1
  %991 = lshr i32 %964, 31
  %992 = xor i32 %988, %991
  %993 = add i32 %992, %988
  %994 = icmp eq i32 %993, 2
  %995 = zext i1 %994 to i8
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %995, i8* %996, align 1
  store %struct.Memory* %loadMem_441837, %struct.Memory** %MEMORY
  %loadMem_44183a = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 1
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RAX.i702 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 15
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %RBP.i703 = bitcast %union.anon* %1005 to i64*
  %1006 = load i64, i64* %RAX.i702
  %1007 = load i64, i64* %RBP.i703
  %1008 = sub i64 %1007, 16
  %1009 = load i64, i64* %PC.i701
  %1010 = add i64 %1009, 3
  store i64 %1010, i64* %PC.i701
  %1011 = trunc i64 %1006 to i32
  %1012 = inttoptr i64 %1008 to i32*
  %1013 = load i32, i32* %1012
  %1014 = add i32 %1013, %1011
  %1015 = zext i32 %1014 to i64
  store i64 %1015, i64* %RAX.i702, align 8
  %1016 = icmp ult i32 %1014, %1011
  %1017 = icmp ult i32 %1014, %1013
  %1018 = or i1 %1016, %1017
  %1019 = zext i1 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1019, i8* %1020, align 1
  %1021 = and i32 %1014, 255
  %1022 = call i32 @llvm.ctpop.i32(i32 %1021)
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = xor i8 %1024, 1
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1025, i8* %1026, align 1
  %1027 = xor i32 %1013, %1011
  %1028 = xor i32 %1027, %1014
  %1029 = lshr i32 %1028, 4
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1031, i8* %1032, align 1
  %1033 = icmp eq i32 %1014, 0
  %1034 = zext i1 %1033 to i8
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1034, i8* %1035, align 1
  %1036 = lshr i32 %1014, 31
  %1037 = trunc i32 %1036 to i8
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1037, i8* %1038, align 1
  %1039 = lshr i32 %1011, 31
  %1040 = lshr i32 %1013, 31
  %1041 = xor i32 %1036, %1039
  %1042 = xor i32 %1036, %1040
  %1043 = add i32 %1041, %1042
  %1044 = icmp eq i32 %1043, 2
  %1045 = zext i1 %1044 to i8
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1045, i8* %1046, align 1
  store %struct.Memory* %loadMem_44183a, %struct.Memory** %MEMORY
  %loadMem_44183d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 33
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1049 to i64*
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 1
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %EAX.i699 = bitcast %union.anon* %1052 to i32*
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 15
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %1055 to i64*
  %1056 = load i64, i64* %RBP.i700
  %1057 = sub i64 %1056, 480
  %1058 = load i32, i32* %EAX.i699
  %1059 = zext i32 %1058 to i64
  %1060 = load i64, i64* %PC.i698
  %1061 = add i64 %1060, 6
  store i64 %1061, i64* %PC.i698
  %1062 = inttoptr i64 %1057 to i32*
  store i32 %1058, i32* %1062
  store %struct.Memory* %loadMem_44183d, %struct.Memory** %MEMORY
  %loadMem_441843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 33
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 5
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %RCX.i696 = bitcast %union.anon* %1068 to i64*
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1070 = getelementptr inbounds %struct.GPR, %struct.GPR* %1069, i32 0, i32 15
  %1071 = getelementptr inbounds %struct.Reg, %struct.Reg* %1070, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %1071 to i64*
  %1072 = load i64, i64* %RBP.i697
  %1073 = sub i64 %1072, 480
  %1074 = load i64, i64* %PC.i695
  %1075 = add i64 %1074, 7
  store i64 %1075, i64* %PC.i695
  %1076 = inttoptr i64 %1073 to i32*
  %1077 = load i32, i32* %1076
  %1078 = sext i32 %1077 to i64
  store i64 %1078, i64* %RCX.i696, align 8
  store %struct.Memory* %loadMem_441843, %struct.Memory** %MEMORY
  %loadMem_44184a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 33
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 1
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %RAX.i693 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 5
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %RCX.i694 = bitcast %union.anon* %1087 to i64*
  %1088 = load i64, i64* %RCX.i694
  %1089 = add i64 %1088, 12099168
  %1090 = load i64, i64* %PC.i692
  %1091 = add i64 %1090, 8
  store i64 %1091, i64* %PC.i692
  %1092 = inttoptr i64 %1089 to i8*
  %1093 = load i8, i8* %1092
  %1094 = zext i8 %1093 to i64
  store i64 %1094, i64* %RAX.i693, align 8
  store %struct.Memory* %loadMem_44184a, %struct.Memory** %MEMORY
  %loadMem_441852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 33
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 1
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %EAX.i690 = bitcast %union.anon* %1100 to i32*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 15
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %1103 to i64*
  %1104 = load i32, i32* %EAX.i690
  %1105 = zext i32 %1104 to i64
  %1106 = load i64, i64* %RBP.i691
  %1107 = sub i64 %1106, 52
  %1108 = load i64, i64* %PC.i689
  %1109 = add i64 %1108, 3
  store i64 %1109, i64* %PC.i689
  %1110 = inttoptr i64 %1107 to i32*
  %1111 = load i32, i32* %1110
  %1112 = sub i32 %1104, %1111
  %1113 = icmp ult i32 %1104, %1111
  %1114 = zext i1 %1113 to i8
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1114, i8* %1115, align 1
  %1116 = and i32 %1112, 255
  %1117 = call i32 @llvm.ctpop.i32(i32 %1116)
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  %1120 = xor i8 %1119, 1
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1120, i8* %1121, align 1
  %1122 = xor i32 %1111, %1104
  %1123 = xor i32 %1122, %1112
  %1124 = lshr i32 %1123, 4
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1126, i8* %1127, align 1
  %1128 = icmp eq i32 %1112, 0
  %1129 = zext i1 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1129, i8* %1130, align 1
  %1131 = lshr i32 %1112, 31
  %1132 = trunc i32 %1131 to i8
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1132, i8* %1133, align 1
  %1134 = lshr i32 %1104, 31
  %1135 = lshr i32 %1111, 31
  %1136 = xor i32 %1135, %1134
  %1137 = xor i32 %1131, %1134
  %1138 = add i32 %1137, %1136
  %1139 = icmp eq i32 %1138, 2
  %1140 = zext i1 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1140, i8* %1141, align 1
  store %struct.Memory* %loadMem_441852, %struct.Memory** %MEMORY
  %loadMem_441855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 33
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %PC.i688
  %1146 = add i64 %1145, 1598
  %1147 = load i64, i64* %PC.i688
  %1148 = add i64 %1147, 6
  %1149 = load i64, i64* %PC.i688
  %1150 = add i64 %1149, 6
  store i64 %1150, i64* %PC.i688
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1152 = load i8, i8* %1151, align 1
  %1153 = icmp eq i8 %1152, 0
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %BRANCH_TAKEN, align 1
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1156 = select i1 %1153, i64 %1146, i64 %1148
  store i64 %1156, i64* %1155, align 8
  store %struct.Memory* %loadMem_441855, %struct.Memory** %MEMORY
  %loadBr_441855 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441855 = icmp eq i8 %loadBr_441855, 1
  br i1 %cmpBr_441855, label %block_.L_441e93, label %block_44185b

block_44185b:                                     ; preds = %block_441833
  %loadMem_44185b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 33
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %1159 to i64*
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 1
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 15
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %1165 to i64*
  %1166 = load i64, i64* %RBP.i687
  %1167 = sub i64 %1166, 8
  %1168 = load i64, i64* %PC.i685
  %1169 = add i64 %1168, 4
  store i64 %1169, i64* %PC.i685
  %1170 = inttoptr i64 %1167 to i64*
  %1171 = load i64, i64* %1170
  store i64 %1171, i64* %RAX.i686, align 8
  store %struct.Memory* %loadMem_44185b, %struct.Memory** %MEMORY
  %loadMem_44185f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1173 = getelementptr inbounds %struct.GPR, %struct.GPR* %1172, i32 0, i32 33
  %1174 = getelementptr inbounds %struct.Reg, %struct.Reg* %1173, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %1174 to i64*
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 5
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %RCX.i683 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 15
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %1180 to i64*
  %1181 = load i64, i64* %RBP.i684
  %1182 = sub i64 %1181, 480
  %1183 = load i64, i64* %PC.i682
  %1184 = add i64 %1183, 7
  store i64 %1184, i64* %PC.i682
  %1185 = inttoptr i64 %1182 to i32*
  %1186 = load i32, i32* %1185
  %1187 = sext i32 %1186 to i64
  store i64 %1187, i64* %RCX.i683, align 8
  store %struct.Memory* %loadMem_44185f, %struct.Memory** %MEMORY
  %loadMem_441866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 1
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %1193 to i64*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 5
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RCX.i680 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 7
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RDX.i681 = bitcast %union.anon* %1199 to i64*
  %1200 = load i64, i64* %RAX.i679
  %1201 = load i64, i64* %RCX.i680
  %1202 = add i64 %1201, %1200
  %1203 = load i64, i64* %PC.i678
  %1204 = add i64 %1203, 4
  store i64 %1204, i64* %PC.i678
  %1205 = inttoptr i64 %1202 to i8*
  %1206 = load i8, i8* %1205
  %1207 = sext i8 %1206 to i64
  %1208 = and i64 %1207, 4294967295
  store i64 %1208, i64* %RDX.i681, align 8
  store %struct.Memory* %loadMem_441866, %struct.Memory** %MEMORY
  %loadMem_44186a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 33
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 7
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %EDX.i677 = bitcast %union.anon* %1214 to i32*
  %1215 = load i32, i32* %EDX.i677
  %1216 = zext i32 %1215 to i64
  %1217 = load i64, i64* %PC.i676
  %1218 = add i64 %1217, 3
  store i64 %1218, i64* %PC.i676
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1219, align 1
  %1220 = and i32 %1215, 255
  %1221 = call i32 @llvm.ctpop.i32(i32 %1220)
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  %1224 = xor i8 %1223, 1
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1224, i8* %1225, align 1
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1226, align 1
  %1227 = icmp eq i32 %1215, 0
  %1228 = zext i1 %1227 to i8
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1228, i8* %1229, align 1
  %1230 = lshr i32 %1215, 31
  %1231 = trunc i32 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1231, i8* %1232, align 1
  %1233 = lshr i32 %1215, 31
  %1234 = xor i32 %1230, %1233
  %1235 = add i32 %1234, %1233
  %1236 = icmp eq i32 %1235, 2
  %1237 = zext i1 %1236 to i8
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1237, i8* %1238, align 1
  store %struct.Memory* %loadMem_44186a, %struct.Memory** %MEMORY
  %loadMem_44186d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1241 to i64*
  %1242 = load i64, i64* %PC.i675
  %1243 = add i64 %1242, 1574
  %1244 = load i64, i64* %PC.i675
  %1245 = add i64 %1244, 6
  %1246 = load i64, i64* %PC.i675
  %1247 = add i64 %1246, 6
  store i64 %1247, i64* %PC.i675
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1249 = load i8, i8* %1248, align 1
  store i8 %1249, i8* %BRANCH_TAKEN, align 1
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1251 = icmp ne i8 %1249, 0
  %1252 = select i1 %1251, i64 %1243, i64 %1245
  store i64 %1252, i64* %1250, align 8
  store %struct.Memory* %loadMem_44186d, %struct.Memory** %MEMORY
  %loadBr_44186d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44186d = icmp eq i8 %loadBr_44186d, 1
  br i1 %cmpBr_44186d, label %block_.L_441e93, label %block_441873

block_441873:                                     ; preds = %block_44185b
  %loadMem_441873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 33
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %1255 to i64*
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1257 = getelementptr inbounds %struct.GPR, %struct.GPR* %1256, i32 0, i32 15
  %1258 = getelementptr inbounds %struct.Reg, %struct.Reg* %1257, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %1258 to i64*
  %1259 = load i64, i64* %RBP.i674
  %1260 = sub i64 %1259, 20
  %1261 = load i64, i64* %PC.i673
  %1262 = add i64 %1261, 7
  store i64 %1262, i64* %PC.i673
  %1263 = inttoptr i64 %1260 to i32*
  store i32 0, i32* %1263
  store %struct.Memory* %loadMem_441873, %struct.Memory** %MEMORY
  br label %block_.L_44187a

block_.L_44187a:                                  ; preds = %block_.L_441e80, %block_441873
  %loadMem_44187a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 15
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %RBP.i672 = bitcast %union.anon* %1269 to i64*
  %1270 = load i64, i64* %RBP.i672
  %1271 = sub i64 %1270, 20
  %1272 = load i64, i64* %PC.i671
  %1273 = add i64 %1272, 4
  store i64 %1273, i64* %PC.i671
  %1274 = inttoptr i64 %1271 to i32*
  %1275 = load i32, i32* %1274
  %1276 = sub i32 %1275, 8
  %1277 = icmp ult i32 %1275, 8
  %1278 = zext i1 %1277 to i8
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1278, i8* %1279, align 1
  %1280 = and i32 %1276, 255
  %1281 = call i32 @llvm.ctpop.i32(i32 %1280)
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1284, i8* %1285, align 1
  %1286 = xor i32 %1275, 8
  %1287 = xor i32 %1286, %1276
  %1288 = lshr i32 %1287, 4
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1290, i8* %1291, align 1
  %1292 = icmp eq i32 %1276, 0
  %1293 = zext i1 %1292 to i8
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1293, i8* %1294, align 1
  %1295 = lshr i32 %1276, 31
  %1296 = trunc i32 %1295 to i8
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1296, i8* %1297, align 1
  %1298 = lshr i32 %1275, 31
  %1299 = xor i32 %1295, %1298
  %1300 = add i32 %1299, %1298
  %1301 = icmp eq i32 %1300, 2
  %1302 = zext i1 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1302, i8* %1303, align 1
  store %struct.Memory* %loadMem_44187a, %struct.Memory** %MEMORY
  %loadMem_44187e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 33
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %1306 to i64*
  %1307 = load i64, i64* %PC.i670
  %1308 = add i64 %1307, 1552
  %1309 = load i64, i64* %PC.i670
  %1310 = add i64 %1309, 6
  %1311 = load i64, i64* %PC.i670
  %1312 = add i64 %1311, 6
  store i64 %1312, i64* %PC.i670
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1314 = load i8, i8* %1313, align 1
  %1315 = icmp ne i8 %1314, 0
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1317 = load i8, i8* %1316, align 1
  %1318 = icmp ne i8 %1317, 0
  %1319 = xor i1 %1315, %1318
  %1320 = xor i1 %1319, true
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %BRANCH_TAKEN, align 1
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1323 = select i1 %1319, i64 %1310, i64 %1308
  store i64 %1323, i64* %1322, align 8
  store %struct.Memory* %loadMem_44187e, %struct.Memory** %MEMORY
  %loadBr_44187e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44187e = icmp eq i8 %loadBr_44187e, 1
  br i1 %cmpBr_44187e, label %block_.L_441e8e, label %block_441884

block_441884:                                     ; preds = %block_.L_44187a
  %loadMem_441884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 1
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RAX.i668 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 15
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %RBP.i669 = bitcast %union.anon* %1332 to i64*
  %1333 = load i64, i64* %RBP.i669
  %1334 = sub i64 %1333, 20
  %1335 = load i64, i64* %PC.i667
  %1336 = add i64 %1335, 4
  store i64 %1336, i64* %PC.i667
  %1337 = inttoptr i64 %1334 to i32*
  %1338 = load i32, i32* %1337
  %1339 = sext i32 %1338 to i64
  store i64 %1339, i64* %RAX.i668, align 8
  store %struct.Memory* %loadMem_441884, %struct.Memory** %MEMORY
  %loadMem_441888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 33
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %1342 to i64*
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 1
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %RAX.i665 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 5
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %1348 to i64*
  %1349 = load i64, i64* %RAX.i665
  %1350 = mul i64 %1349, 4
  %1351 = add i64 %1350, 8053168
  %1352 = load i64, i64* %PC.i664
  %1353 = add i64 %1352, 7
  store i64 %1353, i64* %PC.i664
  %1354 = inttoptr i64 %1351 to i32*
  %1355 = load i32, i32* %1354
  %1356 = zext i32 %1355 to i64
  store i64 %1356, i64* %RCX.i666, align 8
  store %struct.Memory* %loadMem_441888, %struct.Memory** %MEMORY
  %loadMem_44188f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 5
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %ECX.i662 = bitcast %union.anon* %1362 to i32*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 15
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %1365 to i64*
  %1366 = load i64, i64* %RBP.i663
  %1367 = sub i64 %1366, 484
  %1368 = load i32, i32* %ECX.i662
  %1369 = zext i32 %1368 to i64
  %1370 = load i64, i64* %PC.i661
  %1371 = add i64 %1370, 6
  store i64 %1371, i64* %PC.i661
  %1372 = inttoptr i64 %1367 to i32*
  store i32 %1368, i32* %1372
  store %struct.Memory* %loadMem_44188f, %struct.Memory** %MEMORY
  %loadMem_441895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 33
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %1375 to i64*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 15
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %1378 to i64*
  %1379 = load i64, i64* %RBP.i660
  %1380 = sub i64 %1379, 20
  %1381 = load i64, i64* %PC.i659
  %1382 = add i64 %1381, 4
  store i64 %1382, i64* %PC.i659
  %1383 = inttoptr i64 %1380 to i32*
  %1384 = load i32, i32* %1383
  %1385 = sub i32 %1384, 4
  %1386 = icmp ult i32 %1384, 4
  %1387 = zext i1 %1386 to i8
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1387, i8* %1388, align 1
  %1389 = and i32 %1385, 255
  %1390 = call i32 @llvm.ctpop.i32(i32 %1389)
  %1391 = trunc i32 %1390 to i8
  %1392 = and i8 %1391, 1
  %1393 = xor i8 %1392, 1
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1393, i8* %1394, align 1
  %1395 = xor i32 %1384, 4
  %1396 = xor i32 %1395, %1385
  %1397 = lshr i32 %1396, 4
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1399, i8* %1400, align 1
  %1401 = icmp eq i32 %1385, 0
  %1402 = zext i1 %1401 to i8
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1402, i8* %1403, align 1
  %1404 = lshr i32 %1385, 31
  %1405 = trunc i32 %1404 to i8
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1405, i8* %1406, align 1
  %1407 = lshr i32 %1384, 31
  %1408 = xor i32 %1404, %1407
  %1409 = add i32 %1408, %1407
  %1410 = icmp eq i32 %1409, 2
  %1411 = zext i1 %1410 to i8
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1411, i8* %1412, align 1
  store %struct.Memory* %loadMem_441895, %struct.Memory** %MEMORY
  %loadMem_441899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 33
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %1415 to i64*
  %1416 = load i64, i64* %PC.i658
  %1417 = add i64 %1416, 53
  %1418 = load i64, i64* %PC.i658
  %1419 = add i64 %1418, 6
  %1420 = load i64, i64* %PC.i658
  %1421 = add i64 %1420, 6
  store i64 %1421, i64* %PC.i658
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1423 = load i8, i8* %1422, align 1
  %1424 = icmp ne i8 %1423, 0
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1426 = load i8, i8* %1425, align 1
  %1427 = icmp ne i8 %1426, 0
  %1428 = xor i1 %1424, %1427
  %1429 = xor i1 %1428, true
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %BRANCH_TAKEN, align 1
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1432 = select i1 %1428, i64 %1419, i64 %1417
  store i64 %1432, i64* %1431, align 8
  store %struct.Memory* %loadMem_441899, %struct.Memory** %MEMORY
  %loadBr_441899 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441899 = icmp eq i8 %loadBr_441899, 1
  br i1 %cmpBr_441899, label %block_.L_4418ce, label %block_44189f

block_44189f:                                     ; preds = %block_441884
  %loadMem_44189f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1434 = getelementptr inbounds %struct.GPR, %struct.GPR* %1433, i32 0, i32 33
  %1435 = getelementptr inbounds %struct.Reg, %struct.Reg* %1434, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %1435 to i64*
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 1
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 15
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %RBP.i657 = bitcast %union.anon* %1441 to i64*
  %1442 = load i64, i64* %RBP.i657
  %1443 = sub i64 %1442, 480
  %1444 = load i64, i64* %PC.i655
  %1445 = add i64 %1444, 6
  store i64 %1445, i64* %PC.i655
  %1446 = inttoptr i64 %1443 to i32*
  %1447 = load i32, i32* %1446
  %1448 = zext i32 %1447 to i64
  store i64 %1448, i64* %RAX.i656, align 8
  store %struct.Memory* %loadMem_44189f, %struct.Memory** %MEMORY
  %loadMem_4418a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1450 = getelementptr inbounds %struct.GPR, %struct.GPR* %1449, i32 0, i32 33
  %1451 = getelementptr inbounds %struct.Reg, %struct.Reg* %1450, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %1451 to i64*
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 1
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %RAX.i653 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 15
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %RBP.i654 = bitcast %union.anon* %1457 to i64*
  %1458 = load i64, i64* %RAX.i653
  %1459 = load i64, i64* %RBP.i654
  %1460 = sub i64 %1459, 484
  %1461 = load i64, i64* %PC.i652
  %1462 = add i64 %1461, 6
  store i64 %1462, i64* %PC.i652
  %1463 = trunc i64 %1458 to i32
  %1464 = inttoptr i64 %1460 to i32*
  %1465 = load i32, i32* %1464
  %1466 = add i32 %1465, %1463
  %1467 = zext i32 %1466 to i64
  store i64 %1467, i64* %RAX.i653, align 8
  %1468 = icmp ult i32 %1466, %1463
  %1469 = icmp ult i32 %1466, %1465
  %1470 = or i1 %1468, %1469
  %1471 = zext i1 %1470 to i8
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1471, i8* %1472, align 1
  %1473 = and i32 %1466, 255
  %1474 = call i32 @llvm.ctpop.i32(i32 %1473)
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  %1477 = xor i8 %1476, 1
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1477, i8* %1478, align 1
  %1479 = xor i32 %1465, %1463
  %1480 = xor i32 %1479, %1466
  %1481 = lshr i32 %1480, 4
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1483, i8* %1484, align 1
  %1485 = icmp eq i32 %1466, 0
  %1486 = zext i1 %1485 to i8
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1486, i8* %1487, align 1
  %1488 = lshr i32 %1466, 31
  %1489 = trunc i32 %1488 to i8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1489, i8* %1490, align 1
  %1491 = lshr i32 %1463, 31
  %1492 = lshr i32 %1465, 31
  %1493 = xor i32 %1488, %1491
  %1494 = xor i32 %1488, %1492
  %1495 = add i32 %1493, %1494
  %1496 = icmp eq i32 %1495, 2
  %1497 = zext i1 %1496 to i8
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1497, i8* %1498, align 1
  store %struct.Memory* %loadMem_4418a5, %struct.Memory** %MEMORY
  %loadMem_4418ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 33
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1501 to i64*
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1503 = getelementptr inbounds %struct.GPR, %struct.GPR* %1502, i32 0, i32 1
  %1504 = getelementptr inbounds %struct.Reg, %struct.Reg* %1503, i32 0, i32 0
  %EAX.i650 = bitcast %union.anon* %1504 to i32*
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 5
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %RCX.i651 = bitcast %union.anon* %1507 to i64*
  %1508 = load i32, i32* %EAX.i650
  %1509 = zext i32 %1508 to i64
  %1510 = load i64, i64* %PC.i649
  %1511 = add i64 %1510, 3
  store i64 %1511, i64* %PC.i649
  %1512 = shl i64 %1509, 32
  %1513 = ashr exact i64 %1512, 32
  store i64 %1513, i64* %RCX.i651, align 8
  store %struct.Memory* %loadMem_4418ab, %struct.Memory** %MEMORY
  %loadMem_4418ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 1
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 5
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RCX.i648 = bitcast %union.anon* %1522 to i64*
  %1523 = load i64, i64* %RCX.i648
  %1524 = add i64 %1523, 12099168
  %1525 = load i64, i64* %PC.i646
  %1526 = add i64 %1525, 8
  store i64 %1526, i64* %PC.i646
  %1527 = inttoptr i64 %1524 to i8*
  %1528 = load i8, i8* %1527
  %1529 = zext i8 %1528 to i64
  store i64 %1529, i64* %RAX.i647, align 8
  store %struct.Memory* %loadMem_4418ae, %struct.Memory** %MEMORY
  %loadMem_4418b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 33
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 1
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %EAX.i645 = bitcast %union.anon* %1535 to i32*
  %1536 = load i32, i32* %EAX.i645
  %1537 = zext i32 %1536 to i64
  %1538 = load i64, i64* %PC.i644
  %1539 = add i64 %1538, 3
  store i64 %1539, i64* %PC.i644
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1540, align 1
  %1541 = and i32 %1536, 255
  %1542 = call i32 @llvm.ctpop.i32(i32 %1541)
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  %1545 = xor i8 %1544, 1
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1545, i8* %1546, align 1
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1547, align 1
  %1548 = icmp eq i32 %1536, 0
  %1549 = zext i1 %1548 to i8
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1549, i8* %1550, align 1
  %1551 = lshr i32 %1536, 31
  %1552 = trunc i32 %1551 to i8
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1552, i8* %1553, align 1
  %1554 = lshr i32 %1536, 31
  %1555 = xor i32 %1551, %1554
  %1556 = add i32 %1555, %1554
  %1557 = icmp eq i32 %1556, 2
  %1558 = zext i1 %1557 to i8
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1558, i8* %1559, align 1
  store %struct.Memory* %loadMem_4418b6, %struct.Memory** %MEMORY
  %loadMem_4418b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 33
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1562 to i64*
  %1563 = load i64, i64* %PC.i643
  %1564 = add i64 %1563, 21
  %1565 = load i64, i64* %PC.i643
  %1566 = add i64 %1565, 6
  %1567 = load i64, i64* %PC.i643
  %1568 = add i64 %1567, 6
  store i64 %1568, i64* %PC.i643
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1570 = load i8, i8* %1569, align 1
  %1571 = icmp eq i8 %1570, 0
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %BRANCH_TAKEN, align 1
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1574 = select i1 %1571, i64 %1564, i64 %1566
  store i64 %1574, i64* %1573, align 8
  store %struct.Memory* %loadMem_4418b9, %struct.Memory** %MEMORY
  %loadBr_4418b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4418b9 = icmp eq i8 %loadBr_4418b9, 1
  br i1 %cmpBr_4418b9, label %block_.L_4418ce, label %block_4418bf

block_4418bf:                                     ; preds = %block_44189f
  %loadMem_4418bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 1
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RAX.i641 = bitcast %union.anon* %1580 to i64*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 15
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %1583 to i64*
  %1584 = load i64, i64* %RBP.i642
  %1585 = sub i64 %1584, 484
  %1586 = load i64, i64* %PC.i640
  %1587 = add i64 %1586, 6
  store i64 %1587, i64* %PC.i640
  %1588 = inttoptr i64 %1585 to i32*
  %1589 = load i32, i32* %1588
  %1590 = zext i32 %1589 to i64
  store i64 %1590, i64* %RAX.i641, align 8
  store %struct.Memory* %loadMem_4418bf, %struct.Memory** %MEMORY
  %loadMem_4418c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 33
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 1
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %1596 to i64*
  %1597 = load i64, i64* %RAX.i639
  %1598 = load i64, i64* %PC.i638
  %1599 = add i64 %1598, 2
  store i64 %1599, i64* %PC.i638
  %1600 = trunc i64 %1597 to i32
  %1601 = shl i32 %1600, 1
  %1602 = icmp slt i32 %1600, 0
  %1603 = icmp slt i32 %1601, 0
  %1604 = xor i1 %1602, %1603
  %1605 = zext i32 %1601 to i64
  store i64 %1605, i64* %RAX.i639, align 8
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1607 = zext i1 %1602 to i8
  store i8 %1607, i8* %1606, align 1
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1609 = and i32 %1601, 254
  %1610 = call i32 @llvm.ctpop.i32(i32 %1609)
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  store i8 %1613, i8* %1608, align 1
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1614, align 1
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1616 = icmp eq i32 %1601, 0
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %1615, align 1
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1619 = lshr i32 %1601, 31
  %1620 = trunc i32 %1619 to i8
  store i8 %1620, i8* %1618, align 1
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1622 = zext i1 %1604 to i8
  store i8 %1622, i8* %1621, align 1
  store %struct.Memory* %loadMem_4418c5, %struct.Memory** %MEMORY
  %loadMem_4418c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 1
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %EAX.i636 = bitcast %union.anon* %1628 to i32*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 15
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %1631 to i64*
  %1632 = load i64, i64* %RBP.i637
  %1633 = sub i64 %1632, 484
  %1634 = load i32, i32* %EAX.i636
  %1635 = zext i32 %1634 to i64
  %1636 = load i64, i64* %PC.i635
  %1637 = add i64 %1636, 6
  store i64 %1637, i64* %PC.i635
  %1638 = inttoptr i64 %1633 to i32*
  store i32 %1634, i32* %1638
  store %struct.Memory* %loadMem_4418c8, %struct.Memory** %MEMORY
  br label %block_.L_4418ce

block_.L_4418ce:                                  ; preds = %block_4418bf, %block_44189f, %block_441884
  %loadMem_4418ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 33
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 1
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RAX.i633 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 15
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %1647 to i64*
  %1648 = load i64, i64* %RBP.i634
  %1649 = sub i64 %1648, 480
  %1650 = load i64, i64* %PC.i632
  %1651 = add i64 %1650, 6
  store i64 %1651, i64* %PC.i632
  %1652 = inttoptr i64 %1649 to i32*
  %1653 = load i32, i32* %1652
  %1654 = zext i32 %1653 to i64
  store i64 %1654, i64* %RAX.i633, align 8
  store %struct.Memory* %loadMem_4418ce, %struct.Memory** %MEMORY
  %loadMem_4418d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 33
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %1657 to i64*
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 1
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %RAX.i630 = bitcast %union.anon* %1660 to i64*
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 15
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %RBP.i631 = bitcast %union.anon* %1663 to i64*
  %1664 = load i64, i64* %RAX.i630
  %1665 = load i64, i64* %RBP.i631
  %1666 = sub i64 %1665, 484
  %1667 = load i64, i64* %PC.i629
  %1668 = add i64 %1667, 6
  store i64 %1668, i64* %PC.i629
  %1669 = trunc i64 %1664 to i32
  %1670 = inttoptr i64 %1666 to i32*
  %1671 = load i32, i32* %1670
  %1672 = add i32 %1671, %1669
  %1673 = zext i32 %1672 to i64
  store i64 %1673, i64* %RAX.i630, align 8
  %1674 = icmp ult i32 %1672, %1669
  %1675 = icmp ult i32 %1672, %1671
  %1676 = or i1 %1674, %1675
  %1677 = zext i1 %1676 to i8
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1677, i8* %1678, align 1
  %1679 = and i32 %1672, 255
  %1680 = call i32 @llvm.ctpop.i32(i32 %1679)
  %1681 = trunc i32 %1680 to i8
  %1682 = and i8 %1681, 1
  %1683 = xor i8 %1682, 1
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1683, i8* %1684, align 1
  %1685 = xor i32 %1671, %1669
  %1686 = xor i32 %1685, %1672
  %1687 = lshr i32 %1686, 4
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1689, i8* %1690, align 1
  %1691 = icmp eq i32 %1672, 0
  %1692 = zext i1 %1691 to i8
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1692, i8* %1693, align 1
  %1694 = lshr i32 %1672, 31
  %1695 = trunc i32 %1694 to i8
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1695, i8* %1696, align 1
  %1697 = lshr i32 %1669, 31
  %1698 = lshr i32 %1671, 31
  %1699 = xor i32 %1694, %1697
  %1700 = xor i32 %1694, %1698
  %1701 = add i32 %1699, %1700
  %1702 = icmp eq i32 %1701, 2
  %1703 = zext i1 %1702 to i8
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1703, i8* %1704, align 1
  store %struct.Memory* %loadMem_4418d4, %struct.Memory** %MEMORY
  %loadMem_4418da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 1
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %EAX.i627 = bitcast %union.anon* %1710 to i32*
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 5
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %RCX.i628 = bitcast %union.anon* %1713 to i64*
  %1714 = load i32, i32* %EAX.i627
  %1715 = zext i32 %1714 to i64
  %1716 = load i64, i64* %PC.i626
  %1717 = add i64 %1716, 3
  store i64 %1717, i64* %PC.i626
  %1718 = shl i64 %1715, 32
  %1719 = ashr exact i64 %1718, 32
  store i64 %1719, i64* %RCX.i628, align 8
  store %struct.Memory* %loadMem_4418da, %struct.Memory** %MEMORY
  %loadMem_4418dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 1
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 5
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %RCX.i625 = bitcast %union.anon* %1728 to i64*
  %1729 = load i64, i64* %RCX.i625
  %1730 = add i64 %1729, 12099168
  %1731 = load i64, i64* %PC.i623
  %1732 = add i64 %1731, 8
  store i64 %1732, i64* %PC.i623
  %1733 = inttoptr i64 %1730 to i8*
  %1734 = load i8, i8* %1733
  %1735 = zext i8 %1734 to i64
  store i64 %1735, i64* %RAX.i624, align 8
  store %struct.Memory* %loadMem_4418dd, %struct.Memory** %MEMORY
  %loadMem_4418e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 33
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %1738 to i64*
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 1
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %EAX.i621 = bitcast %union.anon* %1741 to i32*
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 15
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %RBP.i622 = bitcast %union.anon* %1744 to i64*
  %1745 = load i32, i32* %EAX.i621
  %1746 = zext i32 %1745 to i64
  %1747 = load i64, i64* %RBP.i622
  %1748 = sub i64 %1747, 56
  %1749 = load i64, i64* %PC.i620
  %1750 = add i64 %1749, 3
  store i64 %1750, i64* %PC.i620
  %1751 = inttoptr i64 %1748 to i32*
  %1752 = load i32, i32* %1751
  %1753 = sub i32 %1745, %1752
  %1754 = icmp ult i32 %1745, %1752
  %1755 = zext i1 %1754 to i8
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1755, i8* %1756, align 1
  %1757 = and i32 %1753, 255
  %1758 = call i32 @llvm.ctpop.i32(i32 %1757)
  %1759 = trunc i32 %1758 to i8
  %1760 = and i8 %1759, 1
  %1761 = xor i8 %1760, 1
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1761, i8* %1762, align 1
  %1763 = xor i32 %1752, %1745
  %1764 = xor i32 %1763, %1753
  %1765 = lshr i32 %1764, 4
  %1766 = trunc i32 %1765 to i8
  %1767 = and i8 %1766, 1
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1767, i8* %1768, align 1
  %1769 = icmp eq i32 %1753, 0
  %1770 = zext i1 %1769 to i8
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1770, i8* %1771, align 1
  %1772 = lshr i32 %1753, 31
  %1773 = trunc i32 %1772 to i8
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1773, i8* %1774, align 1
  %1775 = lshr i32 %1745, 31
  %1776 = lshr i32 %1752, 31
  %1777 = xor i32 %1776, %1775
  %1778 = xor i32 %1772, %1775
  %1779 = add i32 %1778, %1777
  %1780 = icmp eq i32 %1779, 2
  %1781 = zext i1 %1780 to i8
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1781, i8* %1782, align 1
  store %struct.Memory* %loadMem_4418e5, %struct.Memory** %MEMORY
  %loadMem_4418e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 33
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %1785 to i64*
  %1786 = load i64, i64* %PC.i619
  %1787 = add i64 %1786, 11
  %1788 = load i64, i64* %PC.i619
  %1789 = add i64 %1788, 6
  %1790 = load i64, i64* %PC.i619
  %1791 = add i64 %1790, 6
  store i64 %1791, i64* %PC.i619
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1793 = load i8, i8* %1792, align 1
  store i8 %1793, i8* %BRANCH_TAKEN, align 1
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1795 = icmp ne i8 %1793, 0
  %1796 = select i1 %1795, i64 %1787, i64 %1789
  store i64 %1796, i64* %1794, align 8
  store %struct.Memory* %loadMem_4418e8, %struct.Memory** %MEMORY
  %loadBr_4418e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4418e8 = icmp eq i8 %loadBr_4418e8, 1
  br i1 %cmpBr_4418e8, label %block_.L_4418f3, label %block_4418ee

block_4418ee:                                     ; preds = %block_.L_4418ce
  %loadMem_4418ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %1799 to i64*
  %1800 = load i64, i64* %PC.i618
  %1801 = add i64 %1800, 1426
  %1802 = load i64, i64* %PC.i618
  %1803 = add i64 %1802, 5
  store i64 %1803, i64* %PC.i618
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1801, i64* %1804, align 8
  store %struct.Memory* %loadMem_4418ee, %struct.Memory** %MEMORY
  br label %block_.L_441e80

block_.L_4418f3:                                  ; preds = %block_.L_4418ce
  %loadMem_4418f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 33
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %1807 to i64*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 1
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 15
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %1813 to i64*
  %1814 = load i64, i64* %RBP.i617
  %1815 = sub i64 %1814, 480
  %1816 = load i64, i64* %PC.i615
  %1817 = add i64 %1816, 6
  store i64 %1817, i64* %PC.i615
  %1818 = inttoptr i64 %1815 to i32*
  %1819 = load i32, i32* %1818
  %1820 = zext i32 %1819 to i64
  store i64 %1820, i64* %RAX.i616, align 8
  store %struct.Memory* %loadMem_4418f3, %struct.Memory** %MEMORY
  %loadMem_4418f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 33
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 1
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %RAX.i613 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 15
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %1829 to i64*
  %1830 = load i64, i64* %RAX.i613
  %1831 = load i64, i64* %RBP.i614
  %1832 = sub i64 %1831, 484
  %1833 = load i64, i64* %PC.i612
  %1834 = add i64 %1833, 6
  store i64 %1834, i64* %PC.i612
  %1835 = trunc i64 %1830 to i32
  %1836 = inttoptr i64 %1832 to i32*
  %1837 = load i32, i32* %1836
  %1838 = add i32 %1837, %1835
  %1839 = zext i32 %1838 to i64
  store i64 %1839, i64* %RAX.i613, align 8
  %1840 = icmp ult i32 %1838, %1835
  %1841 = icmp ult i32 %1838, %1837
  %1842 = or i1 %1840, %1841
  %1843 = zext i1 %1842 to i8
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1843, i8* %1844, align 1
  %1845 = and i32 %1838, 255
  %1846 = call i32 @llvm.ctpop.i32(i32 %1845)
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  %1849 = xor i8 %1848, 1
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1849, i8* %1850, align 1
  %1851 = xor i32 %1837, %1835
  %1852 = xor i32 %1851, %1838
  %1853 = lshr i32 %1852, 4
  %1854 = trunc i32 %1853 to i8
  %1855 = and i8 %1854, 1
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1855, i8* %1856, align 1
  %1857 = icmp eq i32 %1838, 0
  %1858 = zext i1 %1857 to i8
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1858, i8* %1859, align 1
  %1860 = lshr i32 %1838, 31
  %1861 = trunc i32 %1860 to i8
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1861, i8* %1862, align 1
  %1863 = lshr i32 %1835, 31
  %1864 = lshr i32 %1837, 31
  %1865 = xor i32 %1860, %1863
  %1866 = xor i32 %1860, %1864
  %1867 = add i32 %1865, %1866
  %1868 = icmp eq i32 %1867, 2
  %1869 = zext i1 %1868 to i8
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1869, i8* %1870, align 1
  store %struct.Memory* %loadMem_4418f9, %struct.Memory** %MEMORY
  %loadMem_4418ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 33
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 1
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %EAX.i610 = bitcast %union.anon* %1876 to i32*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 11
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RDI.i611 = bitcast %union.anon* %1879 to i64*
  %1880 = load i32, i32* %EAX.i610
  %1881 = zext i32 %1880 to i64
  %1882 = load i64, i64* %PC.i609
  %1883 = add i64 %1882, 2
  store i64 %1883, i64* %PC.i609
  %1884 = and i64 %1881, 4294967295
  store i64 %1884, i64* %RDI.i611, align 8
  store %struct.Memory* %loadMem_4418ff, %struct.Memory** %MEMORY
  %loadMem1_441901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 33
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1887 to i64*
  %1888 = load i64, i64* %PC.i608
  %1889 = add i64 %1888, -186145
  %1890 = load i64, i64* %PC.i608
  %1891 = add i64 %1890, 5
  %1892 = load i64, i64* %PC.i608
  %1893 = add i64 %1892, 5
  store i64 %1893, i64* %PC.i608
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1895 = load i64, i64* %1894, align 8
  %1896 = add i64 %1895, -8
  %1897 = inttoptr i64 %1896 to i64*
  store i64 %1891, i64* %1897
  store i64 %1896, i64* %1894, align 8
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1889, i64* %1898, align 8
  store %struct.Memory* %loadMem1_441901, %struct.Memory** %MEMORY
  %loadMem2_441901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441901 = load i64, i64* %3
  %call2_441901 = call %struct.Memory* @sub_4141e0.find_origin(%struct.State* %0, i64 %loadPC_441901, %struct.Memory* %loadMem2_441901)
  store %struct.Memory* %call2_441901, %struct.Memory** %MEMORY
  %loadMem_441906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 33
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 1
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %EAX.i606 = bitcast %union.anon* %1904 to i32*
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1906 = getelementptr inbounds %struct.GPR, %struct.GPR* %1905, i32 0, i32 15
  %1907 = getelementptr inbounds %struct.Reg, %struct.Reg* %1906, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %1907 to i64*
  %1908 = load i64, i64* %RBP.i607
  %1909 = sub i64 %1908, 32
  %1910 = load i32, i32* %EAX.i606
  %1911 = zext i32 %1910 to i64
  %1912 = load i64, i64* %PC.i605
  %1913 = add i64 %1912, 3
  store i64 %1913, i64* %PC.i605
  %1914 = inttoptr i64 %1909 to i32*
  store i32 %1910, i32* %1914
  store %struct.Memory* %loadMem_441906, %struct.Memory** %MEMORY
  %loadMem_441909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 33
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 5
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 15
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %1923 to i64*
  %1924 = load i64, i64* %RBP.i604
  %1925 = sub i64 %1924, 32
  %1926 = load i64, i64* %PC.i602
  %1927 = add i64 %1926, 4
  store i64 %1927, i64* %PC.i602
  %1928 = inttoptr i64 %1925 to i32*
  %1929 = load i32, i32* %1928
  %1930 = sext i32 %1929 to i64
  store i64 %1930, i64* %RCX.i603, align 8
  store %struct.Memory* %loadMem_441909, %struct.Memory** %MEMORY
  %loadMem_44190d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 5
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %RCX.i600 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 15
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RBP.i601 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %RBP.i601
  %1941 = load i64, i64* %RCX.i600
  %1942 = add i64 %1940, -464
  %1943 = add i64 %1942, %1941
  %1944 = load i64, i64* %PC.i599
  %1945 = add i64 %1944, 8
  store i64 %1945, i64* %PC.i599
  %1946 = inttoptr i64 %1943 to i8*
  %1947 = load i8, i8* %1946
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1948, align 1
  %1949 = zext i8 %1947 to i32
  %1950 = call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1953, i8* %1954, align 1
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1955, align 1
  %1956 = icmp eq i8 %1947, 0
  %1957 = zext i1 %1956 to i8
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1957, i8* %1958, align 1
  %1959 = lshr i8 %1947, 7
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1959, i8* %1960, align 1
  %1961 = lshr i8 %1947, 7
  %1962 = xor i8 %1959, %1961
  %1963 = add i8 %1962, %1961
  %1964 = icmp eq i8 %1963, 2
  %1965 = zext i1 %1964 to i8
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1965, i8* %1966, align 1
  store %struct.Memory* %loadMem_44190d, %struct.Memory** %MEMORY
  %loadMem_441915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 33
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1969 to i64*
  %1970 = load i64, i64* %PC.i598
  %1971 = add i64 %1970, 11
  %1972 = load i64, i64* %PC.i598
  %1973 = add i64 %1972, 6
  %1974 = load i64, i64* %PC.i598
  %1975 = add i64 %1974, 6
  store i64 %1975, i64* %PC.i598
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1977 = load i8, i8* %1976, align 1
  store i8 %1977, i8* %BRANCH_TAKEN, align 1
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1979 = icmp ne i8 %1977, 0
  %1980 = select i1 %1979, i64 %1971, i64 %1973
  store i64 %1980, i64* %1978, align 8
  store %struct.Memory* %loadMem_441915, %struct.Memory** %MEMORY
  %loadBr_441915 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441915 = icmp eq i8 %loadBr_441915, 1
  br i1 %cmpBr_441915, label %block_.L_441920, label %block_44191b

block_44191b:                                     ; preds = %block_.L_4418f3
  %loadMem_44191b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 33
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %1983 to i64*
  %1984 = load i64, i64* %PC.i597
  %1985 = add i64 %1984, 1381
  %1986 = load i64, i64* %PC.i597
  %1987 = add i64 %1986, 5
  store i64 %1987, i64* %PC.i597
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1985, i64* %1988, align 8
  store %struct.Memory* %loadMem_44191b, %struct.Memory** %MEMORY
  br label %block_.L_441e80

block_.L_441920:                                  ; preds = %block_.L_4418f3
  %loadMem_441920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 9
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RSI.i595 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 15
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %1997 to i64*
  %1998 = load i64, i64* %RBP.i596
  %1999 = sub i64 %1998, 36
  %2000 = load i64, i64* %PC.i594
  %2001 = add i64 %2000, 4
  store i64 %2001, i64* %PC.i594
  store i64 %1999, i64* %RSI.i595, align 8
  store %struct.Memory* %loadMem_441920, %struct.Memory** %MEMORY
  %loadMem_441924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 33
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2004 to i64*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 7
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %RDX.i592 = bitcast %union.anon* %2007 to i64*
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2009 = getelementptr inbounds %struct.GPR, %struct.GPR* %2008, i32 0, i32 15
  %2010 = getelementptr inbounds %struct.Reg, %struct.Reg* %2009, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %2010 to i64*
  %2011 = load i64, i64* %RBP.i593
  %2012 = sub i64 %2011, 40
  %2013 = load i64, i64* %PC.i591
  %2014 = add i64 %2013, 4
  store i64 %2014, i64* %PC.i591
  store i64 %2012, i64* %RDX.i592, align 8
  store %struct.Memory* %loadMem_441924, %struct.Memory** %MEMORY
  %loadMem_441928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 5
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RCX.i589 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 15
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %2023 to i64*
  %2024 = load i64, i64* %RBP.i590
  %2025 = sub i64 %2024, 44
  %2026 = load i64, i64* %PC.i588
  %2027 = add i64 %2026, 4
  store i64 %2027, i64* %PC.i588
  store i64 %2025, i64* %RCX.i589, align 8
  store %struct.Memory* %loadMem_441928, %struct.Memory** %MEMORY
  %loadMem_44192c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 33
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %2030 to i64*
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 15
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %2033 to i64*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 17
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %R8.i587 = bitcast %union.anon* %2036 to i64*
  %2037 = load i64, i64* %RBP.i586
  %2038 = sub i64 %2037, 48
  %2039 = load i64, i64* %PC.i585
  %2040 = add i64 %2039, 4
  store i64 %2040, i64* %PC.i585
  store i64 %2038, i64* %R8.i587, align 8
  store %struct.Memory* %loadMem_44192c, %struct.Memory** %MEMORY
  %loadMem_441930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 1
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %2046 to i64*
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 15
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %2049 to i64*
  %2050 = load i64, i64* %RBP.i584
  %2051 = sub i64 %2050, 32
  %2052 = load i64, i64* %PC.i582
  %2053 = add i64 %2052, 4
  store i64 %2053, i64* %PC.i582
  %2054 = inttoptr i64 %2051 to i32*
  %2055 = load i32, i32* %2054
  %2056 = sext i32 %2055 to i64
  store i64 %2056, i64* %RAX.i583, align 8
  store %struct.Memory* %loadMem_441930, %struct.Memory** %MEMORY
  %loadMem_441934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 1
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RAX.i580 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 15
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %2065 to i64*
  %2066 = load i64, i64* %RBP.i581
  %2067 = load i64, i64* %RAX.i580
  %2068 = add i64 %2066, -464
  %2069 = add i64 %2068, %2067
  %2070 = load i64, i64* %PC.i579
  %2071 = add i64 %2070, 8
  store i64 %2071, i64* %PC.i579
  %2072 = inttoptr i64 %2069 to i8*
  store i8 1, i8* %2072
  store %struct.Memory* %loadMem_441934, %struct.Memory** %MEMORY
  %loadMem_44193c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 33
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2075 to i64*
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 11
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %RDI.i577 = bitcast %union.anon* %2078 to i64*
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 15
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %2081 to i64*
  %2082 = load i64, i64* %RBP.i578
  %2083 = sub i64 %2082, 32
  %2084 = load i64, i64* %PC.i576
  %2085 = add i64 %2084, 3
  store i64 %2085, i64* %PC.i576
  %2086 = inttoptr i64 %2083 to i32*
  %2087 = load i32, i32* %2086
  %2088 = zext i32 %2087 to i64
  store i64 %2088, i64* %RDI.i577, align 8
  store %struct.Memory* %loadMem_44193c, %struct.Memory** %MEMORY
  %loadMem1_44193f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 33
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %2091 to i64*
  %2092 = load i64, i64* %PC.i575
  %2093 = add i64 %2092, 167921
  %2094 = load i64, i64* %PC.i575
  %2095 = add i64 %2094, 5
  %2096 = load i64, i64* %PC.i575
  %2097 = add i64 %2096, 5
  store i64 %2097, i64* %PC.i575
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2099 = load i64, i64* %2098, align 8
  %2100 = add i64 %2099, -8
  %2101 = inttoptr i64 %2100 to i64*
  store i64 %2095, i64* %2101
  store i64 %2100, i64* %2098, align 8
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2093, i64* %2102, align 8
  store %struct.Memory* %loadMem1_44193f, %struct.Memory** %MEMORY
  %loadMem2_44193f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44193f = load i64, i64* %3
  %call2_44193f = call %struct.Memory* @sub_46a930.attack_and_defend(%struct.State* %0, i64 %loadPC_44193f, %struct.Memory* %loadMem2_44193f)
  store %struct.Memory* %call2_44193f, %struct.Memory** %MEMORY
  %loadMem_441944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 33
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %2105 to i64*
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 15
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %2108 to i64*
  %2109 = load i64, i64* %RBP.i574
  %2110 = sub i64 %2109, 36
  %2111 = load i64, i64* %PC.i573
  %2112 = add i64 %2111, 4
  store i64 %2112, i64* %PC.i573
  %2113 = inttoptr i64 %2110 to i32*
  %2114 = load i32, i32* %2113
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2115, align 1
  %2116 = and i32 %2114, 255
  %2117 = call i32 @llvm.ctpop.i32(i32 %2116)
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  %2120 = xor i8 %2119, 1
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2120, i8* %2121, align 1
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2122, align 1
  %2123 = icmp eq i32 %2114, 0
  %2124 = zext i1 %2123 to i8
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2124, i8* %2125, align 1
  %2126 = lshr i32 %2114, 31
  %2127 = trunc i32 %2126 to i8
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2127, i8* %2128, align 1
  %2129 = lshr i32 %2114, 31
  %2130 = xor i32 %2126, %2129
  %2131 = add i32 %2130, %2129
  %2132 = icmp eq i32 %2131, 2
  %2133 = zext i1 %2132 to i8
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2133, i8* %2134, align 1
  store %struct.Memory* %loadMem_441944, %struct.Memory** %MEMORY
  %loadMem_441948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 33
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 1
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %EAX.i571 = bitcast %union.anon* %2140 to i32*
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 15
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %2143 to i64*
  %2144 = load i64, i64* %RBP.i572
  %2145 = sub i64 %2144, 5232
  %2146 = load i32, i32* %EAX.i571
  %2147 = zext i32 %2146 to i64
  %2148 = load i64, i64* %PC.i570
  %2149 = add i64 %2148, 6
  store i64 %2149, i64* %PC.i570
  %2150 = inttoptr i64 %2145 to i32*
  store i32 %2146, i32* %2150
  store %struct.Memory* %loadMem_441948, %struct.Memory** %MEMORY
  %loadMem_44194e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 33
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2153 to i64*
  %2154 = load i64, i64* %PC.i569
  %2155 = add i64 %2154, 201
  %2156 = load i64, i64* %PC.i569
  %2157 = add i64 %2156, 6
  %2158 = load i64, i64* %PC.i569
  %2159 = add i64 %2158, 6
  store i64 %2159, i64* %PC.i569
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2161 = load i8, i8* %2160, align 1
  store i8 %2161, i8* %BRANCH_TAKEN, align 1
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2163 = icmp ne i8 %2161, 0
  %2164 = select i1 %2163, i64 %2155, i64 %2157
  store i64 %2164, i64* %2162, align 8
  store %struct.Memory* %loadMem_44194e, %struct.Memory** %MEMORY
  %loadBr_44194e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44194e = icmp eq i8 %loadBr_44194e, 1
  br i1 %cmpBr_44194e, label %block_.L_441a17, label %block_441954

block_441954:                                     ; preds = %block_.L_441920
  %loadMem_441954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 1
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %2170 to i64*
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 15
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %2173 to i64*
  %2174 = load i64, i64* %RBP.i568
  %2175 = sub i64 %2174, 32
  %2176 = load i64, i64* %PC.i566
  %2177 = add i64 %2176, 3
  store i64 %2177, i64* %PC.i566
  %2178 = inttoptr i64 %2175 to i32*
  %2179 = load i32, i32* %2178
  %2180 = zext i32 %2179 to i64
  store i64 %2180, i64* %RAX.i567, align 8
  store %struct.Memory* %loadMem_441954, %struct.Memory** %MEMORY
  %loadMem_441957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 33
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 5
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %RCX.i564 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 15
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %2189 to i64*
  %2190 = load i64, i64* %RBP.i565
  %2191 = sub i64 %2190, 8
  %2192 = load i64, i64* %PC.i563
  %2193 = add i64 %2192, 4
  store i64 %2193, i64* %PC.i563
  %2194 = inttoptr i64 %2191 to i64*
  %2195 = load i64, i64* %2194
  store i64 %2195, i64* %RCX.i564, align 8
  store %struct.Memory* %loadMem_441957, %struct.Memory** %MEMORY
  %loadMem_44195b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 33
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 7
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %RDX.i561 = bitcast %union.anon* %2201 to i64*
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 15
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %2204 to i64*
  %2205 = load i64, i64* %RBP.i562
  %2206 = sub i64 %2205, 24
  %2207 = load i64, i64* %PC.i560
  %2208 = add i64 %2207, 4
  store i64 %2208, i64* %PC.i560
  %2209 = inttoptr i64 %2206 to i32*
  %2210 = load i32, i32* %2209
  %2211 = sext i32 %2210 to i64
  store i64 %2211, i64* %RDX.i561, align 8
  store %struct.Memory* %loadMem_44195b, %struct.Memory** %MEMORY
  %loadMem_44195f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 1
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %EAX.i557 = bitcast %union.anon* %2217 to i32*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 5
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RCX.i558 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 7
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %RDX.i559 = bitcast %union.anon* %2223 to i64*
  %2224 = load i64, i64* %RCX.i558
  %2225 = load i64, i64* %RDX.i559
  %2226 = mul i64 %2225, 4
  %2227 = add i64 %2224, 34804
  %2228 = add i64 %2227, %2226
  %2229 = load i32, i32* %EAX.i557
  %2230 = zext i32 %2229 to i64
  %2231 = load i64, i64* %PC.i556
  %2232 = add i64 %2231, 7
  store i64 %2232, i64* %PC.i556
  %2233 = inttoptr i64 %2228 to i32*
  store i32 %2229, i32* %2233
  store %struct.Memory* %loadMem_44195f, %struct.Memory** %MEMORY
  %loadMem_441966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 33
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2236 to i64*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 1
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %RAX.i554 = bitcast %union.anon* %2239 to i64*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 15
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %2242 to i64*
  %2243 = load i64, i64* %RBP.i555
  %2244 = sub i64 %2243, 36
  %2245 = load i64, i64* %PC.i553
  %2246 = add i64 %2245, 3
  store i64 %2246, i64* %PC.i553
  %2247 = inttoptr i64 %2244 to i32*
  %2248 = load i32, i32* %2247
  %2249 = zext i32 %2248 to i64
  store i64 %2249, i64* %RAX.i554, align 8
  store %struct.Memory* %loadMem_441966, %struct.Memory** %MEMORY
  %loadMem_441969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 33
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 5
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 15
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %2258 to i64*
  %2259 = load i64, i64* %RBP.i552
  %2260 = sub i64 %2259, 8
  %2261 = load i64, i64* %PC.i550
  %2262 = add i64 %2261, 4
  store i64 %2262, i64* %PC.i550
  %2263 = inttoptr i64 %2260 to i64*
  %2264 = load i64, i64* %2263
  store i64 %2264, i64* %RCX.i551, align 8
  store %struct.Memory* %loadMem_441969, %struct.Memory** %MEMORY
  %loadMem_44196d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 7
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %RDX.i548 = bitcast %union.anon* %2270 to i64*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 15
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %2273 to i64*
  %2274 = load i64, i64* %RBP.i549
  %2275 = sub i64 %2274, 24
  %2276 = load i64, i64* %PC.i547
  %2277 = add i64 %2276, 4
  store i64 %2277, i64* %PC.i547
  %2278 = inttoptr i64 %2275 to i32*
  %2279 = load i32, i32* %2278
  %2280 = sext i32 %2279 to i64
  store i64 %2280, i64* %RDX.i548, align 8
  store %struct.Memory* %loadMem_44196d, %struct.Memory** %MEMORY
  %loadMem_441971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 33
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %2283 to i64*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 1
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %EAX.i544 = bitcast %union.anon* %2286 to i32*
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 5
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %RCX.i545 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 7
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %RDX.i546 = bitcast %union.anon* %2292 to i64*
  %2293 = load i64, i64* %RCX.i545
  %2294 = load i64, i64* %RDX.i546
  %2295 = mul i64 %2294, 4
  %2296 = add i64 %2293, 34844
  %2297 = add i64 %2296, %2295
  %2298 = load i32, i32* %EAX.i544
  %2299 = zext i32 %2298 to i64
  %2300 = load i64, i64* %PC.i543
  %2301 = add i64 %2300, 7
  store i64 %2301, i64* %PC.i543
  %2302 = inttoptr i64 %2297 to i32*
  store i32 %2298, i32* %2302
  store %struct.Memory* %loadMem_441971, %struct.Memory** %MEMORY
  %loadMem_441978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 33
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2305 to i64*
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 1
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %2308 to i64*
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 15
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %2311 to i64*
  %2312 = load i64, i64* %RBP.i542
  %2313 = sub i64 %2312, 40
  %2314 = load i64, i64* %PC.i540
  %2315 = add i64 %2314, 3
  store i64 %2315, i64* %PC.i540
  %2316 = inttoptr i64 %2313 to i32*
  %2317 = load i32, i32* %2316
  %2318 = zext i32 %2317 to i64
  store i64 %2318, i64* %RAX.i541, align 8
  store %struct.Memory* %loadMem_441978, %struct.Memory** %MEMORY
  %loadMem_44197b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 33
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %2321 to i64*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 5
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %RCX.i538 = bitcast %union.anon* %2324 to i64*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 15
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %2327 to i64*
  %2328 = load i64, i64* %RBP.i539
  %2329 = sub i64 %2328, 8
  %2330 = load i64, i64* %PC.i537
  %2331 = add i64 %2330, 4
  store i64 %2331, i64* %PC.i537
  %2332 = inttoptr i64 %2329 to i64*
  %2333 = load i64, i64* %2332
  store i64 %2333, i64* %RCX.i538, align 8
  store %struct.Memory* %loadMem_44197b, %struct.Memory** %MEMORY
  %loadMem_44197f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 33
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %2336 to i64*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 7
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %RDX.i535 = bitcast %union.anon* %2339 to i64*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 15
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %2342 to i64*
  %2343 = load i64, i64* %RBP.i536
  %2344 = sub i64 %2343, 24
  %2345 = load i64, i64* %PC.i534
  %2346 = add i64 %2345, 4
  store i64 %2346, i64* %PC.i534
  %2347 = inttoptr i64 %2344 to i32*
  %2348 = load i32, i32* %2347
  %2349 = sext i32 %2348 to i64
  store i64 %2349, i64* %RDX.i535, align 8
  store %struct.Memory* %loadMem_44197f, %struct.Memory** %MEMORY
  %loadMem_441983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 33
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %2352 to i64*
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 1
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %EAX.i531 = bitcast %union.anon* %2355 to i32*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 5
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 7
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RDX.i533 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %RCX.i532
  %2363 = load i64, i64* %RDX.i533
  %2364 = mul i64 %2363, 4
  %2365 = add i64 %2362, 34884
  %2366 = add i64 %2365, %2364
  %2367 = load i32, i32* %EAX.i531
  %2368 = zext i32 %2367 to i64
  %2369 = load i64, i64* %PC.i530
  %2370 = add i64 %2369, 7
  store i64 %2370, i64* %PC.i530
  %2371 = inttoptr i64 %2366 to i32*
  store i32 %2367, i32* %2371
  store %struct.Memory* %loadMem_441983, %struct.Memory** %MEMORY
  %loadMem_44198a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 33
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 1
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 15
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %2380 to i64*
  %2381 = load i64, i64* %RBP.i529
  %2382 = sub i64 %2381, 44
  %2383 = load i64, i64* %PC.i527
  %2384 = add i64 %2383, 3
  store i64 %2384, i64* %PC.i527
  %2385 = inttoptr i64 %2382 to i32*
  %2386 = load i32, i32* %2385
  %2387 = zext i32 %2386 to i64
  store i64 %2387, i64* %RAX.i528, align 8
  store %struct.Memory* %loadMem_44198a, %struct.Memory** %MEMORY
  %loadMem_44198d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 33
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 5
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 15
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %2396 to i64*
  %2397 = load i64, i64* %RBP.i526
  %2398 = sub i64 %2397, 8
  %2399 = load i64, i64* %PC.i524
  %2400 = add i64 %2399, 4
  store i64 %2400, i64* %PC.i524
  %2401 = inttoptr i64 %2398 to i64*
  %2402 = load i64, i64* %2401
  store i64 %2402, i64* %RCX.i525, align 8
  store %struct.Memory* %loadMem_44198d, %struct.Memory** %MEMORY
  %loadMem_441991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 33
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 7
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %RDX.i522 = bitcast %union.anon* %2408 to i64*
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 15
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %2411 to i64*
  %2412 = load i64, i64* %RBP.i523
  %2413 = sub i64 %2412, 24
  %2414 = load i64, i64* %PC.i521
  %2415 = add i64 %2414, 4
  store i64 %2415, i64* %PC.i521
  %2416 = inttoptr i64 %2413 to i32*
  %2417 = load i32, i32* %2416
  %2418 = sext i32 %2417 to i64
  store i64 %2418, i64* %RDX.i522, align 8
  store %struct.Memory* %loadMem_441991, %struct.Memory** %MEMORY
  %loadMem_441995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 33
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 1
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %EAX.i518 = bitcast %union.anon* %2424 to i32*
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 5
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %RCX.i519 = bitcast %union.anon* %2427 to i64*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 7
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %RDX.i520 = bitcast %union.anon* %2430 to i64*
  %2431 = load i64, i64* %RCX.i519
  %2432 = load i64, i64* %RDX.i520
  %2433 = mul i64 %2432, 4
  %2434 = add i64 %2431, 34924
  %2435 = add i64 %2434, %2433
  %2436 = load i32, i32* %EAX.i518
  %2437 = zext i32 %2436 to i64
  %2438 = load i64, i64* %PC.i517
  %2439 = add i64 %2438, 7
  store i64 %2439, i64* %PC.i517
  %2440 = inttoptr i64 %2435 to i32*
  store i32 %2436, i32* %2440
  store %struct.Memory* %loadMem_441995, %struct.Memory** %MEMORY
  %loadMem_44199c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 33
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %2443 to i64*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 15
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %2446 to i64*
  %2447 = load i64, i64* %RBP.i516
  %2448 = sub i64 %2447, 44
  %2449 = load i64, i64* %PC.i515
  %2450 = add i64 %2449, 4
  store i64 %2450, i64* %PC.i515
  %2451 = inttoptr i64 %2448 to i32*
  %2452 = load i32, i32* %2451
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2453, align 1
  %2454 = and i32 %2452, 255
  %2455 = call i32 @llvm.ctpop.i32(i32 %2454)
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = xor i8 %2457, 1
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2458, i8* %2459, align 1
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2460, align 1
  %2461 = icmp eq i32 %2452, 0
  %2462 = zext i1 %2461 to i8
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2462, i8* %2463, align 1
  %2464 = lshr i32 %2452, 31
  %2465 = trunc i32 %2464 to i8
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2465, i8* %2466, align 1
  %2467 = lshr i32 %2452, 31
  %2468 = xor i32 %2464, %2467
  %2469 = add i32 %2468, %2467
  %2470 = icmp eq i32 %2469, 2
  %2471 = zext i1 %2470 to i8
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2471, i8* %2472, align 1
  store %struct.Memory* %loadMem_44199c, %struct.Memory** %MEMORY
  %loadMem_4419a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 33
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2475 to i64*
  %2476 = load i64, i64* %PC.i514
  %2477 = add i64 %2476, 29
  %2478 = load i64, i64* %PC.i514
  %2479 = add i64 %2478, 6
  %2480 = load i64, i64* %PC.i514
  %2481 = add i64 %2480, 6
  store i64 %2481, i64* %PC.i514
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2483 = load i8, i8* %2482, align 1
  store i8 %2483, i8* %BRANCH_TAKEN, align 1
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2485 = icmp ne i8 %2483, 0
  %2486 = select i1 %2485, i64 %2477, i64 %2479
  store i64 %2486, i64* %2484, align 8
  store %struct.Memory* %loadMem_4419a0, %struct.Memory** %MEMORY
  %loadBr_4419a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4419a0 = icmp eq i8 %loadBr_4419a0, 1
  br i1 %cmpBr_4419a0, label %block_.L_4419bd, label %block_4419a6

block_4419a6:                                     ; preds = %block_441954
  %loadMem_4419a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 1
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 15
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RBP.i513
  %2497 = sub i64 %2496, 48
  %2498 = load i64, i64* %PC.i511
  %2499 = add i64 %2498, 3
  store i64 %2499, i64* %PC.i511
  %2500 = inttoptr i64 %2497 to i32*
  %2501 = load i32, i32* %2500
  %2502 = zext i32 %2501 to i64
  store i64 %2502, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_4419a6, %struct.Memory** %MEMORY
  %loadMem_4419a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 33
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 5
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RCX.i509 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 15
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %2511 to i64*
  %2512 = load i64, i64* %RBP.i510
  %2513 = sub i64 %2512, 8
  %2514 = load i64, i64* %PC.i508
  %2515 = add i64 %2514, 4
  store i64 %2515, i64* %PC.i508
  %2516 = inttoptr i64 %2513 to i64*
  %2517 = load i64, i64* %2516
  store i64 %2517, i64* %RCX.i509, align 8
  store %struct.Memory* %loadMem_4419a9, %struct.Memory** %MEMORY
  %loadMem_4419ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 33
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %2520 to i64*
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 7
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %RDX.i506 = bitcast %union.anon* %2523 to i64*
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 15
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %2526 to i64*
  %2527 = load i64, i64* %RBP.i507
  %2528 = sub i64 %2527, 24
  %2529 = load i64, i64* %PC.i505
  %2530 = add i64 %2529, 4
  store i64 %2530, i64* %PC.i505
  %2531 = inttoptr i64 %2528 to i32*
  %2532 = load i32, i32* %2531
  %2533 = sext i32 %2532 to i64
  store i64 %2533, i64* %RDX.i506, align 8
  store %struct.Memory* %loadMem_4419ad, %struct.Memory** %MEMORY
  %loadMem_4419b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 33
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %2536 to i64*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 1
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %EAX.i502 = bitcast %union.anon* %2539 to i32*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 5
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 7
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RDX.i504 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %RCX.i503
  %2547 = load i64, i64* %RDX.i504
  %2548 = mul i64 %2547, 4
  %2549 = add i64 %2546, 34964
  %2550 = add i64 %2549, %2548
  %2551 = load i32, i32* %EAX.i502
  %2552 = zext i32 %2551 to i64
  %2553 = load i64, i64* %PC.i501
  %2554 = add i64 %2553, 7
  store i64 %2554, i64* %PC.i501
  %2555 = inttoptr i64 %2550 to i32*
  store i32 %2551, i32* %2555
  store %struct.Memory* %loadMem_4419b1, %struct.Memory** %MEMORY
  %loadMem_4419b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2558 to i64*
  %2559 = load i64, i64* %PC.i500
  %2560 = add i64 %2559, 24
  %2561 = load i64, i64* %PC.i500
  %2562 = add i64 %2561, 5
  store i64 %2562, i64* %PC.i500
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2560, i64* %2563, align 8
  store %struct.Memory* %loadMem_4419b8, %struct.Memory** %MEMORY
  br label %block_.L_4419d0

block_.L_4419bd:                                  ; preds = %block_441954
  %loadMem_4419bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 1
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 15
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %2572 to i64*
  %2573 = load i64, i64* %RBP.i499
  %2574 = sub i64 %2573, 8
  %2575 = load i64, i64* %PC.i497
  %2576 = add i64 %2575, 4
  store i64 %2576, i64* %PC.i497
  %2577 = inttoptr i64 %2574 to i64*
  %2578 = load i64, i64* %2577
  store i64 %2578, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_4419bd, %struct.Memory** %MEMORY
  %loadMem_4419c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 33
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %2581 to i64*
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 5
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %2584 to i64*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 15
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %2587 to i64*
  %2588 = load i64, i64* %RBP.i496
  %2589 = sub i64 %2588, 24
  %2590 = load i64, i64* %PC.i494
  %2591 = add i64 %2590, 4
  store i64 %2591, i64* %PC.i494
  %2592 = inttoptr i64 %2589 to i32*
  %2593 = load i32, i32* %2592
  %2594 = sext i32 %2593 to i64
  store i64 %2594, i64* %RCX.i495, align 8
  store %struct.Memory* %loadMem_4419c1, %struct.Memory** %MEMORY
  %loadMem_4419c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 33
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 1
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %2600 to i64*
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 5
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %RCX.i493 = bitcast %union.anon* %2603 to i64*
  %2604 = load i64, i64* %RAX.i492
  %2605 = load i64, i64* %RCX.i493
  %2606 = mul i64 %2605, 4
  %2607 = add i64 %2604, 34964
  %2608 = add i64 %2607, %2606
  %2609 = load i64, i64* %PC.i491
  %2610 = add i64 %2609, 11
  store i64 %2610, i64* %PC.i491
  %2611 = inttoptr i64 %2608 to i32*
  store i32 0, i32* %2611
  store %struct.Memory* %loadMem_4419c5, %struct.Memory** %MEMORY
  br label %block_.L_4419d0

block_.L_4419d0:                                  ; preds = %block_.L_4419bd, %block_4419a6
  %loadMem_4419d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 33
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 1
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 15
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %2620 to i64*
  %2621 = load i64, i64* %RBP.i490
  %2622 = sub i64 %2621, 24
  %2623 = load i64, i64* %PC.i488
  %2624 = add i64 %2623, 3
  store i64 %2624, i64* %PC.i488
  %2625 = inttoptr i64 %2622 to i32*
  %2626 = load i32, i32* %2625
  %2627 = zext i32 %2626 to i64
  store i64 %2627, i64* %RAX.i489, align 8
  store %struct.Memory* %loadMem_4419d0, %struct.Memory** %MEMORY
  %loadMem_4419d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 33
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 1
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %2633 to i64*
  %2634 = load i64, i64* %RAX.i487
  %2635 = load i64, i64* %PC.i486
  %2636 = add i64 %2635, 3
  store i64 %2636, i64* %PC.i486
  %2637 = trunc i64 %2634 to i32
  %2638 = add i32 1, %2637
  %2639 = zext i32 %2638 to i64
  store i64 %2639, i64* %RAX.i487, align 8
  %2640 = icmp ult i32 %2638, %2637
  %2641 = icmp ult i32 %2638, 1
  %2642 = or i1 %2640, %2641
  %2643 = zext i1 %2642 to i8
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2643, i8* %2644, align 1
  %2645 = and i32 %2638, 255
  %2646 = call i32 @llvm.ctpop.i32(i32 %2645)
  %2647 = trunc i32 %2646 to i8
  %2648 = and i8 %2647, 1
  %2649 = xor i8 %2648, 1
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2649, i8* %2650, align 1
  %2651 = xor i64 1, %2634
  %2652 = trunc i64 %2651 to i32
  %2653 = xor i32 %2652, %2638
  %2654 = lshr i32 %2653, 4
  %2655 = trunc i32 %2654 to i8
  %2656 = and i8 %2655, 1
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2656, i8* %2657, align 1
  %2658 = icmp eq i32 %2638, 0
  %2659 = zext i1 %2658 to i8
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2659, i8* %2660, align 1
  %2661 = lshr i32 %2638, 31
  %2662 = trunc i32 %2661 to i8
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2662, i8* %2663, align 1
  %2664 = lshr i32 %2637, 31
  %2665 = xor i32 %2661, %2664
  %2666 = add i32 %2665, %2661
  %2667 = icmp eq i32 %2666, 2
  %2668 = zext i1 %2667 to i8
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2668, i8* %2669, align 1
  store %struct.Memory* %loadMem_4419d3, %struct.Memory** %MEMORY
  %loadMem_4419d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2671 = getelementptr inbounds %struct.GPR, %struct.GPR* %2670, i32 0, i32 33
  %2672 = getelementptr inbounds %struct.Reg, %struct.Reg* %2671, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %2672 to i64*
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 1
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %EAX.i484 = bitcast %union.anon* %2675 to i32*
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2677 = getelementptr inbounds %struct.GPR, %struct.GPR* %2676, i32 0, i32 15
  %2678 = getelementptr inbounds %struct.Reg, %struct.Reg* %2677, i32 0, i32 0
  %RBP.i485 = bitcast %union.anon* %2678 to i64*
  %2679 = load i64, i64* %RBP.i485
  %2680 = sub i64 %2679, 24
  %2681 = load i32, i32* %EAX.i484
  %2682 = zext i32 %2681 to i64
  %2683 = load i64, i64* %PC.i483
  %2684 = add i64 %2683, 3
  store i64 %2684, i64* %PC.i483
  %2685 = inttoptr i64 %2680 to i32*
  store i32 %2681, i32* %2685
  store %struct.Memory* %loadMem_4419d6, %struct.Memory** %MEMORY
  %loadMem_4419d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2687 = getelementptr inbounds %struct.GPR, %struct.GPR* %2686, i32 0, i32 33
  %2688 = getelementptr inbounds %struct.Reg, %struct.Reg* %2687, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %2688 to i64*
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 15
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %2691 to i64*
  %2692 = load i64, i64* %RBP.i482
  %2693 = sub i64 %2692, 24
  %2694 = load i64, i64* %PC.i481
  %2695 = add i64 %2694, 4
  store i64 %2695, i64* %PC.i481
  %2696 = inttoptr i64 %2693 to i32*
  %2697 = load i32, i32* %2696
  %2698 = sub i32 %2697, 10
  %2699 = icmp ult i32 %2697, 10
  %2700 = zext i1 %2699 to i8
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2700, i8* %2701, align 1
  %2702 = and i32 %2698, 255
  %2703 = call i32 @llvm.ctpop.i32(i32 %2702)
  %2704 = trunc i32 %2703 to i8
  %2705 = and i8 %2704, 1
  %2706 = xor i8 %2705, 1
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2706, i8* %2707, align 1
  %2708 = xor i32 %2697, 10
  %2709 = xor i32 %2708, %2698
  %2710 = lshr i32 %2709, 4
  %2711 = trunc i32 %2710 to i8
  %2712 = and i8 %2711, 1
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2712, i8* %2713, align 1
  %2714 = icmp eq i32 %2698, 0
  %2715 = zext i1 %2714 to i8
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2715, i8* %2716, align 1
  %2717 = lshr i32 %2698, 31
  %2718 = trunc i32 %2717 to i8
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2718, i8* %2719, align 1
  %2720 = lshr i32 %2697, 31
  %2721 = xor i32 %2717, %2720
  %2722 = add i32 %2721, %2720
  %2723 = icmp eq i32 %2722, 2
  %2724 = zext i1 %2723 to i8
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2724, i8* %2725, align 1
  store %struct.Memory* %loadMem_4419d9, %struct.Memory** %MEMORY
  %loadMem_4419dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2727 = getelementptr inbounds %struct.GPR, %struct.GPR* %2726, i32 0, i32 33
  %2728 = getelementptr inbounds %struct.Reg, %struct.Reg* %2727, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %2728 to i64*
  %2729 = load i64, i64* %PC.i480
  %2730 = add i64 %2729, 53
  %2731 = load i64, i64* %PC.i480
  %2732 = add i64 %2731, 6
  %2733 = load i64, i64* %PC.i480
  %2734 = add i64 %2733, 6
  store i64 %2734, i64* %PC.i480
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2736 = load i8, i8* %2735, align 1
  %2737 = icmp eq i8 %2736, 0
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %BRANCH_TAKEN, align 1
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2740 = select i1 %2737, i64 %2730, i64 %2732
  store i64 %2740, i64* %2739, align 8
  store %struct.Memory* %loadMem_4419dd, %struct.Memory** %MEMORY
  %loadBr_4419dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4419dd = icmp eq i8 %loadBr_4419dd, 1
  br i1 %cmpBr_4419dd, label %block_.L_441a12, label %block_4419e3

block_4419e3:                                     ; preds = %block_.L_4419d0
  %loadMem_4419e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 33
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %2743 to i64*
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 1
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %2746 to i64*
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 15
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %2749 to i64*
  %2750 = load i64, i64* %RBP.i479
  %2751 = sub i64 %2750, 472
  %2752 = load i64, i64* %PC.i477
  %2753 = add i64 %2752, 7
  store i64 %2753, i64* %PC.i477
  %2754 = inttoptr i64 %2751 to i64*
  %2755 = load i64, i64* %2754
  store i64 %2755, i64* %RAX.i478, align 8
  store %struct.Memory* %loadMem_4419e3, %struct.Memory** %MEMORY
  %loadMem_4419ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 1
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %2761 to i64*
  %2762 = load i64, i64* %RAX.i476
  %2763 = load i64, i64* %PC.i475
  %2764 = add i64 %2763, 8
  store i64 %2764, i64* %PC.i475
  store i64 %2762, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store %struct.Memory* %loadMem_4419ea, %struct.Memory** %MEMORY
  %loadMem_4419f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 33
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %2767 to i64*
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 5
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %RCX.i473 = bitcast %union.anon* %2770 to i64*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 15
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %2773 to i64*
  %2774 = load i64, i64* %RBP.i474
  %2775 = sub i64 %2774, 476
  %2776 = load i64, i64* %PC.i472
  %2777 = add i64 %2776, 6
  store i64 %2777, i64* %PC.i472
  %2778 = inttoptr i64 %2775 to i32*
  %2779 = load i32, i32* %2778
  %2780 = zext i32 %2779 to i64
  store i64 %2780, i64* %RCX.i473, align 8
  store %struct.Memory* %loadMem_4419f2, %struct.Memory** %MEMORY
  %loadMem_4419f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 33
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 5
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %ECX.i471 = bitcast %union.anon* %2786 to i32*
  %2787 = load i32, i32* %ECX.i471
  %2788 = zext i32 %2787 to i64
  %2789 = load i64, i64* %PC.i470
  %2790 = add i64 %2789, 7
  store i64 %2790, i64* %PC.i470
  store i32 %2787, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  store %struct.Memory* %loadMem_4419f8, %struct.Memory** %MEMORY
  %loadMem_4419ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 33
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %2793 to i64*
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 1
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 15
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %2799 to i64*
  %2800 = load i64, i64* %RBP.i469
  %2801 = sub i64 %2800, 8
  %2802 = load i64, i64* %PC.i467
  %2803 = add i64 %2802, 4
  store i64 %2803, i64* %PC.i467
  %2804 = inttoptr i64 %2801 to i64*
  %2805 = load i64, i64* %2804
  store i64 %2805, i64* %RAX.i468, align 8
  store %struct.Memory* %loadMem_4419ff, %struct.Memory** %MEMORY
  %loadMem_441a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 33
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2808 to i64*
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 1
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %RAX.i466 = bitcast %union.anon* %2811 to i64*
  %2812 = load i64, i64* %RAX.i466
  %2813 = add i64 %2812, 35404
  %2814 = load i64, i64* %PC.i465
  %2815 = add i64 %2814, 10
  store i64 %2815, i64* %PC.i465
  %2816 = inttoptr i64 %2813 to i32*
  store i32 1, i32* %2816
  store %struct.Memory* %loadMem_441a03, %struct.Memory** %MEMORY
  %loadMem_441a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 33
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %2819 to i64*
  %2820 = load i64, i64* %PC.i464
  %2821 = add i64 %2820, 1238
  %2822 = load i64, i64* %PC.i464
  %2823 = add i64 %2822, 5
  store i64 %2823, i64* %PC.i464
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2821, i64* %2824, align 8
  store %struct.Memory* %loadMem_441a0d, %struct.Memory** %MEMORY
  br label %block_.L_441ee3

block_.L_441a12:                                  ; preds = %block_.L_4419d0
  %loadMem_441a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 33
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %2827 to i64*
  %2828 = load i64, i64* %PC.i463
  %2829 = add i64 %2828, 1129
  %2830 = load i64, i64* %PC.i463
  %2831 = add i64 %2830, 5
  store i64 %2831, i64* %PC.i463
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2829, i64* %2832, align 8
  store %struct.Memory* %loadMem_441a12, %struct.Memory** %MEMORY
  br label %block_.L_441e7b

block_.L_441a17:                                  ; preds = %block_.L_441920
  %loadMem_441a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 33
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %2835 to i64*
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 1
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 15
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %2841 to i64*
  %2842 = load i64, i64* %RBP.i462
  %2843 = sub i64 %2842, 8
  %2844 = load i64, i64* %PC.i460
  %2845 = add i64 %2844, 4
  store i64 %2845, i64* %PC.i460
  %2846 = inttoptr i64 %2843 to i64*
  %2847 = load i64, i64* %2846
  store i64 %2847, i64* %RAX.i461, align 8
  store %struct.Memory* %loadMem_441a17, %struct.Memory** %MEMORY
  %loadMem_441a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 33
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %2850 to i64*
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 5
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %RCX.i458 = bitcast %union.anon* %2853 to i64*
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 15
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %2856 to i64*
  %2857 = load i64, i64* %RBP.i459
  %2858 = sub i64 %2857, 32
  %2859 = load i64, i64* %PC.i457
  %2860 = add i64 %2859, 4
  store i64 %2860, i64* %PC.i457
  %2861 = inttoptr i64 %2858 to i32*
  %2862 = load i32, i32* %2861
  %2863 = sext i32 %2862 to i64
  store i64 %2863, i64* %RCX.i458, align 8
  store %struct.Memory* %loadMem_441a1b, %struct.Memory** %MEMORY
  %loadMem_441a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 33
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 1
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 5
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RCX.i456 = bitcast %union.anon* %2872 to i64*
  %2873 = load i64, i64* %RAX.i455
  %2874 = load i64, i64* %RCX.i456
  %2875 = add i64 %2873, 35004
  %2876 = add i64 %2875, %2874
  %2877 = load i64, i64* %PC.i454
  %2878 = add i64 %2877, 8
  store i64 %2878, i64* %PC.i454
  %2879 = inttoptr i64 %2876 to i8*
  %2880 = load i8, i8* %2879
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2881, align 1
  %2882 = zext i8 %2880 to i32
  %2883 = call i32 @llvm.ctpop.i32(i32 %2882)
  %2884 = trunc i32 %2883 to i8
  %2885 = and i8 %2884, 1
  %2886 = xor i8 %2885, 1
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2886, i8* %2887, align 1
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2888, align 1
  %2889 = icmp eq i8 %2880, 0
  %2890 = zext i1 %2889 to i8
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2890, i8* %2891, align 1
  %2892 = lshr i8 %2880, 7
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2892, i8* %2893, align 1
  %2894 = lshr i8 %2880, 7
  %2895 = xor i8 %2892, %2894
  %2896 = add i8 %2895, %2894
  %2897 = icmp eq i8 %2896, 2
  %2898 = zext i1 %2897 to i8
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2898, i8* %2899, align 1
  store %struct.Memory* %loadMem_441a1f, %struct.Memory** %MEMORY
  %loadMem_441a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 33
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %PC.i453
  %2904 = add i64 %2903, 1103
  %2905 = load i64, i64* %PC.i453
  %2906 = add i64 %2905, 6
  %2907 = load i64, i64* %PC.i453
  %2908 = add i64 %2907, 6
  store i64 %2908, i64* %PC.i453
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2910 = load i8, i8* %2909, align 1
  %2911 = icmp eq i8 %2910, 0
  %2912 = zext i1 %2911 to i8
  store i8 %2912, i8* %BRANCH_TAKEN, align 1
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2914 = select i1 %2911, i64 %2904, i64 %2906
  store i64 %2914, i64* %2913, align 8
  store %struct.Memory* %loadMem_441a27, %struct.Memory** %MEMORY
  %loadBr_441a27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441a27 = icmp eq i8 %loadBr_441a27, 1
  br i1 %cmpBr_441a27, label %block_.L_441e76, label %block_441a2d

block_441a2d:                                     ; preds = %block_.L_441a17
  %loadMem_441a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 33
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 9
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RSI.i451 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 15
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %2923 to i64*
  %2924 = load i64, i64* %RBP.i452
  %2925 = sub i64 %2924, 1136
  %2926 = load i64, i64* %PC.i450
  %2927 = add i64 %2926, 7
  store i64 %2927, i64* %PC.i450
  store i64 %2925, i64* %RSI.i451, align 8
  store %struct.Memory* %loadMem_441a2d, %struct.Memory** %MEMORY
  %loadMem_441a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 15
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %2933 to i64*
  %2934 = load i64, i64* %RBP.i449
  %2935 = sub i64 %2934, 3576
  %2936 = load i64, i64* %PC.i448
  %2937 = add i64 %2936, 10
  store i64 %2937, i64* %PC.i448
  %2938 = inttoptr i64 %2935 to i32*
  store i32 0, i32* %2938
  store %struct.Memory* %loadMem_441a34, %struct.Memory** %MEMORY
  %loadMem_441a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 33
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 11
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %RDI.i446 = bitcast %union.anon* %2944 to i64*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 15
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %2947 to i64*
  %2948 = load i64, i64* %RBP.i447
  %2949 = sub i64 %2948, 32
  %2950 = load i64, i64* %PC.i445
  %2951 = add i64 %2950, 3
  store i64 %2951, i64* %PC.i445
  %2952 = inttoptr i64 %2949 to i32*
  %2953 = load i32, i32* %2952
  %2954 = zext i32 %2953 to i64
  store i64 %2954, i64* %RDI.i446, align 8
  store %struct.Memory* %loadMem_441a3e, %struct.Memory** %MEMORY
  %loadMem1_441a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %2957 to i64*
  %2958 = load i64, i64* %PC.i444
  %2959 = add i64 %2958, -188225
  %2960 = load i64, i64* %PC.i444
  %2961 = add i64 %2960, 5
  %2962 = load i64, i64* %PC.i444
  %2963 = add i64 %2962, 5
  store i64 %2963, i64* %PC.i444
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2965 = load i64, i64* %2964, align 8
  %2966 = add i64 %2965, -8
  %2967 = inttoptr i64 %2966 to i64*
  store i64 %2961, i64* %2967
  store i64 %2966, i64* %2964, align 8
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2959, i64* %2968, align 8
  store %struct.Memory* %loadMem1_441a41, %struct.Memory** %MEMORY
  %loadMem2_441a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441a41 = load i64, i64* %3
  %call2_441a41 = call %struct.Memory* @sub_413b00.chainlinks(%struct.State* %0, i64 %loadPC_441a41, %struct.Memory* %loadMem2_441a41)
  store %struct.Memory* %call2_441a41, %struct.Memory** %MEMORY
  %loadMem_441a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 33
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 1
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %EAX.i442 = bitcast %union.anon* %2974 to i32*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 15
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %2977 to i64*
  %2978 = load i64, i64* %RBP.i443
  %2979 = sub i64 %2978, 488
  %2980 = load i32, i32* %EAX.i442
  %2981 = zext i32 %2980 to i64
  %2982 = load i64, i64* %PC.i441
  %2983 = add i64 %2982, 6
  store i64 %2983, i64* %PC.i441
  %2984 = inttoptr i64 %2979 to i32*
  store i32 %2980, i32* %2984
  store %struct.Memory* %loadMem_441a46, %struct.Memory** %MEMORY
  %loadMem_441a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 33
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %2987 to i64*
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 15
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %2990 to i64*
  %2991 = load i64, i64* %RBP.i440
  %2992 = sub i64 %2991, 3572
  %2993 = load i64, i64* %PC.i439
  %2994 = add i64 %2993, 10
  store i64 %2994, i64* %PC.i439
  %2995 = inttoptr i64 %2992 to i32*
  store i32 0, i32* %2995
  store %struct.Memory* %loadMem_441a4c, %struct.Memory** %MEMORY
  br label %block_.L_441a56

block_.L_441a56:                                  ; preds = %block_.L_441ab9, %block_441a2d
  %loadMem_441a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 1
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 15
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %3004 to i64*
  %3005 = load i64, i64* %RBP.i438
  %3006 = sub i64 %3005, 3572
  %3007 = load i64, i64* %PC.i436
  %3008 = add i64 %3007, 6
  store i64 %3008, i64* %PC.i436
  %3009 = inttoptr i64 %3006 to i32*
  %3010 = load i32, i32* %3009
  %3011 = zext i32 %3010 to i64
  store i64 %3011, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_441a56, %struct.Memory** %MEMORY
  %loadMem_441a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 33
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %3014 to i64*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 1
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %EAX.i434 = bitcast %union.anon* %3017 to i32*
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 15
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %3020 to i64*
  %3021 = load i32, i32* %EAX.i434
  %3022 = zext i32 %3021 to i64
  %3023 = load i64, i64* %RBP.i435
  %3024 = sub i64 %3023, 488
  %3025 = load i64, i64* %PC.i433
  %3026 = add i64 %3025, 6
  store i64 %3026, i64* %PC.i433
  %3027 = inttoptr i64 %3024 to i32*
  %3028 = load i32, i32* %3027
  %3029 = sub i32 %3021, %3028
  %3030 = icmp ult i32 %3021, %3028
  %3031 = zext i1 %3030 to i8
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3031, i8* %3032, align 1
  %3033 = and i32 %3029, 255
  %3034 = call i32 @llvm.ctpop.i32(i32 %3033)
  %3035 = trunc i32 %3034 to i8
  %3036 = and i8 %3035, 1
  %3037 = xor i8 %3036, 1
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3037, i8* %3038, align 1
  %3039 = xor i32 %3028, %3021
  %3040 = xor i32 %3039, %3029
  %3041 = lshr i32 %3040, 4
  %3042 = trunc i32 %3041 to i8
  %3043 = and i8 %3042, 1
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3043, i8* %3044, align 1
  %3045 = icmp eq i32 %3029, 0
  %3046 = zext i1 %3045 to i8
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3046, i8* %3047, align 1
  %3048 = lshr i32 %3029, 31
  %3049 = trunc i32 %3048 to i8
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3049, i8* %3050, align 1
  %3051 = lshr i32 %3021, 31
  %3052 = lshr i32 %3028, 31
  %3053 = xor i32 %3052, %3051
  %3054 = xor i32 %3048, %3051
  %3055 = add i32 %3054, %3053
  %3056 = icmp eq i32 %3055, 2
  %3057 = zext i1 %3056 to i8
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3057, i8* %3058, align 1
  store %struct.Memory* %loadMem_441a5c, %struct.Memory** %MEMORY
  %loadMem_441a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3060 = getelementptr inbounds %struct.GPR, %struct.GPR* %3059, i32 0, i32 33
  %3061 = getelementptr inbounds %struct.Reg, %struct.Reg* %3060, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %3061 to i64*
  %3062 = load i64, i64* %PC.i432
  %3063 = add i64 %3062, 107
  %3064 = load i64, i64* %PC.i432
  %3065 = add i64 %3064, 6
  %3066 = load i64, i64* %PC.i432
  %3067 = add i64 %3066, 6
  store i64 %3067, i64* %PC.i432
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3069 = load i8, i8* %3068, align 1
  %3070 = icmp ne i8 %3069, 0
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3072 = load i8, i8* %3071, align 1
  %3073 = icmp ne i8 %3072, 0
  %3074 = xor i1 %3070, %3073
  %3075 = xor i1 %3074, true
  %3076 = zext i1 %3075 to i8
  store i8 %3076, i8* %BRANCH_TAKEN, align 1
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3078 = select i1 %3074, i64 %3065, i64 %3063
  store i64 %3078, i64* %3077, align 8
  store %struct.Memory* %loadMem_441a62, %struct.Memory** %MEMORY
  %loadBr_441a62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441a62 = icmp eq i8 %loadBr_441a62, 1
  br i1 %cmpBr_441a62, label %block_.L_441acd, label %block_441a68

block_441a68:                                     ; preds = %block_.L_441a56
  %loadMem_441a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 33
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %3081 to i64*
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 1
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 15
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %3087 to i64*
  %3088 = load i64, i64* %RBP.i431
  %3089 = sub i64 %3088, 8
  %3090 = load i64, i64* %PC.i429
  %3091 = add i64 %3090, 4
  store i64 %3091, i64* %PC.i429
  %3092 = inttoptr i64 %3089 to i64*
  %3093 = load i64, i64* %3092
  store i64 %3093, i64* %RAX.i430, align 8
  store %struct.Memory* %loadMem_441a68, %struct.Memory** %MEMORY
  %loadMem_441a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 33
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %3096 to i64*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 5
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 15
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %3102 to i64*
  %3103 = load i64, i64* %RBP.i428
  %3104 = sub i64 %3103, 3572
  %3105 = load i64, i64* %PC.i426
  %3106 = add i64 %3105, 7
  store i64 %3106, i64* %PC.i426
  %3107 = inttoptr i64 %3104 to i32*
  %3108 = load i32, i32* %3107
  %3109 = sext i32 %3108 to i64
  store i64 %3109, i64* %RCX.i427, align 8
  store %struct.Memory* %loadMem_441a6c, %struct.Memory** %MEMORY
  %loadMem_441a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 5
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %3115 to i64*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 15
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %3118 to i64*
  %3119 = load i64, i64* %RBP.i425
  %3120 = load i64, i64* %RCX.i424
  %3121 = mul i64 %3120, 4
  %3122 = add i64 %3119, -1136
  %3123 = add i64 %3122, %3121
  %3124 = load i64, i64* %PC.i423
  %3125 = add i64 %3124, 8
  store i64 %3125, i64* %PC.i423
  %3126 = inttoptr i64 %3123 to i32*
  %3127 = load i32, i32* %3126
  %3128 = sext i32 %3127 to i64
  store i64 %3128, i64* %RCX.i424, align 8
  store %struct.Memory* %loadMem_441a73, %struct.Memory** %MEMORY
  %loadMem_441a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 33
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 1
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %3134 to i64*
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 5
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %RCX.i422 = bitcast %union.anon* %3137 to i64*
  %3138 = load i64, i64* %RAX.i421
  %3139 = load i64, i64* %RCX.i422
  %3140 = add i64 %3139, %3138
  %3141 = load i64, i64* %PC.i420
  %3142 = add i64 %3141, 4
  store i64 %3142, i64* %PC.i420
  %3143 = inttoptr i64 %3140 to i8*
  %3144 = load i8, i8* %3143
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3145, align 1
  %3146 = zext i8 %3144 to i32
  %3147 = call i32 @llvm.ctpop.i32(i32 %3146)
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  %3150 = xor i8 %3149, 1
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3150, i8* %3151, align 1
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3152, align 1
  %3153 = icmp eq i8 %3144, 0
  %3154 = zext i1 %3153 to i8
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3154, i8* %3155, align 1
  %3156 = lshr i8 %3144, 7
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3156, i8* %3157, align 1
  %3158 = lshr i8 %3144, 7
  %3159 = xor i8 %3156, %3158
  %3160 = add i8 %3159, %3158
  %3161 = icmp eq i8 %3160, 2
  %3162 = zext i1 %3161 to i8
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3162, i8* %3163, align 1
  store %struct.Memory* %loadMem_441a7b, %struct.Memory** %MEMORY
  %loadMem_441a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 33
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %3166 to i64*
  %3167 = load i64, i64* %PC.i419
  %3168 = add i64 %3167, 38
  %3169 = load i64, i64* %PC.i419
  %3170 = add i64 %3169, 6
  %3171 = load i64, i64* %PC.i419
  %3172 = add i64 %3171, 6
  store i64 %3172, i64* %PC.i419
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3174 = load i8, i8* %3173, align 1
  store i8 %3174, i8* %BRANCH_TAKEN, align 1
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3176 = icmp ne i8 %3174, 0
  %3177 = select i1 %3176, i64 %3168, i64 %3170
  store i64 %3177, i64* %3175, align 8
  store %struct.Memory* %loadMem_441a7f, %struct.Memory** %MEMORY
  %loadBr_441a7f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441a7f = icmp eq i8 %loadBr_441a7f, 1
  br i1 %cmpBr_441a7f, label %block_.L_441aa5, label %block_441a85

block_441a85:                                     ; preds = %block_441a68
  %loadMem_441a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 1
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %EAX.i417 = bitcast %union.anon* %3183 to i32*
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 1
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %3186 to i64*
  %3187 = load i64, i64* %RAX.i418
  %3188 = load i32, i32* %EAX.i417
  %3189 = zext i32 %3188 to i64
  %3190 = load i64, i64* %PC.i416
  %3191 = add i64 %3190, 2
  store i64 %3191, i64* %PC.i416
  %3192 = xor i64 %3189, %3187
  %3193 = trunc i64 %3192 to i32
  %3194 = and i64 %3192, 4294967295
  store i64 %3194, i64* %RAX.i418, align 8
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3195, align 1
  %3196 = and i32 %3193, 255
  %3197 = call i32 @llvm.ctpop.i32(i32 %3196)
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  %3200 = xor i8 %3199, 1
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3200, i8* %3201, align 1
  %3202 = icmp eq i32 %3193, 0
  %3203 = zext i1 %3202 to i8
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3203, i8* %3204, align 1
  %3205 = lshr i32 %3193, 31
  %3206 = trunc i32 %3205 to i8
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3206, i8* %3207, align 1
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3208, align 1
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3209, align 1
  store %struct.Memory* %loadMem_441a85, %struct.Memory** %MEMORY
  %loadMem_441a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %3212 to i64*
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 1
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %EAX.i414 = bitcast %union.anon* %3215 to i32*
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 9
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %RSI.i415 = bitcast %union.anon* %3218 to i64*
  %3219 = load i32, i32* %EAX.i414
  %3220 = zext i32 %3219 to i64
  %3221 = load i64, i64* %PC.i413
  %3222 = add i64 %3221, 2
  store i64 %3222, i64* %PC.i413
  %3223 = and i64 %3220, 4294967295
  store i64 %3223, i64* %RSI.i415, align 8
  store %struct.Memory* %loadMem_441a87, %struct.Memory** %MEMORY
  %loadMem_441a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 33
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3226 to i64*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 5
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %RCX.i411 = bitcast %union.anon* %3229 to i64*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 15
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %RBP.i412 = bitcast %union.anon* %3232 to i64*
  %3233 = load i64, i64* %RBP.i412
  %3234 = sub i64 %3233, 3572
  %3235 = load i64, i64* %PC.i410
  %3236 = add i64 %3235, 7
  store i64 %3236, i64* %PC.i410
  %3237 = inttoptr i64 %3234 to i32*
  %3238 = load i32, i32* %3237
  %3239 = sext i32 %3238 to i64
  store i64 %3239, i64* %RCX.i411, align 8
  store %struct.Memory* %loadMem_441a89, %struct.Memory** %MEMORY
  %loadMem_441a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 5
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 11
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %RDI.i408 = bitcast %union.anon* %3248 to i64*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 15
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %3251 to i64*
  %3252 = load i64, i64* %RBP.i409
  %3253 = load i64, i64* %RCX.i407
  %3254 = mul i64 %3253, 4
  %3255 = add i64 %3252, -1136
  %3256 = add i64 %3255, %3254
  %3257 = load i64, i64* %PC.i406
  %3258 = add i64 %3257, 7
  store i64 %3258, i64* %PC.i406
  %3259 = inttoptr i64 %3256 to i32*
  %3260 = load i32, i32* %3259
  %3261 = zext i32 %3260 to i64
  store i64 %3261, i64* %RDI.i408, align 8
  store %struct.Memory* %loadMem_441a90, %struct.Memory** %MEMORY
  %loadMem1_441a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 33
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3264 to i64*
  %3265 = load i64, i64* %PC.i405
  %3266 = add i64 %3265, 114857
  %3267 = load i64, i64* %PC.i405
  %3268 = add i64 %3267, 5
  %3269 = load i64, i64* %PC.i405
  %3270 = add i64 %3269, 5
  store i64 %3270, i64* %PC.i405
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3272 = load i64, i64* %3271, align 8
  %3273 = add i64 %3272, -8
  %3274 = inttoptr i64 %3273 to i64*
  store i64 %3268, i64* %3274
  store i64 %3273, i64* %3271, align 8
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3266, i64* %3275, align 8
  store %struct.Memory* %loadMem1_441a97, %struct.Memory** %MEMORY
  %loadMem2_441a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441a97 = load i64, i64* %3
  %call2_441a97 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_441a97, %struct.Memory* %loadMem2_441a97)
  store %struct.Memory* %call2_441a97, %struct.Memory** %MEMORY
  %loadMem_441a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 33
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %3278 to i64*
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 1
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %EAX.i404 = bitcast %union.anon* %3281 to i32*
  %3282 = load i32, i32* %EAX.i404
  %3283 = zext i32 %3282 to i64
  %3284 = load i64, i64* %PC.i403
  %3285 = add i64 %3284, 3
  store i64 %3285, i64* %PC.i403
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3286, align 1
  %3287 = and i32 %3282, 255
  %3288 = call i32 @llvm.ctpop.i32(i32 %3287)
  %3289 = trunc i32 %3288 to i8
  %3290 = and i8 %3289, 1
  %3291 = xor i8 %3290, 1
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3291, i8* %3292, align 1
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3293, align 1
  %3294 = icmp eq i32 %3282, 0
  %3295 = zext i1 %3294 to i8
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3295, i8* %3296, align 1
  %3297 = lshr i32 %3282, 31
  %3298 = trunc i32 %3297 to i8
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3298, i8* %3299, align 1
  %3300 = lshr i32 %3282, 31
  %3301 = xor i32 %3297, %3300
  %3302 = add i32 %3301, %3300
  %3303 = icmp eq i32 %3302, 2
  %3304 = zext i1 %3303 to i8
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3304, i8* %3305, align 1
  store %struct.Memory* %loadMem_441a9c, %struct.Memory** %MEMORY
  %loadMem_441a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3307 = getelementptr inbounds %struct.GPR, %struct.GPR* %3306, i32 0, i32 33
  %3308 = getelementptr inbounds %struct.Reg, %struct.Reg* %3307, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %3308 to i64*
  %3309 = load i64, i64* %PC.i402
  %3310 = add i64 %3309, 21
  %3311 = load i64, i64* %PC.i402
  %3312 = add i64 %3311, 6
  %3313 = load i64, i64* %PC.i402
  %3314 = add i64 %3313, 6
  store i64 %3314, i64* %PC.i402
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3316 = load i8, i8* %3315, align 1
  store i8 %3316, i8* %BRANCH_TAKEN, align 1
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3318 = icmp ne i8 %3316, 0
  %3319 = select i1 %3318, i64 %3310, i64 %3312
  store i64 %3319, i64* %3317, align 8
  store %struct.Memory* %loadMem_441a9f, %struct.Memory** %MEMORY
  %loadBr_441a9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441a9f = icmp eq i8 %loadBr_441a9f, 1
  br i1 %cmpBr_441a9f, label %block_.L_441ab4, label %block_.L_441aa5

block_.L_441aa5:                                  ; preds = %block_441a85, %block_441a68
  %loadMem_441aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 33
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3322 to i64*
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 15
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %3325 to i64*
  %3326 = load i64, i64* %RBP.i401
  %3327 = sub i64 %3326, 3576
  %3328 = load i64, i64* %PC.i400
  %3329 = add i64 %3328, 10
  store i64 %3329, i64* %PC.i400
  %3330 = inttoptr i64 %3327 to i32*
  store i32 1, i32* %3330
  store %struct.Memory* %loadMem_441aa5, %struct.Memory** %MEMORY
  %loadMem_441aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 33
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %3333 to i64*
  %3334 = load i64, i64* %PC.i399
  %3335 = add i64 %3334, 30
  %3336 = load i64, i64* %PC.i399
  %3337 = add i64 %3336, 5
  store i64 %3337, i64* %PC.i399
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3335, i64* %3338, align 8
  store %struct.Memory* %loadMem_441aaf, %struct.Memory** %MEMORY
  br label %block_.L_441acd

block_.L_441ab4:                                  ; preds = %block_441a85
  %loadMem_441ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 33
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %3341 to i64*
  %3342 = load i64, i64* %PC.i398
  %3343 = add i64 %3342, 5
  %3344 = load i64, i64* %PC.i398
  %3345 = add i64 %3344, 5
  store i64 %3345, i64* %PC.i398
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3343, i64* %3346, align 8
  store %struct.Memory* %loadMem_441ab4, %struct.Memory** %MEMORY
  br label %block_.L_441ab9

block_.L_441ab9:                                  ; preds = %block_.L_441ab4
  %loadMem_441ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 33
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %3349 to i64*
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3351 = getelementptr inbounds %struct.GPR, %struct.GPR* %3350, i32 0, i32 1
  %3352 = getelementptr inbounds %struct.Reg, %struct.Reg* %3351, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %3352 to i64*
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 15
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %3355 to i64*
  %3356 = load i64, i64* %RBP.i397
  %3357 = sub i64 %3356, 3572
  %3358 = load i64, i64* %PC.i395
  %3359 = add i64 %3358, 6
  store i64 %3359, i64* %PC.i395
  %3360 = inttoptr i64 %3357 to i32*
  %3361 = load i32, i32* %3360
  %3362 = zext i32 %3361 to i64
  store i64 %3362, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_441ab9, %struct.Memory** %MEMORY
  %loadMem_441abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 1
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %3368 to i64*
  %3369 = load i64, i64* %RAX.i394
  %3370 = load i64, i64* %PC.i393
  %3371 = add i64 %3370, 3
  store i64 %3371, i64* %PC.i393
  %3372 = trunc i64 %3369 to i32
  %3373 = add i32 1, %3372
  %3374 = zext i32 %3373 to i64
  store i64 %3374, i64* %RAX.i394, align 8
  %3375 = icmp ult i32 %3373, %3372
  %3376 = icmp ult i32 %3373, 1
  %3377 = or i1 %3375, %3376
  %3378 = zext i1 %3377 to i8
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3378, i8* %3379, align 1
  %3380 = and i32 %3373, 255
  %3381 = call i32 @llvm.ctpop.i32(i32 %3380)
  %3382 = trunc i32 %3381 to i8
  %3383 = and i8 %3382, 1
  %3384 = xor i8 %3383, 1
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3384, i8* %3385, align 1
  %3386 = xor i64 1, %3369
  %3387 = trunc i64 %3386 to i32
  %3388 = xor i32 %3387, %3373
  %3389 = lshr i32 %3388, 4
  %3390 = trunc i32 %3389 to i8
  %3391 = and i8 %3390, 1
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3391, i8* %3392, align 1
  %3393 = icmp eq i32 %3373, 0
  %3394 = zext i1 %3393 to i8
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3394, i8* %3395, align 1
  %3396 = lshr i32 %3373, 31
  %3397 = trunc i32 %3396 to i8
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3397, i8* %3398, align 1
  %3399 = lshr i32 %3372, 31
  %3400 = xor i32 %3396, %3399
  %3401 = add i32 %3400, %3396
  %3402 = icmp eq i32 %3401, 2
  %3403 = zext i1 %3402 to i8
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3403, i8* %3404, align 1
  store %struct.Memory* %loadMem_441abf, %struct.Memory** %MEMORY
  %loadMem_441ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 1
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %EAX.i391 = bitcast %union.anon* %3410 to i32*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 15
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %3413 to i64*
  %3414 = load i64, i64* %RBP.i392
  %3415 = sub i64 %3414, 3572
  %3416 = load i32, i32* %EAX.i391
  %3417 = zext i32 %3416 to i64
  %3418 = load i64, i64* %PC.i390
  %3419 = add i64 %3418, 6
  store i64 %3419, i64* %PC.i390
  %3420 = inttoptr i64 %3415 to i32*
  store i32 %3416, i32* %3420
  store %struct.Memory* %loadMem_441ac2, %struct.Memory** %MEMORY
  %loadMem_441ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 33
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %3423 to i64*
  %3424 = load i64, i64* %PC.i389
  %3425 = add i64 %3424, -114
  %3426 = load i64, i64* %PC.i389
  %3427 = add i64 %3426, 5
  store i64 %3427, i64* %PC.i389
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3425, i64* %3428, align 8
  store %struct.Memory* %loadMem_441ac8, %struct.Memory** %MEMORY
  br label %block_.L_441a56

block_.L_441acd:                                  ; preds = %block_.L_441aa5, %block_.L_441a56
  %loadMem_441acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 33
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 15
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %3434 to i64*
  %3435 = load i64, i64* %RBP.i388
  %3436 = sub i64 %3435, 3576
  %3437 = load i64, i64* %PC.i387
  %3438 = add i64 %3437, 7
  store i64 %3438, i64* %PC.i387
  %3439 = inttoptr i64 %3436 to i32*
  %3440 = load i32, i32* %3439
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3441, align 1
  %3442 = and i32 %3440, 255
  %3443 = call i32 @llvm.ctpop.i32(i32 %3442)
  %3444 = trunc i32 %3443 to i8
  %3445 = and i8 %3444, 1
  %3446 = xor i8 %3445, 1
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3446, i8* %3447, align 1
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3448, align 1
  %3449 = icmp eq i32 %3440, 0
  %3450 = zext i1 %3449 to i8
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3450, i8* %3451, align 1
  %3452 = lshr i32 %3440, 31
  %3453 = trunc i32 %3452 to i8
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3453, i8* %3454, align 1
  %3455 = lshr i32 %3440, 31
  %3456 = xor i32 %3452, %3455
  %3457 = add i32 %3456, %3455
  %3458 = icmp eq i32 %3457, 2
  %3459 = zext i1 %3458 to i8
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3459, i8* %3460, align 1
  store %struct.Memory* %loadMem_441acd, %struct.Memory** %MEMORY
  %loadMem_441ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 33
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %3463 to i64*
  %3464 = load i64, i64* %PC.i386
  %3465 = add i64 %3464, 11
  %3466 = load i64, i64* %PC.i386
  %3467 = add i64 %3466, 6
  %3468 = load i64, i64* %PC.i386
  %3469 = add i64 %3468, 6
  store i64 %3469, i64* %PC.i386
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3471 = load i8, i8* %3470, align 1
  store i8 %3471, i8* %BRANCH_TAKEN, align 1
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3473 = icmp ne i8 %3471, 0
  %3474 = select i1 %3473, i64 %3465, i64 %3467
  store i64 %3474, i64* %3472, align 8
  store %struct.Memory* %loadMem_441ad4, %struct.Memory** %MEMORY
  %loadBr_441ad4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441ad4 = icmp eq i8 %loadBr_441ad4, 1
  br i1 %cmpBr_441ad4, label %block_.L_441adf, label %block_441ada

block_441ada:                                     ; preds = %block_.L_441acd
  %loadMem_441ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %3477 to i64*
  %3478 = load i64, i64* %PC.i385
  %3479 = add i64 %3478, 934
  %3480 = load i64, i64* %PC.i385
  %3481 = add i64 %3480, 5
  store i64 %3481, i64* %PC.i385
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3479, i64* %3482, align 8
  store %struct.Memory* %loadMem_441ada, %struct.Memory** %MEMORY
  br label %block_.L_441e80

block_.L_441adf:                                  ; preds = %block_.L_441acd
  %loadMem_441adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3484 = getelementptr inbounds %struct.GPR, %struct.GPR* %3483, i32 0, i32 33
  %3485 = getelementptr inbounds %struct.Reg, %struct.Reg* %3484, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %3485 to i64*
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 9
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %RSI.i383 = bitcast %union.anon* %3488 to i64*
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 15
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %3491 to i64*
  %3492 = load i64, i64* %RBP.i384
  %3493 = sub i64 %3492, 1140
  %3494 = load i64, i64* %PC.i382
  %3495 = add i64 %3494, 7
  store i64 %3495, i64* %PC.i382
  store i64 %3493, i64* %RSI.i383, align 8
  store %struct.Memory* %loadMem_441adf, %struct.Memory** %MEMORY
  %loadMem_441ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 33
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3498 to i64*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 5
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %3501 to i64*
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 15
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %3504 to i64*
  %3505 = load i64, i64* %RBP.i381
  %3506 = sub i64 %3505, 2596
  %3507 = load i64, i64* %PC.i379
  %3508 = add i64 %3507, 7
  store i64 %3508, i64* %PC.i379
  store i64 %3506, i64* %RCX.i380, align 8
  store %struct.Memory* %loadMem_441ae6, %struct.Memory** %MEMORY
  %loadMem_441aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 33
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 19
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %3514 to i32*
  %3515 = bitcast i32* %R9D.i to i64*
  %3516 = load i32, i32* %R9D.i
  %3517 = zext i32 %3516 to i64
  %3518 = load i32, i32* %R9D.i
  %3519 = zext i32 %3518 to i64
  %3520 = load i64, i64* %PC.i378
  %3521 = add i64 %3520, 3
  store i64 %3521, i64* %PC.i378
  %3522 = xor i64 %3519, %3517
  %3523 = trunc i64 %3522 to i32
  %3524 = and i64 %3522, 4294967295
  store i64 %3524, i64* %3515, align 8
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3525, align 1
  %3526 = and i32 %3523, 255
  %3527 = call i32 @llvm.ctpop.i32(i32 %3526)
  %3528 = trunc i32 %3527 to i8
  %3529 = and i8 %3528, 1
  %3530 = xor i8 %3529, 1
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3530, i8* %3531, align 1
  %3532 = icmp eq i32 %3523, 0
  %3533 = zext i1 %3532 to i8
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3533, i8* %3534, align 1
  %3535 = lshr i32 %3523, 31
  %3536 = trunc i32 %3535 to i8
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3536, i8* %3537, align 1
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3538, align 1
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3539, align 1
  store %struct.Memory* %loadMem_441aed, %struct.Memory** %MEMORY
  %loadMem_441af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 33
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3542 to i64*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 15
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %3545 to i64*
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 17
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %R8.i = bitcast %union.anon* %3548 to i64*
  %3549 = load i64, i64* %RBP.i377
  %3550 = sub i64 %3549, 3568
  %3551 = load i64, i64* %PC.i376
  %3552 = add i64 %3551, 7
  store i64 %3552, i64* %PC.i376
  store i64 %3550, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_441af0, %struct.Memory** %MEMORY
  %loadMem_441af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 33
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3555 to i64*
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 7
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %RDX.i374 = bitcast %union.anon* %3558 to i64*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 15
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %3561 to i64*
  %3562 = load i64, i64* %RBP.i375
  %3563 = sub i64 %3562, 2592
  %3564 = load i64, i64* %PC.i373
  %3565 = add i64 %3564, 7
  store i64 %3565, i64* %PC.i373
  store i64 %3563, i64* %RDX.i374, align 8
  store %struct.Memory* %loadMem_441af7, %struct.Memory** %MEMORY
  %loadMem_441afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %3568 to i64*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 11
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %RDI.i371 = bitcast %union.anon* %3571 to i64*
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3573 = getelementptr inbounds %struct.GPR, %struct.GPR* %3572, i32 0, i32 15
  %3574 = getelementptr inbounds %struct.Reg, %struct.Reg* %3573, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %3574 to i64*
  %3575 = load i64, i64* %RBP.i372
  %3576 = sub i64 %3575, 32
  %3577 = load i64, i64* %PC.i370
  %3578 = add i64 %3577, 3
  store i64 %3578, i64* %PC.i370
  %3579 = inttoptr i64 %3576 to i32*
  %3580 = load i32, i32* %3579
  %3581 = zext i32 %3580 to i64
  store i64 %3581, i64* %RDI.i371, align 8
  store %struct.Memory* %loadMem_441afe, %struct.Memory** %MEMORY
  %loadMem1_441b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 33
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %3584 to i64*
  %3585 = load i64, i64* %PC.i369
  %3586 = add i64 %3585, 239279
  %3587 = load i64, i64* %PC.i369
  %3588 = add i64 %3587, 5
  %3589 = load i64, i64* %PC.i369
  %3590 = add i64 %3589, 5
  store i64 %3590, i64* %PC.i369
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3592 = load i64, i64* %3591, align 8
  %3593 = add i64 %3592, -8
  %3594 = inttoptr i64 %3593 to i64*
  store i64 %3588, i64* %3594
  store i64 %3593, i64* %3591, align 8
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3586, i64* %3595, align 8
  store %struct.Memory* %loadMem1_441b01, %struct.Memory** %MEMORY
  %loadMem2_441b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441b01 = load i64, i64* %3
  %call2_441b01 = call %struct.Memory* @sub_47c1b0.find_superstring_stones_and_liberties(%struct.State* %0, i64 %loadPC_441b01, %struct.Memory* %loadMem2_441b01)
  store %struct.Memory* %call2_441b01, %struct.Memory** %MEMORY
  %loadMem_441b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 33
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %3598 to i64*
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3600 = getelementptr inbounds %struct.GPR, %struct.GPR* %3599, i32 0, i32 9
  %3601 = getelementptr inbounds %struct.Reg, %struct.Reg* %3600, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %3601 to i32*
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3603 = getelementptr inbounds %struct.GPR, %struct.GPR* %3602, i32 0, i32 9
  %3604 = getelementptr inbounds %struct.Reg, %struct.Reg* %3603, i32 0, i32 0
  %RSI.i368 = bitcast %union.anon* %3604 to i64*
  %3605 = load i64, i64* %RSI.i368
  %3606 = load i32, i32* %ESI.i
  %3607 = zext i32 %3606 to i64
  %3608 = load i64, i64* %PC.i367
  %3609 = add i64 %3608, 2
  store i64 %3609, i64* %PC.i367
  %3610 = xor i64 %3607, %3605
  %3611 = trunc i64 %3610 to i32
  %3612 = and i64 %3610, 4294967295
  store i64 %3612, i64* %RSI.i368, align 8
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3613, align 1
  %3614 = and i32 %3611, 255
  %3615 = call i32 @llvm.ctpop.i32(i32 %3614)
  %3616 = trunc i32 %3615 to i8
  %3617 = and i8 %3616, 1
  %3618 = xor i8 %3617, 1
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3618, i8* %3619, align 1
  %3620 = icmp eq i32 %3611, 0
  %3621 = zext i1 %3620 to i8
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3621, i8* %3622, align 1
  %3623 = lshr i32 %3611, 31
  %3624 = trunc i32 %3623 to i8
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3624, i8* %3625, align 1
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3626, align 1
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3627, align 1
  store %struct.Memory* %loadMem_441b06, %struct.Memory** %MEMORY
  %loadMem_441b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 33
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3630 to i64*
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 11
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %RDI.i366 = bitcast %union.anon* %3633 to i64*
  %3634 = load i64, i64* %PC.i365
  %3635 = add i64 %3634, 5
  store i64 %3635, i64* %PC.i365
  store i64 1600, i64* %RDI.i366, align 8
  store %struct.Memory* %loadMem_441b08, %struct.Memory** %MEMORY
  %loadMem_441b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 33
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %3638 to i64*
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 11
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %3641 to i32*
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3643 = getelementptr inbounds %struct.GPR, %struct.GPR* %3642, i32 0, i32 7
  %3644 = getelementptr inbounds %struct.Reg, %struct.Reg* %3643, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %3644 to i64*
  %3645 = load i32, i32* %EDI.i
  %3646 = zext i32 %3645 to i64
  %3647 = load i64, i64* %PC.i363
  %3648 = add i64 %3647, 2
  store i64 %3648, i64* %PC.i363
  %3649 = and i64 %3646, 4294967295
  store i64 %3649, i64* %RDX.i364, align 8
  store %struct.Memory* %loadMem_441b0d, %struct.Memory** %MEMORY
  %loadMem_441b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 33
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 5
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %3655 to i64*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 15
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %3658 to i64*
  %3659 = load i64, i64* %RBP.i362
  %3660 = sub i64 %3659, 5184
  %3661 = load i64, i64* %PC.i360
  %3662 = add i64 %3661, 7
  store i64 %3662, i64* %PC.i360
  store i64 %3660, i64* %RCX.i361, align 8
  store %struct.Memory* %loadMem_441b0f, %struct.Memory** %MEMORY
  %loadMem_441b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 33
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %3665 to i64*
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3667 = getelementptr inbounds %struct.GPR, %struct.GPR* %3666, i32 0, i32 5
  %3668 = getelementptr inbounds %struct.Reg, %struct.Reg* %3667, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %3668 to i64*
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 11
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %RDI.i359 = bitcast %union.anon* %3671 to i64*
  %3672 = load i64, i64* %RCX.i358
  %3673 = load i64, i64* %PC.i357
  %3674 = add i64 %3673, 3
  store i64 %3674, i64* %PC.i357
  store i64 %3672, i64* %RDI.i359, align 8
  store %struct.Memory* %loadMem_441b16, %struct.Memory** %MEMORY
  %loadMem1_441b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 33
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %3677 to i64*
  %3678 = load i64, i64* %PC.i356
  %3679 = add i64 %3678, -264873
  %3680 = load i64, i64* %PC.i356
  %3681 = add i64 %3680, 5
  %3682 = load i64, i64* %PC.i356
  %3683 = add i64 %3682, 5
  store i64 %3683, i64* %PC.i356
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3685 = load i64, i64* %3684, align 8
  %3686 = add i64 %3685, -8
  %3687 = inttoptr i64 %3686 to i64*
  store i64 %3681, i64* %3687
  store i64 %3686, i64* %3684, align 8
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3679, i64* %3688, align 8
  store %struct.Memory* %loadMem1_441b19, %struct.Memory** %MEMORY
  %loadMem2_441b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441b19 = load i64, i64* %3
  %3689 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_441b19)
  store %struct.Memory* %3689, %struct.Memory** %MEMORY
  %loadMem_441b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 33
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %3692 to i64*
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 15
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %3695 to i64*
  %3696 = load i64, i64* %RBP.i352
  %3697 = sub i64 %3696, 3572
  %3698 = load i64, i64* %PC.i351
  %3699 = add i64 %3698, 10
  store i64 %3699, i64* %PC.i351
  %3700 = inttoptr i64 %3697 to i32*
  store i32 0, i32* %3700
  store %struct.Memory* %loadMem_441b1e, %struct.Memory** %MEMORY
  br label %block_.L_441b28

block_.L_441b28:                                  ; preds = %block_441b3a, %block_.L_441adf
  %loadMem_441b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 33
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %3703 to i64*
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3705 = getelementptr inbounds %struct.GPR, %struct.GPR* %3704, i32 0, i32 1
  %3706 = getelementptr inbounds %struct.Reg, %struct.Reg* %3705, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %3706 to i64*
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 15
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %3709 to i64*
  %3710 = load i64, i64* %RBP.i350
  %3711 = sub i64 %3710, 3572
  %3712 = load i64, i64* %PC.i348
  %3713 = add i64 %3712, 6
  store i64 %3713, i64* %PC.i348
  %3714 = inttoptr i64 %3711 to i32*
  %3715 = load i32, i32* %3714
  %3716 = zext i32 %3715 to i64
  store i64 %3716, i64* %RAX.i349, align 8
  store %struct.Memory* %loadMem_441b28, %struct.Memory** %MEMORY
  %loadMem_441b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3718 = getelementptr inbounds %struct.GPR, %struct.GPR* %3717, i32 0, i32 33
  %3719 = getelementptr inbounds %struct.Reg, %struct.Reg* %3718, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %3719 to i64*
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3721 = getelementptr inbounds %struct.GPR, %struct.GPR* %3720, i32 0, i32 1
  %3722 = getelementptr inbounds %struct.Reg, %struct.Reg* %3721, i32 0, i32 0
  %EAX.i346 = bitcast %union.anon* %3722 to i32*
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 15
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %3725 to i64*
  %3726 = load i32, i32* %EAX.i346
  %3727 = zext i32 %3726 to i64
  %3728 = load i64, i64* %RBP.i347
  %3729 = sub i64 %3728, 1140
  %3730 = load i64, i64* %PC.i345
  %3731 = add i64 %3730, 6
  store i64 %3731, i64* %PC.i345
  %3732 = inttoptr i64 %3729 to i32*
  %3733 = load i32, i32* %3732
  %3734 = sub i32 %3726, %3733
  %3735 = icmp ult i32 %3726, %3733
  %3736 = zext i1 %3735 to i8
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3736, i8* %3737, align 1
  %3738 = and i32 %3734, 255
  %3739 = call i32 @llvm.ctpop.i32(i32 %3738)
  %3740 = trunc i32 %3739 to i8
  %3741 = and i8 %3740, 1
  %3742 = xor i8 %3741, 1
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3742, i8* %3743, align 1
  %3744 = xor i32 %3733, %3726
  %3745 = xor i32 %3744, %3734
  %3746 = lshr i32 %3745, 4
  %3747 = trunc i32 %3746 to i8
  %3748 = and i8 %3747, 1
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3748, i8* %3749, align 1
  %3750 = icmp eq i32 %3734, 0
  %3751 = zext i1 %3750 to i8
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3751, i8* %3752, align 1
  %3753 = lshr i32 %3734, 31
  %3754 = trunc i32 %3753 to i8
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3754, i8* %3755, align 1
  %3756 = lshr i32 %3726, 31
  %3757 = lshr i32 %3733, 31
  %3758 = xor i32 %3757, %3756
  %3759 = xor i32 %3753, %3756
  %3760 = add i32 %3759, %3758
  %3761 = icmp eq i32 %3760, 2
  %3762 = zext i1 %3761 to i8
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3762, i8* %3763, align 1
  store %struct.Memory* %loadMem_441b2e, %struct.Memory** %MEMORY
  %loadMem_441b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 33
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %3766 to i64*
  %3767 = load i64, i64* %PC.i344
  %3768 = add i64 %3767, 52
  %3769 = load i64, i64* %PC.i344
  %3770 = add i64 %3769, 6
  %3771 = load i64, i64* %PC.i344
  %3772 = add i64 %3771, 6
  store i64 %3772, i64* %PC.i344
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3774 = load i8, i8* %3773, align 1
  %3775 = icmp ne i8 %3774, 0
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3777 = load i8, i8* %3776, align 1
  %3778 = icmp ne i8 %3777, 0
  %3779 = xor i1 %3775, %3778
  %3780 = xor i1 %3779, true
  %3781 = zext i1 %3780 to i8
  store i8 %3781, i8* %BRANCH_TAKEN, align 1
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3783 = select i1 %3779, i64 %3770, i64 %3768
  store i64 %3783, i64* %3782, align 8
  store %struct.Memory* %loadMem_441b34, %struct.Memory** %MEMORY
  %loadBr_441b34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441b34 = icmp eq i8 %loadBr_441b34, 1
  br i1 %cmpBr_441b34, label %block_.L_441b68, label %block_441b3a

block_441b3a:                                     ; preds = %block_.L_441b28
  %loadMem_441b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 33
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %3786 to i64*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 1
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 15
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %3792 to i64*
  %3793 = load i64, i64* %RBP.i343
  %3794 = sub i64 %3793, 3572
  %3795 = load i64, i64* %PC.i341
  %3796 = add i64 %3795, 7
  store i64 %3796, i64* %PC.i341
  %3797 = inttoptr i64 %3794 to i32*
  %3798 = load i32, i32* %3797
  %3799 = sext i32 %3798 to i64
  store i64 %3799, i64* %RAX.i342, align 8
  store %struct.Memory* %loadMem_441b3a, %struct.Memory** %MEMORY
  %loadMem_441b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3801 = getelementptr inbounds %struct.GPR, %struct.GPR* %3800, i32 0, i32 33
  %3802 = getelementptr inbounds %struct.Reg, %struct.Reg* %3801, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %3802 to i64*
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 1
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 15
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %3808 to i64*
  %3809 = load i64, i64* %RBP.i340
  %3810 = load i64, i64* %RAX.i339
  %3811 = mul i64 %3810, 4
  %3812 = add i64 %3809, -2592
  %3813 = add i64 %3812, %3811
  %3814 = load i64, i64* %PC.i338
  %3815 = add i64 %3814, 8
  store i64 %3815, i64* %PC.i338
  %3816 = inttoptr i64 %3813 to i32*
  %3817 = load i32, i32* %3816
  %3818 = sext i32 %3817 to i64
  store i64 %3818, i64* %RAX.i339, align 8
  store %struct.Memory* %loadMem_441b41, %struct.Memory** %MEMORY
  %loadMem_441b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 1
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RAX.i336 = bitcast %union.anon* %3824 to i64*
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 15
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %3827 to i64*
  %3828 = load i64, i64* %RBP.i337
  %3829 = load i64, i64* %RAX.i336
  %3830 = mul i64 %3829, 4
  %3831 = add i64 %3828, -5184
  %3832 = add i64 %3831, %3830
  %3833 = load i64, i64* %PC.i335
  %3834 = add i64 %3833, 11
  store i64 %3834, i64* %PC.i335
  %3835 = inttoptr i64 %3832 to i32*
  store i32 1, i32* %3835
  store %struct.Memory* %loadMem_441b49, %struct.Memory** %MEMORY
  %loadMem_441b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 33
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 1
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %3841 to i64*
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 15
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %3844 to i64*
  %3845 = load i64, i64* %RBP.i334
  %3846 = sub i64 %3845, 3572
  %3847 = load i64, i64* %PC.i332
  %3848 = add i64 %3847, 6
  store i64 %3848, i64* %PC.i332
  %3849 = inttoptr i64 %3846 to i32*
  %3850 = load i32, i32* %3849
  %3851 = zext i32 %3850 to i64
  store i64 %3851, i64* %RAX.i333, align 8
  store %struct.Memory* %loadMem_441b54, %struct.Memory** %MEMORY
  %loadMem_441b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 33
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %3854 to i64*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 1
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %3857 to i64*
  %3858 = load i64, i64* %RAX.i331
  %3859 = load i64, i64* %PC.i330
  %3860 = add i64 %3859, 3
  store i64 %3860, i64* %PC.i330
  %3861 = trunc i64 %3858 to i32
  %3862 = add i32 1, %3861
  %3863 = zext i32 %3862 to i64
  store i64 %3863, i64* %RAX.i331, align 8
  %3864 = icmp ult i32 %3862, %3861
  %3865 = icmp ult i32 %3862, 1
  %3866 = or i1 %3864, %3865
  %3867 = zext i1 %3866 to i8
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3867, i8* %3868, align 1
  %3869 = and i32 %3862, 255
  %3870 = call i32 @llvm.ctpop.i32(i32 %3869)
  %3871 = trunc i32 %3870 to i8
  %3872 = and i8 %3871, 1
  %3873 = xor i8 %3872, 1
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3873, i8* %3874, align 1
  %3875 = xor i64 1, %3858
  %3876 = trunc i64 %3875 to i32
  %3877 = xor i32 %3876, %3862
  %3878 = lshr i32 %3877, 4
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3880, i8* %3881, align 1
  %3882 = icmp eq i32 %3862, 0
  %3883 = zext i1 %3882 to i8
  %3884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3883, i8* %3884, align 1
  %3885 = lshr i32 %3862, 31
  %3886 = trunc i32 %3885 to i8
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3886, i8* %3887, align 1
  %3888 = lshr i32 %3861, 31
  %3889 = xor i32 %3885, %3888
  %3890 = add i32 %3889, %3885
  %3891 = icmp eq i32 %3890, 2
  %3892 = zext i1 %3891 to i8
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3892, i8* %3893, align 1
  store %struct.Memory* %loadMem_441b5a, %struct.Memory** %MEMORY
  %loadMem_441b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 33
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %3896 to i64*
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 1
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %EAX.i328 = bitcast %union.anon* %3899 to i32*
  %3900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3901 = getelementptr inbounds %struct.GPR, %struct.GPR* %3900, i32 0, i32 15
  %3902 = getelementptr inbounds %struct.Reg, %struct.Reg* %3901, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %3902 to i64*
  %3903 = load i64, i64* %RBP.i329
  %3904 = sub i64 %3903, 3572
  %3905 = load i32, i32* %EAX.i328
  %3906 = zext i32 %3905 to i64
  %3907 = load i64, i64* %PC.i327
  %3908 = add i64 %3907, 6
  store i64 %3908, i64* %PC.i327
  %3909 = inttoptr i64 %3904 to i32*
  store i32 %3905, i32* %3909
  store %struct.Memory* %loadMem_441b5d, %struct.Memory** %MEMORY
  %loadMem_441b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 33
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %3912 to i64*
  %3913 = load i64, i64* %PC.i326
  %3914 = add i64 %3913, -59
  %3915 = load i64, i64* %PC.i326
  %3916 = add i64 %3915, 5
  store i64 %3916, i64* %PC.i326
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3914, i64* %3917, align 8
  store %struct.Memory* %loadMem_441b63, %struct.Memory** %MEMORY
  br label %block_.L_441b28

block_.L_441b68:                                  ; preds = %block_.L_441b28
  %loadMem_441b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 33
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %3920 to i64*
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 15
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %3923 to i64*
  %3924 = load i64, i64* %RBP.i325
  %3925 = sub i64 %3924, 3572
  %3926 = load i64, i64* %PC.i324
  %3927 = add i64 %3926, 10
  store i64 %3927, i64* %PC.i324
  %3928 = inttoptr i64 %3925 to i32*
  store i32 0, i32* %3928
  store %struct.Memory* %loadMem_441b68, %struct.Memory** %MEMORY
  br label %block_.L_441b72

block_.L_441b72:                                  ; preds = %block_.L_441dd3, %block_.L_441b68
  %loadMem_441b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 33
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %3931 to i64*
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 1
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %3934 to i64*
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 15
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %3937 to i64*
  %3938 = load i64, i64* %RBP.i323
  %3939 = sub i64 %3938, 3572
  %3940 = load i64, i64* %PC.i321
  %3941 = add i64 %3940, 6
  store i64 %3941, i64* %PC.i321
  %3942 = inttoptr i64 %3939 to i32*
  %3943 = load i32, i32* %3942
  %3944 = zext i32 %3943 to i64
  store i64 %3944, i64* %RAX.i322, align 8
  store %struct.Memory* %loadMem_441b72, %struct.Memory** %MEMORY
  %loadMem_441b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 33
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %3947 to i64*
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 1
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %EAX.i319 = bitcast %union.anon* %3950 to i32*
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 15
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %3953 to i64*
  %3954 = load i32, i32* %EAX.i319
  %3955 = zext i32 %3954 to i64
  %3956 = load i64, i64* %RBP.i320
  %3957 = sub i64 %3956, 2596
  %3958 = load i64, i64* %PC.i318
  %3959 = add i64 %3958, 6
  store i64 %3959, i64* %PC.i318
  %3960 = inttoptr i64 %3957 to i32*
  %3961 = load i32, i32* %3960
  %3962 = sub i32 %3954, %3961
  %3963 = icmp ult i32 %3954, %3961
  %3964 = zext i1 %3963 to i8
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3964, i8* %3965, align 1
  %3966 = and i32 %3962, 255
  %3967 = call i32 @llvm.ctpop.i32(i32 %3966)
  %3968 = trunc i32 %3967 to i8
  %3969 = and i8 %3968, 1
  %3970 = xor i8 %3969, 1
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3970, i8* %3971, align 1
  %3972 = xor i32 %3961, %3954
  %3973 = xor i32 %3972, %3962
  %3974 = lshr i32 %3973, 4
  %3975 = trunc i32 %3974 to i8
  %3976 = and i8 %3975, 1
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3976, i8* %3977, align 1
  %3978 = icmp eq i32 %3962, 0
  %3979 = zext i1 %3978 to i8
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3979, i8* %3980, align 1
  %3981 = lshr i32 %3962, 31
  %3982 = trunc i32 %3981 to i8
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3982, i8* %3983, align 1
  %3984 = lshr i32 %3954, 31
  %3985 = lshr i32 %3961, 31
  %3986 = xor i32 %3985, %3984
  %3987 = xor i32 %3981, %3984
  %3988 = add i32 %3987, %3986
  %3989 = icmp eq i32 %3988, 2
  %3990 = zext i1 %3989 to i8
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3990, i8* %3991, align 1
  store %struct.Memory* %loadMem_441b78, %struct.Memory** %MEMORY
  %loadMem_441b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 33
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %3994 to i64*
  %3995 = load i64, i64* %PC.i317
  %3996 = add i64 %3995, 617
  %3997 = load i64, i64* %PC.i317
  %3998 = add i64 %3997, 6
  %3999 = load i64, i64* %PC.i317
  %4000 = add i64 %3999, 6
  store i64 %4000, i64* %PC.i317
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4002 = load i8, i8* %4001, align 1
  %4003 = icmp ne i8 %4002, 0
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4005 = load i8, i8* %4004, align 1
  %4006 = icmp ne i8 %4005, 0
  %4007 = xor i1 %4003, %4006
  %4008 = xor i1 %4007, true
  %4009 = zext i1 %4008 to i8
  store i8 %4009, i8* %BRANCH_TAKEN, align 1
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4011 = select i1 %4007, i64 %3998, i64 %3996
  store i64 %4011, i64* %4010, align 8
  store %struct.Memory* %loadMem_441b7e, %struct.Memory** %MEMORY
  %loadBr_441b7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441b7e = icmp eq i8 %loadBr_441b7e, 1
  br i1 %cmpBr_441b7e, label %block_.L_441de7, label %block_441b84

block_441b84:                                     ; preds = %block_.L_441b72
  %loadMem_441b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4013 = getelementptr inbounds %struct.GPR, %struct.GPR* %4012, i32 0, i32 33
  %4014 = getelementptr inbounds %struct.Reg, %struct.Reg* %4013, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %4014 to i64*
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 1
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %4017 to i64*
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 15
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %4020 to i64*
  %4021 = load i64, i64* %RBP.i316
  %4022 = sub i64 %4021, 3572
  %4023 = load i64, i64* %PC.i314
  %4024 = add i64 %4023, 7
  store i64 %4024, i64* %PC.i314
  %4025 = inttoptr i64 %4022 to i32*
  %4026 = load i32, i32* %4025
  %4027 = sext i32 %4026 to i64
  store i64 %4027, i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_441b84, %struct.Memory** %MEMORY
  %loadMem_441b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4029 = getelementptr inbounds %struct.GPR, %struct.GPR* %4028, i32 0, i32 33
  %4030 = getelementptr inbounds %struct.Reg, %struct.Reg* %4029, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4030 to i64*
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4032 = getelementptr inbounds %struct.GPR, %struct.GPR* %4031, i32 0, i32 1
  %4033 = getelementptr inbounds %struct.Reg, %struct.Reg* %4032, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %4033 to i64*
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 5
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %4036 to i64*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 15
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %4039 to i64*
  %4040 = load i64, i64* %RBP.i313
  %4041 = load i64, i64* %RAX.i311
  %4042 = mul i64 %4041, 4
  %4043 = add i64 %4040, -3568
  %4044 = add i64 %4043, %4042
  %4045 = load i64, i64* %PC.i310
  %4046 = add i64 %4045, 7
  store i64 %4046, i64* %PC.i310
  %4047 = inttoptr i64 %4044 to i32*
  %4048 = load i32, i32* %4047
  %4049 = zext i32 %4048 to i64
  store i64 %4049, i64* %RCX.i312, align 8
  store %struct.Memory* %loadMem_441b8b, %struct.Memory** %MEMORY
  %loadMem_441b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 33
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %4052 to i64*
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 5
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %ECX.i308 = bitcast %union.anon* %4055 to i32*
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 15
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %RBP.i309 = bitcast %union.anon* %4058 to i64*
  %4059 = load i64, i64* %RBP.i309
  %4060 = sub i64 %4059, 5188
  %4061 = load i32, i32* %ECX.i308
  %4062 = zext i32 %4061 to i64
  %4063 = load i64, i64* %PC.i307
  %4064 = add i64 %4063, 6
  store i64 %4064, i64* %PC.i307
  %4065 = inttoptr i64 %4060 to i32*
  store i32 %4061, i32* %4065
  store %struct.Memory* %loadMem_441b92, %struct.Memory** %MEMORY
  %loadMem_441b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 33
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %4068 to i64*
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 15
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %4071 to i64*
  %4072 = load i64, i64* %RBP.i306
  %4073 = sub i64 %4072, 5192
  %4074 = load i64, i64* %PC.i305
  %4075 = add i64 %4074, 10
  store i64 %4075, i64* %PC.i305
  %4076 = inttoptr i64 %4073 to i32*
  store i32 0, i32* %4076
  store %struct.Memory* %loadMem_441b98, %struct.Memory** %MEMORY
  %loadMem_441ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 33
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %4079 to i64*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 15
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %4082 to i64*
  %4083 = load i64, i64* %RBP.i304
  %4084 = sub i64 %4083, 5196
  %4085 = load i64, i64* %PC.i303
  %4086 = add i64 %4085, 10
  store i64 %4086, i64* %PC.i303
  %4087 = inttoptr i64 %4084 to i32*
  store i32 0, i32* %4087
  store %struct.Memory* %loadMem_441ba2, %struct.Memory** %MEMORY
  br label %block_.L_441bac

block_.L_441bac:                                  ; preds = %block_.L_441cb2, %block_441b84
  %loadMem_441bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4089 = getelementptr inbounds %struct.GPR, %struct.GPR* %4088, i32 0, i32 33
  %4090 = getelementptr inbounds %struct.Reg, %struct.Reg* %4089, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %4090 to i64*
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 15
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %4093 to i64*
  %4094 = load i64, i64* %RBP.i302
  %4095 = sub i64 %4094, 5196
  %4096 = load i64, i64* %PC.i301
  %4097 = add i64 %4096, 7
  store i64 %4097, i64* %PC.i301
  %4098 = inttoptr i64 %4095 to i32*
  %4099 = load i32, i32* %4098
  %4100 = sub i32 %4099, 4
  %4101 = icmp ult i32 %4099, 4
  %4102 = zext i1 %4101 to i8
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4102, i8* %4103, align 1
  %4104 = and i32 %4100, 255
  %4105 = call i32 @llvm.ctpop.i32(i32 %4104)
  %4106 = trunc i32 %4105 to i8
  %4107 = and i8 %4106, 1
  %4108 = xor i8 %4107, 1
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4108, i8* %4109, align 1
  %4110 = xor i32 %4099, 4
  %4111 = xor i32 %4110, %4100
  %4112 = lshr i32 %4111, 4
  %4113 = trunc i32 %4112 to i8
  %4114 = and i8 %4113, 1
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4114, i8* %4115, align 1
  %4116 = icmp eq i32 %4100, 0
  %4117 = zext i1 %4116 to i8
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4117, i8* %4118, align 1
  %4119 = lshr i32 %4100, 31
  %4120 = trunc i32 %4119 to i8
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4120, i8* %4121, align 1
  %4122 = lshr i32 %4099, 31
  %4123 = xor i32 %4119, %4122
  %4124 = add i32 %4123, %4122
  %4125 = icmp eq i32 %4124, 2
  %4126 = zext i1 %4125 to i8
  %4127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4126, i8* %4127, align 1
  store %struct.Memory* %loadMem_441bac, %struct.Memory** %MEMORY
  %loadMem_441bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 33
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %4130 to i64*
  %4131 = load i64, i64* %PC.i300
  %4132 = add i64 %4131, 275
  %4133 = load i64, i64* %PC.i300
  %4134 = add i64 %4133, 6
  %4135 = load i64, i64* %PC.i300
  %4136 = add i64 %4135, 6
  store i64 %4136, i64* %PC.i300
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4138 = load i8, i8* %4137, align 1
  %4139 = icmp ne i8 %4138, 0
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4141 = load i8, i8* %4140, align 1
  %4142 = icmp ne i8 %4141, 0
  %4143 = xor i1 %4139, %4142
  %4144 = xor i1 %4143, true
  %4145 = zext i1 %4144 to i8
  store i8 %4145, i8* %BRANCH_TAKEN, align 1
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4147 = select i1 %4143, i64 %4134, i64 %4132
  store i64 %4147, i64* %4146, align 8
  store %struct.Memory* %loadMem_441bb3, %struct.Memory** %MEMORY
  %loadBr_441bb3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441bb3 = icmp eq i8 %loadBr_441bb3, 1
  br i1 %cmpBr_441bb3, label %block_.L_441cc6, label %block_441bb9

block_441bb9:                                     ; preds = %block_.L_441bac
  %loadMem_441bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 33
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %4150 to i64*
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 1
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %4153 to i64*
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 15
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %4156 to i64*
  %4157 = load i64, i64* %RBP.i299
  %4158 = sub i64 %4157, 5188
  %4159 = load i64, i64* %PC.i297
  %4160 = add i64 %4159, 6
  store i64 %4160, i64* %PC.i297
  %4161 = inttoptr i64 %4158 to i32*
  %4162 = load i32, i32* %4161
  %4163 = zext i32 %4162 to i64
  store i64 %4163, i64* %RAX.i298, align 8
  store %struct.Memory* %loadMem_441bb9, %struct.Memory** %MEMORY
  %loadMem_441bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 33
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %4166 to i64*
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 5
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %4169 to i64*
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 15
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %4172 to i64*
  %4173 = load i64, i64* %RBP.i296
  %4174 = sub i64 %4173, 5196
  %4175 = load i64, i64* %PC.i294
  %4176 = add i64 %4175, 7
  store i64 %4176, i64* %PC.i294
  %4177 = inttoptr i64 %4174 to i32*
  %4178 = load i32, i32* %4177
  %4179 = sext i32 %4178 to i64
  store i64 %4179, i64* %RCX.i295, align 8
  store %struct.Memory* %loadMem_441bbf, %struct.Memory** %MEMORY
  %loadMem_441bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4181 = getelementptr inbounds %struct.GPR, %struct.GPR* %4180, i32 0, i32 33
  %4182 = getelementptr inbounds %struct.Reg, %struct.Reg* %4181, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %4182 to i64*
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4184 = getelementptr inbounds %struct.GPR, %struct.GPR* %4183, i32 0, i32 1
  %4185 = getelementptr inbounds %struct.Reg, %struct.Reg* %4184, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %4185 to i64*
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 5
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %4188 to i64*
  %4189 = load i64, i64* %RAX.i292
  %4190 = load i64, i64* %RCX.i293
  %4191 = mul i64 %4190, 4
  %4192 = add i64 %4191, 8053168
  %4193 = load i64, i64* %PC.i291
  %4194 = add i64 %4193, 7
  store i64 %4194, i64* %PC.i291
  %4195 = trunc i64 %4189 to i32
  %4196 = inttoptr i64 %4192 to i32*
  %4197 = load i32, i32* %4196
  %4198 = add i32 %4197, %4195
  %4199 = zext i32 %4198 to i64
  store i64 %4199, i64* %RAX.i292, align 8
  %4200 = icmp ult i32 %4198, %4195
  %4201 = icmp ult i32 %4198, %4197
  %4202 = or i1 %4200, %4201
  %4203 = zext i1 %4202 to i8
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4203, i8* %4204, align 1
  %4205 = and i32 %4198, 255
  %4206 = call i32 @llvm.ctpop.i32(i32 %4205)
  %4207 = trunc i32 %4206 to i8
  %4208 = and i8 %4207, 1
  %4209 = xor i8 %4208, 1
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4209, i8* %4210, align 1
  %4211 = xor i32 %4197, %4195
  %4212 = xor i32 %4211, %4198
  %4213 = lshr i32 %4212, 4
  %4214 = trunc i32 %4213 to i8
  %4215 = and i8 %4214, 1
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4215, i8* %4216, align 1
  %4217 = icmp eq i32 %4198, 0
  %4218 = zext i1 %4217 to i8
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4218, i8* %4219, align 1
  %4220 = lshr i32 %4198, 31
  %4221 = trunc i32 %4220 to i8
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4221, i8* %4222, align 1
  %4223 = lshr i32 %4195, 31
  %4224 = lshr i32 %4197, 31
  %4225 = xor i32 %4220, %4223
  %4226 = xor i32 %4220, %4224
  %4227 = add i32 %4225, %4226
  %4228 = icmp eq i32 %4227, 2
  %4229 = zext i1 %4228 to i8
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4229, i8* %4230, align 1
  store %struct.Memory* %loadMem_441bc6, %struct.Memory** %MEMORY
  %loadMem_441bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 33
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %4233 to i64*
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 1
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %EAX.i289 = bitcast %union.anon* %4236 to i32*
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 15
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %4239 to i64*
  %4240 = load i64, i64* %RBP.i290
  %4241 = sub i64 %4240, 5200
  %4242 = load i32, i32* %EAX.i289
  %4243 = zext i32 %4242 to i64
  %4244 = load i64, i64* %PC.i288
  %4245 = add i64 %4244, 6
  store i64 %4245, i64* %PC.i288
  %4246 = inttoptr i64 %4241 to i32*
  store i32 %4242, i32* %4246
  store %struct.Memory* %loadMem_441bcd, %struct.Memory** %MEMORY
  %loadMem_441bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 33
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %4249 to i64*
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 5
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %4252 to i64*
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 15
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %4255 to i64*
  %4256 = load i64, i64* %RBP.i287
  %4257 = sub i64 %4256, 5200
  %4258 = load i64, i64* %PC.i285
  %4259 = add i64 %4258, 7
  store i64 %4259, i64* %PC.i285
  %4260 = inttoptr i64 %4257 to i32*
  %4261 = load i32, i32* %4260
  %4262 = sext i32 %4261 to i64
  store i64 %4262, i64* %RCX.i286, align 8
  store %struct.Memory* %loadMem_441bd3, %struct.Memory** %MEMORY
  %loadMem_441bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 33
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %4265 to i64*
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 1
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %4268 to i64*
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 5
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %4271 to i64*
  %4272 = load i64, i64* %RCX.i284
  %4273 = add i64 %4272, 12099168
  %4274 = load i64, i64* %PC.i282
  %4275 = add i64 %4274, 8
  store i64 %4275, i64* %PC.i282
  %4276 = inttoptr i64 %4273 to i8*
  %4277 = load i8, i8* %4276
  %4278 = zext i8 %4277 to i64
  store i64 %4278, i64* %RAX.i283, align 8
  store %struct.Memory* %loadMem_441bda, %struct.Memory** %MEMORY
  %loadMem_441be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 33
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %4281 to i64*
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 1
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %EAX.i281 = bitcast %union.anon* %4284 to i32*
  %4285 = load i32, i32* %EAX.i281
  %4286 = zext i32 %4285 to i64
  %4287 = load i64, i64* %PC.i280
  %4288 = add i64 %4287, 3
  store i64 %4288, i64* %PC.i280
  %4289 = sub i32 %4285, 3
  %4290 = icmp ult i32 %4285, 3
  %4291 = zext i1 %4290 to i8
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4291, i8* %4292, align 1
  %4293 = and i32 %4289, 255
  %4294 = call i32 @llvm.ctpop.i32(i32 %4293)
  %4295 = trunc i32 %4294 to i8
  %4296 = and i8 %4295, 1
  %4297 = xor i8 %4296, 1
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4297, i8* %4298, align 1
  %4299 = xor i64 3, %4286
  %4300 = trunc i64 %4299 to i32
  %4301 = xor i32 %4300, %4289
  %4302 = lshr i32 %4301, 4
  %4303 = trunc i32 %4302 to i8
  %4304 = and i8 %4303, 1
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4304, i8* %4305, align 1
  %4306 = icmp eq i32 %4289, 0
  %4307 = zext i1 %4306 to i8
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4307, i8* %4308, align 1
  %4309 = lshr i32 %4289, 31
  %4310 = trunc i32 %4309 to i8
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4310, i8* %4311, align 1
  %4312 = lshr i32 %4285, 31
  %4313 = xor i32 %4309, %4312
  %4314 = add i32 %4313, %4312
  %4315 = icmp eq i32 %4314, 2
  %4316 = zext i1 %4315 to i8
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4316, i8* %4317, align 1
  store %struct.Memory* %loadMem_441be2, %struct.Memory** %MEMORY
  %loadMem_441be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 33
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %4320 to i64*
  %4321 = load i64, i64* %PC.i279
  %4322 = add i64 %4321, 11
  %4323 = load i64, i64* %PC.i279
  %4324 = add i64 %4323, 6
  %4325 = load i64, i64* %PC.i279
  %4326 = add i64 %4325, 6
  store i64 %4326, i64* %PC.i279
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4328 = load i8, i8* %4327, align 1
  %4329 = icmp eq i8 %4328, 0
  %4330 = zext i1 %4329 to i8
  store i8 %4330, i8* %BRANCH_TAKEN, align 1
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4332 = select i1 %4329, i64 %4322, i64 %4324
  store i64 %4332, i64* %4331, align 8
  store %struct.Memory* %loadMem_441be5, %struct.Memory** %MEMORY
  %loadBr_441be5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441be5 = icmp eq i8 %loadBr_441be5, 1
  br i1 %cmpBr_441be5, label %block_.L_441bf0, label %block_441beb

block_441beb:                                     ; preds = %block_441bb9
  %loadMem_441beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 33
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %4335 to i64*
  %4336 = load i64, i64* %PC.i278
  %4337 = add i64 %4336, 199
  %4338 = load i64, i64* %PC.i278
  %4339 = add i64 %4338, 5
  store i64 %4339, i64* %PC.i278
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4337, i64* %4340, align 8
  store %struct.Memory* %loadMem_441beb, %struct.Memory** %MEMORY
  br label %block_.L_441cb2

block_.L_441bf0:                                  ; preds = %block_441bb9
  %loadMem_441bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 33
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %4343 to i64*
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 1
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %4346 to i64*
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 15
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %4349 to i64*
  %4350 = load i64, i64* %RBP.i277
  %4351 = sub i64 %4350, 5200
  %4352 = load i64, i64* %PC.i275
  %4353 = add i64 %4352, 7
  store i64 %4353, i64* %PC.i275
  %4354 = inttoptr i64 %4351 to i32*
  %4355 = load i32, i32* %4354
  %4356 = sext i32 %4355 to i64
  store i64 %4356, i64* %RAX.i276, align 8
  store %struct.Memory* %loadMem_441bf0, %struct.Memory** %MEMORY
  %loadMem_441bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 33
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 1
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %4362 to i64*
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 5
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %4365 to i64*
  %4366 = load i64, i64* %RAX.i273
  %4367 = add i64 %4366, 12099168
  %4368 = load i64, i64* %PC.i272
  %4369 = add i64 %4368, 8
  store i64 %4369, i64* %PC.i272
  %4370 = inttoptr i64 %4367 to i8*
  %4371 = load i8, i8* %4370
  %4372 = zext i8 %4371 to i64
  store i64 %4372, i64* %RCX.i274, align 8
  store %struct.Memory* %loadMem_441bf7, %struct.Memory** %MEMORY
  %loadMem_441bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4374 = getelementptr inbounds %struct.GPR, %struct.GPR* %4373, i32 0, i32 33
  %4375 = getelementptr inbounds %struct.Reg, %struct.Reg* %4374, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %4375 to i64*
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4377 = getelementptr inbounds %struct.GPR, %struct.GPR* %4376, i32 0, i32 5
  %4378 = getelementptr inbounds %struct.Reg, %struct.Reg* %4377, i32 0, i32 0
  %ECX.i270 = bitcast %union.anon* %4378 to i32*
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4380 = getelementptr inbounds %struct.GPR, %struct.GPR* %4379, i32 0, i32 15
  %4381 = getelementptr inbounds %struct.Reg, %struct.Reg* %4380, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %4381 to i64*
  %4382 = load i32, i32* %ECX.i270
  %4383 = zext i32 %4382 to i64
  %4384 = load i64, i64* %RBP.i271
  %4385 = sub i64 %4384, 52
  %4386 = load i64, i64* %PC.i269
  %4387 = add i64 %4386, 3
  store i64 %4387, i64* %PC.i269
  %4388 = inttoptr i64 %4385 to i32*
  %4389 = load i32, i32* %4388
  %4390 = sub i32 %4382, %4389
  %4391 = icmp ult i32 %4382, %4389
  %4392 = zext i1 %4391 to i8
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4392, i8* %4393, align 1
  %4394 = and i32 %4390, 255
  %4395 = call i32 @llvm.ctpop.i32(i32 %4394)
  %4396 = trunc i32 %4395 to i8
  %4397 = and i8 %4396, 1
  %4398 = xor i8 %4397, 1
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4398, i8* %4399, align 1
  %4400 = xor i32 %4389, %4382
  %4401 = xor i32 %4400, %4390
  %4402 = lshr i32 %4401, 4
  %4403 = trunc i32 %4402 to i8
  %4404 = and i8 %4403, 1
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4404, i8* %4405, align 1
  %4406 = icmp eq i32 %4390, 0
  %4407 = zext i1 %4406 to i8
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4407, i8* %4408, align 1
  %4409 = lshr i32 %4390, 31
  %4410 = trunc i32 %4409 to i8
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4410, i8* %4411, align 1
  %4412 = lshr i32 %4382, 31
  %4413 = lshr i32 %4389, 31
  %4414 = xor i32 %4413, %4412
  %4415 = xor i32 %4409, %4412
  %4416 = add i32 %4415, %4414
  %4417 = icmp eq i32 %4416, 2
  %4418 = zext i1 %4417 to i8
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4418, i8* %4419, align 1
  store %struct.Memory* %loadMem_441bff, %struct.Memory** %MEMORY
  %loadMem_441c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 33
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %4422 to i64*
  %4423 = load i64, i64* %PC.i268
  %4424 = add i64 %4423, 106
  %4425 = load i64, i64* %PC.i268
  %4426 = add i64 %4425, 6
  %4427 = load i64, i64* %PC.i268
  %4428 = add i64 %4427, 6
  store i64 %4428, i64* %PC.i268
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4430 = load i8, i8* %4429, align 1
  %4431 = icmp eq i8 %4430, 0
  %4432 = zext i1 %4431 to i8
  store i8 %4432, i8* %BRANCH_TAKEN, align 1
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4434 = select i1 %4431, i64 %4424, i64 %4426
  store i64 %4434, i64* %4433, align 8
  store %struct.Memory* %loadMem_441c02, %struct.Memory** %MEMORY
  %loadBr_441c02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441c02 = icmp eq i8 %loadBr_441c02, 1
  br i1 %cmpBr_441c02, label %block_.L_441c6c, label %block_441c08

block_441c08:                                     ; preds = %block_.L_441bf0
  %loadMem_441c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4436 = getelementptr inbounds %struct.GPR, %struct.GPR* %4435, i32 0, i32 33
  %4437 = getelementptr inbounds %struct.Reg, %struct.Reg* %4436, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %4437 to i64*
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 1
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %EAX.i266 = bitcast %union.anon* %4440 to i32*
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 1
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %4443 to i64*
  %4444 = load i64, i64* %RAX.i267
  %4445 = load i32, i32* %EAX.i266
  %4446 = zext i32 %4445 to i64
  %4447 = load i64, i64* %PC.i265
  %4448 = add i64 %4447, 2
  store i64 %4448, i64* %PC.i265
  %4449 = xor i64 %4446, %4444
  %4450 = trunc i64 %4449 to i32
  %4451 = and i64 %4449, 4294967295
  store i64 %4451, i64* %RAX.i267, align 8
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4452, align 1
  %4453 = and i32 %4450, 255
  %4454 = call i32 @llvm.ctpop.i32(i32 %4453)
  %4455 = trunc i32 %4454 to i8
  %4456 = and i8 %4455, 1
  %4457 = xor i8 %4456, 1
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4457, i8* %4458, align 1
  %4459 = icmp eq i32 %4450, 0
  %4460 = zext i1 %4459 to i8
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4460, i8* %4461, align 1
  %4462 = lshr i32 %4450, 31
  %4463 = trunc i32 %4462 to i8
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4463, i8* %4464, align 1
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4465, align 1
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4466, align 1
  store %struct.Memory* %loadMem_441c08, %struct.Memory** %MEMORY
  %loadMem_441c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 33
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %4469 to i64*
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 1
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %EAX.i263 = bitcast %union.anon* %4472 to i32*
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 9
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %RSI.i264 = bitcast %union.anon* %4475 to i64*
  %4476 = load i32, i32* %EAX.i263
  %4477 = zext i32 %4476 to i64
  %4478 = load i64, i64* %PC.i262
  %4479 = add i64 %4478, 2
  store i64 %4479, i64* %PC.i262
  %4480 = and i64 %4477, 4294967295
  store i64 %4480, i64* %RSI.i264, align 8
  store %struct.Memory* %loadMem_441c0a, %struct.Memory** %MEMORY
  %loadMem_441c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4482 = getelementptr inbounds %struct.GPR, %struct.GPR* %4481, i32 0, i32 33
  %4483 = getelementptr inbounds %struct.Reg, %struct.Reg* %4482, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %4483 to i64*
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 11
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %RDI.i260 = bitcast %union.anon* %4486 to i64*
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 15
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %4489 to i64*
  %4490 = load i64, i64* %RBP.i261
  %4491 = sub i64 %4490, 5200
  %4492 = load i64, i64* %PC.i259
  %4493 = add i64 %4492, 6
  store i64 %4493, i64* %PC.i259
  %4494 = inttoptr i64 %4491 to i32*
  %4495 = load i32, i32* %4494
  %4496 = zext i32 %4495 to i64
  store i64 %4496, i64* %RDI.i260, align 8
  store %struct.Memory* %loadMem_441c0c, %struct.Memory** %MEMORY
  %loadMem1_441c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 33
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %4499 to i64*
  %4500 = load i64, i64* %PC.i258
  %4501 = add i64 %4500, 114478
  %4502 = load i64, i64* %PC.i258
  %4503 = add i64 %4502, 5
  %4504 = load i64, i64* %PC.i258
  %4505 = add i64 %4504, 5
  store i64 %4505, i64* %PC.i258
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4507 = load i64, i64* %4506, align 8
  %4508 = add i64 %4507, -8
  %4509 = inttoptr i64 %4508 to i64*
  store i64 %4503, i64* %4509
  store i64 %4508, i64* %4506, align 8
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4501, i64* %4510, align 8
  store %struct.Memory* %loadMem1_441c12, %struct.Memory** %MEMORY
  %loadMem2_441c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441c12 = load i64, i64* %3
  %call2_441c12 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_441c12, %struct.Memory* %loadMem2_441c12)
  store %struct.Memory* %call2_441c12, %struct.Memory** %MEMORY
  %loadMem_441c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 33
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %4513 to i64*
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4515 = getelementptr inbounds %struct.GPR, %struct.GPR* %4514, i32 0, i32 1
  %4516 = getelementptr inbounds %struct.Reg, %struct.Reg* %4515, i32 0, i32 0
  %EAX.i257 = bitcast %union.anon* %4516 to i32*
  %4517 = load i32, i32* %EAX.i257
  %4518 = zext i32 %4517 to i64
  %4519 = load i64, i64* %PC.i256
  %4520 = add i64 %4519, 3
  store i64 %4520, i64* %PC.i256
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4521, align 1
  %4522 = and i32 %4517, 255
  %4523 = call i32 @llvm.ctpop.i32(i32 %4522)
  %4524 = trunc i32 %4523 to i8
  %4525 = and i8 %4524, 1
  %4526 = xor i8 %4525, 1
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4526, i8* %4527, align 1
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4528, align 1
  %4529 = icmp eq i32 %4517, 0
  %4530 = zext i1 %4529 to i8
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4530, i8* %4531, align 1
  %4532 = lshr i32 %4517, 31
  %4533 = trunc i32 %4532 to i8
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4533, i8* %4534, align 1
  %4535 = lshr i32 %4517, 31
  %4536 = xor i32 %4532, %4535
  %4537 = add i32 %4536, %4535
  %4538 = icmp eq i32 %4537, 2
  %4539 = zext i1 %4538 to i8
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4539, i8* %4540, align 1
  store %struct.Memory* %loadMem_441c17, %struct.Memory** %MEMORY
  %loadMem_441c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 33
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %4543 to i64*
  %4544 = load i64, i64* %PC.i255
  %4545 = add i64 %4544, 21
  %4546 = load i64, i64* %PC.i255
  %4547 = add i64 %4546, 6
  %4548 = load i64, i64* %PC.i255
  %4549 = add i64 %4548, 6
  store i64 %4549, i64* %PC.i255
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4551 = load i8, i8* %4550, align 1
  store i8 %4551, i8* %BRANCH_TAKEN, align 1
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4553 = icmp ne i8 %4551, 0
  %4554 = select i1 %4553, i64 %4545, i64 %4547
  store i64 %4554, i64* %4552, align 8
  store %struct.Memory* %loadMem_441c1a, %struct.Memory** %MEMORY
  %loadBr_441c1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441c1a = icmp eq i8 %loadBr_441c1a, 1
  br i1 %cmpBr_441c1a, label %block_.L_441c2f, label %block_441c20

block_441c20:                                     ; preds = %block_441c08
  %loadMem_441c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 33
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %4557 to i64*
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 15
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %4560 to i64*
  %4561 = load i64, i64* %RBP.i254
  %4562 = sub i64 %4561, 3576
  %4563 = load i64, i64* %PC.i253
  %4564 = add i64 %4563, 10
  store i64 %4564, i64* %PC.i253
  %4565 = inttoptr i64 %4562 to i32*
  store i32 1, i32* %4565
  store %struct.Memory* %loadMem_441c20, %struct.Memory** %MEMORY
  %loadMem_441c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 33
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %4568 to i64*
  %4569 = load i64, i64* %PC.i252
  %4570 = add i64 %4569, 156
  %4571 = load i64, i64* %PC.i252
  %4572 = add i64 %4571, 5
  store i64 %4572, i64* %PC.i252
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4570, i64* %4573, align 8
  store %struct.Memory* %loadMem_441c2a, %struct.Memory** %MEMORY
  br label %block_.L_441cc6

block_.L_441c2f:                                  ; preds = %block_441c08
  %loadMem_441c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4575 = getelementptr inbounds %struct.GPR, %struct.GPR* %4574, i32 0, i32 33
  %4576 = getelementptr inbounds %struct.Reg, %struct.Reg* %4575, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %4576 to i64*
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4578 = getelementptr inbounds %struct.GPR, %struct.GPR* %4577, i32 0, i32 1
  %4579 = getelementptr inbounds %struct.Reg, %struct.Reg* %4578, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %4579 to i64*
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4581 = getelementptr inbounds %struct.GPR, %struct.GPR* %4580, i32 0, i32 15
  %4582 = getelementptr inbounds %struct.Reg, %struct.Reg* %4581, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %4582 to i64*
  %4583 = load i64, i64* %RBP.i251
  %4584 = sub i64 %4583, 8
  %4585 = load i64, i64* %PC.i249
  %4586 = add i64 %4585, 4
  store i64 %4586, i64* %PC.i249
  %4587 = inttoptr i64 %4584 to i64*
  %4588 = load i64, i64* %4587
  store i64 %4588, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_441c2f, %struct.Memory** %MEMORY
  %loadMem_441c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 33
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %4591 to i64*
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4593 = getelementptr inbounds %struct.GPR, %struct.GPR* %4592, i32 0, i32 5
  %4594 = getelementptr inbounds %struct.Reg, %struct.Reg* %4593, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %4594 to i64*
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 15
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %4597 to i64*
  %4598 = load i64, i64* %RBP.i248
  %4599 = sub i64 %4598, 5200
  %4600 = load i64, i64* %PC.i246
  %4601 = add i64 %4600, 7
  store i64 %4601, i64* %PC.i246
  %4602 = inttoptr i64 %4599 to i32*
  %4603 = load i32, i32* %4602
  %4604 = sext i32 %4603 to i64
  store i64 %4604, i64* %RCX.i247, align 8
  store %struct.Memory* %loadMem_441c33, %struct.Memory** %MEMORY
  %loadMem_441c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 33
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %4607 to i64*
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 1
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 5
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %4613 to i64*
  %4614 = load i64, i64* %RAX.i244
  %4615 = load i64, i64* %RCX.i245
  %4616 = add i64 %4615, %4614
  %4617 = load i64, i64* %PC.i243
  %4618 = add i64 %4617, 4
  store i64 %4618, i64* %PC.i243
  %4619 = inttoptr i64 %4616 to i8*
  %4620 = load i8, i8* %4619
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4621, align 1
  %4622 = zext i8 %4620 to i32
  %4623 = call i32 @llvm.ctpop.i32(i32 %4622)
  %4624 = trunc i32 %4623 to i8
  %4625 = and i8 %4624, 1
  %4626 = xor i8 %4625, 1
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4626, i8* %4627, align 1
  %4628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4628, align 1
  %4629 = icmp eq i8 %4620, 0
  %4630 = zext i1 %4629 to i8
  %4631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4630, i8* %4631, align 1
  %4632 = lshr i8 %4620, 7
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4632, i8* %4633, align 1
  %4634 = lshr i8 %4620, 7
  %4635 = xor i8 %4632, %4634
  %4636 = add i8 %4635, %4634
  %4637 = icmp eq i8 %4636, 2
  %4638 = zext i1 %4637 to i8
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4638, i8* %4639, align 1
  store %struct.Memory* %loadMem_441c3a, %struct.Memory** %MEMORY
  %loadMem_441c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 33
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %4642 to i64*
  %4643 = load i64, i64* %PC.i242
  %4644 = add i64 %4643, 21
  %4645 = load i64, i64* %PC.i242
  %4646 = add i64 %4645, 6
  %4647 = load i64, i64* %PC.i242
  %4648 = add i64 %4647, 6
  store i64 %4648, i64* %PC.i242
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4650 = load i8, i8* %4649, align 1
  store i8 %4650, i8* %BRANCH_TAKEN, align 1
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4652 = icmp ne i8 %4650, 0
  %4653 = select i1 %4652, i64 %4644, i64 %4646
  store i64 %4653, i64* %4651, align 8
  store %struct.Memory* %loadMem_441c3e, %struct.Memory** %MEMORY
  %loadBr_441c3e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441c3e = icmp eq i8 %loadBr_441c3e, 1
  br i1 %cmpBr_441c3e, label %block_.L_441c53, label %block_441c44

block_441c44:                                     ; preds = %block_.L_441c2f
  %loadMem_441c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4655 = getelementptr inbounds %struct.GPR, %struct.GPR* %4654, i32 0, i32 33
  %4656 = getelementptr inbounds %struct.Reg, %struct.Reg* %4655, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %4656 to i64*
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4658 = getelementptr inbounds %struct.GPR, %struct.GPR* %4657, i32 0, i32 15
  %4659 = getelementptr inbounds %struct.Reg, %struct.Reg* %4658, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %4659 to i64*
  %4660 = load i64, i64* %RBP.i241
  %4661 = sub i64 %4660, 5192
  %4662 = load i64, i64* %PC.i240
  %4663 = add i64 %4662, 10
  store i64 %4663, i64* %PC.i240
  %4664 = inttoptr i64 %4661 to i32*
  store i32 1, i32* %4664
  store %struct.Memory* %loadMem_441c44, %struct.Memory** %MEMORY
  %loadMem_441c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4666 = getelementptr inbounds %struct.GPR, %struct.GPR* %4665, i32 0, i32 33
  %4667 = getelementptr inbounds %struct.Reg, %struct.Reg* %4666, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %4667 to i64*
  %4668 = load i64, i64* %PC.i239
  %4669 = add i64 %4668, 20
  %4670 = load i64, i64* %PC.i239
  %4671 = add i64 %4670, 5
  store i64 %4671, i64* %PC.i239
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4669, i64* %4672, align 8
  store %struct.Memory* %loadMem_441c4e, %struct.Memory** %MEMORY
  br label %block_.L_441c62

block_.L_441c53:                                  ; preds = %block_.L_441c2f
  %loadMem_441c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 33
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %4675 to i64*
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 15
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %4678 to i64*
  %4679 = load i64, i64* %RBP.i238
  %4680 = sub i64 %4679, 3576
  %4681 = load i64, i64* %PC.i237
  %4682 = add i64 %4681, 10
  store i64 %4682, i64* %PC.i237
  %4683 = inttoptr i64 %4680 to i32*
  store i32 1, i32* %4683
  store %struct.Memory* %loadMem_441c53, %struct.Memory** %MEMORY
  %loadMem_441c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4685 = getelementptr inbounds %struct.GPR, %struct.GPR* %4684, i32 0, i32 33
  %4686 = getelementptr inbounds %struct.Reg, %struct.Reg* %4685, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %4686 to i64*
  %4687 = load i64, i64* %PC.i236
  %4688 = add i64 %4687, 105
  %4689 = load i64, i64* %PC.i236
  %4690 = add i64 %4689, 5
  store i64 %4690, i64* %PC.i236
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4688, i64* %4691, align 8
  store %struct.Memory* %loadMem_441c5d, %struct.Memory** %MEMORY
  br label %block_.L_441cc6

block_.L_441c62:                                  ; preds = %block_441c44
  %loadMem_441c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 33
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4694 to i64*
  %4695 = load i64, i64* %PC.i235
  %4696 = add i64 %4695, 5
  %4697 = load i64, i64* %PC.i235
  %4698 = add i64 %4697, 5
  store i64 %4698, i64* %PC.i235
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4696, i64* %4699, align 8
  store %struct.Memory* %loadMem_441c62, %struct.Memory** %MEMORY
  br label %block_.L_441c67

block_.L_441c67:                                  ; preds = %block_.L_441c62
  %loadMem_441c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4701 = getelementptr inbounds %struct.GPR, %struct.GPR* %4700, i32 0, i32 33
  %4702 = getelementptr inbounds %struct.Reg, %struct.Reg* %4701, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %4702 to i64*
  %4703 = load i64, i64* %PC.i234
  %4704 = add i64 %4703, 70
  %4705 = load i64, i64* %PC.i234
  %4706 = add i64 %4705, 5
  store i64 %4706, i64* %PC.i234
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4704, i64* %4707, align 8
  store %struct.Memory* %loadMem_441c67, %struct.Memory** %MEMORY
  br label %block_.L_441cad

block_.L_441c6c:                                  ; preds = %block_.L_441bf0
  %loadMem_441c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 33
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4710 to i64*
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 1
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %4713 to i64*
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 15
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %4716 to i64*
  %4717 = load i64, i64* %RBP.i233
  %4718 = sub i64 %4717, 5200
  %4719 = load i64, i64* %PC.i231
  %4720 = add i64 %4719, 7
  store i64 %4720, i64* %PC.i231
  %4721 = inttoptr i64 %4718 to i32*
  %4722 = load i32, i32* %4721
  %4723 = sext i32 %4722 to i64
  store i64 %4723, i64* %RAX.i232, align 8
  store %struct.Memory* %loadMem_441c6c, %struct.Memory** %MEMORY
  %loadMem_441c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 33
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %4726 to i64*
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 1
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %4729 to i64*
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 5
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %4732 to i64*
  %4733 = load i64, i64* %RAX.i229
  %4734 = add i64 %4733, 12099168
  %4735 = load i64, i64* %PC.i228
  %4736 = add i64 %4735, 8
  store i64 %4736, i64* %PC.i228
  %4737 = inttoptr i64 %4734 to i8*
  %4738 = load i8, i8* %4737
  %4739 = zext i8 %4738 to i64
  store i64 %4739, i64* %RCX.i230, align 8
  store %struct.Memory* %loadMem_441c73, %struct.Memory** %MEMORY
  %loadMem_441c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 33
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %4742 to i64*
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 5
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %ECX.i226 = bitcast %union.anon* %4745 to i32*
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4747 = getelementptr inbounds %struct.GPR, %struct.GPR* %4746, i32 0, i32 15
  %4748 = getelementptr inbounds %struct.Reg, %struct.Reg* %4747, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %4748 to i64*
  %4749 = load i32, i32* %ECX.i226
  %4750 = zext i32 %4749 to i64
  %4751 = load i64, i64* %RBP.i227
  %4752 = sub i64 %4751, 56
  %4753 = load i64, i64* %PC.i225
  %4754 = add i64 %4753, 3
  store i64 %4754, i64* %PC.i225
  %4755 = inttoptr i64 %4752 to i32*
  %4756 = load i32, i32* %4755
  %4757 = sub i32 %4749, %4756
  %4758 = icmp ult i32 %4749, %4756
  %4759 = zext i1 %4758 to i8
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4759, i8* %4760, align 1
  %4761 = and i32 %4757, 255
  %4762 = call i32 @llvm.ctpop.i32(i32 %4761)
  %4763 = trunc i32 %4762 to i8
  %4764 = and i8 %4763, 1
  %4765 = xor i8 %4764, 1
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4765, i8* %4766, align 1
  %4767 = xor i32 %4756, %4749
  %4768 = xor i32 %4767, %4757
  %4769 = lshr i32 %4768, 4
  %4770 = trunc i32 %4769 to i8
  %4771 = and i8 %4770, 1
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4771, i8* %4772, align 1
  %4773 = icmp eq i32 %4757, 0
  %4774 = zext i1 %4773 to i8
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4774, i8* %4775, align 1
  %4776 = lshr i32 %4757, 31
  %4777 = trunc i32 %4776 to i8
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4777, i8* %4778, align 1
  %4779 = lshr i32 %4749, 31
  %4780 = lshr i32 %4756, 31
  %4781 = xor i32 %4780, %4779
  %4782 = xor i32 %4776, %4779
  %4783 = add i32 %4782, %4781
  %4784 = icmp eq i32 %4783, 2
  %4785 = zext i1 %4784 to i8
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4785, i8* %4786, align 1
  store %struct.Memory* %loadMem_441c7b, %struct.Memory** %MEMORY
  %loadMem_441c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4788 = getelementptr inbounds %struct.GPR, %struct.GPR* %4787, i32 0, i32 33
  %4789 = getelementptr inbounds %struct.Reg, %struct.Reg* %4788, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %4789 to i64*
  %4790 = load i64, i64* %PC.i224
  %4791 = add i64 %4790, 42
  %4792 = load i64, i64* %PC.i224
  %4793 = add i64 %4792, 6
  %4794 = load i64, i64* %PC.i224
  %4795 = add i64 %4794, 6
  store i64 %4795, i64* %PC.i224
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4797 = load i8, i8* %4796, align 1
  %4798 = icmp eq i8 %4797, 0
  %4799 = zext i1 %4798 to i8
  store i8 %4799, i8* %BRANCH_TAKEN, align 1
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4801 = select i1 %4798, i64 %4791, i64 %4793
  store i64 %4801, i64* %4800, align 8
  store %struct.Memory* %loadMem_441c7e, %struct.Memory** %MEMORY
  %loadBr_441c7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441c7e = icmp eq i8 %loadBr_441c7e, 1
  br i1 %cmpBr_441c7e, label %block_.L_441ca8, label %block_441c84

block_441c84:                                     ; preds = %block_.L_441c6c
  %loadMem_441c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 33
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %4804 to i64*
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 1
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %4807 to i64*
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 15
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %4810 to i64*
  %4811 = load i64, i64* %RBP.i223
  %4812 = sub i64 %4811, 5200
  %4813 = load i64, i64* %PC.i221
  %4814 = add i64 %4813, 7
  store i64 %4814, i64* %PC.i221
  %4815 = inttoptr i64 %4812 to i32*
  %4816 = load i32, i32* %4815
  %4817 = sext i32 %4816 to i64
  store i64 %4817, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_441c84, %struct.Memory** %MEMORY
  %loadMem_441c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 33
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %4820 to i64*
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 1
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %4823 to i64*
  %4824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4825 = getelementptr inbounds %struct.GPR, %struct.GPR* %4824, i32 0, i32 15
  %4826 = getelementptr inbounds %struct.Reg, %struct.Reg* %4825, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %4826 to i64*
  %4827 = load i64, i64* %RBP.i220
  %4828 = load i64, i64* %RAX.i219
  %4829 = mul i64 %4828, 4
  %4830 = add i64 %4827, -5184
  %4831 = add i64 %4830, %4829
  %4832 = load i64, i64* %PC.i218
  %4833 = add i64 %4832, 8
  store i64 %4833, i64* %PC.i218
  %4834 = inttoptr i64 %4831 to i32*
  %4835 = load i32, i32* %4834
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4836, align 1
  %4837 = and i32 %4835, 255
  %4838 = call i32 @llvm.ctpop.i32(i32 %4837)
  %4839 = trunc i32 %4838 to i8
  %4840 = and i8 %4839, 1
  %4841 = xor i8 %4840, 1
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4841, i8* %4842, align 1
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4843, align 1
  %4844 = icmp eq i32 %4835, 0
  %4845 = zext i1 %4844 to i8
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4845, i8* %4846, align 1
  %4847 = lshr i32 %4835, 31
  %4848 = trunc i32 %4847 to i8
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4848, i8* %4849, align 1
  %4850 = lshr i32 %4835, 31
  %4851 = xor i32 %4847, %4850
  %4852 = add i32 %4851, %4850
  %4853 = icmp eq i32 %4852, 2
  %4854 = zext i1 %4853 to i8
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4854, i8* %4855, align 1
  store %struct.Memory* %loadMem_441c8b, %struct.Memory** %MEMORY
  %loadMem_441c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 33
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %4858 to i64*
  %4859 = load i64, i64* %PC.i217
  %4860 = add i64 %4859, 21
  %4861 = load i64, i64* %PC.i217
  %4862 = add i64 %4861, 6
  %4863 = load i64, i64* %PC.i217
  %4864 = add i64 %4863, 6
  store i64 %4864, i64* %PC.i217
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4866 = load i8, i8* %4865, align 1
  %4867 = icmp eq i8 %4866, 0
  %4868 = zext i1 %4867 to i8
  store i8 %4868, i8* %BRANCH_TAKEN, align 1
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4870 = select i1 %4867, i64 %4860, i64 %4862
  store i64 %4870, i64* %4869, align 8
  store %struct.Memory* %loadMem_441c93, %struct.Memory** %MEMORY
  %loadBr_441c93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441c93 = icmp eq i8 %loadBr_441c93, 1
  br i1 %cmpBr_441c93, label %block_.L_441ca8, label %block_441c99

block_441c99:                                     ; preds = %block_441c84
  %loadMem_441c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 33
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4873 to i64*
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 15
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %4876 to i64*
  %4877 = load i64, i64* %RBP.i216
  %4878 = sub i64 %4877, 3576
  %4879 = load i64, i64* %PC.i215
  %4880 = add i64 %4879, 10
  store i64 %4880, i64* %PC.i215
  %4881 = inttoptr i64 %4878 to i32*
  store i32 1, i32* %4881
  store %struct.Memory* %loadMem_441c99, %struct.Memory** %MEMORY
  %loadMem_441ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4883 = getelementptr inbounds %struct.GPR, %struct.GPR* %4882, i32 0, i32 33
  %4884 = getelementptr inbounds %struct.Reg, %struct.Reg* %4883, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %4884 to i64*
  %4885 = load i64, i64* %PC.i214
  %4886 = add i64 %4885, 35
  %4887 = load i64, i64* %PC.i214
  %4888 = add i64 %4887, 5
  store i64 %4888, i64* %PC.i214
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4886, i64* %4889, align 8
  store %struct.Memory* %loadMem_441ca3, %struct.Memory** %MEMORY
  br label %block_.L_441cc6

block_.L_441ca8:                                  ; preds = %block_441c84, %block_.L_441c6c
  %loadMem_441ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 33
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %4892 to i64*
  %4893 = load i64, i64* %PC.i213
  %4894 = add i64 %4893, 5
  %4895 = load i64, i64* %PC.i213
  %4896 = add i64 %4895, 5
  store i64 %4896, i64* %PC.i213
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4894, i64* %4897, align 8
  store %struct.Memory* %loadMem_441ca8, %struct.Memory** %MEMORY
  br label %block_.L_441cad

block_.L_441cad:                                  ; preds = %block_.L_441ca8, %block_.L_441c67
  %loadMem_441cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4899 = getelementptr inbounds %struct.GPR, %struct.GPR* %4898, i32 0, i32 33
  %4900 = getelementptr inbounds %struct.Reg, %struct.Reg* %4899, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %4900 to i64*
  %4901 = load i64, i64* %PC.i212
  %4902 = add i64 %4901, 5
  %4903 = load i64, i64* %PC.i212
  %4904 = add i64 %4903, 5
  store i64 %4904, i64* %PC.i212
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4902, i64* %4905, align 8
  store %struct.Memory* %loadMem_441cad, %struct.Memory** %MEMORY
  br label %block_.L_441cb2

block_.L_441cb2:                                  ; preds = %block_.L_441cad, %block_441beb
  %loadMem_441cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 33
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %4908 to i64*
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 1
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %4911 to i64*
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 15
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %4914 to i64*
  %4915 = load i64, i64* %RBP.i211
  %4916 = sub i64 %4915, 5196
  %4917 = load i64, i64* %PC.i209
  %4918 = add i64 %4917, 6
  store i64 %4918, i64* %PC.i209
  %4919 = inttoptr i64 %4916 to i32*
  %4920 = load i32, i32* %4919
  %4921 = zext i32 %4920 to i64
  store i64 %4921, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_441cb2, %struct.Memory** %MEMORY
  %loadMem_441cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 33
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %4924 to i64*
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 1
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %RAX.i208 = bitcast %union.anon* %4927 to i64*
  %4928 = load i64, i64* %RAX.i208
  %4929 = load i64, i64* %PC.i207
  %4930 = add i64 %4929, 3
  store i64 %4930, i64* %PC.i207
  %4931 = trunc i64 %4928 to i32
  %4932 = add i32 1, %4931
  %4933 = zext i32 %4932 to i64
  store i64 %4933, i64* %RAX.i208, align 8
  %4934 = icmp ult i32 %4932, %4931
  %4935 = icmp ult i32 %4932, 1
  %4936 = or i1 %4934, %4935
  %4937 = zext i1 %4936 to i8
  %4938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4937, i8* %4938, align 1
  %4939 = and i32 %4932, 255
  %4940 = call i32 @llvm.ctpop.i32(i32 %4939)
  %4941 = trunc i32 %4940 to i8
  %4942 = and i8 %4941, 1
  %4943 = xor i8 %4942, 1
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4943, i8* %4944, align 1
  %4945 = xor i64 1, %4928
  %4946 = trunc i64 %4945 to i32
  %4947 = xor i32 %4946, %4932
  %4948 = lshr i32 %4947, 4
  %4949 = trunc i32 %4948 to i8
  %4950 = and i8 %4949, 1
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4950, i8* %4951, align 1
  %4952 = icmp eq i32 %4932, 0
  %4953 = zext i1 %4952 to i8
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4953, i8* %4954, align 1
  %4955 = lshr i32 %4932, 31
  %4956 = trunc i32 %4955 to i8
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4956, i8* %4957, align 1
  %4958 = lshr i32 %4931, 31
  %4959 = xor i32 %4955, %4958
  %4960 = add i32 %4959, %4955
  %4961 = icmp eq i32 %4960, 2
  %4962 = zext i1 %4961 to i8
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4962, i8* %4963, align 1
  store %struct.Memory* %loadMem_441cb8, %struct.Memory** %MEMORY
  %loadMem_441cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4965 = getelementptr inbounds %struct.GPR, %struct.GPR* %4964, i32 0, i32 33
  %4966 = getelementptr inbounds %struct.Reg, %struct.Reg* %4965, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %4966 to i64*
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4968 = getelementptr inbounds %struct.GPR, %struct.GPR* %4967, i32 0, i32 1
  %4969 = getelementptr inbounds %struct.Reg, %struct.Reg* %4968, i32 0, i32 0
  %EAX.i205 = bitcast %union.anon* %4969 to i32*
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4971 = getelementptr inbounds %struct.GPR, %struct.GPR* %4970, i32 0, i32 15
  %4972 = getelementptr inbounds %struct.Reg, %struct.Reg* %4971, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %4972 to i64*
  %4973 = load i64, i64* %RBP.i206
  %4974 = sub i64 %4973, 5196
  %4975 = load i32, i32* %EAX.i205
  %4976 = zext i32 %4975 to i64
  %4977 = load i64, i64* %PC.i204
  %4978 = add i64 %4977, 6
  store i64 %4978, i64* %PC.i204
  %4979 = inttoptr i64 %4974 to i32*
  store i32 %4975, i32* %4979
  store %struct.Memory* %loadMem_441cbb, %struct.Memory** %MEMORY
  %loadMem_441cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 33
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %4982 to i64*
  %4983 = load i64, i64* %PC.i203
  %4984 = add i64 %4983, -277
  %4985 = load i64, i64* %PC.i203
  %4986 = add i64 %4985, 5
  store i64 %4986, i64* %PC.i203
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4984, i64* %4987, align 8
  store %struct.Memory* %loadMem_441cc1, %struct.Memory** %MEMORY
  br label %block_.L_441bac

block_.L_441cc6:                                  ; preds = %block_441c99, %block_.L_441c53, %block_441c20, %block_.L_441bac
  %loadMem_441cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 33
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %4990 to i64*
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 15
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %4993 to i64*
  %4994 = load i64, i64* %RBP.i202
  %4995 = sub i64 %4994, 5192
  %4996 = load i64, i64* %PC.i201
  %4997 = add i64 %4996, 7
  store i64 %4997, i64* %PC.i201
  %4998 = inttoptr i64 %4995 to i32*
  %4999 = load i32, i32* %4998
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5000, align 1
  %5001 = and i32 %4999, 255
  %5002 = call i32 @llvm.ctpop.i32(i32 %5001)
  %5003 = trunc i32 %5002 to i8
  %5004 = and i8 %5003, 1
  %5005 = xor i8 %5004, 1
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5005, i8* %5006, align 1
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5007, align 1
  %5008 = icmp eq i32 %4999, 0
  %5009 = zext i1 %5008 to i8
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5009, i8* %5010, align 1
  %5011 = lshr i32 %4999, 31
  %5012 = trunc i32 %5011 to i8
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5012, i8* %5013, align 1
  %5014 = lshr i32 %4999, 31
  %5015 = xor i32 %5011, %5014
  %5016 = add i32 %5015, %5014
  %5017 = icmp eq i32 %5016, 2
  %5018 = zext i1 %5017 to i8
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5018, i8* %5019, align 1
  store %struct.Memory* %loadMem_441cc6, %struct.Memory** %MEMORY
  %loadMem_441ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5021 = getelementptr inbounds %struct.GPR, %struct.GPR* %5020, i32 0, i32 33
  %5022 = getelementptr inbounds %struct.Reg, %struct.Reg* %5021, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %5022 to i64*
  %5023 = load i64, i64* %PC.i200
  %5024 = add i64 %5023, 239
  %5025 = load i64, i64* %PC.i200
  %5026 = add i64 %5025, 6
  %5027 = load i64, i64* %PC.i200
  %5028 = add i64 %5027, 6
  store i64 %5028, i64* %PC.i200
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5030 = load i8, i8* %5029, align 1
  %5031 = icmp eq i8 %5030, 0
  %5032 = zext i1 %5031 to i8
  store i8 %5032, i8* %BRANCH_TAKEN, align 1
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5034 = select i1 %5031, i64 %5024, i64 %5026
  store i64 %5034, i64* %5033, align 8
  store %struct.Memory* %loadMem_441ccd, %struct.Memory** %MEMORY
  %loadBr_441ccd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441ccd = icmp eq i8 %loadBr_441ccd, 1
  br i1 %cmpBr_441ccd, label %block_.L_441dbc, label %block_441cd3

block_441cd3:                                     ; preds = %block_.L_441cc6
  %loadMem_441cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 33
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %5037 to i64*
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5039 = getelementptr inbounds %struct.GPR, %struct.GPR* %5038, i32 0, i32 15
  %5040 = getelementptr inbounds %struct.Reg, %struct.Reg* %5039, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %5040 to i64*
  %5041 = load i64, i64* %RBP.i199
  %5042 = sub i64 %5041, 5204
  %5043 = load i64, i64* %PC.i198
  %5044 = add i64 %5043, 10
  store i64 %5044, i64* %PC.i198
  %5045 = inttoptr i64 %5042 to i32*
  store i32 0, i32* %5045
  store %struct.Memory* %loadMem_441cd3, %struct.Memory** %MEMORY
  %loadMem_441cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 33
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %5048 to i64*
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 15
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %5051 to i64*
  %5052 = load i64, i64* %RBP.i197
  %5053 = sub i64 %5052, 5208
  %5054 = load i64, i64* %PC.i196
  %5055 = add i64 %5054, 10
  store i64 %5055, i64* %PC.i196
  %5056 = inttoptr i64 %5053 to i32*
  store i32 0, i32* %5056
  store %struct.Memory* %loadMem_441cdd, %struct.Memory** %MEMORY
  %loadMem_441ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5058 = getelementptr inbounds %struct.GPR, %struct.GPR* %5057, i32 0, i32 33
  %5059 = getelementptr inbounds %struct.Reg, %struct.Reg* %5058, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %5059 to i64*
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5061 = getelementptr inbounds %struct.GPR, %struct.GPR* %5060, i32 0, i32 15
  %5062 = getelementptr inbounds %struct.Reg, %struct.Reg* %5061, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %5062 to i64*
  %5063 = load i64, i64* %RBP.i195
  %5064 = sub i64 %5063, 5196
  %5065 = load i64, i64* %PC.i194
  %5066 = add i64 %5065, 10
  store i64 %5066, i64* %PC.i194
  %5067 = inttoptr i64 %5064 to i32*
  store i32 4, i32* %5067
  store %struct.Memory* %loadMem_441ce7, %struct.Memory** %MEMORY
  br label %block_.L_441cf1

block_.L_441cf1:                                  ; preds = %block_.L_441d78, %block_441cd3
  %loadMem_441cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5069 = getelementptr inbounds %struct.GPR, %struct.GPR* %5068, i32 0, i32 33
  %5070 = getelementptr inbounds %struct.Reg, %struct.Reg* %5069, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %5070 to i64*
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 15
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %5073 to i64*
  %5074 = load i64, i64* %RBP.i193
  %5075 = sub i64 %5074, 5196
  %5076 = load i64, i64* %PC.i192
  %5077 = add i64 %5076, 7
  store i64 %5077, i64* %PC.i192
  %5078 = inttoptr i64 %5075 to i32*
  %5079 = load i32, i32* %5078
  %5080 = sub i32 %5079, 8
  %5081 = icmp ult i32 %5079, 8
  %5082 = zext i1 %5081 to i8
  %5083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5082, i8* %5083, align 1
  %5084 = and i32 %5080, 255
  %5085 = call i32 @llvm.ctpop.i32(i32 %5084)
  %5086 = trunc i32 %5085 to i8
  %5087 = and i8 %5086, 1
  %5088 = xor i8 %5087, 1
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5088, i8* %5089, align 1
  %5090 = xor i32 %5079, 8
  %5091 = xor i32 %5090, %5080
  %5092 = lshr i32 %5091, 4
  %5093 = trunc i32 %5092 to i8
  %5094 = and i8 %5093, 1
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5094, i8* %5095, align 1
  %5096 = icmp eq i32 %5080, 0
  %5097 = zext i1 %5096 to i8
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5097, i8* %5098, align 1
  %5099 = lshr i32 %5080, 31
  %5100 = trunc i32 %5099 to i8
  %5101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5100, i8* %5101, align 1
  %5102 = lshr i32 %5079, 31
  %5103 = xor i32 %5099, %5102
  %5104 = add i32 %5103, %5102
  %5105 = icmp eq i32 %5104, 2
  %5106 = zext i1 %5105 to i8
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5106, i8* %5107, align 1
  store %struct.Memory* %loadMem_441cf1, %struct.Memory** %MEMORY
  %loadMem_441cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 33
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %5110 to i64*
  %5111 = load i64, i64* %PC.i191
  %5112 = add i64 %5111, 148
  %5113 = load i64, i64* %PC.i191
  %5114 = add i64 %5113, 6
  %5115 = load i64, i64* %PC.i191
  %5116 = add i64 %5115, 6
  store i64 %5116, i64* %PC.i191
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5118 = load i8, i8* %5117, align 1
  %5119 = icmp ne i8 %5118, 0
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5121 = load i8, i8* %5120, align 1
  %5122 = icmp ne i8 %5121, 0
  %5123 = xor i1 %5119, %5122
  %5124 = xor i1 %5123, true
  %5125 = zext i1 %5124 to i8
  store i8 %5125, i8* %BRANCH_TAKEN, align 1
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5127 = select i1 %5123, i64 %5114, i64 %5112
  store i64 %5127, i64* %5126, align 8
  store %struct.Memory* %loadMem_441cf8, %struct.Memory** %MEMORY
  %loadBr_441cf8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441cf8 = icmp eq i8 %loadBr_441cf8, 1
  br i1 %cmpBr_441cf8, label %block_.L_441d8c, label %block_441cfe

block_441cfe:                                     ; preds = %block_.L_441cf1
  %loadMem_441cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5129 = getelementptr inbounds %struct.GPR, %struct.GPR* %5128, i32 0, i32 33
  %5130 = getelementptr inbounds %struct.Reg, %struct.Reg* %5129, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %5130 to i64*
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5132 = getelementptr inbounds %struct.GPR, %struct.GPR* %5131, i32 0, i32 1
  %5133 = getelementptr inbounds %struct.Reg, %struct.Reg* %5132, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %5133 to i64*
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 15
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %5136 to i64*
  %5137 = load i64, i64* %RBP.i190
  %5138 = sub i64 %5137, 5188
  %5139 = load i64, i64* %PC.i188
  %5140 = add i64 %5139, 6
  store i64 %5140, i64* %PC.i188
  %5141 = inttoptr i64 %5138 to i32*
  %5142 = load i32, i32* %5141
  %5143 = zext i32 %5142 to i64
  store i64 %5143, i64* %RAX.i189, align 8
  store %struct.Memory* %loadMem_441cfe, %struct.Memory** %MEMORY
  %loadMem_441d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 33
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %5146 to i64*
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 5
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %5149 to i64*
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 15
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %5152 to i64*
  %5153 = load i64, i64* %RBP.i187
  %5154 = sub i64 %5153, 5196
  %5155 = load i64, i64* %PC.i185
  %5156 = add i64 %5155, 7
  store i64 %5156, i64* %PC.i185
  %5157 = inttoptr i64 %5154 to i32*
  %5158 = load i32, i32* %5157
  %5159 = sext i32 %5158 to i64
  store i64 %5159, i64* %RCX.i186, align 8
  store %struct.Memory* %loadMem_441d04, %struct.Memory** %MEMORY
  %loadMem_441d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 33
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %5162 to i64*
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 1
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %5165 to i64*
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5167 = getelementptr inbounds %struct.GPR, %struct.GPR* %5166, i32 0, i32 5
  %5168 = getelementptr inbounds %struct.Reg, %struct.Reg* %5167, i32 0, i32 0
  %RCX.i184 = bitcast %union.anon* %5168 to i64*
  %5169 = load i64, i64* %RAX.i183
  %5170 = load i64, i64* %RCX.i184
  %5171 = mul i64 %5170, 4
  %5172 = add i64 %5171, 8053168
  %5173 = load i64, i64* %PC.i182
  %5174 = add i64 %5173, 7
  store i64 %5174, i64* %PC.i182
  %5175 = trunc i64 %5169 to i32
  %5176 = inttoptr i64 %5172 to i32*
  %5177 = load i32, i32* %5176
  %5178 = add i32 %5177, %5175
  %5179 = zext i32 %5178 to i64
  store i64 %5179, i64* %RAX.i183, align 8
  %5180 = icmp ult i32 %5178, %5175
  %5181 = icmp ult i32 %5178, %5177
  %5182 = or i1 %5180, %5181
  %5183 = zext i1 %5182 to i8
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5183, i8* %5184, align 1
  %5185 = and i32 %5178, 255
  %5186 = call i32 @llvm.ctpop.i32(i32 %5185)
  %5187 = trunc i32 %5186 to i8
  %5188 = and i8 %5187, 1
  %5189 = xor i8 %5188, 1
  %5190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5189, i8* %5190, align 1
  %5191 = xor i32 %5177, %5175
  %5192 = xor i32 %5191, %5178
  %5193 = lshr i32 %5192, 4
  %5194 = trunc i32 %5193 to i8
  %5195 = and i8 %5194, 1
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5195, i8* %5196, align 1
  %5197 = icmp eq i32 %5178, 0
  %5198 = zext i1 %5197 to i8
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5198, i8* %5199, align 1
  %5200 = lshr i32 %5178, 31
  %5201 = trunc i32 %5200 to i8
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5201, i8* %5202, align 1
  %5203 = lshr i32 %5175, 31
  %5204 = lshr i32 %5177, 31
  %5205 = xor i32 %5200, %5203
  %5206 = xor i32 %5200, %5204
  %5207 = add i32 %5205, %5206
  %5208 = icmp eq i32 %5207, 2
  %5209 = zext i1 %5208 to i8
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5209, i8* %5210, align 1
  store %struct.Memory* %loadMem_441d0b, %struct.Memory** %MEMORY
  %loadMem_441d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5212 = getelementptr inbounds %struct.GPR, %struct.GPR* %5211, i32 0, i32 33
  %5213 = getelementptr inbounds %struct.Reg, %struct.Reg* %5212, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %5213 to i64*
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5215 = getelementptr inbounds %struct.GPR, %struct.GPR* %5214, i32 0, i32 1
  %5216 = getelementptr inbounds %struct.Reg, %struct.Reg* %5215, i32 0, i32 0
  %EAX.i180 = bitcast %union.anon* %5216 to i32*
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5218 = getelementptr inbounds %struct.GPR, %struct.GPR* %5217, i32 0, i32 5
  %5219 = getelementptr inbounds %struct.Reg, %struct.Reg* %5218, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %5219 to i64*
  %5220 = load i32, i32* %EAX.i180
  %5221 = zext i32 %5220 to i64
  %5222 = load i64, i64* %PC.i179
  %5223 = add i64 %5222, 3
  store i64 %5223, i64* %PC.i179
  %5224 = shl i64 %5221, 32
  %5225 = ashr exact i64 %5224, 32
  store i64 %5225, i64* %RCX.i181, align 8
  store %struct.Memory* %loadMem_441d12, %struct.Memory** %MEMORY
  %loadMem_441d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 33
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %5228 to i64*
  %5229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5230 = getelementptr inbounds %struct.GPR, %struct.GPR* %5229, i32 0, i32 1
  %5231 = getelementptr inbounds %struct.Reg, %struct.Reg* %5230, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %5231 to i64*
  %5232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5233 = getelementptr inbounds %struct.GPR, %struct.GPR* %5232, i32 0, i32 5
  %5234 = getelementptr inbounds %struct.Reg, %struct.Reg* %5233, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %5234 to i64*
  %5235 = load i64, i64* %RCX.i178
  %5236 = add i64 %5235, 12099168
  %5237 = load i64, i64* %PC.i176
  %5238 = add i64 %5237, 8
  store i64 %5238, i64* %PC.i176
  %5239 = inttoptr i64 %5236 to i8*
  %5240 = load i8, i8* %5239
  %5241 = zext i8 %5240 to i64
  store i64 %5241, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_441d15, %struct.Memory** %MEMORY
  %loadMem_441d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 33
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %5244 to i64*
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 1
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %EAX.i175 = bitcast %union.anon* %5247 to i32*
  %5248 = load i32, i32* %EAX.i175
  %5249 = zext i32 %5248 to i64
  %5250 = load i64, i64* %PC.i174
  %5251 = add i64 %5250, 3
  store i64 %5251, i64* %PC.i174
  %5252 = sub i32 %5248, 3
  %5253 = icmp ult i32 %5248, 3
  %5254 = zext i1 %5253 to i8
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5254, i8* %5255, align 1
  %5256 = and i32 %5252, 255
  %5257 = call i32 @llvm.ctpop.i32(i32 %5256)
  %5258 = trunc i32 %5257 to i8
  %5259 = and i8 %5258, 1
  %5260 = xor i8 %5259, 1
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5260, i8* %5261, align 1
  %5262 = xor i64 3, %5249
  %5263 = trunc i64 %5262 to i32
  %5264 = xor i32 %5263, %5252
  %5265 = lshr i32 %5264, 4
  %5266 = trunc i32 %5265 to i8
  %5267 = and i8 %5266, 1
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5267, i8* %5268, align 1
  %5269 = icmp eq i32 %5252, 0
  %5270 = zext i1 %5269 to i8
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5270, i8* %5271, align 1
  %5272 = lshr i32 %5252, 31
  %5273 = trunc i32 %5272 to i8
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5273, i8* %5274, align 1
  %5275 = lshr i32 %5248, 31
  %5276 = xor i32 %5272, %5275
  %5277 = add i32 %5276, %5275
  %5278 = icmp eq i32 %5277, 2
  %5279 = zext i1 %5278 to i8
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5279, i8* %5280, align 1
  store %struct.Memory* %loadMem_441d1d, %struct.Memory** %MEMORY
  %loadMem_441d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5282 = getelementptr inbounds %struct.GPR, %struct.GPR* %5281, i32 0, i32 33
  %5283 = getelementptr inbounds %struct.Reg, %struct.Reg* %5282, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %5283 to i64*
  %5284 = load i64, i64* %PC.i173
  %5285 = add i64 %5284, 26
  %5286 = load i64, i64* %PC.i173
  %5287 = add i64 %5286, 6
  %5288 = load i64, i64* %PC.i173
  %5289 = add i64 %5288, 6
  store i64 %5289, i64* %PC.i173
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5291 = load i8, i8* %5290, align 1
  %5292 = icmp eq i8 %5291, 0
  %5293 = zext i1 %5292 to i8
  store i8 %5293, i8* %BRANCH_TAKEN, align 1
  %5294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5295 = select i1 %5292, i64 %5285, i64 %5287
  store i64 %5295, i64* %5294, align 8
  store %struct.Memory* %loadMem_441d20, %struct.Memory** %MEMORY
  %loadBr_441d20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441d20 = icmp eq i8 %loadBr_441d20, 1
  br i1 %cmpBr_441d20, label %block_.L_441d3a, label %block_441d26

block_441d26:                                     ; preds = %block_441cfe
  %loadMem_441d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5297 = getelementptr inbounds %struct.GPR, %struct.GPR* %5296, i32 0, i32 33
  %5298 = getelementptr inbounds %struct.Reg, %struct.Reg* %5297, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %5298 to i64*
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 1
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %5301 to i64*
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 15
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %5304 to i64*
  %5305 = load i64, i64* %RBP.i172
  %5306 = sub i64 %5305, 5204
  %5307 = load i64, i64* %PC.i170
  %5308 = add i64 %5307, 6
  store i64 %5308, i64* %PC.i170
  %5309 = inttoptr i64 %5306 to i32*
  %5310 = load i32, i32* %5309
  %5311 = zext i32 %5310 to i64
  store i64 %5311, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_441d26, %struct.Memory** %MEMORY
  %loadMem_441d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %5314 to i64*
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 1
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %5317 to i64*
  %5318 = load i64, i64* %RAX.i169
  %5319 = load i64, i64* %PC.i168
  %5320 = add i64 %5319, 3
  store i64 %5320, i64* %PC.i168
  %5321 = trunc i64 %5318 to i32
  %5322 = add i32 1, %5321
  %5323 = zext i32 %5322 to i64
  store i64 %5323, i64* %RAX.i169, align 8
  %5324 = icmp ult i32 %5322, %5321
  %5325 = icmp ult i32 %5322, 1
  %5326 = or i1 %5324, %5325
  %5327 = zext i1 %5326 to i8
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5327, i8* %5328, align 1
  %5329 = and i32 %5322, 255
  %5330 = call i32 @llvm.ctpop.i32(i32 %5329)
  %5331 = trunc i32 %5330 to i8
  %5332 = and i8 %5331, 1
  %5333 = xor i8 %5332, 1
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5333, i8* %5334, align 1
  %5335 = xor i64 1, %5318
  %5336 = trunc i64 %5335 to i32
  %5337 = xor i32 %5336, %5322
  %5338 = lshr i32 %5337, 4
  %5339 = trunc i32 %5338 to i8
  %5340 = and i8 %5339, 1
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5340, i8* %5341, align 1
  %5342 = icmp eq i32 %5322, 0
  %5343 = zext i1 %5342 to i8
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5343, i8* %5344, align 1
  %5345 = lshr i32 %5322, 31
  %5346 = trunc i32 %5345 to i8
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5346, i8* %5347, align 1
  %5348 = lshr i32 %5321, 31
  %5349 = xor i32 %5345, %5348
  %5350 = add i32 %5349, %5345
  %5351 = icmp eq i32 %5350, 2
  %5352 = zext i1 %5351 to i8
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5352, i8* %5353, align 1
  store %struct.Memory* %loadMem_441d2c, %struct.Memory** %MEMORY
  %loadMem_441d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5355 = getelementptr inbounds %struct.GPR, %struct.GPR* %5354, i32 0, i32 33
  %5356 = getelementptr inbounds %struct.Reg, %struct.Reg* %5355, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %5356 to i64*
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5358 = getelementptr inbounds %struct.GPR, %struct.GPR* %5357, i32 0, i32 1
  %5359 = getelementptr inbounds %struct.Reg, %struct.Reg* %5358, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %5359 to i32*
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5361 = getelementptr inbounds %struct.GPR, %struct.GPR* %5360, i32 0, i32 15
  %5362 = getelementptr inbounds %struct.Reg, %struct.Reg* %5361, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %5362 to i64*
  %5363 = load i64, i64* %RBP.i167
  %5364 = sub i64 %5363, 5204
  %5365 = load i32, i32* %EAX.i166
  %5366 = zext i32 %5365 to i64
  %5367 = load i64, i64* %PC.i165
  %5368 = add i64 %5367, 6
  store i64 %5368, i64* %PC.i165
  %5369 = inttoptr i64 %5364 to i32*
  store i32 %5365, i32* %5369
  store %struct.Memory* %loadMem_441d2f, %struct.Memory** %MEMORY
  %loadMem_441d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 33
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %5372 to i64*
  %5373 = load i64, i64* %PC.i164
  %5374 = add i64 %5373, 62
  %5375 = load i64, i64* %PC.i164
  %5376 = add i64 %5375, 5
  store i64 %5376, i64* %PC.i164
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5374, i64* %5377, align 8
  store %struct.Memory* %loadMem_441d35, %struct.Memory** %MEMORY
  br label %block_.L_441d73

block_.L_441d3a:                                  ; preds = %block_441cfe
  %loadMem_441d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 33
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %5380 to i64*
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 1
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %5383 to i64*
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 15
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %5386 to i64*
  %5387 = load i64, i64* %RBP.i163
  %5388 = sub i64 %5387, 8
  %5389 = load i64, i64* %PC.i161
  %5390 = add i64 %5389, 4
  store i64 %5390, i64* %PC.i161
  %5391 = inttoptr i64 %5388 to i64*
  %5392 = load i64, i64* %5391
  store i64 %5392, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_441d3a, %struct.Memory** %MEMORY
  %loadMem_441d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 33
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %5395 to i64*
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 5
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %5398 to i64*
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5400 = getelementptr inbounds %struct.GPR, %struct.GPR* %5399, i32 0, i32 15
  %5401 = getelementptr inbounds %struct.Reg, %struct.Reg* %5400, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %5401 to i64*
  %5402 = load i64, i64* %RBP.i160
  %5403 = sub i64 %5402, 5188
  %5404 = load i64, i64* %PC.i158
  %5405 = add i64 %5404, 6
  store i64 %5405, i64* %PC.i158
  %5406 = inttoptr i64 %5403 to i32*
  %5407 = load i32, i32* %5406
  %5408 = zext i32 %5407 to i64
  store i64 %5408, i64* %RCX.i159, align 8
  store %struct.Memory* %loadMem_441d3e, %struct.Memory** %MEMORY
  %loadMem_441d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5410 = getelementptr inbounds %struct.GPR, %struct.GPR* %5409, i32 0, i32 33
  %5411 = getelementptr inbounds %struct.Reg, %struct.Reg* %5410, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %5411 to i64*
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 7
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %5414 to i64*
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 15
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %5417 to i64*
  %5418 = load i64, i64* %RBP.i157
  %5419 = sub i64 %5418, 5196
  %5420 = load i64, i64* %PC.i155
  %5421 = add i64 %5420, 7
  store i64 %5421, i64* %PC.i155
  %5422 = inttoptr i64 %5419 to i32*
  %5423 = load i32, i32* %5422
  %5424 = sext i32 %5423 to i64
  store i64 %5424, i64* %RDX.i156, align 8
  store %struct.Memory* %loadMem_441d44, %struct.Memory** %MEMORY
  %loadMem_441d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5426 = getelementptr inbounds %struct.GPR, %struct.GPR* %5425, i32 0, i32 33
  %5427 = getelementptr inbounds %struct.Reg, %struct.Reg* %5426, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %5427 to i64*
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5429 = getelementptr inbounds %struct.GPR, %struct.GPR* %5428, i32 0, i32 5
  %5430 = getelementptr inbounds %struct.Reg, %struct.Reg* %5429, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %5430 to i64*
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5432 = getelementptr inbounds %struct.GPR, %struct.GPR* %5431, i32 0, i32 7
  %5433 = getelementptr inbounds %struct.Reg, %struct.Reg* %5432, i32 0, i32 0
  %RDX.i154 = bitcast %union.anon* %5433 to i64*
  %5434 = load i64, i64* %RCX.i153
  %5435 = load i64, i64* %RDX.i154
  %5436 = mul i64 %5435, 4
  %5437 = add i64 %5436, 8053168
  %5438 = load i64, i64* %PC.i152
  %5439 = add i64 %5438, 7
  store i64 %5439, i64* %PC.i152
  %5440 = trunc i64 %5434 to i32
  %5441 = inttoptr i64 %5437 to i32*
  %5442 = load i32, i32* %5441
  %5443 = add i32 %5442, %5440
  %5444 = zext i32 %5443 to i64
  store i64 %5444, i64* %RCX.i153, align 8
  %5445 = icmp ult i32 %5443, %5440
  %5446 = icmp ult i32 %5443, %5442
  %5447 = or i1 %5445, %5446
  %5448 = zext i1 %5447 to i8
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5448, i8* %5449, align 1
  %5450 = and i32 %5443, 255
  %5451 = call i32 @llvm.ctpop.i32(i32 %5450)
  %5452 = trunc i32 %5451 to i8
  %5453 = and i8 %5452, 1
  %5454 = xor i8 %5453, 1
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5454, i8* %5455, align 1
  %5456 = xor i32 %5442, %5440
  %5457 = xor i32 %5456, %5443
  %5458 = lshr i32 %5457, 4
  %5459 = trunc i32 %5458 to i8
  %5460 = and i8 %5459, 1
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5460, i8* %5461, align 1
  %5462 = icmp eq i32 %5443, 0
  %5463 = zext i1 %5462 to i8
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5463, i8* %5464, align 1
  %5465 = lshr i32 %5443, 31
  %5466 = trunc i32 %5465 to i8
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5466, i8* %5467, align 1
  %5468 = lshr i32 %5440, 31
  %5469 = lshr i32 %5442, 31
  %5470 = xor i32 %5465, %5468
  %5471 = xor i32 %5465, %5469
  %5472 = add i32 %5470, %5471
  %5473 = icmp eq i32 %5472, 2
  %5474 = zext i1 %5473 to i8
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5474, i8* %5475, align 1
  store %struct.Memory* %loadMem_441d4b, %struct.Memory** %MEMORY
  %loadMem_441d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5477 = getelementptr inbounds %struct.GPR, %struct.GPR* %5476, i32 0, i32 33
  %5478 = getelementptr inbounds %struct.Reg, %struct.Reg* %5477, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %5478 to i64*
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5480 = getelementptr inbounds %struct.GPR, %struct.GPR* %5479, i32 0, i32 5
  %5481 = getelementptr inbounds %struct.Reg, %struct.Reg* %5480, i32 0, i32 0
  %ECX.i150 = bitcast %union.anon* %5481 to i32*
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5483 = getelementptr inbounds %struct.GPR, %struct.GPR* %5482, i32 0, i32 7
  %5484 = getelementptr inbounds %struct.Reg, %struct.Reg* %5483, i32 0, i32 0
  %RDX.i151 = bitcast %union.anon* %5484 to i64*
  %5485 = load i32, i32* %ECX.i150
  %5486 = zext i32 %5485 to i64
  %5487 = load i64, i64* %PC.i149
  %5488 = add i64 %5487, 3
  store i64 %5488, i64* %PC.i149
  %5489 = shl i64 %5486, 32
  %5490 = ashr exact i64 %5489, 32
  store i64 %5490, i64* %RDX.i151, align 8
  store %struct.Memory* %loadMem_441d52, %struct.Memory** %MEMORY
  %loadMem_441d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 33
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %5493 to i64*
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5495 = getelementptr inbounds %struct.GPR, %struct.GPR* %5494, i32 0, i32 1
  %5496 = getelementptr inbounds %struct.Reg, %struct.Reg* %5495, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %5496 to i64*
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5498 = getelementptr inbounds %struct.GPR, %struct.GPR* %5497, i32 0, i32 7
  %5499 = getelementptr inbounds %struct.Reg, %struct.Reg* %5498, i32 0, i32 0
  %RDX.i148 = bitcast %union.anon* %5499 to i64*
  %5500 = load i64, i64* %RAX.i147
  %5501 = load i64, i64* %RDX.i148
  %5502 = add i64 %5501, %5500
  %5503 = load i64, i64* %PC.i146
  %5504 = add i64 %5503, 4
  store i64 %5504, i64* %PC.i146
  %5505 = inttoptr i64 %5502 to i8*
  %5506 = load i8, i8* %5505
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5507, align 1
  %5508 = zext i8 %5506 to i32
  %5509 = call i32 @llvm.ctpop.i32(i32 %5508)
  %5510 = trunc i32 %5509 to i8
  %5511 = and i8 %5510, 1
  %5512 = xor i8 %5511, 1
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5512, i8* %5513, align 1
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5514, align 1
  %5515 = icmp eq i8 %5506, 0
  %5516 = zext i1 %5515 to i8
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5516, i8* %5517, align 1
  %5518 = lshr i8 %5506, 7
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5518, i8* %5519, align 1
  %5520 = lshr i8 %5506, 7
  %5521 = xor i8 %5518, %5520
  %5522 = add i8 %5521, %5520
  %5523 = icmp eq i8 %5522, 2
  %5524 = zext i1 %5523 to i8
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5524, i8* %5525, align 1
  store %struct.Memory* %loadMem_441d55, %struct.Memory** %MEMORY
  %loadMem_441d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5527 = getelementptr inbounds %struct.GPR, %struct.GPR* %5526, i32 0, i32 33
  %5528 = getelementptr inbounds %struct.Reg, %struct.Reg* %5527, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %5528 to i64*
  %5529 = load i64, i64* %PC.i145
  %5530 = add i64 %5529, 21
  %5531 = load i64, i64* %PC.i145
  %5532 = add i64 %5531, 6
  %5533 = load i64, i64* %PC.i145
  %5534 = add i64 %5533, 6
  store i64 %5534, i64* %PC.i145
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5536 = load i8, i8* %5535, align 1
  store i8 %5536, i8* %BRANCH_TAKEN, align 1
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5538 = icmp ne i8 %5536, 0
  %5539 = select i1 %5538, i64 %5530, i64 %5532
  store i64 %5539, i64* %5537, align 8
  store %struct.Memory* %loadMem_441d59, %struct.Memory** %MEMORY
  %loadBr_441d59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441d59 = icmp eq i8 %loadBr_441d59, 1
  br i1 %cmpBr_441d59, label %block_.L_441d6e, label %block_441d5f

block_441d5f:                                     ; preds = %block_.L_441d3a
  %loadMem_441d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5541 = getelementptr inbounds %struct.GPR, %struct.GPR* %5540, i32 0, i32 33
  %5542 = getelementptr inbounds %struct.Reg, %struct.Reg* %5541, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %5542 to i64*
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5544 = getelementptr inbounds %struct.GPR, %struct.GPR* %5543, i32 0, i32 1
  %5545 = getelementptr inbounds %struct.Reg, %struct.Reg* %5544, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %5545 to i64*
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 15
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %5548 to i64*
  %5549 = load i64, i64* %RBP.i144
  %5550 = sub i64 %5549, 5208
  %5551 = load i64, i64* %PC.i142
  %5552 = add i64 %5551, 6
  store i64 %5552, i64* %PC.i142
  %5553 = inttoptr i64 %5550 to i32*
  %5554 = load i32, i32* %5553
  %5555 = zext i32 %5554 to i64
  store i64 %5555, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_441d5f, %struct.Memory** %MEMORY
  %loadMem_441d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5557 = getelementptr inbounds %struct.GPR, %struct.GPR* %5556, i32 0, i32 33
  %5558 = getelementptr inbounds %struct.Reg, %struct.Reg* %5557, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %5558 to i64*
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5560 = getelementptr inbounds %struct.GPR, %struct.GPR* %5559, i32 0, i32 1
  %5561 = getelementptr inbounds %struct.Reg, %struct.Reg* %5560, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %5561 to i64*
  %5562 = load i64, i64* %RAX.i141
  %5563 = load i64, i64* %PC.i140
  %5564 = add i64 %5563, 3
  store i64 %5564, i64* %PC.i140
  %5565 = trunc i64 %5562 to i32
  %5566 = add i32 1, %5565
  %5567 = zext i32 %5566 to i64
  store i64 %5567, i64* %RAX.i141, align 8
  %5568 = icmp ult i32 %5566, %5565
  %5569 = icmp ult i32 %5566, 1
  %5570 = or i1 %5568, %5569
  %5571 = zext i1 %5570 to i8
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5571, i8* %5572, align 1
  %5573 = and i32 %5566, 255
  %5574 = call i32 @llvm.ctpop.i32(i32 %5573)
  %5575 = trunc i32 %5574 to i8
  %5576 = and i8 %5575, 1
  %5577 = xor i8 %5576, 1
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5577, i8* %5578, align 1
  %5579 = xor i64 1, %5562
  %5580 = trunc i64 %5579 to i32
  %5581 = xor i32 %5580, %5566
  %5582 = lshr i32 %5581, 4
  %5583 = trunc i32 %5582 to i8
  %5584 = and i8 %5583, 1
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5584, i8* %5585, align 1
  %5586 = icmp eq i32 %5566, 0
  %5587 = zext i1 %5586 to i8
  %5588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5587, i8* %5588, align 1
  %5589 = lshr i32 %5566, 31
  %5590 = trunc i32 %5589 to i8
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5590, i8* %5591, align 1
  %5592 = lshr i32 %5565, 31
  %5593 = xor i32 %5589, %5592
  %5594 = add i32 %5593, %5589
  %5595 = icmp eq i32 %5594, 2
  %5596 = zext i1 %5595 to i8
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5596, i8* %5597, align 1
  store %struct.Memory* %loadMem_441d65, %struct.Memory** %MEMORY
  %loadMem_441d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5599 = getelementptr inbounds %struct.GPR, %struct.GPR* %5598, i32 0, i32 33
  %5600 = getelementptr inbounds %struct.Reg, %struct.Reg* %5599, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %5600 to i64*
  %5601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5602 = getelementptr inbounds %struct.GPR, %struct.GPR* %5601, i32 0, i32 1
  %5603 = getelementptr inbounds %struct.Reg, %struct.Reg* %5602, i32 0, i32 0
  %EAX.i138 = bitcast %union.anon* %5603 to i32*
  %5604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5605 = getelementptr inbounds %struct.GPR, %struct.GPR* %5604, i32 0, i32 15
  %5606 = getelementptr inbounds %struct.Reg, %struct.Reg* %5605, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %5606 to i64*
  %5607 = load i64, i64* %RBP.i139
  %5608 = sub i64 %5607, 5208
  %5609 = load i32, i32* %EAX.i138
  %5610 = zext i32 %5609 to i64
  %5611 = load i64, i64* %PC.i137
  %5612 = add i64 %5611, 6
  store i64 %5612, i64* %PC.i137
  %5613 = inttoptr i64 %5608 to i32*
  store i32 %5609, i32* %5613
  store %struct.Memory* %loadMem_441d68, %struct.Memory** %MEMORY
  br label %block_.L_441d6e

block_.L_441d6e:                                  ; preds = %block_441d5f, %block_.L_441d3a
  %loadMem_441d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5615 = getelementptr inbounds %struct.GPR, %struct.GPR* %5614, i32 0, i32 33
  %5616 = getelementptr inbounds %struct.Reg, %struct.Reg* %5615, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5616 to i64*
  %5617 = load i64, i64* %PC.i136
  %5618 = add i64 %5617, 5
  %5619 = load i64, i64* %PC.i136
  %5620 = add i64 %5619, 5
  store i64 %5620, i64* %PC.i136
  %5621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5618, i64* %5621, align 8
  store %struct.Memory* %loadMem_441d6e, %struct.Memory** %MEMORY
  br label %block_.L_441d73

block_.L_441d73:                                  ; preds = %block_.L_441d6e, %block_441d26
  %loadMem_441d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5623 = getelementptr inbounds %struct.GPR, %struct.GPR* %5622, i32 0, i32 33
  %5624 = getelementptr inbounds %struct.Reg, %struct.Reg* %5623, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %5624 to i64*
  %5625 = load i64, i64* %PC.i135
  %5626 = add i64 %5625, 5
  %5627 = load i64, i64* %PC.i135
  %5628 = add i64 %5627, 5
  store i64 %5628, i64* %PC.i135
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5626, i64* %5629, align 8
  store %struct.Memory* %loadMem_441d73, %struct.Memory** %MEMORY
  br label %block_.L_441d78

block_.L_441d78:                                  ; preds = %block_.L_441d73
  %loadMem_441d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 33
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %5632 to i64*
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 1
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %5635 to i64*
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5637 = getelementptr inbounds %struct.GPR, %struct.GPR* %5636, i32 0, i32 15
  %5638 = getelementptr inbounds %struct.Reg, %struct.Reg* %5637, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %5638 to i64*
  %5639 = load i64, i64* %RBP.i134
  %5640 = sub i64 %5639, 5196
  %5641 = load i64, i64* %PC.i132
  %5642 = add i64 %5641, 6
  store i64 %5642, i64* %PC.i132
  %5643 = inttoptr i64 %5640 to i32*
  %5644 = load i32, i32* %5643
  %5645 = zext i32 %5644 to i64
  store i64 %5645, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_441d78, %struct.Memory** %MEMORY
  %loadMem_441d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5647 = getelementptr inbounds %struct.GPR, %struct.GPR* %5646, i32 0, i32 33
  %5648 = getelementptr inbounds %struct.Reg, %struct.Reg* %5647, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5648 to i64*
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5650 = getelementptr inbounds %struct.GPR, %struct.GPR* %5649, i32 0, i32 1
  %5651 = getelementptr inbounds %struct.Reg, %struct.Reg* %5650, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %5651 to i64*
  %5652 = load i64, i64* %RAX.i131
  %5653 = load i64, i64* %PC.i130
  %5654 = add i64 %5653, 3
  store i64 %5654, i64* %PC.i130
  %5655 = trunc i64 %5652 to i32
  %5656 = add i32 1, %5655
  %5657 = zext i32 %5656 to i64
  store i64 %5657, i64* %RAX.i131, align 8
  %5658 = icmp ult i32 %5656, %5655
  %5659 = icmp ult i32 %5656, 1
  %5660 = or i1 %5658, %5659
  %5661 = zext i1 %5660 to i8
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5661, i8* %5662, align 1
  %5663 = and i32 %5656, 255
  %5664 = call i32 @llvm.ctpop.i32(i32 %5663)
  %5665 = trunc i32 %5664 to i8
  %5666 = and i8 %5665, 1
  %5667 = xor i8 %5666, 1
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5667, i8* %5668, align 1
  %5669 = xor i64 1, %5652
  %5670 = trunc i64 %5669 to i32
  %5671 = xor i32 %5670, %5656
  %5672 = lshr i32 %5671, 4
  %5673 = trunc i32 %5672 to i8
  %5674 = and i8 %5673, 1
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5674, i8* %5675, align 1
  %5676 = icmp eq i32 %5656, 0
  %5677 = zext i1 %5676 to i8
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5677, i8* %5678, align 1
  %5679 = lshr i32 %5656, 31
  %5680 = trunc i32 %5679 to i8
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5680, i8* %5681, align 1
  %5682 = lshr i32 %5655, 31
  %5683 = xor i32 %5679, %5682
  %5684 = add i32 %5683, %5679
  %5685 = icmp eq i32 %5684, 2
  %5686 = zext i1 %5685 to i8
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5686, i8* %5687, align 1
  store %struct.Memory* %loadMem_441d7e, %struct.Memory** %MEMORY
  %loadMem_441d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 33
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %5690 to i64*
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 1
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %EAX.i128 = bitcast %union.anon* %5693 to i32*
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5695 = getelementptr inbounds %struct.GPR, %struct.GPR* %5694, i32 0, i32 15
  %5696 = getelementptr inbounds %struct.Reg, %struct.Reg* %5695, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %5696 to i64*
  %5697 = load i64, i64* %RBP.i129
  %5698 = sub i64 %5697, 5196
  %5699 = load i32, i32* %EAX.i128
  %5700 = zext i32 %5699 to i64
  %5701 = load i64, i64* %PC.i127
  %5702 = add i64 %5701, 6
  store i64 %5702, i64* %PC.i127
  %5703 = inttoptr i64 %5698 to i32*
  store i32 %5699, i32* %5703
  store %struct.Memory* %loadMem_441d81, %struct.Memory** %MEMORY
  %loadMem_441d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5705 = getelementptr inbounds %struct.GPR, %struct.GPR* %5704, i32 0, i32 33
  %5706 = getelementptr inbounds %struct.Reg, %struct.Reg* %5705, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %5706 to i64*
  %5707 = load i64, i64* %PC.i126
  %5708 = add i64 %5707, -150
  %5709 = load i64, i64* %PC.i126
  %5710 = add i64 %5709, 5
  store i64 %5710, i64* %PC.i126
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5708, i64* %5711, align 8
  store %struct.Memory* %loadMem_441d87, %struct.Memory** %MEMORY
  br label %block_.L_441cf1

block_.L_441d8c:                                  ; preds = %block_.L_441cf1
  %loadMem_441d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5713 = getelementptr inbounds %struct.GPR, %struct.GPR* %5712, i32 0, i32 33
  %5714 = getelementptr inbounds %struct.Reg, %struct.Reg* %5713, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %5714 to i64*
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5716 = getelementptr inbounds %struct.GPR, %struct.GPR* %5715, i32 0, i32 1
  %5717 = getelementptr inbounds %struct.Reg, %struct.Reg* %5716, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %5717 to i64*
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5719 = getelementptr inbounds %struct.GPR, %struct.GPR* %5718, i32 0, i32 15
  %5720 = getelementptr inbounds %struct.Reg, %struct.Reg* %5719, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %5720 to i64*
  %5721 = load i64, i64* %RBP.i125
  %5722 = sub i64 %5721, 5208
  %5723 = load i64, i64* %PC.i123
  %5724 = add i64 %5723, 6
  store i64 %5724, i64* %PC.i123
  %5725 = inttoptr i64 %5722 to i32*
  %5726 = load i32, i32* %5725
  %5727 = zext i32 %5726 to i64
  store i64 %5727, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_441d8c, %struct.Memory** %MEMORY
  %loadMem_441d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5729 = getelementptr inbounds %struct.GPR, %struct.GPR* %5728, i32 0, i32 33
  %5730 = getelementptr inbounds %struct.Reg, %struct.Reg* %5729, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %5730 to i64*
  %5731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5732 = getelementptr inbounds %struct.GPR, %struct.GPR* %5731, i32 0, i32 15
  %5733 = getelementptr inbounds %struct.Reg, %struct.Reg* %5732, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %5733 to i64*
  %5734 = load i64, i64* %RBP.i122
  %5735 = sub i64 %5734, 5204
  %5736 = load i64, i64* %PC.i121
  %5737 = add i64 %5736, 7
  store i64 %5737, i64* %PC.i121
  %5738 = inttoptr i64 %5735 to i32*
  %5739 = load i32, i32* %5738
  %5740 = sub i32 %5739, 2
  %5741 = icmp ult i32 %5739, 2
  %5742 = zext i1 %5741 to i8
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5742, i8* %5743, align 1
  %5744 = and i32 %5740, 255
  %5745 = call i32 @llvm.ctpop.i32(i32 %5744)
  %5746 = trunc i32 %5745 to i8
  %5747 = and i8 %5746, 1
  %5748 = xor i8 %5747, 1
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5748, i8* %5749, align 1
  %5750 = xor i32 %5739, 2
  %5751 = xor i32 %5750, %5740
  %5752 = lshr i32 %5751, 4
  %5753 = trunc i32 %5752 to i8
  %5754 = and i8 %5753, 1
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5754, i8* %5755, align 1
  %5756 = icmp eq i32 %5740, 0
  %5757 = zext i1 %5756 to i8
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5757, i8* %5758, align 1
  %5759 = lshr i32 %5740, 31
  %5760 = trunc i32 %5759 to i8
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5760, i8* %5761, align 1
  %5762 = lshr i32 %5739, 31
  %5763 = xor i32 %5759, %5762
  %5764 = add i32 %5763, %5762
  %5765 = icmp eq i32 %5764, 2
  %5766 = zext i1 %5765 to i8
  %5767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5766, i8* %5767, align 1
  store %struct.Memory* %loadMem_441d92, %struct.Memory** %MEMORY
  %loadMem_441d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5769 = getelementptr inbounds %struct.GPR, %struct.GPR* %5768, i32 0, i32 33
  %5770 = getelementptr inbounds %struct.Reg, %struct.Reg* %5769, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %5770 to i64*
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5772 = getelementptr inbounds %struct.GPR, %struct.GPR* %5771, i32 0, i32 5
  %5773 = getelementptr inbounds %struct.Reg, %struct.Reg* %5772, i32 0, i32 0
  %5774 = bitcast %union.anon* %5773 to %struct.anon.2*
  %CL.i120 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5774, i32 0, i32 0
  %5775 = load i64, i64* %PC.i119
  %5776 = add i64 %5775, 3
  store i64 %5776, i64* %PC.i119
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5778 = load i8, i8* %5777, align 1
  %5779 = icmp ne i8 %5778, 0
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5781 = load i8, i8* %5780, align 1
  %5782 = icmp ne i8 %5781, 0
  %5783 = xor i1 %5779, %5782
  %5784 = xor i1 %5783, true
  %5785 = zext i1 %5784 to i8
  store i8 %5785, i8* %CL.i120, align 1
  store %struct.Memory* %loadMem_441d99, %struct.Memory** %MEMORY
  %loadMem_441d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 33
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %5788 to i64*
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5790 = getelementptr inbounds %struct.GPR, %struct.GPR* %5789, i32 0, i32 5
  %5791 = getelementptr inbounds %struct.Reg, %struct.Reg* %5790, i32 0, i32 0
  %5792 = bitcast %union.anon* %5791 to %struct.anon.2*
  %CL.i118 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5792, i32 0, i32 0
  %5793 = load i8, i8* %CL.i118
  %5794 = zext i8 %5793 to i64
  %5795 = load i64, i64* %PC.i117
  %5796 = add i64 %5795, 3
  store i64 %5796, i64* %PC.i117
  %5797 = and i64 1, %5794
  %5798 = trunc i64 %5797 to i8
  store i8 %5798, i8* %CL.i118, align 1
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5799, align 1
  %5800 = trunc i64 %5797 to i32
  %5801 = and i32 %5800, 255
  %5802 = call i32 @llvm.ctpop.i32(i32 %5801)
  %5803 = trunc i32 %5802 to i8
  %5804 = and i8 %5803, 1
  %5805 = xor i8 %5804, 1
  %5806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5805, i8* %5806, align 1
  %5807 = icmp eq i8 %5798, 0
  %5808 = zext i1 %5807 to i8
  %5809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5808, i8* %5809, align 1
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5810, align 1
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5811, align 1
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5812, align 1
  store %struct.Memory* %loadMem_441d9c, %struct.Memory** %MEMORY
  %loadMem_441d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5814 = getelementptr inbounds %struct.GPR, %struct.GPR* %5813, i32 0, i32 33
  %5815 = getelementptr inbounds %struct.Reg, %struct.Reg* %5814, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %5815 to i64*
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 5
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %5819 = bitcast %union.anon* %5818 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5819, i32 0, i32 0
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 7
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5822 to i64*
  %5823 = load i8, i8* %CL.i
  %5824 = zext i8 %5823 to i64
  %5825 = load i64, i64* %PC.i116
  %5826 = add i64 %5825, 3
  store i64 %5826, i64* %PC.i116
  %5827 = and i64 %5824, 255
  store i64 %5827, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_441d9f, %struct.Memory** %MEMORY
  %loadMem_441da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 33
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 7
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5833 to i32*
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 1
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %5836 to i64*
  %5837 = load i64, i64* %RAX.i115
  %5838 = load i32, i32* %EDX.i
  %5839 = zext i32 %5838 to i64
  %5840 = load i64, i64* %PC.i114
  %5841 = add i64 %5840, 2
  store i64 %5841, i64* %PC.i114
  %5842 = trunc i64 %5837 to i32
  %5843 = add i32 %5838, %5842
  %5844 = zext i32 %5843 to i64
  store i64 %5844, i64* %RAX.i115, align 8
  %5845 = icmp ult i32 %5843, %5842
  %5846 = icmp ult i32 %5843, %5838
  %5847 = or i1 %5845, %5846
  %5848 = zext i1 %5847 to i8
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5848, i8* %5849, align 1
  %5850 = and i32 %5843, 255
  %5851 = call i32 @llvm.ctpop.i32(i32 %5850)
  %5852 = trunc i32 %5851 to i8
  %5853 = and i8 %5852, 1
  %5854 = xor i8 %5853, 1
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5854, i8* %5855, align 1
  %5856 = xor i64 %5839, %5837
  %5857 = trunc i64 %5856 to i32
  %5858 = xor i32 %5857, %5843
  %5859 = lshr i32 %5858, 4
  %5860 = trunc i32 %5859 to i8
  %5861 = and i8 %5860, 1
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5861, i8* %5862, align 1
  %5863 = icmp eq i32 %5843, 0
  %5864 = zext i1 %5863 to i8
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5864, i8* %5865, align 1
  %5866 = lshr i32 %5843, 31
  %5867 = trunc i32 %5866 to i8
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5867, i8* %5868, align 1
  %5869 = lshr i32 %5842, 31
  %5870 = lshr i32 %5838, 31
  %5871 = xor i32 %5866, %5869
  %5872 = xor i32 %5866, %5870
  %5873 = add i32 %5871, %5872
  %5874 = icmp eq i32 %5873, 2
  %5875 = zext i1 %5874 to i8
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5875, i8* %5876, align 1
  store %struct.Memory* %loadMem_441da2, %struct.Memory** %MEMORY
  %loadMem_441da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 33
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %5879 to i64*
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5881 = getelementptr inbounds %struct.GPR, %struct.GPR* %5880, i32 0, i32 1
  %5882 = getelementptr inbounds %struct.Reg, %struct.Reg* %5881, i32 0, i32 0
  %EAX.i113 = bitcast %union.anon* %5882 to i32*
  %5883 = load i32, i32* %EAX.i113
  %5884 = zext i32 %5883 to i64
  %5885 = load i64, i64* %PC.i112
  %5886 = add i64 %5885, 3
  store i64 %5886, i64* %PC.i112
  %5887 = sub i32 %5883, 2
  %5888 = icmp ult i32 %5883, 2
  %5889 = zext i1 %5888 to i8
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5889, i8* %5890, align 1
  %5891 = and i32 %5887, 255
  %5892 = call i32 @llvm.ctpop.i32(i32 %5891)
  %5893 = trunc i32 %5892 to i8
  %5894 = and i8 %5893, 1
  %5895 = xor i8 %5894, 1
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5895, i8* %5896, align 1
  %5897 = xor i64 2, %5884
  %5898 = trunc i64 %5897 to i32
  %5899 = xor i32 %5898, %5887
  %5900 = lshr i32 %5899, 4
  %5901 = trunc i32 %5900 to i8
  %5902 = and i8 %5901, 1
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5902, i8* %5903, align 1
  %5904 = icmp eq i32 %5887, 0
  %5905 = zext i1 %5904 to i8
  %5906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5905, i8* %5906, align 1
  %5907 = lshr i32 %5887, 31
  %5908 = trunc i32 %5907 to i8
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5908, i8* %5909, align 1
  %5910 = lshr i32 %5883, 31
  %5911 = xor i32 %5907, %5910
  %5912 = add i32 %5911, %5910
  %5913 = icmp eq i32 %5912, 2
  %5914 = zext i1 %5913 to i8
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5914, i8* %5915, align 1
  store %struct.Memory* %loadMem_441da4, %struct.Memory** %MEMORY
  %loadMem_441da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5917 = getelementptr inbounds %struct.GPR, %struct.GPR* %5916, i32 0, i32 33
  %5918 = getelementptr inbounds %struct.Reg, %struct.Reg* %5917, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %5918 to i64*
  %5919 = load i64, i64* %PC.i111
  %5920 = add i64 %5919, 16
  %5921 = load i64, i64* %PC.i111
  %5922 = add i64 %5921, 6
  %5923 = load i64, i64* %PC.i111
  %5924 = add i64 %5923, 6
  store i64 %5924, i64* %PC.i111
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5926 = load i8, i8* %5925, align 1
  %5927 = icmp ne i8 %5926, 0
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5929 = load i8, i8* %5928, align 1
  %5930 = icmp ne i8 %5929, 0
  %5931 = xor i1 %5927, %5930
  %5932 = xor i1 %5931, true
  %5933 = zext i1 %5932 to i8
  store i8 %5933, i8* %BRANCH_TAKEN, align 1
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5935 = select i1 %5931, i64 %5922, i64 %5920
  store i64 %5935, i64* %5934, align 8
  store %struct.Memory* %loadMem_441da7, %struct.Memory** %MEMORY
  %loadBr_441da7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441da7 = icmp eq i8 %loadBr_441da7, 1
  br i1 %cmpBr_441da7, label %block_.L_441db7, label %block_441dad

block_441dad:                                     ; preds = %block_.L_441d8c
  %loadMem_441dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5937 = getelementptr inbounds %struct.GPR, %struct.GPR* %5936, i32 0, i32 33
  %5938 = getelementptr inbounds %struct.Reg, %struct.Reg* %5937, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %5938 to i64*
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5940 = getelementptr inbounds %struct.GPR, %struct.GPR* %5939, i32 0, i32 15
  %5941 = getelementptr inbounds %struct.Reg, %struct.Reg* %5940, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %5941 to i64*
  %5942 = load i64, i64* %RBP.i110
  %5943 = sub i64 %5942, 3576
  %5944 = load i64, i64* %PC.i109
  %5945 = add i64 %5944, 10
  store i64 %5945, i64* %PC.i109
  %5946 = inttoptr i64 %5943 to i32*
  store i32 1, i32* %5946
  store %struct.Memory* %loadMem_441dad, %struct.Memory** %MEMORY
  br label %block_.L_441db7

block_.L_441db7:                                  ; preds = %block_441dad, %block_.L_441d8c
  %loadMem_441db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5948 = getelementptr inbounds %struct.GPR, %struct.GPR* %5947, i32 0, i32 33
  %5949 = getelementptr inbounds %struct.Reg, %struct.Reg* %5948, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %5949 to i64*
  %5950 = load i64, i64* %PC.i108
  %5951 = add i64 %5950, 5
  %5952 = load i64, i64* %PC.i108
  %5953 = add i64 %5952, 5
  store i64 %5953, i64* %PC.i108
  %5954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5951, i64* %5954, align 8
  store %struct.Memory* %loadMem_441db7, %struct.Memory** %MEMORY
  br label %block_.L_441dbc

block_.L_441dbc:                                  ; preds = %block_.L_441db7, %block_.L_441cc6
  %loadMem_441dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5956 = getelementptr inbounds %struct.GPR, %struct.GPR* %5955, i32 0, i32 33
  %5957 = getelementptr inbounds %struct.Reg, %struct.Reg* %5956, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5957 to i64*
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5959 = getelementptr inbounds %struct.GPR, %struct.GPR* %5958, i32 0, i32 15
  %5960 = getelementptr inbounds %struct.Reg, %struct.Reg* %5959, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %5960 to i64*
  %5961 = load i64, i64* %RBP.i107
  %5962 = sub i64 %5961, 3576
  %5963 = load i64, i64* %PC.i106
  %5964 = add i64 %5963, 7
  store i64 %5964, i64* %PC.i106
  %5965 = inttoptr i64 %5962 to i32*
  %5966 = load i32, i32* %5965
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5967, align 1
  %5968 = and i32 %5966, 255
  %5969 = call i32 @llvm.ctpop.i32(i32 %5968)
  %5970 = trunc i32 %5969 to i8
  %5971 = and i8 %5970, 1
  %5972 = xor i8 %5971, 1
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5972, i8* %5973, align 1
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5974, align 1
  %5975 = icmp eq i32 %5966, 0
  %5976 = zext i1 %5975 to i8
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5976, i8* %5977, align 1
  %5978 = lshr i32 %5966, 31
  %5979 = trunc i32 %5978 to i8
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5979, i8* %5980, align 1
  %5981 = lshr i32 %5966, 31
  %5982 = xor i32 %5978, %5981
  %5983 = add i32 %5982, %5981
  %5984 = icmp eq i32 %5983, 2
  %5985 = zext i1 %5984 to i8
  %5986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5985, i8* %5986, align 1
  store %struct.Memory* %loadMem_441dbc, %struct.Memory** %MEMORY
  %loadMem_441dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 33
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5989 to i64*
  %5990 = load i64, i64* %PC.i105
  %5991 = add i64 %5990, 11
  %5992 = load i64, i64* %PC.i105
  %5993 = add i64 %5992, 6
  %5994 = load i64, i64* %PC.i105
  %5995 = add i64 %5994, 6
  store i64 %5995, i64* %PC.i105
  %5996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5997 = load i8, i8* %5996, align 1
  store i8 %5997, i8* %BRANCH_TAKEN, align 1
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5999 = icmp ne i8 %5997, 0
  %6000 = select i1 %5999, i64 %5991, i64 %5993
  store i64 %6000, i64* %5998, align 8
  store %struct.Memory* %loadMem_441dc3, %struct.Memory** %MEMORY
  %loadBr_441dc3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441dc3 = icmp eq i8 %loadBr_441dc3, 1
  br i1 %cmpBr_441dc3, label %block_.L_441dce, label %block_441dc9

block_441dc9:                                     ; preds = %block_.L_441dbc
  %loadMem_441dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6002 = getelementptr inbounds %struct.GPR, %struct.GPR* %6001, i32 0, i32 33
  %6003 = getelementptr inbounds %struct.Reg, %struct.Reg* %6002, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %6003 to i64*
  %6004 = load i64, i64* %PC.i104
  %6005 = add i64 %6004, 30
  %6006 = load i64, i64* %PC.i104
  %6007 = add i64 %6006, 5
  store i64 %6007, i64* %PC.i104
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6005, i64* %6008, align 8
  store %struct.Memory* %loadMem_441dc9, %struct.Memory** %MEMORY
  br label %block_.L_441de7

block_.L_441dce:                                  ; preds = %block_.L_441dbc
  %loadMem_441dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6010 = getelementptr inbounds %struct.GPR, %struct.GPR* %6009, i32 0, i32 33
  %6011 = getelementptr inbounds %struct.Reg, %struct.Reg* %6010, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %6011 to i64*
  %6012 = load i64, i64* %PC.i103
  %6013 = add i64 %6012, 5
  %6014 = load i64, i64* %PC.i103
  %6015 = add i64 %6014, 5
  store i64 %6015, i64* %PC.i103
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6013, i64* %6016, align 8
  store %struct.Memory* %loadMem_441dce, %struct.Memory** %MEMORY
  br label %block_.L_441dd3

block_.L_441dd3:                                  ; preds = %block_.L_441dce
  %loadMem_441dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6018 = getelementptr inbounds %struct.GPR, %struct.GPR* %6017, i32 0, i32 33
  %6019 = getelementptr inbounds %struct.Reg, %struct.Reg* %6018, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %6019 to i64*
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6021 = getelementptr inbounds %struct.GPR, %struct.GPR* %6020, i32 0, i32 1
  %6022 = getelementptr inbounds %struct.Reg, %struct.Reg* %6021, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %6022 to i64*
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6024 = getelementptr inbounds %struct.GPR, %struct.GPR* %6023, i32 0, i32 15
  %6025 = getelementptr inbounds %struct.Reg, %struct.Reg* %6024, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %6025 to i64*
  %6026 = load i64, i64* %RBP.i102
  %6027 = sub i64 %6026, 3572
  %6028 = load i64, i64* %PC.i100
  %6029 = add i64 %6028, 6
  store i64 %6029, i64* %PC.i100
  %6030 = inttoptr i64 %6027 to i32*
  %6031 = load i32, i32* %6030
  %6032 = zext i32 %6031 to i64
  store i64 %6032, i64* %RAX.i101, align 8
  store %struct.Memory* %loadMem_441dd3, %struct.Memory** %MEMORY
  %loadMem_441dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6034 = getelementptr inbounds %struct.GPR, %struct.GPR* %6033, i32 0, i32 33
  %6035 = getelementptr inbounds %struct.Reg, %struct.Reg* %6034, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %6035 to i64*
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6037 = getelementptr inbounds %struct.GPR, %struct.GPR* %6036, i32 0, i32 1
  %6038 = getelementptr inbounds %struct.Reg, %struct.Reg* %6037, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %6038 to i64*
  %6039 = load i64, i64* %RAX.i99
  %6040 = load i64, i64* %PC.i98
  %6041 = add i64 %6040, 3
  store i64 %6041, i64* %PC.i98
  %6042 = trunc i64 %6039 to i32
  %6043 = add i32 1, %6042
  %6044 = zext i32 %6043 to i64
  store i64 %6044, i64* %RAX.i99, align 8
  %6045 = icmp ult i32 %6043, %6042
  %6046 = icmp ult i32 %6043, 1
  %6047 = or i1 %6045, %6046
  %6048 = zext i1 %6047 to i8
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6048, i8* %6049, align 1
  %6050 = and i32 %6043, 255
  %6051 = call i32 @llvm.ctpop.i32(i32 %6050)
  %6052 = trunc i32 %6051 to i8
  %6053 = and i8 %6052, 1
  %6054 = xor i8 %6053, 1
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6054, i8* %6055, align 1
  %6056 = xor i64 1, %6039
  %6057 = trunc i64 %6056 to i32
  %6058 = xor i32 %6057, %6043
  %6059 = lshr i32 %6058, 4
  %6060 = trunc i32 %6059 to i8
  %6061 = and i8 %6060, 1
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6061, i8* %6062, align 1
  %6063 = icmp eq i32 %6043, 0
  %6064 = zext i1 %6063 to i8
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6064, i8* %6065, align 1
  %6066 = lshr i32 %6043, 31
  %6067 = trunc i32 %6066 to i8
  %6068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6067, i8* %6068, align 1
  %6069 = lshr i32 %6042, 31
  %6070 = xor i32 %6066, %6069
  %6071 = add i32 %6070, %6066
  %6072 = icmp eq i32 %6071, 2
  %6073 = zext i1 %6072 to i8
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6073, i8* %6074, align 1
  store %struct.Memory* %loadMem_441dd9, %struct.Memory** %MEMORY
  %loadMem_441ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6076 = getelementptr inbounds %struct.GPR, %struct.GPR* %6075, i32 0, i32 33
  %6077 = getelementptr inbounds %struct.Reg, %struct.Reg* %6076, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %6077 to i64*
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6079 = getelementptr inbounds %struct.GPR, %struct.GPR* %6078, i32 0, i32 1
  %6080 = getelementptr inbounds %struct.Reg, %struct.Reg* %6079, i32 0, i32 0
  %EAX.i96 = bitcast %union.anon* %6080 to i32*
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6082 = getelementptr inbounds %struct.GPR, %struct.GPR* %6081, i32 0, i32 15
  %6083 = getelementptr inbounds %struct.Reg, %struct.Reg* %6082, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %6083 to i64*
  %6084 = load i64, i64* %RBP.i97
  %6085 = sub i64 %6084, 3572
  %6086 = load i32, i32* %EAX.i96
  %6087 = zext i32 %6086 to i64
  %6088 = load i64, i64* %PC.i95
  %6089 = add i64 %6088, 6
  store i64 %6089, i64* %PC.i95
  %6090 = inttoptr i64 %6085 to i32*
  store i32 %6086, i32* %6090
  store %struct.Memory* %loadMem_441ddc, %struct.Memory** %MEMORY
  %loadMem_441de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6092 = getelementptr inbounds %struct.GPR, %struct.GPR* %6091, i32 0, i32 33
  %6093 = getelementptr inbounds %struct.Reg, %struct.Reg* %6092, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %6093 to i64*
  %6094 = load i64, i64* %PC.i94
  %6095 = add i64 %6094, -624
  %6096 = load i64, i64* %PC.i94
  %6097 = add i64 %6096, 5
  store i64 %6097, i64* %PC.i94
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6095, i64* %6098, align 8
  store %struct.Memory* %loadMem_441de2, %struct.Memory** %MEMORY
  br label %block_.L_441b72

block_.L_441de7:                                  ; preds = %block_441dc9, %block_.L_441b72
  %loadMem_441de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6100 = getelementptr inbounds %struct.GPR, %struct.GPR* %6099, i32 0, i32 33
  %6101 = getelementptr inbounds %struct.Reg, %struct.Reg* %6100, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %6101 to i64*
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 15
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %6104 to i64*
  %6105 = load i64, i64* %RBP.i93
  %6106 = sub i64 %6105, 3576
  %6107 = load i64, i64* %PC.i92
  %6108 = add i64 %6107, 7
  store i64 %6108, i64* %PC.i92
  %6109 = inttoptr i64 %6106 to i32*
  %6110 = load i32, i32* %6109
  %6111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6111, align 1
  %6112 = and i32 %6110, 255
  %6113 = call i32 @llvm.ctpop.i32(i32 %6112)
  %6114 = trunc i32 %6113 to i8
  %6115 = and i8 %6114, 1
  %6116 = xor i8 %6115, 1
  %6117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6116, i8* %6117, align 1
  %6118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6118, align 1
  %6119 = icmp eq i32 %6110, 0
  %6120 = zext i1 %6119 to i8
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6120, i8* %6121, align 1
  %6122 = lshr i32 %6110, 31
  %6123 = trunc i32 %6122 to i8
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6123, i8* %6124, align 1
  %6125 = lshr i32 %6110, 31
  %6126 = xor i32 %6122, %6125
  %6127 = add i32 %6126, %6125
  %6128 = icmp eq i32 %6127, 2
  %6129 = zext i1 %6128 to i8
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6129, i8* %6130, align 1
  store %struct.Memory* %loadMem_441de7, %struct.Memory** %MEMORY
  %loadMem_441dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6132 = getelementptr inbounds %struct.GPR, %struct.GPR* %6131, i32 0, i32 33
  %6133 = getelementptr inbounds %struct.Reg, %struct.Reg* %6132, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %6133 to i64*
  %6134 = load i64, i64* %PC.i91
  %6135 = add i64 %6134, 131
  %6136 = load i64, i64* %PC.i91
  %6137 = add i64 %6136, 6
  %6138 = load i64, i64* %PC.i91
  %6139 = add i64 %6138, 6
  store i64 %6139, i64* %PC.i91
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6141 = load i8, i8* %6140, align 1
  %6142 = icmp eq i8 %6141, 0
  %6143 = zext i1 %6142 to i8
  store i8 %6143, i8* %BRANCH_TAKEN, align 1
  %6144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6145 = select i1 %6142, i64 %6135, i64 %6137
  store i64 %6145, i64* %6144, align 8
  store %struct.Memory* %loadMem_441dee, %struct.Memory** %MEMORY
  %loadBr_441dee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441dee = icmp eq i8 %loadBr_441dee, 1
  br i1 %cmpBr_441dee, label %block_.L_441e71, label %block_441df4

block_441df4:                                     ; preds = %block_.L_441de7
  %loadMem_441df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6147 = getelementptr inbounds %struct.GPR, %struct.GPR* %6146, i32 0, i32 33
  %6148 = getelementptr inbounds %struct.Reg, %struct.Reg* %6147, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %6148 to i64*
  %6149 = load i64, i64* %PC.i90
  %6150 = add i64 %6149, 8
  store i64 %6150, i64* %PC.i90
  %6151 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6152, align 1
  %6153 = and i32 %6151, 255
  %6154 = call i32 @llvm.ctpop.i32(i32 %6153)
  %6155 = trunc i32 %6154 to i8
  %6156 = and i8 %6155, 1
  %6157 = xor i8 %6156, 1
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6157, i8* %6158, align 1
  %6159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6159, align 1
  %6160 = icmp eq i32 %6151, 0
  %6161 = zext i1 %6160 to i8
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6161, i8* %6162, align 1
  %6163 = lshr i32 %6151, 31
  %6164 = trunc i32 %6163 to i8
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6164, i8* %6165, align 1
  %6166 = lshr i32 %6151, 31
  %6167 = xor i32 %6163, %6166
  %6168 = add i32 %6167, %6166
  %6169 = icmp eq i32 %6168, 2
  %6170 = zext i1 %6169 to i8
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6170, i8* %6171, align 1
  store %struct.Memory* %loadMem_441df4, %struct.Memory** %MEMORY
  %loadMem_441dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6173 = getelementptr inbounds %struct.GPR, %struct.GPR* %6172, i32 0, i32 33
  %6174 = getelementptr inbounds %struct.Reg, %struct.Reg* %6173, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %6174 to i64*
  %6175 = load i64, i64* %PC.i89
  %6176 = add i64 %6175, 11
  %6177 = load i64, i64* %PC.i89
  %6178 = add i64 %6177, 6
  %6179 = load i64, i64* %PC.i89
  %6180 = add i64 %6179, 6
  store i64 %6180, i64* %PC.i89
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6182 = load i8, i8* %6181, align 1
  %6183 = icmp eq i8 %6182, 0
  %6184 = zext i1 %6183 to i8
  store i8 %6184, i8* %BRANCH_TAKEN, align 1
  %6185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6186 = select i1 %6183, i64 %6176, i64 %6178
  store i64 %6186, i64* %6185, align 8
  store %struct.Memory* %loadMem_441dfc, %struct.Memory** %MEMORY
  %loadBr_441dfc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441dfc = icmp eq i8 %loadBr_441dfc, 1
  br i1 %cmpBr_441dfc, label %block_.L_441e07, label %block_441e02

block_441e02:                                     ; preds = %block_441df4
  %loadMem_441e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6188 = getelementptr inbounds %struct.GPR, %struct.GPR* %6187, i32 0, i32 33
  %6189 = getelementptr inbounds %struct.Reg, %struct.Reg* %6188, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %6189 to i64*
  %6190 = load i64, i64* %PC.i88
  %6191 = add i64 %6190, 31
  %6192 = load i64, i64* %PC.i88
  %6193 = add i64 %6192, 5
  store i64 %6193, i64* %PC.i88
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6191, i64* %6194, align 8
  store %struct.Memory* %loadMem_441e02, %struct.Memory** %MEMORY
  br label %block_.L_441e21

block_.L_441e07:                                  ; preds = %block_441df4
  %loadMem_441e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6196 = getelementptr inbounds %struct.GPR, %struct.GPR* %6195, i32 0, i32 33
  %6197 = getelementptr inbounds %struct.Reg, %struct.Reg* %6196, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %6197 to i64*
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6199 = getelementptr inbounds %struct.GPR, %struct.GPR* %6198, i32 0, i32 11
  %6200 = getelementptr inbounds %struct.Reg, %struct.Reg* %6199, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %6200 to i64*
  %6201 = load i64, i64* %PC.i87
  %6202 = add i64 %6201, 10
  store i64 %6202, i64* %PC.i87
  store i64 ptrtoint (%G__0x57e35d_type* @G__0x57e35d to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_441e07, %struct.Memory** %MEMORY
  %loadMem_441e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6204 = getelementptr inbounds %struct.GPR, %struct.GPR* %6203, i32 0, i32 33
  %6205 = getelementptr inbounds %struct.Reg, %struct.Reg* %6204, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %6205 to i64*
  %6206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6207 = getelementptr inbounds %struct.GPR, %struct.GPR* %6206, i32 0, i32 9
  %6208 = getelementptr inbounds %struct.Reg, %struct.Reg* %6207, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6208 to i64*
  %6209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6210 = getelementptr inbounds %struct.GPR, %struct.GPR* %6209, i32 0, i32 15
  %6211 = getelementptr inbounds %struct.Reg, %struct.Reg* %6210, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %6211 to i64*
  %6212 = load i64, i64* %RBP.i86
  %6213 = sub i64 %6212, 32
  %6214 = load i64, i64* %PC.i85
  %6215 = add i64 %6214, 3
  store i64 %6215, i64* %PC.i85
  %6216 = inttoptr i64 %6213 to i32*
  %6217 = load i32, i32* %6216
  %6218 = zext i32 %6217 to i64
  store i64 %6218, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_441e11, %struct.Memory** %MEMORY
  %loadMem_441e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6220 = getelementptr inbounds %struct.GPR, %struct.GPR* %6219, i32 0, i32 33
  %6221 = getelementptr inbounds %struct.Reg, %struct.Reg* %6220, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %6221 to i64*
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6223 = getelementptr inbounds %struct.GPR, %struct.GPR* %6222, i32 0, i32 1
  %6224 = getelementptr inbounds %struct.Reg, %struct.Reg* %6223, i32 0, i32 0
  %6225 = bitcast %union.anon* %6224 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6225, i32 0, i32 0
  %6226 = load i64, i64* %PC.i84
  %6227 = add i64 %6226, 2
  store i64 %6227, i64* %PC.i84
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_441e14, %struct.Memory** %MEMORY
  %loadMem1_441e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6229 = getelementptr inbounds %struct.GPR, %struct.GPR* %6228, i32 0, i32 33
  %6230 = getelementptr inbounds %struct.Reg, %struct.Reg* %6229, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %6230 to i64*
  %6231 = load i64, i64* %PC.i83
  %6232 = add i64 %6231, 65434
  %6233 = load i64, i64* %PC.i83
  %6234 = add i64 %6233, 5
  %6235 = load i64, i64* %PC.i83
  %6236 = add i64 %6235, 5
  store i64 %6236, i64* %PC.i83
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6238 = load i64, i64* %6237, align 8
  %6239 = add i64 %6238, -8
  %6240 = inttoptr i64 %6239 to i64*
  store i64 %6234, i64* %6240
  store i64 %6239, i64* %6237, align 8
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6232, i64* %6241, align 8
  store %struct.Memory* %loadMem1_441e16, %struct.Memory** %MEMORY
  %loadMem2_441e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_441e16 = load i64, i64* %3
  %call2_441e16 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64 %loadPC_441e16, %struct.Memory* %loadMem2_441e16)
  store %struct.Memory* %call2_441e16, %struct.Memory** %MEMORY
  %loadMem_441e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6243 = getelementptr inbounds %struct.GPR, %struct.GPR* %6242, i32 0, i32 33
  %6244 = getelementptr inbounds %struct.Reg, %struct.Reg* %6243, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %6244 to i64*
  %6245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6246 = getelementptr inbounds %struct.GPR, %struct.GPR* %6245, i32 0, i32 1
  %6247 = getelementptr inbounds %struct.Reg, %struct.Reg* %6246, i32 0, i32 0
  %EAX.i81 = bitcast %union.anon* %6247 to i32*
  %6248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6249 = getelementptr inbounds %struct.GPR, %struct.GPR* %6248, i32 0, i32 15
  %6250 = getelementptr inbounds %struct.Reg, %struct.Reg* %6249, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %6250 to i64*
  %6251 = load i64, i64* %RBP.i82
  %6252 = sub i64 %6251, 5236
  %6253 = load i32, i32* %EAX.i81
  %6254 = zext i32 %6253 to i64
  %6255 = load i64, i64* %PC.i80
  %6256 = add i64 %6255, 6
  store i64 %6256, i64* %PC.i80
  %6257 = inttoptr i64 %6252 to i32*
  store i32 %6253, i32* %6257
  store %struct.Memory* %loadMem_441e1b, %struct.Memory** %MEMORY
  br label %block_.L_441e21

block_.L_441e21:                                  ; preds = %block_.L_441e07, %block_441e02
  %loadMem_441e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6259 = getelementptr inbounds %struct.GPR, %struct.GPR* %6258, i32 0, i32 33
  %6260 = getelementptr inbounds %struct.Reg, %struct.Reg* %6259, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %6260 to i64*
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6262 = getelementptr inbounds %struct.GPR, %struct.GPR* %6261, i32 0, i32 15
  %6263 = getelementptr inbounds %struct.Reg, %struct.Reg* %6262, i32 0, i32 0
  %RBP.i79 = bitcast %union.anon* %6263 to i64*
  %6264 = load i64, i64* %RBP.i79
  %6265 = sub i64 %6264, 3572
  %6266 = load i64, i64* %PC.i78
  %6267 = add i64 %6266, 10
  store i64 %6267, i64* %PC.i78
  %6268 = inttoptr i64 %6265 to i32*
  store i32 0, i32* %6268
  store %struct.Memory* %loadMem_441e21, %struct.Memory** %MEMORY
  br label %block_.L_441e2b

block_.L_441e2b:                                  ; preds = %block_441e3d, %block_.L_441e21
  %loadMem_441e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6270 = getelementptr inbounds %struct.GPR, %struct.GPR* %6269, i32 0, i32 33
  %6271 = getelementptr inbounds %struct.Reg, %struct.Reg* %6270, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %6271 to i64*
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6273 = getelementptr inbounds %struct.GPR, %struct.GPR* %6272, i32 0, i32 1
  %6274 = getelementptr inbounds %struct.Reg, %struct.Reg* %6273, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %6274 to i64*
  %6275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6276 = getelementptr inbounds %struct.GPR, %struct.GPR* %6275, i32 0, i32 15
  %6277 = getelementptr inbounds %struct.Reg, %struct.Reg* %6276, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %6277 to i64*
  %6278 = load i64, i64* %RBP.i77
  %6279 = sub i64 %6278, 3572
  %6280 = load i64, i64* %PC.i75
  %6281 = add i64 %6280, 6
  store i64 %6281, i64* %PC.i75
  %6282 = inttoptr i64 %6279 to i32*
  %6283 = load i32, i32* %6282
  %6284 = zext i32 %6283 to i64
  store i64 %6284, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_441e2b, %struct.Memory** %MEMORY
  %loadMem_441e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6286 = getelementptr inbounds %struct.GPR, %struct.GPR* %6285, i32 0, i32 33
  %6287 = getelementptr inbounds %struct.Reg, %struct.Reg* %6286, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %6287 to i64*
  %6288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6289 = getelementptr inbounds %struct.GPR, %struct.GPR* %6288, i32 0, i32 1
  %6290 = getelementptr inbounds %struct.Reg, %struct.Reg* %6289, i32 0, i32 0
  %EAX.i73 = bitcast %union.anon* %6290 to i32*
  %6291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6292 = getelementptr inbounds %struct.GPR, %struct.GPR* %6291, i32 0, i32 15
  %6293 = getelementptr inbounds %struct.Reg, %struct.Reg* %6292, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %6293 to i64*
  %6294 = load i32, i32* %EAX.i73
  %6295 = zext i32 %6294 to i64
  %6296 = load i64, i64* %RBP.i74
  %6297 = sub i64 %6296, 1140
  %6298 = load i64, i64* %PC.i72
  %6299 = add i64 %6298, 6
  store i64 %6299, i64* %PC.i72
  %6300 = inttoptr i64 %6297 to i32*
  %6301 = load i32, i32* %6300
  %6302 = sub i32 %6294, %6301
  %6303 = icmp ult i32 %6294, %6301
  %6304 = zext i1 %6303 to i8
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6304, i8* %6305, align 1
  %6306 = and i32 %6302, 255
  %6307 = call i32 @llvm.ctpop.i32(i32 %6306)
  %6308 = trunc i32 %6307 to i8
  %6309 = and i8 %6308, 1
  %6310 = xor i8 %6309, 1
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6310, i8* %6311, align 1
  %6312 = xor i32 %6301, %6294
  %6313 = xor i32 %6312, %6302
  %6314 = lshr i32 %6313, 4
  %6315 = trunc i32 %6314 to i8
  %6316 = and i8 %6315, 1
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6316, i8* %6317, align 1
  %6318 = icmp eq i32 %6302, 0
  %6319 = zext i1 %6318 to i8
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6319, i8* %6320, align 1
  %6321 = lshr i32 %6302, 31
  %6322 = trunc i32 %6321 to i8
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6322, i8* %6323, align 1
  %6324 = lshr i32 %6294, 31
  %6325 = lshr i32 %6301, 31
  %6326 = xor i32 %6325, %6324
  %6327 = xor i32 %6321, %6324
  %6328 = add i32 %6327, %6326
  %6329 = icmp eq i32 %6328, 2
  %6330 = zext i1 %6329 to i8
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6330, i8* %6331, align 1
  store %struct.Memory* %loadMem_441e31, %struct.Memory** %MEMORY
  %loadMem_441e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6333 = getelementptr inbounds %struct.GPR, %struct.GPR* %6332, i32 0, i32 33
  %6334 = getelementptr inbounds %struct.Reg, %struct.Reg* %6333, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %6334 to i64*
  %6335 = load i64, i64* %PC.i71
  %6336 = add i64 %6335, 53
  %6337 = load i64, i64* %PC.i71
  %6338 = add i64 %6337, 6
  %6339 = load i64, i64* %PC.i71
  %6340 = add i64 %6339, 6
  store i64 %6340, i64* %PC.i71
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6342 = load i8, i8* %6341, align 1
  %6343 = icmp ne i8 %6342, 0
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6345 = load i8, i8* %6344, align 1
  %6346 = icmp ne i8 %6345, 0
  %6347 = xor i1 %6343, %6346
  %6348 = xor i1 %6347, true
  %6349 = zext i1 %6348 to i8
  store i8 %6349, i8* %BRANCH_TAKEN, align 1
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6351 = select i1 %6347, i64 %6338, i64 %6336
  store i64 %6351, i64* %6350, align 8
  store %struct.Memory* %loadMem_441e37, %struct.Memory** %MEMORY
  %loadBr_441e37 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_441e37 = icmp eq i8 %loadBr_441e37, 1
  br i1 %cmpBr_441e37, label %block_.L_441e6c, label %block_441e3d

block_441e3d:                                     ; preds = %block_.L_441e2b
  %loadMem_441e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6353 = getelementptr inbounds %struct.GPR, %struct.GPR* %6352, i32 0, i32 33
  %6354 = getelementptr inbounds %struct.Reg, %struct.Reg* %6353, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %6354 to i64*
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6356 = getelementptr inbounds %struct.GPR, %struct.GPR* %6355, i32 0, i32 1
  %6357 = getelementptr inbounds %struct.Reg, %struct.Reg* %6356, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %6357 to i64*
  %6358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6359 = getelementptr inbounds %struct.GPR, %struct.GPR* %6358, i32 0, i32 15
  %6360 = getelementptr inbounds %struct.Reg, %struct.Reg* %6359, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %6360 to i64*
  %6361 = load i64, i64* %RBP.i70
  %6362 = sub i64 %6361, 8
  %6363 = load i64, i64* %PC.i68
  %6364 = add i64 %6363, 4
  store i64 %6364, i64* %PC.i68
  %6365 = inttoptr i64 %6362 to i64*
  %6366 = load i64, i64* %6365
  store i64 %6366, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_441e3d, %struct.Memory** %MEMORY
  %loadMem_441e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6368 = getelementptr inbounds %struct.GPR, %struct.GPR* %6367, i32 0, i32 33
  %6369 = getelementptr inbounds %struct.Reg, %struct.Reg* %6368, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %6369 to i64*
  %6370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6371 = getelementptr inbounds %struct.GPR, %struct.GPR* %6370, i32 0, i32 5
  %6372 = getelementptr inbounds %struct.Reg, %struct.Reg* %6371, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %6372 to i64*
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6374 = getelementptr inbounds %struct.GPR, %struct.GPR* %6373, i32 0, i32 15
  %6375 = getelementptr inbounds %struct.Reg, %struct.Reg* %6374, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %6375 to i64*
  %6376 = load i64, i64* %RBP.i67
  %6377 = sub i64 %6376, 3572
  %6378 = load i64, i64* %PC.i65
  %6379 = add i64 %6378, 7
  store i64 %6379, i64* %PC.i65
  %6380 = inttoptr i64 %6377 to i32*
  %6381 = load i32, i32* %6380
  %6382 = sext i32 %6381 to i64
  store i64 %6382, i64* %RCX.i66, align 8
  store %struct.Memory* %loadMem_441e41, %struct.Memory** %MEMORY
  %loadMem_441e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6384 = getelementptr inbounds %struct.GPR, %struct.GPR* %6383, i32 0, i32 33
  %6385 = getelementptr inbounds %struct.Reg, %struct.Reg* %6384, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %6385 to i64*
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6387 = getelementptr inbounds %struct.GPR, %struct.GPR* %6386, i32 0, i32 5
  %6388 = getelementptr inbounds %struct.Reg, %struct.Reg* %6387, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %6388 to i64*
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6390 = getelementptr inbounds %struct.GPR, %struct.GPR* %6389, i32 0, i32 15
  %6391 = getelementptr inbounds %struct.Reg, %struct.Reg* %6390, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %6391 to i64*
  %6392 = load i64, i64* %RBP.i64
  %6393 = load i64, i64* %RCX.i63
  %6394 = mul i64 %6393, 4
  %6395 = add i64 %6392, -2592
  %6396 = add i64 %6395, %6394
  %6397 = load i64, i64* %PC.i62
  %6398 = add i64 %6397, 8
  store i64 %6398, i64* %PC.i62
  %6399 = inttoptr i64 %6396 to i32*
  %6400 = load i32, i32* %6399
  %6401 = sext i32 %6400 to i64
  store i64 %6401, i64* %RCX.i63, align 8
  store %struct.Memory* %loadMem_441e48, %struct.Memory** %MEMORY
  %loadMem_441e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6403 = getelementptr inbounds %struct.GPR, %struct.GPR* %6402, i32 0, i32 33
  %6404 = getelementptr inbounds %struct.Reg, %struct.Reg* %6403, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %6404 to i64*
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6406 = getelementptr inbounds %struct.GPR, %struct.GPR* %6405, i32 0, i32 1
  %6407 = getelementptr inbounds %struct.Reg, %struct.Reg* %6406, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %6407 to i64*
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6409 = getelementptr inbounds %struct.GPR, %struct.GPR* %6408, i32 0, i32 5
  %6410 = getelementptr inbounds %struct.Reg, %struct.Reg* %6409, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %6410 to i64*
  %6411 = load i64, i64* %RAX.i60
  %6412 = load i64, i64* %RCX.i61
  %6413 = add i64 %6411, 35004
  %6414 = add i64 %6413, %6412
  %6415 = load i64, i64* %PC.i59
  %6416 = add i64 %6415, 8
  store i64 %6416, i64* %PC.i59
  %6417 = inttoptr i64 %6414 to i8*
  store i8 1, i8* %6417
  store %struct.Memory* %loadMem_441e50, %struct.Memory** %MEMORY
  %loadMem_441e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6419 = getelementptr inbounds %struct.GPR, %struct.GPR* %6418, i32 0, i32 33
  %6420 = getelementptr inbounds %struct.Reg, %struct.Reg* %6419, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %6420 to i64*
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6422 = getelementptr inbounds %struct.GPR, %struct.GPR* %6421, i32 0, i32 1
  %6423 = getelementptr inbounds %struct.Reg, %struct.Reg* %6422, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %6423 to i64*
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6425 = getelementptr inbounds %struct.GPR, %struct.GPR* %6424, i32 0, i32 15
  %6426 = getelementptr inbounds %struct.Reg, %struct.Reg* %6425, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %6426 to i64*
  %6427 = load i64, i64* %RBP.i58
  %6428 = sub i64 %6427, 3572
  %6429 = load i64, i64* %PC.i56
  %6430 = add i64 %6429, 6
  store i64 %6430, i64* %PC.i56
  %6431 = inttoptr i64 %6428 to i32*
  %6432 = load i32, i32* %6431
  %6433 = zext i32 %6432 to i64
  store i64 %6433, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_441e58, %struct.Memory** %MEMORY
  %loadMem_441e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6435 = getelementptr inbounds %struct.GPR, %struct.GPR* %6434, i32 0, i32 33
  %6436 = getelementptr inbounds %struct.Reg, %struct.Reg* %6435, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %6436 to i64*
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6438 = getelementptr inbounds %struct.GPR, %struct.GPR* %6437, i32 0, i32 1
  %6439 = getelementptr inbounds %struct.Reg, %struct.Reg* %6438, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %6439 to i64*
  %6440 = load i64, i64* %RAX.i55
  %6441 = load i64, i64* %PC.i54
  %6442 = add i64 %6441, 3
  store i64 %6442, i64* %PC.i54
  %6443 = trunc i64 %6440 to i32
  %6444 = add i32 1, %6443
  %6445 = zext i32 %6444 to i64
  store i64 %6445, i64* %RAX.i55, align 8
  %6446 = icmp ult i32 %6444, %6443
  %6447 = icmp ult i32 %6444, 1
  %6448 = or i1 %6446, %6447
  %6449 = zext i1 %6448 to i8
  %6450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6449, i8* %6450, align 1
  %6451 = and i32 %6444, 255
  %6452 = call i32 @llvm.ctpop.i32(i32 %6451)
  %6453 = trunc i32 %6452 to i8
  %6454 = and i8 %6453, 1
  %6455 = xor i8 %6454, 1
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6455, i8* %6456, align 1
  %6457 = xor i64 1, %6440
  %6458 = trunc i64 %6457 to i32
  %6459 = xor i32 %6458, %6444
  %6460 = lshr i32 %6459, 4
  %6461 = trunc i32 %6460 to i8
  %6462 = and i8 %6461, 1
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6462, i8* %6463, align 1
  %6464 = icmp eq i32 %6444, 0
  %6465 = zext i1 %6464 to i8
  %6466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6465, i8* %6466, align 1
  %6467 = lshr i32 %6444, 31
  %6468 = trunc i32 %6467 to i8
  %6469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6468, i8* %6469, align 1
  %6470 = lshr i32 %6443, 31
  %6471 = xor i32 %6467, %6470
  %6472 = add i32 %6471, %6467
  %6473 = icmp eq i32 %6472, 2
  %6474 = zext i1 %6473 to i8
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6474, i8* %6475, align 1
  store %struct.Memory* %loadMem_441e5e, %struct.Memory** %MEMORY
  %loadMem_441e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 33
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %6478 to i64*
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6480 = getelementptr inbounds %struct.GPR, %struct.GPR* %6479, i32 0, i32 1
  %6481 = getelementptr inbounds %struct.Reg, %struct.Reg* %6480, i32 0, i32 0
  %EAX.i52 = bitcast %union.anon* %6481 to i32*
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6483 = getelementptr inbounds %struct.GPR, %struct.GPR* %6482, i32 0, i32 15
  %6484 = getelementptr inbounds %struct.Reg, %struct.Reg* %6483, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %6484 to i64*
  %6485 = load i64, i64* %RBP.i53
  %6486 = sub i64 %6485, 3572
  %6487 = load i32, i32* %EAX.i52
  %6488 = zext i32 %6487 to i64
  %6489 = load i64, i64* %PC.i51
  %6490 = add i64 %6489, 6
  store i64 %6490, i64* %PC.i51
  %6491 = inttoptr i64 %6486 to i32*
  store i32 %6487, i32* %6491
  store %struct.Memory* %loadMem_441e61, %struct.Memory** %MEMORY
  %loadMem_441e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6493 = getelementptr inbounds %struct.GPR, %struct.GPR* %6492, i32 0, i32 33
  %6494 = getelementptr inbounds %struct.Reg, %struct.Reg* %6493, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %6494 to i64*
  %6495 = load i64, i64* %PC.i50
  %6496 = add i64 %6495, -60
  %6497 = load i64, i64* %PC.i50
  %6498 = add i64 %6497, 5
  store i64 %6498, i64* %PC.i50
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6496, i64* %6499, align 8
  store %struct.Memory* %loadMem_441e67, %struct.Memory** %MEMORY
  br label %block_.L_441e2b

block_.L_441e6c:                                  ; preds = %block_.L_441e2b
  %loadMem_441e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6501 = getelementptr inbounds %struct.GPR, %struct.GPR* %6500, i32 0, i32 33
  %6502 = getelementptr inbounds %struct.Reg, %struct.Reg* %6501, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %6502 to i64*
  %6503 = load i64, i64* %PC.i49
  %6504 = add i64 %6503, 5
  %6505 = load i64, i64* %PC.i49
  %6506 = add i64 %6505, 5
  store i64 %6506, i64* %PC.i49
  %6507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6504, i64* %6507, align 8
  store %struct.Memory* %loadMem_441e6c, %struct.Memory** %MEMORY
  br label %block_.L_441e71

block_.L_441e71:                                  ; preds = %block_.L_441e6c, %block_.L_441de7
  %loadMem_441e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6509 = getelementptr inbounds %struct.GPR, %struct.GPR* %6508, i32 0, i32 33
  %6510 = getelementptr inbounds %struct.Reg, %struct.Reg* %6509, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %6510 to i64*
  %6511 = load i64, i64* %PC.i48
  %6512 = add i64 %6511, 5
  %6513 = load i64, i64* %PC.i48
  %6514 = add i64 %6513, 5
  store i64 %6514, i64* %PC.i48
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6512, i64* %6515, align 8
  store %struct.Memory* %loadMem_441e71, %struct.Memory** %MEMORY
  br label %block_.L_441e76

block_.L_441e76:                                  ; preds = %block_.L_441e71, %block_.L_441a17
  %loadMem_441e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6517 = getelementptr inbounds %struct.GPR, %struct.GPR* %6516, i32 0, i32 33
  %6518 = getelementptr inbounds %struct.Reg, %struct.Reg* %6517, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %6518 to i64*
  %6519 = load i64, i64* %PC.i47
  %6520 = add i64 %6519, 5
  %6521 = load i64, i64* %PC.i47
  %6522 = add i64 %6521, 5
  store i64 %6522, i64* %PC.i47
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6520, i64* %6523, align 8
  store %struct.Memory* %loadMem_441e76, %struct.Memory** %MEMORY
  br label %block_.L_441e7b

block_.L_441e7b:                                  ; preds = %block_.L_441e76, %block_.L_441a12
  %loadMem_441e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6525 = getelementptr inbounds %struct.GPR, %struct.GPR* %6524, i32 0, i32 33
  %6526 = getelementptr inbounds %struct.Reg, %struct.Reg* %6525, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %6526 to i64*
  %6527 = load i64, i64* %PC.i46
  %6528 = add i64 %6527, 5
  %6529 = load i64, i64* %PC.i46
  %6530 = add i64 %6529, 5
  store i64 %6530, i64* %PC.i46
  %6531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6528, i64* %6531, align 8
  store %struct.Memory* %loadMem_441e7b, %struct.Memory** %MEMORY
  br label %block_.L_441e80

block_.L_441e80:                                  ; preds = %block_.L_441e7b, %block_441ada, %block_44191b, %block_4418ee
  %loadMem_441e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6533 = getelementptr inbounds %struct.GPR, %struct.GPR* %6532, i32 0, i32 33
  %6534 = getelementptr inbounds %struct.Reg, %struct.Reg* %6533, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %6534 to i64*
  %6535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6536 = getelementptr inbounds %struct.GPR, %struct.GPR* %6535, i32 0, i32 1
  %6537 = getelementptr inbounds %struct.Reg, %struct.Reg* %6536, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %6537 to i64*
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6539 = getelementptr inbounds %struct.GPR, %struct.GPR* %6538, i32 0, i32 15
  %6540 = getelementptr inbounds %struct.Reg, %struct.Reg* %6539, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %6540 to i64*
  %6541 = load i64, i64* %RBP.i45
  %6542 = sub i64 %6541, 20
  %6543 = load i64, i64* %PC.i43
  %6544 = add i64 %6543, 3
  store i64 %6544, i64* %PC.i43
  %6545 = inttoptr i64 %6542 to i32*
  %6546 = load i32, i32* %6545
  %6547 = zext i32 %6546 to i64
  store i64 %6547, i64* %RAX.i44, align 8
  store %struct.Memory* %loadMem_441e80, %struct.Memory** %MEMORY
  %loadMem_441e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6549 = getelementptr inbounds %struct.GPR, %struct.GPR* %6548, i32 0, i32 33
  %6550 = getelementptr inbounds %struct.Reg, %struct.Reg* %6549, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %6550 to i64*
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6552 = getelementptr inbounds %struct.GPR, %struct.GPR* %6551, i32 0, i32 1
  %6553 = getelementptr inbounds %struct.Reg, %struct.Reg* %6552, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %6553 to i64*
  %6554 = load i64, i64* %RAX.i42
  %6555 = load i64, i64* %PC.i41
  %6556 = add i64 %6555, 3
  store i64 %6556, i64* %PC.i41
  %6557 = trunc i64 %6554 to i32
  %6558 = add i32 1, %6557
  %6559 = zext i32 %6558 to i64
  store i64 %6559, i64* %RAX.i42, align 8
  %6560 = icmp ult i32 %6558, %6557
  %6561 = icmp ult i32 %6558, 1
  %6562 = or i1 %6560, %6561
  %6563 = zext i1 %6562 to i8
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6563, i8* %6564, align 1
  %6565 = and i32 %6558, 255
  %6566 = call i32 @llvm.ctpop.i32(i32 %6565)
  %6567 = trunc i32 %6566 to i8
  %6568 = and i8 %6567, 1
  %6569 = xor i8 %6568, 1
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6569, i8* %6570, align 1
  %6571 = xor i64 1, %6554
  %6572 = trunc i64 %6571 to i32
  %6573 = xor i32 %6572, %6558
  %6574 = lshr i32 %6573, 4
  %6575 = trunc i32 %6574 to i8
  %6576 = and i8 %6575, 1
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6576, i8* %6577, align 1
  %6578 = icmp eq i32 %6558, 0
  %6579 = zext i1 %6578 to i8
  %6580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6579, i8* %6580, align 1
  %6581 = lshr i32 %6558, 31
  %6582 = trunc i32 %6581 to i8
  %6583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6582, i8* %6583, align 1
  %6584 = lshr i32 %6557, 31
  %6585 = xor i32 %6581, %6584
  %6586 = add i32 %6585, %6581
  %6587 = icmp eq i32 %6586, 2
  %6588 = zext i1 %6587 to i8
  %6589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6588, i8* %6589, align 1
  store %struct.Memory* %loadMem_441e83, %struct.Memory** %MEMORY
  %loadMem_441e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6591 = getelementptr inbounds %struct.GPR, %struct.GPR* %6590, i32 0, i32 33
  %6592 = getelementptr inbounds %struct.Reg, %struct.Reg* %6591, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %6592 to i64*
  %6593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6594 = getelementptr inbounds %struct.GPR, %struct.GPR* %6593, i32 0, i32 1
  %6595 = getelementptr inbounds %struct.Reg, %struct.Reg* %6594, i32 0, i32 0
  %EAX.i39 = bitcast %union.anon* %6595 to i32*
  %6596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6597 = getelementptr inbounds %struct.GPR, %struct.GPR* %6596, i32 0, i32 15
  %6598 = getelementptr inbounds %struct.Reg, %struct.Reg* %6597, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %6598 to i64*
  %6599 = load i64, i64* %RBP.i40
  %6600 = sub i64 %6599, 20
  %6601 = load i32, i32* %EAX.i39
  %6602 = zext i32 %6601 to i64
  %6603 = load i64, i64* %PC.i38
  %6604 = add i64 %6603, 3
  store i64 %6604, i64* %PC.i38
  %6605 = inttoptr i64 %6600 to i32*
  store i32 %6601, i32* %6605
  store %struct.Memory* %loadMem_441e86, %struct.Memory** %MEMORY
  %loadMem_441e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6607 = getelementptr inbounds %struct.GPR, %struct.GPR* %6606, i32 0, i32 33
  %6608 = getelementptr inbounds %struct.Reg, %struct.Reg* %6607, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %6608 to i64*
  %6609 = load i64, i64* %PC.i37
  %6610 = add i64 %6609, -1551
  %6611 = load i64, i64* %PC.i37
  %6612 = add i64 %6611, 5
  store i64 %6612, i64* %PC.i37
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6610, i64* %6613, align 8
  store %struct.Memory* %loadMem_441e89, %struct.Memory** %MEMORY
  br label %block_.L_44187a

block_.L_441e8e:                                  ; preds = %block_.L_44187a
  %loadMem_441e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6615 = getelementptr inbounds %struct.GPR, %struct.GPR* %6614, i32 0, i32 33
  %6616 = getelementptr inbounds %struct.Reg, %struct.Reg* %6615, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %6616 to i64*
  %6617 = load i64, i64* %PC.i36
  %6618 = add i64 %6617, 5
  %6619 = load i64, i64* %PC.i36
  %6620 = add i64 %6619, 5
  store i64 %6620, i64* %PC.i36
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6618, i64* %6621, align 8
  store %struct.Memory* %loadMem_441e8e, %struct.Memory** %MEMORY
  br label %block_.L_441e93

block_.L_441e93:                                  ; preds = %block_.L_441e8e, %block_44185b, %block_441833
  %loadMem_441e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6623 = getelementptr inbounds %struct.GPR, %struct.GPR* %6622, i32 0, i32 33
  %6624 = getelementptr inbounds %struct.Reg, %struct.Reg* %6623, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %6624 to i64*
  %6625 = load i64, i64* %PC.i35
  %6626 = add i64 %6625, 5
  %6627 = load i64, i64* %PC.i35
  %6628 = add i64 %6627, 5
  store i64 %6628, i64* %PC.i35
  %6629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6626, i64* %6629, align 8
  store %struct.Memory* %loadMem_441e93, %struct.Memory** %MEMORY
  br label %block_.L_441e98

block_.L_441e98:                                  ; preds = %block_.L_441e93
  %loadMem_441e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6631 = getelementptr inbounds %struct.GPR, %struct.GPR* %6630, i32 0, i32 33
  %6632 = getelementptr inbounds %struct.Reg, %struct.Reg* %6631, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %6632 to i64*
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6634 = getelementptr inbounds %struct.GPR, %struct.GPR* %6633, i32 0, i32 1
  %6635 = getelementptr inbounds %struct.Reg, %struct.Reg* %6634, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %6635 to i64*
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6637 = getelementptr inbounds %struct.GPR, %struct.GPR* %6636, i32 0, i32 15
  %6638 = getelementptr inbounds %struct.Reg, %struct.Reg* %6637, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %6638 to i64*
  %6639 = load i64, i64* %RBP.i34
  %6640 = sub i64 %6639, 16
  %6641 = load i64, i64* %PC.i32
  %6642 = add i64 %6641, 3
  store i64 %6642, i64* %PC.i32
  %6643 = inttoptr i64 %6640 to i32*
  %6644 = load i32, i32* %6643
  %6645 = zext i32 %6644 to i64
  store i64 %6645, i64* %RAX.i33, align 8
  store %struct.Memory* %loadMem_441e98, %struct.Memory** %MEMORY
  %loadMem_441e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6647 = getelementptr inbounds %struct.GPR, %struct.GPR* %6646, i32 0, i32 33
  %6648 = getelementptr inbounds %struct.Reg, %struct.Reg* %6647, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %6648 to i64*
  %6649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6650 = getelementptr inbounds %struct.GPR, %struct.GPR* %6649, i32 0, i32 1
  %6651 = getelementptr inbounds %struct.Reg, %struct.Reg* %6650, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %6651 to i64*
  %6652 = load i64, i64* %RAX.i31
  %6653 = load i64, i64* %PC.i30
  %6654 = add i64 %6653, 3
  store i64 %6654, i64* %PC.i30
  %6655 = trunc i64 %6652 to i32
  %6656 = add i32 1, %6655
  %6657 = zext i32 %6656 to i64
  store i64 %6657, i64* %RAX.i31, align 8
  %6658 = icmp ult i32 %6656, %6655
  %6659 = icmp ult i32 %6656, 1
  %6660 = or i1 %6658, %6659
  %6661 = zext i1 %6660 to i8
  %6662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6661, i8* %6662, align 1
  %6663 = and i32 %6656, 255
  %6664 = call i32 @llvm.ctpop.i32(i32 %6663)
  %6665 = trunc i32 %6664 to i8
  %6666 = and i8 %6665, 1
  %6667 = xor i8 %6666, 1
  %6668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6667, i8* %6668, align 1
  %6669 = xor i64 1, %6652
  %6670 = trunc i64 %6669 to i32
  %6671 = xor i32 %6670, %6656
  %6672 = lshr i32 %6671, 4
  %6673 = trunc i32 %6672 to i8
  %6674 = and i8 %6673, 1
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6674, i8* %6675, align 1
  %6676 = icmp eq i32 %6656, 0
  %6677 = zext i1 %6676 to i8
  %6678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6677, i8* %6678, align 1
  %6679 = lshr i32 %6656, 31
  %6680 = trunc i32 %6679 to i8
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6680, i8* %6681, align 1
  %6682 = lshr i32 %6655, 31
  %6683 = xor i32 %6679, %6682
  %6684 = add i32 %6683, %6679
  %6685 = icmp eq i32 %6684, 2
  %6686 = zext i1 %6685 to i8
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6686, i8* %6687, align 1
  store %struct.Memory* %loadMem_441e9b, %struct.Memory** %MEMORY
  %loadMem_441e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6689 = getelementptr inbounds %struct.GPR, %struct.GPR* %6688, i32 0, i32 33
  %6690 = getelementptr inbounds %struct.Reg, %struct.Reg* %6689, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %6690 to i64*
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6692 = getelementptr inbounds %struct.GPR, %struct.GPR* %6691, i32 0, i32 1
  %6693 = getelementptr inbounds %struct.Reg, %struct.Reg* %6692, i32 0, i32 0
  %EAX.i28 = bitcast %union.anon* %6693 to i32*
  %6694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6695 = getelementptr inbounds %struct.GPR, %struct.GPR* %6694, i32 0, i32 15
  %6696 = getelementptr inbounds %struct.Reg, %struct.Reg* %6695, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %6696 to i64*
  %6697 = load i64, i64* %RBP.i29
  %6698 = sub i64 %6697, 16
  %6699 = load i32, i32* %EAX.i28
  %6700 = zext i32 %6699 to i64
  %6701 = load i64, i64* %PC.i27
  %6702 = add i64 %6701, 3
  store i64 %6702, i64* %PC.i27
  %6703 = inttoptr i64 %6698 to i32*
  store i32 %6699, i32* %6703
  store %struct.Memory* %loadMem_441e9e, %struct.Memory** %MEMORY
  %loadMem_441ea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6705 = getelementptr inbounds %struct.GPR, %struct.GPR* %6704, i32 0, i32 33
  %6706 = getelementptr inbounds %struct.Reg, %struct.Reg* %6705, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %6706 to i64*
  %6707 = load i64, i64* %PC.i26
  %6708 = add i64 %6707, -1662
  %6709 = load i64, i64* %PC.i26
  %6710 = add i64 %6709, 5
  store i64 %6710, i64* %PC.i26
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6708, i64* %6711, align 8
  store %struct.Memory* %loadMem_441ea1, %struct.Memory** %MEMORY
  br label %block_.L_441823

block_.L_441ea6:                                  ; preds = %block_.L_441823
  %loadMem_441ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6713 = getelementptr inbounds %struct.GPR, %struct.GPR* %6712, i32 0, i32 33
  %6714 = getelementptr inbounds %struct.Reg, %struct.Reg* %6713, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %6714 to i64*
  %6715 = load i64, i64* %PC.i25
  %6716 = add i64 %6715, 5
  %6717 = load i64, i64* %PC.i25
  %6718 = add i64 %6717, 5
  store i64 %6718, i64* %PC.i25
  %6719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6716, i64* %6719, align 8
  store %struct.Memory* %loadMem_441ea6, %struct.Memory** %MEMORY
  br label %block_.L_441eab

block_.L_441eab:                                  ; preds = %block_.L_441ea6
  %loadMem_441eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6721 = getelementptr inbounds %struct.GPR, %struct.GPR* %6720, i32 0, i32 33
  %6722 = getelementptr inbounds %struct.Reg, %struct.Reg* %6721, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %6722 to i64*
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6724 = getelementptr inbounds %struct.GPR, %struct.GPR* %6723, i32 0, i32 1
  %6725 = getelementptr inbounds %struct.Reg, %struct.Reg* %6724, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %6725 to i64*
  %6726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6727 = getelementptr inbounds %struct.GPR, %struct.GPR* %6726, i32 0, i32 15
  %6728 = getelementptr inbounds %struct.Reg, %struct.Reg* %6727, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %6728 to i64*
  %6729 = load i64, i64* %RBP.i24
  %6730 = sub i64 %6729, 12
  %6731 = load i64, i64* %PC.i22
  %6732 = add i64 %6731, 3
  store i64 %6732, i64* %PC.i22
  %6733 = inttoptr i64 %6730 to i32*
  %6734 = load i32, i32* %6733
  %6735 = zext i32 %6734 to i64
  store i64 %6735, i64* %RAX.i23, align 8
  store %struct.Memory* %loadMem_441eab, %struct.Memory** %MEMORY
  %loadMem_441eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %6736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6737 = getelementptr inbounds %struct.GPR, %struct.GPR* %6736, i32 0, i32 33
  %6738 = getelementptr inbounds %struct.Reg, %struct.Reg* %6737, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %6738 to i64*
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6740 = getelementptr inbounds %struct.GPR, %struct.GPR* %6739, i32 0, i32 1
  %6741 = getelementptr inbounds %struct.Reg, %struct.Reg* %6740, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %6741 to i64*
  %6742 = load i64, i64* %RAX.i21
  %6743 = load i64, i64* %PC.i20
  %6744 = add i64 %6743, 3
  store i64 %6744, i64* %PC.i20
  %6745 = trunc i64 %6742 to i32
  %6746 = add i32 1, %6745
  %6747 = zext i32 %6746 to i64
  store i64 %6747, i64* %RAX.i21, align 8
  %6748 = icmp ult i32 %6746, %6745
  %6749 = icmp ult i32 %6746, 1
  %6750 = or i1 %6748, %6749
  %6751 = zext i1 %6750 to i8
  %6752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6751, i8* %6752, align 1
  %6753 = and i32 %6746, 255
  %6754 = call i32 @llvm.ctpop.i32(i32 %6753)
  %6755 = trunc i32 %6754 to i8
  %6756 = and i8 %6755, 1
  %6757 = xor i8 %6756, 1
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6757, i8* %6758, align 1
  %6759 = xor i64 1, %6742
  %6760 = trunc i64 %6759 to i32
  %6761 = xor i32 %6760, %6746
  %6762 = lshr i32 %6761, 4
  %6763 = trunc i32 %6762 to i8
  %6764 = and i8 %6763, 1
  %6765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6764, i8* %6765, align 1
  %6766 = icmp eq i32 %6746, 0
  %6767 = zext i1 %6766 to i8
  %6768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6767, i8* %6768, align 1
  %6769 = lshr i32 %6746, 31
  %6770 = trunc i32 %6769 to i8
  %6771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6770, i8* %6771, align 1
  %6772 = lshr i32 %6745, 31
  %6773 = xor i32 %6769, %6772
  %6774 = add i32 %6773, %6769
  %6775 = icmp eq i32 %6774, 2
  %6776 = zext i1 %6775 to i8
  %6777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6776, i8* %6777, align 1
  store %struct.Memory* %loadMem_441eae, %struct.Memory** %MEMORY
  %loadMem_441eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6779 = getelementptr inbounds %struct.GPR, %struct.GPR* %6778, i32 0, i32 33
  %6780 = getelementptr inbounds %struct.Reg, %struct.Reg* %6779, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %6780 to i64*
  %6781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6782 = getelementptr inbounds %struct.GPR, %struct.GPR* %6781, i32 0, i32 1
  %6783 = getelementptr inbounds %struct.Reg, %struct.Reg* %6782, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6783 to i32*
  %6784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6785 = getelementptr inbounds %struct.GPR, %struct.GPR* %6784, i32 0, i32 15
  %6786 = getelementptr inbounds %struct.Reg, %struct.Reg* %6785, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %6786 to i64*
  %6787 = load i64, i64* %RBP.i19
  %6788 = sub i64 %6787, 12
  %6789 = load i32, i32* %EAX.i
  %6790 = zext i32 %6789 to i64
  %6791 = load i64, i64* %PC.i18
  %6792 = add i64 %6791, 3
  store i64 %6792, i64* %PC.i18
  %6793 = inttoptr i64 %6788 to i32*
  store i32 %6789, i32* %6793
  store %struct.Memory* %loadMem_441eb1, %struct.Memory** %MEMORY
  %loadMem_441eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6795 = getelementptr inbounds %struct.GPR, %struct.GPR* %6794, i32 0, i32 33
  %6796 = getelementptr inbounds %struct.Reg, %struct.Reg* %6795, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %6796 to i64*
  %6797 = load i64, i64* %PC.i17
  %6798 = add i64 %6797, -1704
  %6799 = load i64, i64* %PC.i17
  %6800 = add i64 %6799, 5
  store i64 %6800, i64* %PC.i17
  %6801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6798, i64* %6801, align 8
  store %struct.Memory* %loadMem_441eb4, %struct.Memory** %MEMORY
  br label %block_.L_44180c

block_.L_441eb9:                                  ; preds = %block_.L_44180c
  %loadMem_441eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6803 = getelementptr inbounds %struct.GPR, %struct.GPR* %6802, i32 0, i32 33
  %6804 = getelementptr inbounds %struct.Reg, %struct.Reg* %6803, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %6804 to i64*
  %6805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6806 = getelementptr inbounds %struct.GPR, %struct.GPR* %6805, i32 0, i32 1
  %6807 = getelementptr inbounds %struct.Reg, %struct.Reg* %6806, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %6807 to i64*
  %6808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6809 = getelementptr inbounds %struct.GPR, %struct.GPR* %6808, i32 0, i32 15
  %6810 = getelementptr inbounds %struct.Reg, %struct.Reg* %6809, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %6810 to i64*
  %6811 = load i64, i64* %RBP.i16
  %6812 = sub i64 %6811, 8
  %6813 = load i64, i64* %PC.i14
  %6814 = add i64 %6813, 4
  store i64 %6814, i64* %PC.i14
  %6815 = inttoptr i64 %6812 to i64*
  %6816 = load i64, i64* %6815
  store i64 %6816, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_441eb9, %struct.Memory** %MEMORY
  %loadMem_441ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6818 = getelementptr inbounds %struct.GPR, %struct.GPR* %6817, i32 0, i32 33
  %6819 = getelementptr inbounds %struct.Reg, %struct.Reg* %6818, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6819 to i64*
  %6820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6821 = getelementptr inbounds %struct.GPR, %struct.GPR* %6820, i32 0, i32 1
  %6822 = getelementptr inbounds %struct.Reg, %struct.Reg* %6821, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %6822 to i64*
  %6823 = load i64, i64* %RAX.i13
  %6824 = add i64 %6823, 35404
  %6825 = load i64, i64* %PC.i12
  %6826 = add i64 %6825, 10
  store i64 %6826, i64* %PC.i12
  %6827 = inttoptr i64 %6824 to i32*
  store i32 1, i32* %6827
  store %struct.Memory* %loadMem_441ebd, %struct.Memory** %MEMORY
  %loadMem_441ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6829 = getelementptr inbounds %struct.GPR, %struct.GPR* %6828, i32 0, i32 33
  %6830 = getelementptr inbounds %struct.Reg, %struct.Reg* %6829, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6830 to i64*
  %6831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6832 = getelementptr inbounds %struct.GPR, %struct.GPR* %6831, i32 0, i32 1
  %6833 = getelementptr inbounds %struct.Reg, %struct.Reg* %6832, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %6833 to i64*
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6835 = getelementptr inbounds %struct.GPR, %struct.GPR* %6834, i32 0, i32 15
  %6836 = getelementptr inbounds %struct.Reg, %struct.Reg* %6835, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %6836 to i64*
  %6837 = load i64, i64* %RBP.i11
  %6838 = sub i64 %6837, 472
  %6839 = load i64, i64* %PC.i9
  %6840 = add i64 %6839, 7
  store i64 %6840, i64* %PC.i9
  %6841 = inttoptr i64 %6838 to i64*
  %6842 = load i64, i64* %6841
  store i64 %6842, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_441ec7, %struct.Memory** %MEMORY
  %loadMem_441ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6844 = getelementptr inbounds %struct.GPR, %struct.GPR* %6843, i32 0, i32 33
  %6845 = getelementptr inbounds %struct.Reg, %struct.Reg* %6844, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %6845 to i64*
  %6846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6847 = getelementptr inbounds %struct.GPR, %struct.GPR* %6846, i32 0, i32 1
  %6848 = getelementptr inbounds %struct.Reg, %struct.Reg* %6847, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6848 to i64*
  %6849 = load i64, i64* %RAX.i
  %6850 = load i64, i64* %PC.i8
  %6851 = add i64 %6850, 8
  store i64 %6851, i64* %PC.i8
  store i64 %6849, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store %struct.Memory* %loadMem_441ece, %struct.Memory** %MEMORY
  %loadMem_441ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6853 = getelementptr inbounds %struct.GPR, %struct.GPR* %6852, i32 0, i32 33
  %6854 = getelementptr inbounds %struct.Reg, %struct.Reg* %6853, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6854 to i64*
  %6855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6856 = getelementptr inbounds %struct.GPR, %struct.GPR* %6855, i32 0, i32 5
  %6857 = getelementptr inbounds %struct.Reg, %struct.Reg* %6856, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6857 to i64*
  %6858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6859 = getelementptr inbounds %struct.GPR, %struct.GPR* %6858, i32 0, i32 15
  %6860 = getelementptr inbounds %struct.Reg, %struct.Reg* %6859, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %6860 to i64*
  %6861 = load i64, i64* %RBP.i7
  %6862 = sub i64 %6861, 476
  %6863 = load i64, i64* %PC.i6
  %6864 = add i64 %6863, 6
  store i64 %6864, i64* %PC.i6
  %6865 = inttoptr i64 %6862 to i32*
  %6866 = load i32, i32* %6865
  %6867 = zext i32 %6866 to i64
  store i64 %6867, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_441ed6, %struct.Memory** %MEMORY
  %loadMem_441edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6869 = getelementptr inbounds %struct.GPR, %struct.GPR* %6868, i32 0, i32 33
  %6870 = getelementptr inbounds %struct.Reg, %struct.Reg* %6869, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6870 to i64*
  %6871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6872 = getelementptr inbounds %struct.GPR, %struct.GPR* %6871, i32 0, i32 5
  %6873 = getelementptr inbounds %struct.Reg, %struct.Reg* %6872, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6873 to i32*
  %6874 = load i32, i32* %ECX.i
  %6875 = zext i32 %6874 to i64
  %6876 = load i64, i64* %PC.i5
  %6877 = add i64 %6876, 7
  store i64 %6877, i64* %PC.i5
  store i32 %6874, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  store %struct.Memory* %loadMem_441edc, %struct.Memory** %MEMORY
  br label %block_.L_441ee3

block_.L_441ee3:                                  ; preds = %block_.L_441eb9, %block_4419e3
  %loadMem_441ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6879 = getelementptr inbounds %struct.GPR, %struct.GPR* %6878, i32 0, i32 33
  %6880 = getelementptr inbounds %struct.Reg, %struct.Reg* %6879, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6880 to i64*
  %6881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6882 = getelementptr inbounds %struct.GPR, %struct.GPR* %6881, i32 0, i32 13
  %6883 = getelementptr inbounds %struct.Reg, %struct.Reg* %6882, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6883 to i64*
  %6884 = load i64, i64* %RSP.i
  %6885 = load i64, i64* %PC.i4
  %6886 = add i64 %6885, 7
  store i64 %6886, i64* %PC.i4
  %6887 = add i64 5248, %6884
  store i64 %6887, i64* %RSP.i, align 8
  %6888 = icmp ult i64 %6887, %6884
  %6889 = icmp ult i64 %6887, 5248
  %6890 = or i1 %6888, %6889
  %6891 = zext i1 %6890 to i8
  %6892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6891, i8* %6892, align 1
  %6893 = trunc i64 %6887 to i32
  %6894 = and i32 %6893, 255
  %6895 = call i32 @llvm.ctpop.i32(i32 %6894)
  %6896 = trunc i32 %6895 to i8
  %6897 = and i8 %6896, 1
  %6898 = xor i8 %6897, 1
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6898, i8* %6899, align 1
  %6900 = xor i64 5248, %6884
  %6901 = xor i64 %6900, %6887
  %6902 = lshr i64 %6901, 4
  %6903 = trunc i64 %6902 to i8
  %6904 = and i8 %6903, 1
  %6905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6904, i8* %6905, align 1
  %6906 = icmp eq i64 %6887, 0
  %6907 = zext i1 %6906 to i8
  %6908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6907, i8* %6908, align 1
  %6909 = lshr i64 %6887, 63
  %6910 = trunc i64 %6909 to i8
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6910, i8* %6911, align 1
  %6912 = lshr i64 %6884, 63
  %6913 = xor i64 %6909, %6912
  %6914 = add i64 %6913, %6909
  %6915 = icmp eq i64 %6914, 2
  %6916 = zext i1 %6915 to i8
  %6917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6916, i8* %6917, align 1
  store %struct.Memory* %loadMem_441ee3, %struct.Memory** %MEMORY
  %loadMem_441eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %6918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6919 = getelementptr inbounds %struct.GPR, %struct.GPR* %6918, i32 0, i32 33
  %6920 = getelementptr inbounds %struct.Reg, %struct.Reg* %6919, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6920 to i64*
  %6921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6922 = getelementptr inbounds %struct.GPR, %struct.GPR* %6921, i32 0, i32 15
  %6923 = getelementptr inbounds %struct.Reg, %struct.Reg* %6922, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6923 to i64*
  %6924 = load i64, i64* %PC.i2
  %6925 = add i64 %6924, 1
  store i64 %6925, i64* %PC.i2
  %6926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6927 = load i64, i64* %6926, align 8
  %6928 = add i64 %6927, 8
  %6929 = inttoptr i64 %6927 to i64*
  %6930 = load i64, i64* %6929
  store i64 %6930, i64* %RBP.i3, align 8
  store i64 %6928, i64* %6926, align 8
  store %struct.Memory* %loadMem_441eea, %struct.Memory** %MEMORY
  %loadMem_441eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6932 = getelementptr inbounds %struct.GPR, %struct.GPR* %6931, i32 0, i32 33
  %6933 = getelementptr inbounds %struct.Reg, %struct.Reg* %6932, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6933 to i64*
  %6934 = load i64, i64* %PC.i1
  %6935 = add i64 %6934, 1
  store i64 %6935, i64* %PC.i1
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6938 = load i64, i64* %6937, align 8
  %6939 = inttoptr i64 %6938 to i64*
  %6940 = load i64, i64* %6939
  store i64 %6940, i64* %6936, align 8
  %6941 = add i64 %6938, 8
  store i64 %6941, i64* %6937, align 8
  store %struct.Memory* %loadMem_441eeb, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_441eeb
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

define %struct.Memory* @routine_subq__0x1480___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 5248
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 5248
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
  %23 = xor i64 5248, %9
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

define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movl_0x4b0__rdi____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
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

define %struct.Memory* @routine_movq_0xab0ef8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x1d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 472
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xab0eec___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 476
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x0__0xab0ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xab0eec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
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

define %struct.Memory* @routine_cmpl__0xa__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 10
  %16 = icmp ult i32 %14, 10
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
  %25 = xor i32 %14, 10
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

define %struct.Memory* @routine_jge_.L_4417b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__0x87f4__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 34804
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
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

define %struct.Memory* @routine_jmpq_.L_441788(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x190___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 400, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x1d0__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x88bc___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 35004, %9
  store i64 %12, i64* %RSI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 35004
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
  %25 = xor i64 35004, %9
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

define %struct.Memory* @routine_movq__rdi__MINUS0x1460__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5216
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x1468__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5224
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x146c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5228
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memset_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x1460__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x146c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5228
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x1468__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
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

define %struct.Memory* @routine_jge_.L_441eb9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jge_.L_441ea6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x14__MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 20
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RAX, align 8
  %22 = shl i64 %19, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp ne i64 %23, %19
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %25, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x15___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 21, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 21
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
  %26 = xor i64 21, %9
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

define %struct.Memory* @routine_addl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 16
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

define %struct.Memory* @routine_movl__eax__MINUS0x1e0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 480
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1e0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 52
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

define %struct.Memory* @routine_jne_.L_441e93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_441e93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 8
  %16 = icmp ult i32 %14, 8
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
  %25 = xor i32 %14, 8
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

define %struct.Memory* @routine_jge_.L_441e8e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae1b0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 8053168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x1e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 484
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 4
  %16 = icmp ult i32 %14, 4
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
  %25 = xor i32 %14, 4
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

define %struct.Memory* @routine_jge_.L_4418ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1e0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x1e4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 484
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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

define %struct.Memory* @routine_jne_.L_4418ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 484
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 56
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

define %struct.Memory* @routine_je_.L_4418f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_441e80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.find_origin(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpb__0x0__MINUS0x1d0__rbp__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = add i64 %12, -464
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  %19 = load i8, i8* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = zext i8 %19 to i32
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = icmp eq i8 %19, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i8 %19, 7
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i8 %19, 7
  %34 = xor i8 %31, %33
  %35 = add i8 %34, %33
  %36 = icmp eq i8 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_441920(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x30__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x1__MINUS0x1d0__rbp__rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %12, -464
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 1, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.attack_and_defend(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x1470__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5232
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_441a17(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x87f4__rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 34804
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
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

define %struct.Memory* @routine_movl__eax__0x881c__rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 34844
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
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

define %struct.Memory* @routine_movl__eax__0x8844__rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 34884
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
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

define %struct.Memory* @routine_movl__eax__0x886c__rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 34924
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4419bd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__0x8894__rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 34964
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4419d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x8894__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 34964
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl__0xa__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 10
  %16 = icmp ult i32 %14, 10
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
  %25 = xor i32 %14, 10
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

define %struct.Memory* @routine_jne_.L_441a12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x1d8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 472
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0xab0ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %9, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1dc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 476
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0xab0eec(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x8a4c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 35404
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_441ee3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_441e7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpb__0x0__0x88bc__rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %12, 35004
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  %19 = load i8, i8* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = zext i8 %19 to i32
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = icmp eq i8 %19, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i8 %19, 7
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i8 %19, 7
  %34 = xor i8 %31, %33
  %35 = add i8 %34, %33
  %36 = icmp eq i8 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_441e76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x470__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xdf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3576
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.chainlinks(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x1e8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 488
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0xdf4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3572
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xdf4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3572
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x1e8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 488
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

define %struct.Memory* @routine_jge_.L_441acd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xdf4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3572
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x470__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1136
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpb__0x0____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = zext i8 %18 to i32
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = icmp eq i8 %18, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i8 %18, 7
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i8 %18, 7
  %33 = xor i8 %30, %32
  %34 = add i8 %33, %32
  %35 = icmp eq i8 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_441aa5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x470__rbp__rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1136
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.attack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_441ab4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0xdf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3576
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_441acd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_441ab9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xdf4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3572
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_441a56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0xdf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 3576
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

define %struct.Memory* @routine_je_.L_441adf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x474__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 1140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xa24__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2596
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i32, i32* %R9D
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %11
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  store i64 %18, i64* %9, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = and i32 %17, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %17, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %17, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xdf0__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3568
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0xa20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.find_superstring_stones_and_liberties(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__esi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__0x640___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1600, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x1440__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x474__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 1140
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

define %struct.Memory* @routine_jge_.L_441b68(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xdf4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 3572
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xa20__rbp__rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -2592
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x1440__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -5184
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 1, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_441b28(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0xa24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 2596
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

define %struct.Memory* @routine_jge_.L_441de7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0xdf0__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -3568
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x1444__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5188
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1448__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 5192
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x144c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 5196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x144c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 5196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 4
  %16 = icmp ult i32 %14, 4
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
  %25 = xor i32 %14, 4
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

define %struct.Memory* @routine_jge_.L_441cc6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1444__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x144c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 8053168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %21, %18
  %24 = icmp ult i32 %21, %20
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i32 %20, %18
  %35 = xor i32 %34, %21
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i32 %21, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %21, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i32 %18, 31
  %47 = lshr i32 %20, 31
  %48 = xor i32 %43, %46
  %49 = xor i32 %43, %47
  %50 = add i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1450__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1450__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 3
  %14 = icmp ult i32 %9, 3
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
  %23 = xor i64 3, %10
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

define %struct.Memory* @routine_jne_.L_441bf0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_441cb2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x1450__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 52
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

define %struct.Memory* @routine_jne_.L_441c6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1450__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_441c2f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_441cc6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_441c53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x1448__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 5192
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_441c62(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_441c67(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_441cad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 56
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

define %struct.Memory* @routine_jne_.L_441ca8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x1440__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -5184
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %21, align 1
  %22 = and i32 %20, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = xor i32 %32, %35
  %37 = add i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x144c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x144c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_441bac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x1448__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 5192
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

define %struct.Memory* @routine_jne_.L_441dbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x1454__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 5204
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x1458__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 5208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4__MINUS0x144c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 5196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 4, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x8__MINUS0x144c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 5196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 8
  %16 = icmp ult i32 %14, 8
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
  %25 = xor i32 %14, 8
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

define %struct.Memory* @routine_jge_.L_441d8c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_441d3a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1454__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1454__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_441d73(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x1444__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x144c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_0x7ae1b0___rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 8053168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RCX, align 8
  %23 = icmp ult i32 %21, %18
  %24 = icmp ult i32 %21, %20
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i32 %20, %18
  %35 = xor i32 %34, %21
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i32 %21, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %21, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i32 %18, 31
  %47 = lshr i32 %20, 31
  %48 = xor i32 %43, %46
  %49 = xor i32 %43, %47
  %50 = add i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1
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

define %struct.Memory* @routine_cmpb__0x0____rax__rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = zext i8 %18 to i32
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = icmp eq i8 %18, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i8 %18, 7
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i8 %18, 7
  %33 = xor i8 %30, %32
  %34 = add i8 %33, %32
  %35 = icmp eq i8 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_441d6e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1458__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1458__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5208
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_441d78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_441cf1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x1454__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 5204
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_setge__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
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
  store i8 %20, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %CL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %CL, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = trunc i64 %14 to i32
  %18 = and i32 %17, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i8 %15, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl__cl___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i8, i8* %CL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 2
  %14 = icmp ult i32 %9, 2
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
  %23 = xor i64 2, %10
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

define %struct.Memory* @routine_jge_.L_441db7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_441dbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_441dce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_441de7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_441dd3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_441b72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_441e71(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_441e07(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_441e21(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57e35d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57e35d_type* @G__0x57e35d to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.gprintf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x1474__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 5236
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_441e6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0xa20__rbp__rcx_4____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -2592
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x1__0x88bc__rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %12, 35004
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 1, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_441e2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_441e71(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_441e76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_44187a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_441e93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_441e98(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_441823(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_441eab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_44180c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x1480___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 5248, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 5248
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
  %25 = xor i64 5248, %9
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
