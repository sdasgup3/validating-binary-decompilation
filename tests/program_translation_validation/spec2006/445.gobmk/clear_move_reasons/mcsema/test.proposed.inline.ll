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
%G_0xb1a03__rip__type = type <{ [4 x i8] }>
%G_0xb1c0d__rip__type = type <{ [4 x i8] }>
%G_0xb4bce4_type = type <{ [4 x i8] }>
%G_0xb6e914_type = type <{ [4 x i8] }>
%G_0xb89e58_type = type <{ [4 x i8] }>
%G_0xb8b858_type = type <{ [4 x i8] }>
%G_0xb8b864_type = type <{ [4 x i8] }>
%G_0xb8c044_type = type <{ [4 x i8] }>
%G__0xb9d8f0_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0C\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0xb1a03__rip_ = global %G_0xb1a03__rip__type zeroinitializer
@G_0xb1c0d__rip_ = global %G_0xb1c0d__rip__type zeroinitializer
@G_0xb4bce4 = global %G_0xb4bce4_type zeroinitializer
@G_0xb6e914 = global %G_0xb6e914_type zeroinitializer
@G_0xb89e58 = global %G_0xb89e58_type zeroinitializer
@G_0xb8b858 = global %G_0xb8b858_type zeroinitializer
@G_0xb8b864 = global %G_0xb8b864_type zeroinitializer
@G_0xb8c044 = global %G_0xb8c044_type zeroinitializer
@G__0xb9d8f0 = global %G__0xb9d8f0_type zeroinitializer

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

declare %struct.Memory* @sub_4e2dd0.gg_drand(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @clear_move_reasons(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4314c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4314c0, %struct.Memory** %MEMORY
  %loadMem_4314c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i362 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i362
  %27 = load i64, i64* %PC.i361
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i361
  store i64 %26, i64* %RBP.i363, align 8
  store %struct.Memory* %loadMem_4314c1, %struct.Memory** %MEMORY
  %loadMem_4314c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i360 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i360
  %36 = load i64, i64* %PC.i359
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i359
  %38 = sub i64 %35, 16
  store i64 %38, i64* %RSP.i360, align 8
  %39 = icmp ult i64 %35, 16
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
  %49 = xor i64 16, %35
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
  store %struct.Memory* %loadMem_4314c4, %struct.Memory** %MEMORY
  %loadMem_4314c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %69 to i64*
  %70 = load i64, i64* %PC.i358
  %71 = add i64 %70, 11
  store i64 %71, i64* %PC.i358
  store i32 0, i32* bitcast (%G_0xb8c044_type* @G_0xb8c044 to i32*)
  store %struct.Memory* %loadMem_4314c8, %struct.Memory** %MEMORY
  %loadMem_4314d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %73 = getelementptr inbounds %struct.GPR, %struct.GPR* %72, i32 0, i32 33
  %74 = getelementptr inbounds %struct.Reg, %struct.Reg* %73, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %74 to i64*
  %75 = load i64, i64* %PC.i357
  %76 = add i64 %75, 11
  store i64 %76, i64* %PC.i357
  store i32 0, i32* bitcast (%G_0xb6e914_type* @G_0xb6e914 to i32*)
  store %struct.Memory* %loadMem_4314d3, %struct.Memory** %MEMORY
  %loadMem_4314de = load %struct.Memory*, %struct.Memory** %MEMORY
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %78 = getelementptr inbounds %struct.GPR, %struct.GPR* %77, i32 0, i32 33
  %79 = getelementptr inbounds %struct.Reg, %struct.Reg* %78, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %79 to i64*
  %80 = load i64, i64* %PC.i356
  %81 = add i64 %80, 11
  store i64 %81, i64* %PC.i356
  store i32 0, i32* bitcast (%G_0xb8b864_type* @G_0xb8b864 to i32*)
  store %struct.Memory* %loadMem_4314de, %struct.Memory** %MEMORY
  %loadMem_4314e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %84 to i64*
  %85 = load i64, i64* %PC.i355
  %86 = add i64 %85, 11
  store i64 %86, i64* %PC.i355
  store i32 0, i32* bitcast (%G_0xb89e58_type* @G_0xb89e58 to i32*)
  store %struct.Memory* %loadMem_4314e9, %struct.Memory** %MEMORY
  %loadMem_4314f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 33
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %89 to i64*
  %90 = load i64, i64* %PC.i354
  %91 = add i64 %90, 11
  store i64 %91, i64* %PC.i354
  store i32 0, i32* bitcast (%G_0xb4bce4_type* @G_0xb4bce4 to i32*)
  store %struct.Memory* %loadMem_4314f4, %struct.Memory** %MEMORY
  %loadMem_4314ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 33
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %94 to i64*
  %95 = load i64, i64* %PC.i353
  %96 = add i64 %95, 11
  store i64 %96, i64* %PC.i353
  store i32 0, i32* bitcast (%G_0xb8b858_type* @G_0xb8b858 to i32*)
  store %struct.Memory* %loadMem_4314ff, %struct.Memory** %MEMORY
  %loadMem_43150a = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 15
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %102 to i64*
  %103 = load i64, i64* %RBP.i352
  %104 = sub i64 %103, 4
  %105 = load i64, i64* %PC.i351
  %106 = add i64 %105, 7
  store i64 %106, i64* %PC.i351
  %107 = inttoptr i64 %104 to i32*
  store i32 21, i32* %107
  store %struct.Memory* %loadMem_43150a, %struct.Memory** %MEMORY
  br label %block_.L_431511

block_.L_431511:                                  ; preds = %block_.L_431799, %entry
  %loadMem_431511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 33
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %110 to i64*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 15
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %113 to i64*
  %114 = load i64, i64* %RBP.i350
  %115 = sub i64 %114, 4
  %116 = load i64, i64* %PC.i349
  %117 = add i64 %116, 7
  store i64 %117, i64* %PC.i349
  %118 = inttoptr i64 %115 to i32*
  %119 = load i32, i32* %118
  %120 = sub i32 %119, 400
  %121 = icmp ult i32 %119, 400
  %122 = zext i1 %121 to i8
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %122, i8* %123, align 1
  %124 = and i32 %120, 255
  %125 = call i32 @llvm.ctpop.i32(i32 %124)
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %128, i8* %129, align 1
  %130 = xor i32 %119, 400
  %131 = xor i32 %130, %120
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %134, i8* %135, align 1
  %136 = icmp eq i32 %120, 0
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %137, i8* %138, align 1
  %139 = lshr i32 %120, 31
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %140, i8* %141, align 1
  %142 = lshr i32 %119, 31
  %143 = xor i32 %139, %142
  %144 = add i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %146, i8* %147, align 1
  store %struct.Memory* %loadMem_431511, %struct.Memory** %MEMORY
  %loadMem_431518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %PC.i348
  %152 = add i64 %151, 655
  %153 = load i64, i64* %PC.i348
  %154 = add i64 %153, 6
  %155 = load i64, i64* %PC.i348
  %156 = add i64 %155, 6
  store i64 %156, i64* %PC.i348
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %158 = load i8, i8* %157, align 1
  %159 = icmp ne i8 %158, 0
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %161 = load i8, i8* %160, align 1
  %162 = icmp ne i8 %161, 0
  %163 = xor i1 %159, %162
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %BRANCH_TAKEN, align 1
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %167 = select i1 %163, i64 %154, i64 %152
  store i64 %167, i64* %166, align 8
  store %struct.Memory* %loadMem_431518, %struct.Memory** %MEMORY
  %loadBr_431518 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_431518 = icmp eq i8 %loadBr_431518, 1
  br i1 %cmpBr_431518, label %block_.L_4317a7, label %block_43151e

block_43151e:                                     ; preds = %block_.L_431511
  %loadMem_43151e = load %struct.Memory*, %struct.Memory** %MEMORY
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 33
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 15
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %RBP.i347
  %178 = sub i64 %177, 4
  %179 = load i64, i64* %PC.i345
  %180 = add i64 %179, 4
  store i64 %180, i64* %PC.i345
  %181 = inttoptr i64 %178 to i32*
  %182 = load i32, i32* %181
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_43151e, %struct.Memory** %MEMORY
  %loadMem_431522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 5
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %RAX.i343
  %194 = add i64 %193, 12099168
  %195 = load i64, i64* %PC.i342
  %196 = add i64 %195, 8
  store i64 %196, i64* %PC.i342
  %197 = inttoptr i64 %194 to i8*
  %198 = load i8, i8* %197
  %199 = zext i8 %198 to i64
  store i64 %199, i64* %RCX.i344, align 8
  store %struct.Memory* %loadMem_431522, %struct.Memory** %MEMORY
  %loadMem_43152a = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %205 to i32*
  %206 = load i32, i32* %ECX.i
  %207 = zext i32 %206 to i64
  %208 = load i64, i64* %PC.i341
  %209 = add i64 %208, 3
  store i64 %209, i64* %PC.i341
  %210 = sub i32 %206, 3
  %211 = icmp ult i32 %206, 3
  %212 = zext i1 %211 to i8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %212, i8* %213, align 1
  %214 = and i32 %210, 255
  %215 = call i32 @llvm.ctpop.i32(i32 %214)
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %218, i8* %219, align 1
  %220 = xor i64 3, %207
  %221 = trunc i64 %220 to i32
  %222 = xor i32 %221, %210
  %223 = lshr i32 %222, 4
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %225, i8* %226, align 1
  %227 = icmp eq i32 %210, 0
  %228 = zext i1 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %228, i8* %229, align 1
  %230 = lshr i32 %210, 31
  %231 = trunc i32 %230 to i8
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %231, i8* %232, align 1
  %233 = lshr i32 %206, 31
  %234 = xor i32 %230, %233
  %235 = add i32 %234, %233
  %236 = icmp eq i32 %235, 2
  %237 = zext i1 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %237, i8* %238, align 1
  store %struct.Memory* %loadMem_43152a, %struct.Memory** %MEMORY
  %loadMem_43152d = load %struct.Memory*, %struct.Memory** %MEMORY
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 33
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %PC.i340
  %243 = add i64 %242, 615
  %244 = load i64, i64* %PC.i340
  %245 = add i64 %244, 6
  %246 = load i64, i64* %PC.i340
  %247 = add i64 %246, 6
  store i64 %247, i64* %PC.i340
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %249 = load i8, i8* %248, align 1
  store i8 %249, i8* %BRANCH_TAKEN, align 1
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %251 = icmp ne i8 %249, 0
  %252 = select i1 %251, i64 %243, i64 %245
  store i64 %252, i64* %250, align 8
  store %struct.Memory* %loadMem_43152d, %struct.Memory** %MEMORY
  %loadBr_43152d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43152d = icmp eq i8 %loadBr_43152d, 1
  br i1 %cmpBr_43152d, label %block_.L_431794, label %block_431533

block_431533:                                     ; preds = %block_43151e
  %loadMem_431533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 33
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %257 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %256, i64 0, i64 0
  %YMM0.i339 = bitcast %union.VectorReg* %257 to %"class.std::bitset"*
  %258 = bitcast %"class.std::bitset"* %YMM0.i339 to i8*
  %259 = load i64, i64* %PC.i338
  %260 = add i64 %259, ptrtoint (%G_0xb1c0d__rip__type* @G_0xb1c0d__rip_ to i64)
  %261 = load i64, i64* %PC.i338
  %262 = add i64 %261, 8
  store i64 %262, i64* %PC.i338
  %263 = inttoptr i64 %260 to float*
  %264 = load float, float* %263
  %265 = bitcast i8* %258 to float*
  store float %264, float* %265, align 1
  %266 = getelementptr inbounds i8, i8* %258, i64 4
  %267 = bitcast i8* %266 to float*
  store float 0.000000e+00, float* %267, align 1
  %268 = getelementptr inbounds i8, i8* %258, i64 8
  %269 = bitcast i8* %268 to float*
  store float 0.000000e+00, float* %269, align 1
  %270 = getelementptr inbounds i8, i8* %258, i64 12
  %271 = bitcast i8* %270 to float*
  store float 0.000000e+00, float* %271, align 1
  store %struct.Memory* %loadMem_431533, %struct.Memory** %MEMORY
  %loadMem_43153b = load %struct.Memory*, %struct.Memory** %MEMORY
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 33
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %277 to i64*
  %278 = load i64, i64* %PC.i336
  %279 = add i64 %278, 10
  store i64 %279, i64* %PC.i336
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_43153b, %struct.Memory** %MEMORY
  %loadMem_431545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 33
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %284 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %283, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %284 to %"class.std::bitset"*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %286 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %285, i64 0, i64 1
  %XMM1.i335 = bitcast %union.VectorReg* %286 to %union.vec128_t*
  %287 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %288 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %289 = bitcast %union.vec128_t* %XMM1.i335 to i8*
  %290 = load i64, i64* %PC.i334
  %291 = add i64 %290, 3
  store i64 %291, i64* %PC.i334
  %292 = bitcast i8* %288 to i64*
  %293 = load i64, i64* %292, align 1
  %294 = getelementptr inbounds i8, i8* %288, i64 8
  %295 = bitcast i8* %294 to i64*
  %296 = load i64, i64* %295, align 1
  %297 = bitcast i8* %289 to i64*
  %298 = load i64, i64* %297, align 1
  %299 = getelementptr inbounds i8, i8* %289, i64 8
  %300 = bitcast i8* %299 to i64*
  %301 = load i64, i64* %300, align 1
  %302 = xor i64 %298, %293
  %303 = xor i64 %301, %296
  %304 = trunc i64 %302 to i32
  %305 = lshr i64 %302, 32
  %306 = trunc i64 %305 to i32
  %307 = bitcast i8* %287 to i32*
  store i32 %304, i32* %307, align 1
  %308 = getelementptr inbounds i8, i8* %287, i64 4
  %309 = bitcast i8* %308 to i32*
  store i32 %306, i32* %309, align 1
  %310 = trunc i64 %303 to i32
  %311 = getelementptr inbounds i8, i8* %287, i64 8
  %312 = bitcast i8* %311 to i32*
  store i32 %310, i32* %312, align 1
  %313 = lshr i64 %303, 32
  %314 = trunc i64 %313 to i32
  %315 = getelementptr inbounds i8, i8* %287, i64 12
  %316 = bitcast i8* %315 to i32*
  store i32 %314, i32* %316, align 1
  store %struct.Memory* %loadMem_431545, %struct.Memory** %MEMORY
  %loadMem_431548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 5
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %322 to i64*
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 15
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %325 to i64*
  %326 = load i64, i64* %RBP.i333
  %327 = sub i64 %326, 4
  %328 = load i64, i64* %PC.i331
  %329 = add i64 %328, 4
  store i64 %329, i64* %PC.i331
  %330 = inttoptr i64 %327 to i32*
  %331 = load i32, i32* %330
  %332 = sext i32 %331 to i64
  store i64 %332, i64* %RCX.i332, align 8
  store %struct.Memory* %loadMem_431548, %struct.Memory** %MEMORY
  %loadMem_43154c = load %struct.Memory*, %struct.Memory** %MEMORY
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 33
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %335 to i64*
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 5
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %338 to i64*
  %339 = load i64, i64* %RCX.i330
  %340 = load i64, i64* %PC.i329
  %341 = add i64 %340, 7
  store i64 %341, i64* %PC.i329
  %342 = sext i64 %339 to i128
  %343 = and i128 %342, -18446744073709551616
  %344 = zext i64 %339 to i128
  %345 = or i128 %343, %344
  %346 = mul i128 564, %345
  %347 = trunc i128 %346 to i64
  store i64 %347, i64* %RCX.i330, align 8
  %348 = sext i64 %347 to i128
  %349 = icmp ne i128 %348, %346
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %350, i8* %351, align 1
  %352 = trunc i128 %346 to i32
  %353 = and i32 %352, 255
  %354 = call i32 @llvm.ctpop.i32(i32 %353)
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %357, i8* %358, align 1
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %359, align 1
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %360, align 1
  %361 = lshr i64 %347, 63
  %362 = trunc i64 %361 to i8
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %362, i8* %363, align 1
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %350, i8* %364, align 1
  store %struct.Memory* %loadMem_43154c, %struct.Memory** %MEMORY
  %loadMem_431553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 33
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %367 to i64*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %RAX.i327 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 7
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %RDX.i328 = bitcast %union.anon* %373 to i64*
  %374 = load i64, i64* %RAX.i327
  %375 = load i64, i64* %PC.i326
  %376 = add i64 %375, 3
  store i64 %376, i64* %PC.i326
  store i64 %374, i64* %RDX.i328, align 8
  store %struct.Memory* %loadMem_431553, %struct.Memory** %MEMORY
  %loadMem_431556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 33
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 5
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %382 to i64*
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 7
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %RDX.i325 = bitcast %union.anon* %385 to i64*
  %386 = load i64, i64* %RDX.i325
  %387 = load i64, i64* %RCX.i324
  %388 = load i64, i64* %PC.i323
  %389 = add i64 %388, 3
  store i64 %389, i64* %PC.i323
  %390 = add i64 %387, %386
  store i64 %390, i64* %RDX.i325, align 8
  %391 = icmp ult i64 %390, %386
  %392 = icmp ult i64 %390, %387
  %393 = or i1 %391, %392
  %394 = zext i1 %393 to i8
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %394, i8* %395, align 1
  %396 = trunc i64 %390 to i32
  %397 = and i32 %396, 255
  %398 = call i32 @llvm.ctpop.i32(i32 %397)
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %401, i8* %402, align 1
  %403 = xor i64 %387, %386
  %404 = xor i64 %403, %390
  %405 = lshr i64 %404, 4
  %406 = trunc i64 %405 to i8
  %407 = and i8 %406, 1
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %407, i8* %408, align 1
  %409 = icmp eq i64 %390, 0
  %410 = zext i1 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %410, i8* %411, align 1
  %412 = lshr i64 %390, 63
  %413 = trunc i64 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %413, i8* %414, align 1
  %415 = lshr i64 %386, 63
  %416 = lshr i64 %387, 63
  %417 = xor i64 %412, %415
  %418 = xor i64 %412, %416
  %419 = add i64 %417, %418
  %420 = icmp eq i64 %419, 2
  %421 = zext i1 %420 to i8
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %421, i8* %422, align 1
  store %struct.Memory* %loadMem_431556, %struct.Memory** %MEMORY
  %loadMem_431559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 33
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 7
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %428 to i64*
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %430 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %429, i64 0, i64 1
  %XMM1.i322 = bitcast %union.VectorReg* %430 to %union.vec128_t*
  %431 = load i64, i64* %RDX.i321
  %432 = bitcast %union.vec128_t* %XMM1.i322 to i8*
  %433 = load i64, i64* %PC.i320
  %434 = add i64 %433, 4
  store i64 %434, i64* %PC.i320
  %435 = bitcast i8* %432 to <2 x float>*
  %436 = load <2 x float>, <2 x float>* %435, align 1
  %437 = extractelement <2 x float> %436, i32 0
  %438 = inttoptr i64 %431 to float*
  store float %437, float* %438
  store %struct.Memory* %loadMem_431559, %struct.Memory** %MEMORY
  %loadMem_43155d = load %struct.Memory*, %struct.Memory** %MEMORY
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 33
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %441 to i64*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 5
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %444 to i64*
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 15
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %447 to i64*
  %448 = load i64, i64* %RBP.i319
  %449 = sub i64 %448, 4
  %450 = load i64, i64* %PC.i317
  %451 = add i64 %450, 4
  store i64 %451, i64* %PC.i317
  %452 = inttoptr i64 %449 to i32*
  %453 = load i32, i32* %452
  %454 = sext i32 %453 to i64
  store i64 %454, i64* %RCX.i318, align 8
  store %struct.Memory* %loadMem_43155d, %struct.Memory** %MEMORY
  %loadMem_431561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 33
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %457 to i64*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 5
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %RCX.i316 = bitcast %union.anon* %460 to i64*
  %461 = load i64, i64* %RCX.i316
  %462 = load i64, i64* %PC.i315
  %463 = add i64 %462, 7
  store i64 %463, i64* %PC.i315
  %464 = sext i64 %461 to i128
  %465 = and i128 %464, -18446744073709551616
  %466 = zext i64 %461 to i128
  %467 = or i128 %465, %466
  %468 = mul i128 564, %467
  %469 = trunc i128 %468 to i64
  store i64 %469, i64* %RCX.i316, align 8
  %470 = sext i64 %469 to i128
  %471 = icmp ne i128 %470, %468
  %472 = zext i1 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %472, i8* %473, align 1
  %474 = trunc i128 %468 to i32
  %475 = and i32 %474, 255
  %476 = call i32 @llvm.ctpop.i32(i32 %475)
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  %479 = xor i8 %478, 1
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %479, i8* %480, align 1
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %481, align 1
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %482, align 1
  %483 = lshr i64 %469, 63
  %484 = trunc i64 %483 to i8
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %484, i8* %485, align 1
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %472, i8* %486, align 1
  store %struct.Memory* %loadMem_431561, %struct.Memory** %MEMORY
  %loadMem_431568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 33
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %489 to i64*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 1
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 7
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RDX.i314 = bitcast %union.anon* %495 to i64*
  %496 = load i64, i64* %RAX.i313
  %497 = load i64, i64* %PC.i312
  %498 = add i64 %497, 3
  store i64 %498, i64* %PC.i312
  store i64 %496, i64* %RDX.i314, align 8
  store %struct.Memory* %loadMem_431568, %struct.Memory** %MEMORY
  %loadMem_43156b = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 5
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 7
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RDX.i311 = bitcast %union.anon* %507 to i64*
  %508 = load i64, i64* %RDX.i311
  %509 = load i64, i64* %RCX.i310
  %510 = load i64, i64* %PC.i309
  %511 = add i64 %510, 3
  store i64 %511, i64* %PC.i309
  %512 = add i64 %509, %508
  store i64 %512, i64* %RDX.i311, align 8
  %513 = icmp ult i64 %512, %508
  %514 = icmp ult i64 %512, %509
  %515 = or i1 %513, %514
  %516 = zext i1 %515 to i8
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %516, i8* %517, align 1
  %518 = trunc i64 %512 to i32
  %519 = and i32 %518, 255
  %520 = call i32 @llvm.ctpop.i32(i32 %519)
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %523, i8* %524, align 1
  %525 = xor i64 %509, %508
  %526 = xor i64 %525, %512
  %527 = lshr i64 %526, 4
  %528 = trunc i64 %527 to i8
  %529 = and i8 %528, 1
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %529, i8* %530, align 1
  %531 = icmp eq i64 %512, 0
  %532 = zext i1 %531 to i8
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %532, i8* %533, align 1
  %534 = lshr i64 %512, 63
  %535 = trunc i64 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %535, i8* %536, align 1
  %537 = lshr i64 %508, 63
  %538 = lshr i64 %509, 63
  %539 = xor i64 %534, %537
  %540 = xor i64 %534, %538
  %541 = add i64 %539, %540
  %542 = icmp eq i64 %541, 2
  %543 = zext i1 %542 to i8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %543, i8* %544, align 1
  store %struct.Memory* %loadMem_43156b, %struct.Memory** %MEMORY
  %loadMem_43156e = load %struct.Memory*, %struct.Memory** %MEMORY
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 33
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 7
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RDX.i307 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %552 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %551, i64 0, i64 1
  %XMM1.i308 = bitcast %union.VectorReg* %552 to %union.vec128_t*
  %553 = load i64, i64* %RDX.i307
  %554 = add i64 %553, 4
  %555 = bitcast %union.vec128_t* %XMM1.i308 to i8*
  %556 = load i64, i64* %PC.i306
  %557 = add i64 %556, 5
  store i64 %557, i64* %PC.i306
  %558 = bitcast i8* %555 to <2 x float>*
  %559 = load <2 x float>, <2 x float>* %558, align 1
  %560 = extractelement <2 x float> %559, i32 0
  %561 = inttoptr i64 %554 to float*
  store float %560, float* %561
  store %struct.Memory* %loadMem_43156e, %struct.Memory** %MEMORY
  %loadMem_431573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 33
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %564 to i64*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 5
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 15
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %570 to i64*
  %571 = load i64, i64* %RBP.i305
  %572 = sub i64 %571, 4
  %573 = load i64, i64* %PC.i303
  %574 = add i64 %573, 4
  store i64 %574, i64* %PC.i303
  %575 = inttoptr i64 %572 to i32*
  %576 = load i32, i32* %575
  %577 = sext i32 %576 to i64
  store i64 %577, i64* %RCX.i304, align 8
  store %struct.Memory* %loadMem_431573, %struct.Memory** %MEMORY
  %loadMem_431577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 5
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %583 to i64*
  %584 = load i64, i64* %RCX.i302
  %585 = load i64, i64* %PC.i301
  %586 = add i64 %585, 7
  store i64 %586, i64* %PC.i301
  %587 = sext i64 %584 to i128
  %588 = and i128 %587, -18446744073709551616
  %589 = zext i64 %584 to i128
  %590 = or i128 %588, %589
  %591 = mul i128 564, %590
  %592 = trunc i128 %591 to i64
  store i64 %592, i64* %RCX.i302, align 8
  %593 = sext i64 %592 to i128
  %594 = icmp ne i128 %593, %591
  %595 = zext i1 %594 to i8
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %595, i8* %596, align 1
  %597 = trunc i128 %591 to i32
  %598 = and i32 %597, 255
  %599 = call i32 @llvm.ctpop.i32(i32 %598)
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %602, i8* %603, align 1
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %604, align 1
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %605, align 1
  %606 = lshr i64 %592, 63
  %607 = trunc i64 %606 to i8
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %607, i8* %608, align 1
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %595, i8* %609, align 1
  store %struct.Memory* %loadMem_431577, %struct.Memory** %MEMORY
  %loadMem_43157e = load %struct.Memory*, %struct.Memory** %MEMORY
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 33
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %612 to i64*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 1
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %615 to i64*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 7
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %RDX.i300 = bitcast %union.anon* %618 to i64*
  %619 = load i64, i64* %RAX.i299
  %620 = load i64, i64* %PC.i298
  %621 = add i64 %620, 3
  store i64 %621, i64* %PC.i298
  store i64 %619, i64* %RDX.i300, align 8
  store %struct.Memory* %loadMem_43157e, %struct.Memory** %MEMORY
  %loadMem_431581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 33
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 5
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 7
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RDX.i297 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %RDX.i297
  %632 = load i64, i64* %RCX.i296
  %633 = load i64, i64* %PC.i295
  %634 = add i64 %633, 3
  store i64 %634, i64* %PC.i295
  %635 = add i64 %632, %631
  store i64 %635, i64* %RDX.i297, align 8
  %636 = icmp ult i64 %635, %631
  %637 = icmp ult i64 %635, %632
  %638 = or i1 %636, %637
  %639 = zext i1 %638 to i8
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %639, i8* %640, align 1
  %641 = trunc i64 %635 to i32
  %642 = and i32 %641, 255
  %643 = call i32 @llvm.ctpop.i32(i32 %642)
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  %646 = xor i8 %645, 1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %646, i8* %647, align 1
  %648 = xor i64 %632, %631
  %649 = xor i64 %648, %635
  %650 = lshr i64 %649, 4
  %651 = trunc i64 %650 to i8
  %652 = and i8 %651, 1
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %652, i8* %653, align 1
  %654 = icmp eq i64 %635, 0
  %655 = zext i1 %654 to i8
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %655, i8* %656, align 1
  %657 = lshr i64 %635, 63
  %658 = trunc i64 %657 to i8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %658, i8* %659, align 1
  %660 = lshr i64 %631, 63
  %661 = lshr i64 %632, 63
  %662 = xor i64 %657, %660
  %663 = xor i64 %657, %661
  %664 = add i64 %662, %663
  %665 = icmp eq i64 %664, 2
  %666 = zext i1 %665 to i8
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %666, i8* %667, align 1
  store %struct.Memory* %loadMem_431581, %struct.Memory** %MEMORY
  %loadMem_431584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 7
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RDX.i293 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %675 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %674, i64 0, i64 1
  %XMM1.i294 = bitcast %union.VectorReg* %675 to %union.vec128_t*
  %676 = load i64, i64* %RDX.i293
  %677 = add i64 %676, 8
  %678 = bitcast %union.vec128_t* %XMM1.i294 to i8*
  %679 = load i64, i64* %PC.i292
  %680 = add i64 %679, 5
  store i64 %680, i64* %PC.i292
  %681 = bitcast i8* %678 to <2 x float>*
  %682 = load <2 x float>, <2 x float>* %681, align 1
  %683 = extractelement <2 x float> %682, i32 0
  %684 = inttoptr i64 %677 to float*
  store float %683, float* %684
  store %struct.Memory* %loadMem_431584, %struct.Memory** %MEMORY
  %loadMem_431589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 5
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 15
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %693 to i64*
  %694 = load i64, i64* %RBP.i291
  %695 = sub i64 %694, 4
  %696 = load i64, i64* %PC.i289
  %697 = add i64 %696, 4
  store i64 %697, i64* %PC.i289
  %698 = inttoptr i64 %695 to i32*
  %699 = load i32, i32* %698
  %700 = sext i32 %699 to i64
  store i64 %700, i64* %RCX.i290, align 8
  store %struct.Memory* %loadMem_431589, %struct.Memory** %MEMORY
  %loadMem_43158d = load %struct.Memory*, %struct.Memory** %MEMORY
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 33
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 5
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %706 to i64*
  %707 = load i64, i64* %RCX.i288
  %708 = load i64, i64* %PC.i287
  %709 = add i64 %708, 7
  store i64 %709, i64* %PC.i287
  %710 = sext i64 %707 to i128
  %711 = and i128 %710, -18446744073709551616
  %712 = zext i64 %707 to i128
  %713 = or i128 %711, %712
  %714 = mul i128 564, %713
  %715 = trunc i128 %714 to i64
  store i64 %715, i64* %RCX.i288, align 8
  %716 = sext i64 %715 to i128
  %717 = icmp ne i128 %716, %714
  %718 = zext i1 %717 to i8
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %718, i8* %719, align 1
  %720 = trunc i128 %714 to i32
  %721 = and i32 %720, 255
  %722 = call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %725, i8* %726, align 1
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %727, align 1
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %728, align 1
  %729 = lshr i64 %715, 63
  %730 = trunc i64 %729 to i8
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %730, i8* %731, align 1
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %718, i8* %732, align 1
  store %struct.Memory* %loadMem_43158d, %struct.Memory** %MEMORY
  %loadMem_431594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 1
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 7
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RDX.i286 = bitcast %union.anon* %741 to i64*
  %742 = load i64, i64* %RAX.i285
  %743 = load i64, i64* %PC.i284
  %744 = add i64 %743, 3
  store i64 %744, i64* %PC.i284
  store i64 %742, i64* %RDX.i286, align 8
  store %struct.Memory* %loadMem_431594, %struct.Memory** %MEMORY
  %loadMem_431597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 33
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %747 to i64*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 5
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %750 to i64*
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 7
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %RDX.i283 = bitcast %union.anon* %753 to i64*
  %754 = load i64, i64* %RDX.i283
  %755 = load i64, i64* %RCX.i282
  %756 = load i64, i64* %PC.i281
  %757 = add i64 %756, 3
  store i64 %757, i64* %PC.i281
  %758 = add i64 %755, %754
  store i64 %758, i64* %RDX.i283, align 8
  %759 = icmp ult i64 %758, %754
  %760 = icmp ult i64 %758, %755
  %761 = or i1 %759, %760
  %762 = zext i1 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %762, i8* %763, align 1
  %764 = trunc i64 %758 to i32
  %765 = and i32 %764, 255
  %766 = call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %769, i8* %770, align 1
  %771 = xor i64 %755, %754
  %772 = xor i64 %771, %758
  %773 = lshr i64 %772, 4
  %774 = trunc i64 %773 to i8
  %775 = and i8 %774, 1
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %775, i8* %776, align 1
  %777 = icmp eq i64 %758, 0
  %778 = zext i1 %777 to i8
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %778, i8* %779, align 1
  %780 = lshr i64 %758, 63
  %781 = trunc i64 %780 to i8
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %781, i8* %782, align 1
  %783 = lshr i64 %754, 63
  %784 = lshr i64 %755, 63
  %785 = xor i64 %780, %783
  %786 = xor i64 %780, %784
  %787 = add i64 %785, %786
  %788 = icmp eq i64 %787, 2
  %789 = zext i1 %788 to i8
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %789, i8* %790, align 1
  store %struct.Memory* %loadMem_431597, %struct.Memory** %MEMORY
  %loadMem_43159a = load %struct.Memory*, %struct.Memory** %MEMORY
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 33
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %793 to i64*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 7
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RDX.i279 = bitcast %union.anon* %796 to i64*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %798 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %797, i64 0, i64 1
  %XMM1.i280 = bitcast %union.VectorReg* %798 to %union.vec128_t*
  %799 = load i64, i64* %RDX.i279
  %800 = add i64 %799, 12
  %801 = bitcast %union.vec128_t* %XMM1.i280 to i8*
  %802 = load i64, i64* %PC.i278
  %803 = add i64 %802, 5
  store i64 %803, i64* %PC.i278
  %804 = bitcast i8* %801 to <2 x float>*
  %805 = load <2 x float>, <2 x float>* %804, align 1
  %806 = extractelement <2 x float> %805, i32 0
  %807 = inttoptr i64 %800 to float*
  store float %806, float* %807
  store %struct.Memory* %loadMem_43159a, %struct.Memory** %MEMORY
  %loadMem_43159f = load %struct.Memory*, %struct.Memory** %MEMORY
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 33
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 5
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 15
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %816 to i64*
  %817 = load i64, i64* %RBP.i277
  %818 = sub i64 %817, 4
  %819 = load i64, i64* %PC.i275
  %820 = add i64 %819, 4
  store i64 %820, i64* %PC.i275
  %821 = inttoptr i64 %818 to i32*
  %822 = load i32, i32* %821
  %823 = sext i32 %822 to i64
  store i64 %823, i64* %RCX.i276, align 8
  store %struct.Memory* %loadMem_43159f, %struct.Memory** %MEMORY
  %loadMem_4315a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 33
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 5
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %829 to i64*
  %830 = load i64, i64* %RCX.i274
  %831 = load i64, i64* %PC.i273
  %832 = add i64 %831, 7
  store i64 %832, i64* %PC.i273
  %833 = sext i64 %830 to i128
  %834 = and i128 %833, -18446744073709551616
  %835 = zext i64 %830 to i128
  %836 = or i128 %834, %835
  %837 = mul i128 564, %836
  %838 = trunc i128 %837 to i64
  store i64 %838, i64* %RCX.i274, align 8
  %839 = sext i64 %838 to i128
  %840 = icmp ne i128 %839, %837
  %841 = zext i1 %840 to i8
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %841, i8* %842, align 1
  %843 = trunc i128 %837 to i32
  %844 = and i32 %843, 255
  %845 = call i32 @llvm.ctpop.i32(i32 %844)
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %848, i8* %849, align 1
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %850, align 1
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %851, align 1
  %852 = lshr i64 %838, 63
  %853 = trunc i64 %852 to i8
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %853, i8* %854, align 1
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %841, i8* %855, align 1
  store %struct.Memory* %loadMem_4315a3, %struct.Memory** %MEMORY
  %loadMem_4315aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 1
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %861 to i64*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 7
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RDX.i272 = bitcast %union.anon* %864 to i64*
  %865 = load i64, i64* %RAX.i271
  %866 = load i64, i64* %PC.i270
  %867 = add i64 %866, 3
  store i64 %867, i64* %PC.i270
  store i64 %865, i64* %RDX.i272, align 8
  store %struct.Memory* %loadMem_4315aa, %struct.Memory** %MEMORY
  %loadMem_4315ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 33
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %870 to i64*
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 5
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %RCX.i268 = bitcast %union.anon* %873 to i64*
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 7
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %RDX.i269 = bitcast %union.anon* %876 to i64*
  %877 = load i64, i64* %RDX.i269
  %878 = load i64, i64* %RCX.i268
  %879 = load i64, i64* %PC.i267
  %880 = add i64 %879, 3
  store i64 %880, i64* %PC.i267
  %881 = add i64 %878, %877
  store i64 %881, i64* %RDX.i269, align 8
  %882 = icmp ult i64 %881, %877
  %883 = icmp ult i64 %881, %878
  %884 = or i1 %882, %883
  %885 = zext i1 %884 to i8
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %885, i8* %886, align 1
  %887 = trunc i64 %881 to i32
  %888 = and i32 %887, 255
  %889 = call i32 @llvm.ctpop.i32(i32 %888)
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  %892 = xor i8 %891, 1
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %892, i8* %893, align 1
  %894 = xor i64 %878, %877
  %895 = xor i64 %894, %881
  %896 = lshr i64 %895, 4
  %897 = trunc i64 %896 to i8
  %898 = and i8 %897, 1
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %898, i8* %899, align 1
  %900 = icmp eq i64 %881, 0
  %901 = zext i1 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %901, i8* %902, align 1
  %903 = lshr i64 %881, 63
  %904 = trunc i64 %903 to i8
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %904, i8* %905, align 1
  %906 = lshr i64 %877, 63
  %907 = lshr i64 %878, 63
  %908 = xor i64 %903, %906
  %909 = xor i64 %903, %907
  %910 = add i64 %908, %909
  %911 = icmp eq i64 %910, 2
  %912 = zext i1 %911 to i8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %912, i8* %913, align 1
  store %struct.Memory* %loadMem_4315ad, %struct.Memory** %MEMORY
  %loadMem_4315b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 7
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %RDX.i265 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %921 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %920, i64 0, i64 1
  %XMM1.i266 = bitcast %union.VectorReg* %921 to %union.vec128_t*
  %922 = load i64, i64* %RDX.i265
  %923 = add i64 %922, 16
  %924 = bitcast %union.vec128_t* %XMM1.i266 to i8*
  %925 = load i64, i64* %PC.i264
  %926 = add i64 %925, 5
  store i64 %926, i64* %PC.i264
  %927 = bitcast i8* %924 to <2 x float>*
  %928 = load <2 x float>, <2 x float>* %927, align 1
  %929 = extractelement <2 x float> %928, i32 0
  %930 = inttoptr i64 %923 to float*
  store float %929, float* %930
  store %struct.Memory* %loadMem_4315b0, %struct.Memory** %MEMORY
  %loadMem_4315b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 5
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RBP.i263
  %941 = sub i64 %940, 4
  %942 = load i64, i64* %PC.i261
  %943 = add i64 %942, 4
  store i64 %943, i64* %PC.i261
  %944 = inttoptr i64 %941 to i32*
  %945 = load i32, i32* %944
  %946 = sext i32 %945 to i64
  store i64 %946, i64* %RCX.i262, align 8
  store %struct.Memory* %loadMem_4315b5, %struct.Memory** %MEMORY
  %loadMem_4315b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 5
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %952 to i64*
  %953 = load i64, i64* %RCX.i260
  %954 = load i64, i64* %PC.i259
  %955 = add i64 %954, 7
  store i64 %955, i64* %PC.i259
  %956 = sext i64 %953 to i128
  %957 = and i128 %956, -18446744073709551616
  %958 = zext i64 %953 to i128
  %959 = or i128 %957, %958
  %960 = mul i128 564, %959
  %961 = trunc i128 %960 to i64
  store i64 %961, i64* %RCX.i260, align 8
  %962 = sext i64 %961 to i128
  %963 = icmp ne i128 %962, %960
  %964 = zext i1 %963 to i8
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %964, i8* %965, align 1
  %966 = trunc i128 %960 to i32
  %967 = and i32 %966, 255
  %968 = call i32 @llvm.ctpop.i32(i32 %967)
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  %971 = xor i8 %970, 1
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %971, i8* %972, align 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %973, align 1
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %974, align 1
  %975 = lshr i64 %961, 63
  %976 = trunc i64 %975 to i8
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %976, i8* %977, align 1
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %964, i8* %978, align 1
  store %struct.Memory* %loadMem_4315b9, %struct.Memory** %MEMORY
  %loadMem_4315c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 33
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 1
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %984 to i64*
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 7
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %987 to i64*
  %988 = load i64, i64* %RAX.i257
  %989 = load i64, i64* %PC.i256
  %990 = add i64 %989, 3
  store i64 %990, i64* %PC.i256
  store i64 %988, i64* %RDX.i258, align 8
  store %struct.Memory* %loadMem_4315c0, %struct.Memory** %MEMORY
  %loadMem_4315c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 5
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 7
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %RDX.i255 = bitcast %union.anon* %999 to i64*
  %1000 = load i64, i64* %RDX.i255
  %1001 = load i64, i64* %RCX.i254
  %1002 = load i64, i64* %PC.i253
  %1003 = add i64 %1002, 3
  store i64 %1003, i64* %PC.i253
  %1004 = add i64 %1001, %1000
  store i64 %1004, i64* %RDX.i255, align 8
  %1005 = icmp ult i64 %1004, %1000
  %1006 = icmp ult i64 %1004, %1001
  %1007 = or i1 %1005, %1006
  %1008 = zext i1 %1007 to i8
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1008, i8* %1009, align 1
  %1010 = trunc i64 %1004 to i32
  %1011 = and i32 %1010, 255
  %1012 = call i32 @llvm.ctpop.i32(i32 %1011)
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1015, i8* %1016, align 1
  %1017 = xor i64 %1001, %1000
  %1018 = xor i64 %1017, %1004
  %1019 = lshr i64 %1018, 4
  %1020 = trunc i64 %1019 to i8
  %1021 = and i8 %1020, 1
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1021, i8* %1022, align 1
  %1023 = icmp eq i64 %1004, 0
  %1024 = zext i1 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1024, i8* %1025, align 1
  %1026 = lshr i64 %1004, 63
  %1027 = trunc i64 %1026 to i8
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1027, i8* %1028, align 1
  %1029 = lshr i64 %1000, 63
  %1030 = lshr i64 %1001, 63
  %1031 = xor i64 %1026, %1029
  %1032 = xor i64 %1026, %1030
  %1033 = add i64 %1031, %1032
  %1034 = icmp eq i64 %1033, 2
  %1035 = zext i1 %1034 to i8
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1035, i8* %1036, align 1
  store %struct.Memory* %loadMem_4315c3, %struct.Memory** %MEMORY
  %loadMem_4315c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 33
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 7
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %RDX.i251 = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1044 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1043, i64 0, i64 1
  %XMM1.i252 = bitcast %union.VectorReg* %1044 to %union.vec128_t*
  %1045 = load i64, i64* %RDX.i251
  %1046 = add i64 %1045, 20
  %1047 = bitcast %union.vec128_t* %XMM1.i252 to i8*
  %1048 = load i64, i64* %PC.i250
  %1049 = add i64 %1048, 5
  store i64 %1049, i64* %PC.i250
  %1050 = bitcast i8* %1047 to <2 x float>*
  %1051 = load <2 x float>, <2 x float>* %1050, align 1
  %1052 = extractelement <2 x float> %1051, i32 0
  %1053 = inttoptr i64 %1046 to float*
  store float %1052, float* %1053
  store %struct.Memory* %loadMem_4315c6, %struct.Memory** %MEMORY
  %loadMem_4315cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 5
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 15
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RBP.i249 = bitcast %union.anon* %1062 to i64*
  %1063 = load i64, i64* %RBP.i249
  %1064 = sub i64 %1063, 4
  %1065 = load i64, i64* %PC.i247
  %1066 = add i64 %1065, 4
  store i64 %1066, i64* %PC.i247
  %1067 = inttoptr i64 %1064 to i32*
  %1068 = load i32, i32* %1067
  %1069 = sext i32 %1068 to i64
  store i64 %1069, i64* %RCX.i248, align 8
  store %struct.Memory* %loadMem_4315cb, %struct.Memory** %MEMORY
  %loadMem_4315cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 5
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %1075 to i64*
  %1076 = load i64, i64* %RCX.i246
  %1077 = load i64, i64* %PC.i245
  %1078 = add i64 %1077, 7
  store i64 %1078, i64* %PC.i245
  %1079 = sext i64 %1076 to i128
  %1080 = and i128 %1079, -18446744073709551616
  %1081 = zext i64 %1076 to i128
  %1082 = or i128 %1080, %1081
  %1083 = mul i128 564, %1082
  %1084 = trunc i128 %1083 to i64
  store i64 %1084, i64* %RCX.i246, align 8
  %1085 = sext i64 %1084 to i128
  %1086 = icmp ne i128 %1085, %1083
  %1087 = zext i1 %1086 to i8
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1087, i8* %1088, align 1
  %1089 = trunc i128 %1083 to i32
  %1090 = and i32 %1089, 255
  %1091 = call i32 @llvm.ctpop.i32(i32 %1090)
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = xor i8 %1093, 1
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1094, i8* %1095, align 1
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1096, align 1
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1097, align 1
  %1098 = lshr i64 %1084, 63
  %1099 = trunc i64 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1099, i8* %1100, align 1
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1087, i8* %1101, align 1
  store %struct.Memory* %loadMem_4315cf, %struct.Memory** %MEMORY
  %loadMem_4315d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 33
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 1
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %1107 to i64*
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 7
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %RDX.i244 = bitcast %union.anon* %1110 to i64*
  %1111 = load i64, i64* %RAX.i243
  %1112 = load i64, i64* %PC.i242
  %1113 = add i64 %1112, 3
  store i64 %1113, i64* %PC.i242
  store i64 %1111, i64* %RDX.i244, align 8
  store %struct.Memory* %loadMem_4315d6, %struct.Memory** %MEMORY
  %loadMem_4315d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 33
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 5
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RCX.i240 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 7
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RDX.i241 = bitcast %union.anon* %1122 to i64*
  %1123 = load i64, i64* %RDX.i241
  %1124 = load i64, i64* %RCX.i240
  %1125 = load i64, i64* %PC.i239
  %1126 = add i64 %1125, 3
  store i64 %1126, i64* %PC.i239
  %1127 = add i64 %1124, %1123
  store i64 %1127, i64* %RDX.i241, align 8
  %1128 = icmp ult i64 %1127, %1123
  %1129 = icmp ult i64 %1127, %1124
  %1130 = or i1 %1128, %1129
  %1131 = zext i1 %1130 to i8
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1131, i8* %1132, align 1
  %1133 = trunc i64 %1127 to i32
  %1134 = and i32 %1133, 255
  %1135 = call i32 @llvm.ctpop.i32(i32 %1134)
  %1136 = trunc i32 %1135 to i8
  %1137 = and i8 %1136, 1
  %1138 = xor i8 %1137, 1
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1138, i8* %1139, align 1
  %1140 = xor i64 %1124, %1123
  %1141 = xor i64 %1140, %1127
  %1142 = lshr i64 %1141, 4
  %1143 = trunc i64 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1144, i8* %1145, align 1
  %1146 = icmp eq i64 %1127, 0
  %1147 = zext i1 %1146 to i8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1147, i8* %1148, align 1
  %1149 = lshr i64 %1127, 63
  %1150 = trunc i64 %1149 to i8
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1150, i8* %1151, align 1
  %1152 = lshr i64 %1123, 63
  %1153 = lshr i64 %1124, 63
  %1154 = xor i64 %1149, %1152
  %1155 = xor i64 %1149, %1153
  %1156 = add i64 %1154, %1155
  %1157 = icmp eq i64 %1156, 2
  %1158 = zext i1 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1158, i8* %1159, align 1
  store %struct.Memory* %loadMem_4315d9, %struct.Memory** %MEMORY
  %loadMem_4315dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 33
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 7
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RDX.i238 = bitcast %union.anon* %1165 to i64*
  %1166 = load i64, i64* %RDX.i238
  %1167 = add i64 %1166, 28
  %1168 = load i64, i64* %PC.i237
  %1169 = add i64 %1168, 7
  store i64 %1169, i64* %PC.i237
  %1170 = inttoptr i64 %1167 to i32*
  store i32 0, i32* %1170
  store %struct.Memory* %loadMem_4315dc, %struct.Memory** %MEMORY
  %loadMem_4315e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 33
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %1173 to i64*
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 5
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %1176 to i64*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 15
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %1179 to i64*
  %1180 = load i64, i64* %RBP.i236
  %1181 = sub i64 %1180, 4
  %1182 = load i64, i64* %PC.i234
  %1183 = add i64 %1182, 4
  store i64 %1183, i64* %PC.i234
  %1184 = inttoptr i64 %1181 to i32*
  %1185 = load i32, i32* %1184
  %1186 = sext i32 %1185 to i64
  store i64 %1186, i64* %RCX.i235, align 8
  store %struct.Memory* %loadMem_4315e3, %struct.Memory** %MEMORY
  %loadMem_4315e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 33
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1189 to i64*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 5
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %1192 to i64*
  %1193 = load i64, i64* %RCX.i233
  %1194 = load i64, i64* %PC.i232
  %1195 = add i64 %1194, 7
  store i64 %1195, i64* %PC.i232
  %1196 = sext i64 %1193 to i128
  %1197 = and i128 %1196, -18446744073709551616
  %1198 = zext i64 %1193 to i128
  %1199 = or i128 %1197, %1198
  %1200 = mul i128 564, %1199
  %1201 = trunc i128 %1200 to i64
  store i64 %1201, i64* %RCX.i233, align 8
  %1202 = sext i64 %1201 to i128
  %1203 = icmp ne i128 %1202, %1200
  %1204 = zext i1 %1203 to i8
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1204, i8* %1205, align 1
  %1206 = trunc i128 %1200 to i32
  %1207 = and i32 %1206, 255
  %1208 = call i32 @llvm.ctpop.i32(i32 %1207)
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1211, i8* %1212, align 1
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1213, align 1
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1214, align 1
  %1215 = lshr i64 %1201, 63
  %1216 = trunc i64 %1215 to i8
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1216, i8* %1217, align 1
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1204, i8* %1218, align 1
  store %struct.Memory* %loadMem_4315e7, %struct.Memory** %MEMORY
  %loadMem_4315ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 33
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1221 to i64*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 1
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %RAX.i230 = bitcast %union.anon* %1224 to i64*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 7
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %RDX.i231 = bitcast %union.anon* %1227 to i64*
  %1228 = load i64, i64* %RAX.i230
  %1229 = load i64, i64* %PC.i229
  %1230 = add i64 %1229, 3
  store i64 %1230, i64* %PC.i229
  store i64 %1228, i64* %RDX.i231, align 8
  store %struct.Memory* %loadMem_4315ee, %struct.Memory** %MEMORY
  %loadMem_4315f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 33
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 5
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %RCX.i227 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 7
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RDX.i228 = bitcast %union.anon* %1239 to i64*
  %1240 = load i64, i64* %RDX.i228
  %1241 = load i64, i64* %RCX.i227
  %1242 = load i64, i64* %PC.i226
  %1243 = add i64 %1242, 3
  store i64 %1243, i64* %PC.i226
  %1244 = add i64 %1241, %1240
  store i64 %1244, i64* %RDX.i228, align 8
  %1245 = icmp ult i64 %1244, %1240
  %1246 = icmp ult i64 %1244, %1241
  %1247 = or i1 %1245, %1246
  %1248 = zext i1 %1247 to i8
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1248, i8* %1249, align 1
  %1250 = trunc i64 %1244 to i32
  %1251 = and i32 %1250, 255
  %1252 = call i32 @llvm.ctpop.i32(i32 %1251)
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  %1255 = xor i8 %1254, 1
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1255, i8* %1256, align 1
  %1257 = xor i64 %1241, %1240
  %1258 = xor i64 %1257, %1244
  %1259 = lshr i64 %1258, 4
  %1260 = trunc i64 %1259 to i8
  %1261 = and i8 %1260, 1
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1261, i8* %1262, align 1
  %1263 = icmp eq i64 %1244, 0
  %1264 = zext i1 %1263 to i8
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1264, i8* %1265, align 1
  %1266 = lshr i64 %1244, 63
  %1267 = trunc i64 %1266 to i8
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1267, i8* %1268, align 1
  %1269 = lshr i64 %1240, 63
  %1270 = lshr i64 %1241, 63
  %1271 = xor i64 %1266, %1269
  %1272 = xor i64 %1266, %1270
  %1273 = add i64 %1271, %1272
  %1274 = icmp eq i64 %1273, 2
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1275, i8* %1276, align 1
  store %struct.Memory* %loadMem_4315f1, %struct.Memory** %MEMORY
  %loadMem_4315f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 7
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RDX.i224 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1284 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1283, i64 0, i64 1
  %XMM1.i225 = bitcast %union.VectorReg* %1284 to %union.vec128_t*
  %1285 = load i64, i64* %RDX.i224
  %1286 = add i64 %1285, 24
  %1287 = bitcast %union.vec128_t* %XMM1.i225 to i8*
  %1288 = load i64, i64* %PC.i223
  %1289 = add i64 %1288, 5
  store i64 %1289, i64* %PC.i223
  %1290 = bitcast i8* %1287 to <2 x float>*
  %1291 = load <2 x float>, <2 x float>* %1290, align 1
  %1292 = extractelement <2 x float> %1291, i32 0
  %1293 = inttoptr i64 %1286 to float*
  store float %1292, float* %1293
  store %struct.Memory* %loadMem_4315f4, %struct.Memory** %MEMORY
  %loadMem_4315f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 5
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %1299 to i64*
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 15
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %1302 to i64*
  %1303 = load i64, i64* %RBP.i222
  %1304 = sub i64 %1303, 4
  %1305 = load i64, i64* %PC.i220
  %1306 = add i64 %1305, 4
  store i64 %1306, i64* %PC.i220
  %1307 = inttoptr i64 %1304 to i32*
  %1308 = load i32, i32* %1307
  %1309 = sext i32 %1308 to i64
  store i64 %1309, i64* %RCX.i221, align 8
  store %struct.Memory* %loadMem_4315f9, %struct.Memory** %MEMORY
  %loadMem_4315fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 33
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1312 to i64*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 5
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %1315 to i64*
  %1316 = load i64, i64* %RCX.i219
  %1317 = load i64, i64* %PC.i218
  %1318 = add i64 %1317, 7
  store i64 %1318, i64* %PC.i218
  %1319 = sext i64 %1316 to i128
  %1320 = and i128 %1319, -18446744073709551616
  %1321 = zext i64 %1316 to i128
  %1322 = or i128 %1320, %1321
  %1323 = mul i128 564, %1322
  %1324 = trunc i128 %1323 to i64
  store i64 %1324, i64* %RCX.i219, align 8
  %1325 = sext i64 %1324 to i128
  %1326 = icmp ne i128 %1325, %1323
  %1327 = zext i1 %1326 to i8
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1327, i8* %1328, align 1
  %1329 = trunc i128 %1323 to i32
  %1330 = and i32 %1329, 255
  %1331 = call i32 @llvm.ctpop.i32(i32 %1330)
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  %1334 = xor i8 %1333, 1
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1334, i8* %1335, align 1
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1336, align 1
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1337, align 1
  %1338 = lshr i64 %1324, 63
  %1339 = trunc i64 %1338 to i8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1339, i8* %1340, align 1
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1327, i8* %1341, align 1
  store %struct.Memory* %loadMem_4315fd, %struct.Memory** %MEMORY
  %loadMem_431604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 33
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %1344 to i64*
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 1
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 7
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RDX.i217 = bitcast %union.anon* %1350 to i64*
  %1351 = load i64, i64* %RAX.i216
  %1352 = load i64, i64* %PC.i215
  %1353 = add i64 %1352, 3
  store i64 %1353, i64* %PC.i215
  store i64 %1351, i64* %RDX.i217, align 8
  store %struct.Memory* %loadMem_431604, %struct.Memory** %MEMORY
  %loadMem_431607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 33
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1356 to i64*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 5
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 7
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RDX.i214 = bitcast %union.anon* %1362 to i64*
  %1363 = load i64, i64* %RDX.i214
  %1364 = load i64, i64* %RCX.i213
  %1365 = load i64, i64* %PC.i212
  %1366 = add i64 %1365, 3
  store i64 %1366, i64* %PC.i212
  %1367 = add i64 %1364, %1363
  store i64 %1367, i64* %RDX.i214, align 8
  %1368 = icmp ult i64 %1367, %1363
  %1369 = icmp ult i64 %1367, %1364
  %1370 = or i1 %1368, %1369
  %1371 = zext i1 %1370 to i8
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1371, i8* %1372, align 1
  %1373 = trunc i64 %1367 to i32
  %1374 = and i32 %1373, 255
  %1375 = call i32 @llvm.ctpop.i32(i32 %1374)
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  %1378 = xor i8 %1377, 1
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1378, i8* %1379, align 1
  %1380 = xor i64 %1364, %1363
  %1381 = xor i64 %1380, %1367
  %1382 = lshr i64 %1381, 4
  %1383 = trunc i64 %1382 to i8
  %1384 = and i8 %1383, 1
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1384, i8* %1385, align 1
  %1386 = icmp eq i64 %1367, 0
  %1387 = zext i1 %1386 to i8
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1387, i8* %1388, align 1
  %1389 = lshr i64 %1367, 63
  %1390 = trunc i64 %1389 to i8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1390, i8* %1391, align 1
  %1392 = lshr i64 %1363, 63
  %1393 = lshr i64 %1364, 63
  %1394 = xor i64 %1389, %1392
  %1395 = xor i64 %1389, %1393
  %1396 = add i64 %1394, %1395
  %1397 = icmp eq i64 %1396, 2
  %1398 = zext i1 %1397 to i8
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1398, i8* %1399, align 1
  store %struct.Memory* %loadMem_431607, %struct.Memory** %MEMORY
  %loadMem_43160a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 33
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1402 to i64*
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 7
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %RDX.i211 = bitcast %union.anon* %1405 to i64*
  %1406 = load i64, i64* %RDX.i211
  %1407 = add i64 %1406, 32
  %1408 = load i64, i64* %PC.i210
  %1409 = add i64 %1408, 7
  store i64 %1409, i64* %PC.i210
  %1410 = inttoptr i64 %1407 to i32*
  store i32 0, i32* %1410
  store %struct.Memory* %loadMem_43160a, %struct.Memory** %MEMORY
  %loadMem_431611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 33
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1413 to i64*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 5
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 15
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %1419 to i64*
  %1420 = load i64, i64* %RBP.i209
  %1421 = sub i64 %1420, 4
  %1422 = load i64, i64* %PC.i207
  %1423 = add i64 %1422, 4
  store i64 %1423, i64* %PC.i207
  %1424 = inttoptr i64 %1421 to i32*
  %1425 = load i32, i32* %1424
  %1426 = sext i32 %1425 to i64
  store i64 %1426, i64* %RCX.i208, align 8
  store %struct.Memory* %loadMem_431611, %struct.Memory** %MEMORY
  %loadMem_431615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 5
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %1432 to i64*
  %1433 = load i64, i64* %RCX.i206
  %1434 = load i64, i64* %PC.i205
  %1435 = add i64 %1434, 7
  store i64 %1435, i64* %PC.i205
  %1436 = sext i64 %1433 to i128
  %1437 = and i128 %1436, -18446744073709551616
  %1438 = zext i64 %1433 to i128
  %1439 = or i128 %1437, %1438
  %1440 = mul i128 564, %1439
  %1441 = trunc i128 %1440 to i64
  store i64 %1441, i64* %RCX.i206, align 8
  %1442 = sext i64 %1441 to i128
  %1443 = icmp ne i128 %1442, %1440
  %1444 = zext i1 %1443 to i8
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1444, i8* %1445, align 1
  %1446 = trunc i128 %1440 to i32
  %1447 = and i32 %1446, 255
  %1448 = call i32 @llvm.ctpop.i32(i32 %1447)
  %1449 = trunc i32 %1448 to i8
  %1450 = and i8 %1449, 1
  %1451 = xor i8 %1450, 1
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1451, i8* %1452, align 1
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1453, align 1
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1454, align 1
  %1455 = lshr i64 %1441, 63
  %1456 = trunc i64 %1455 to i8
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1456, i8* %1457, align 1
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1444, i8* %1458, align 1
  store %struct.Memory* %loadMem_431615, %struct.Memory** %MEMORY
  %loadMem_43161c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1460 = getelementptr inbounds %struct.GPR, %struct.GPR* %1459, i32 0, i32 33
  %1461 = getelementptr inbounds %struct.Reg, %struct.Reg* %1460, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1461 to i64*
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 1
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %1464 to i64*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 7
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RDX.i204 = bitcast %union.anon* %1467 to i64*
  %1468 = load i64, i64* %RAX.i203
  %1469 = load i64, i64* %PC.i202
  %1470 = add i64 %1469, 3
  store i64 %1470, i64* %PC.i202
  store i64 %1468, i64* %RDX.i204, align 8
  store %struct.Memory* %loadMem_43161c, %struct.Memory** %MEMORY
  %loadMem_43161f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 5
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 7
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %RDX.i201 = bitcast %union.anon* %1479 to i64*
  %1480 = load i64, i64* %RDX.i201
  %1481 = load i64, i64* %RCX.i200
  %1482 = load i64, i64* %PC.i199
  %1483 = add i64 %1482, 3
  store i64 %1483, i64* %PC.i199
  %1484 = add i64 %1481, %1480
  store i64 %1484, i64* %RDX.i201, align 8
  %1485 = icmp ult i64 %1484, %1480
  %1486 = icmp ult i64 %1484, %1481
  %1487 = or i1 %1485, %1486
  %1488 = zext i1 %1487 to i8
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1488, i8* %1489, align 1
  %1490 = trunc i64 %1484 to i32
  %1491 = and i32 %1490, 255
  %1492 = call i32 @llvm.ctpop.i32(i32 %1491)
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1495, i8* %1496, align 1
  %1497 = xor i64 %1481, %1480
  %1498 = xor i64 %1497, %1484
  %1499 = lshr i64 %1498, 4
  %1500 = trunc i64 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1501, i8* %1502, align 1
  %1503 = icmp eq i64 %1484, 0
  %1504 = zext i1 %1503 to i8
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1504, i8* %1505, align 1
  %1506 = lshr i64 %1484, 63
  %1507 = trunc i64 %1506 to i8
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1507, i8* %1508, align 1
  %1509 = lshr i64 %1480, 63
  %1510 = lshr i64 %1481, 63
  %1511 = xor i64 %1506, %1509
  %1512 = xor i64 %1506, %1510
  %1513 = add i64 %1511, %1512
  %1514 = icmp eq i64 %1513, 2
  %1515 = zext i1 %1514 to i8
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1515, i8* %1516, align 1
  store %struct.Memory* %loadMem_43161f, %struct.Memory** %MEMORY
  %loadMem_431622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 7
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RDX.i197 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1524 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1523, i64 0, i64 1
  %XMM1.i198 = bitcast %union.VectorReg* %1524 to %union.vec128_t*
  %1525 = load i64, i64* %RDX.i197
  %1526 = add i64 %1525, 36
  %1527 = bitcast %union.vec128_t* %XMM1.i198 to i8*
  %1528 = load i64, i64* %PC.i196
  %1529 = add i64 %1528, 5
  store i64 %1529, i64* %PC.i196
  %1530 = bitcast i8* %1527 to <2 x float>*
  %1531 = load <2 x float>, <2 x float>* %1530, align 1
  %1532 = extractelement <2 x float> %1531, i32 0
  %1533 = inttoptr i64 %1526 to float*
  store float %1532, float* %1533
  store %struct.Memory* %loadMem_431622, %struct.Memory** %MEMORY
  %loadMem_431627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 33
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1536 to i64*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 5
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 15
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %1542 to i64*
  %1543 = load i64, i64* %RBP.i195
  %1544 = sub i64 %1543, 4
  %1545 = load i64, i64* %PC.i193
  %1546 = add i64 %1545, 4
  store i64 %1546, i64* %PC.i193
  %1547 = inttoptr i64 %1544 to i32*
  %1548 = load i32, i32* %1547
  %1549 = sext i32 %1548 to i64
  store i64 %1549, i64* %RCX.i194, align 8
  store %struct.Memory* %loadMem_431627, %struct.Memory** %MEMORY
  %loadMem_43162b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1552 to i64*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 5
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %1555 to i64*
  %1556 = load i64, i64* %RCX.i192
  %1557 = load i64, i64* %PC.i191
  %1558 = add i64 %1557, 7
  store i64 %1558, i64* %PC.i191
  %1559 = sext i64 %1556 to i128
  %1560 = and i128 %1559, -18446744073709551616
  %1561 = zext i64 %1556 to i128
  %1562 = or i128 %1560, %1561
  %1563 = mul i128 564, %1562
  %1564 = trunc i128 %1563 to i64
  store i64 %1564, i64* %RCX.i192, align 8
  %1565 = sext i64 %1564 to i128
  %1566 = icmp ne i128 %1565, %1563
  %1567 = zext i1 %1566 to i8
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1567, i8* %1568, align 1
  %1569 = trunc i128 %1563 to i32
  %1570 = and i32 %1569, 255
  %1571 = call i32 @llvm.ctpop.i32(i32 %1570)
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = xor i8 %1573, 1
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1574, i8* %1575, align 1
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1576, align 1
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1577, align 1
  %1578 = lshr i64 %1564, 63
  %1579 = trunc i64 %1578 to i8
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1579, i8* %1580, align 1
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1567, i8* %1581, align 1
  store %struct.Memory* %loadMem_43162b, %struct.Memory** %MEMORY
  %loadMem_431632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 33
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 1
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %1587 to i64*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 7
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %RDX.i190 = bitcast %union.anon* %1590 to i64*
  %1591 = load i64, i64* %RAX.i189
  %1592 = load i64, i64* %PC.i188
  %1593 = add i64 %1592, 3
  store i64 %1593, i64* %PC.i188
  store i64 %1591, i64* %RDX.i190, align 8
  store %struct.Memory* %loadMem_431632, %struct.Memory** %MEMORY
  %loadMem_431635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 33
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1596 to i64*
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 5
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 7
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %RDX.i187 = bitcast %union.anon* %1602 to i64*
  %1603 = load i64, i64* %RDX.i187
  %1604 = load i64, i64* %RCX.i186
  %1605 = load i64, i64* %PC.i185
  %1606 = add i64 %1605, 3
  store i64 %1606, i64* %PC.i185
  %1607 = add i64 %1604, %1603
  store i64 %1607, i64* %RDX.i187, align 8
  %1608 = icmp ult i64 %1607, %1603
  %1609 = icmp ult i64 %1607, %1604
  %1610 = or i1 %1608, %1609
  %1611 = zext i1 %1610 to i8
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1611, i8* %1612, align 1
  %1613 = trunc i64 %1607 to i32
  %1614 = and i32 %1613, 255
  %1615 = call i32 @llvm.ctpop.i32(i32 %1614)
  %1616 = trunc i32 %1615 to i8
  %1617 = and i8 %1616, 1
  %1618 = xor i8 %1617, 1
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1618, i8* %1619, align 1
  %1620 = xor i64 %1604, %1603
  %1621 = xor i64 %1620, %1607
  %1622 = lshr i64 %1621, 4
  %1623 = trunc i64 %1622 to i8
  %1624 = and i8 %1623, 1
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1624, i8* %1625, align 1
  %1626 = icmp eq i64 %1607, 0
  %1627 = zext i1 %1626 to i8
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1627, i8* %1628, align 1
  %1629 = lshr i64 %1607, 63
  %1630 = trunc i64 %1629 to i8
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1630, i8* %1631, align 1
  %1632 = lshr i64 %1603, 63
  %1633 = lshr i64 %1604, 63
  %1634 = xor i64 %1629, %1632
  %1635 = xor i64 %1629, %1633
  %1636 = add i64 %1634, %1635
  %1637 = icmp eq i64 %1636, 2
  %1638 = zext i1 %1637 to i8
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1638, i8* %1639, align 1
  store %struct.Memory* %loadMem_431635, %struct.Memory** %MEMORY
  %loadMem_431638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 33
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1642 to i64*
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 7
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %RDX.i183 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1647 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1646, i64 0, i64 1
  %XMM1.i184 = bitcast %union.VectorReg* %1647 to %union.vec128_t*
  %1648 = load i64, i64* %RDX.i183
  %1649 = add i64 %1648, 40
  %1650 = bitcast %union.vec128_t* %XMM1.i184 to i8*
  %1651 = load i64, i64* %PC.i182
  %1652 = add i64 %1651, 5
  store i64 %1652, i64* %PC.i182
  %1653 = bitcast i8* %1650 to <2 x float>*
  %1654 = load <2 x float>, <2 x float>* %1653, align 1
  %1655 = extractelement <2 x float> %1654, i32 0
  %1656 = inttoptr i64 %1649 to float*
  store float %1655, float* %1656
  store %struct.Memory* %loadMem_431638, %struct.Memory** %MEMORY
  %loadMem_43163d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 5
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RCX.i180 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 15
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %1665 to i64*
  %1666 = load i64, i64* %RBP.i181
  %1667 = sub i64 %1666, 4
  %1668 = load i64, i64* %PC.i179
  %1669 = add i64 %1668, 4
  store i64 %1669, i64* %PC.i179
  %1670 = inttoptr i64 %1667 to i32*
  %1671 = load i32, i32* %1670
  %1672 = sext i32 %1671 to i64
  store i64 %1672, i64* %RCX.i180, align 8
  store %struct.Memory* %loadMem_43163d, %struct.Memory** %MEMORY
  %loadMem_431641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 33
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %1675 to i64*
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 5
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %1678 to i64*
  %1679 = load i64, i64* %RCX.i178
  %1680 = load i64, i64* %PC.i177
  %1681 = add i64 %1680, 7
  store i64 %1681, i64* %PC.i177
  %1682 = sext i64 %1679 to i128
  %1683 = and i128 %1682, -18446744073709551616
  %1684 = zext i64 %1679 to i128
  %1685 = or i128 %1683, %1684
  %1686 = mul i128 564, %1685
  %1687 = trunc i128 %1686 to i64
  store i64 %1687, i64* %RCX.i178, align 8
  %1688 = sext i64 %1687 to i128
  %1689 = icmp ne i128 %1688, %1686
  %1690 = zext i1 %1689 to i8
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1690, i8* %1691, align 1
  %1692 = trunc i128 %1686 to i32
  %1693 = and i32 %1692, 255
  %1694 = call i32 @llvm.ctpop.i32(i32 %1693)
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  %1697 = xor i8 %1696, 1
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1697, i8* %1698, align 1
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1699, align 1
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1700, align 1
  %1701 = lshr i64 %1687, 63
  %1702 = trunc i64 %1701 to i8
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1702, i8* %1703, align 1
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1690, i8* %1704, align 1
  store %struct.Memory* %loadMem_431641, %struct.Memory** %MEMORY
  %loadMem_431648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 33
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1709 = getelementptr inbounds %struct.GPR, %struct.GPR* %1708, i32 0, i32 1
  %1710 = getelementptr inbounds %struct.Reg, %struct.Reg* %1709, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %1710 to i64*
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1712 = getelementptr inbounds %struct.GPR, %struct.GPR* %1711, i32 0, i32 7
  %1713 = getelementptr inbounds %struct.Reg, %struct.Reg* %1712, i32 0, i32 0
  %RDX.i176 = bitcast %union.anon* %1713 to i64*
  %1714 = load i64, i64* %RAX.i175
  %1715 = load i64, i64* %PC.i174
  %1716 = add i64 %1715, 3
  store i64 %1716, i64* %PC.i174
  store i64 %1714, i64* %RDX.i176, align 8
  store %struct.Memory* %loadMem_431648, %struct.Memory** %MEMORY
  %loadMem_43164b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 33
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %1719 to i64*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 5
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 7
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RDX.i173 = bitcast %union.anon* %1725 to i64*
  %1726 = load i64, i64* %RDX.i173
  %1727 = load i64, i64* %RCX.i172
  %1728 = load i64, i64* %PC.i171
  %1729 = add i64 %1728, 3
  store i64 %1729, i64* %PC.i171
  %1730 = add i64 %1727, %1726
  store i64 %1730, i64* %RDX.i173, align 8
  %1731 = icmp ult i64 %1730, %1726
  %1732 = icmp ult i64 %1730, %1727
  %1733 = or i1 %1731, %1732
  %1734 = zext i1 %1733 to i8
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1734, i8* %1735, align 1
  %1736 = trunc i64 %1730 to i32
  %1737 = and i32 %1736, 255
  %1738 = call i32 @llvm.ctpop.i32(i32 %1737)
  %1739 = trunc i32 %1738 to i8
  %1740 = and i8 %1739, 1
  %1741 = xor i8 %1740, 1
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1741, i8* %1742, align 1
  %1743 = xor i64 %1727, %1726
  %1744 = xor i64 %1743, %1730
  %1745 = lshr i64 %1744, 4
  %1746 = trunc i64 %1745 to i8
  %1747 = and i8 %1746, 1
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1747, i8* %1748, align 1
  %1749 = icmp eq i64 %1730, 0
  %1750 = zext i1 %1749 to i8
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1750, i8* %1751, align 1
  %1752 = lshr i64 %1730, 63
  %1753 = trunc i64 %1752 to i8
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1753, i8* %1754, align 1
  %1755 = lshr i64 %1726, 63
  %1756 = lshr i64 %1727, 63
  %1757 = xor i64 %1752, %1755
  %1758 = xor i64 %1752, %1756
  %1759 = add i64 %1757, %1758
  %1760 = icmp eq i64 %1759, 2
  %1761 = zext i1 %1760 to i8
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1761, i8* %1762, align 1
  store %struct.Memory* %loadMem_43164b, %struct.Memory** %MEMORY
  %loadMem_43164e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 33
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %1765 to i64*
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 7
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %RDX.i169 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1769, i64 0, i64 1
  %XMM1.i170 = bitcast %union.VectorReg* %1770 to %union.vec128_t*
  %1771 = load i64, i64* %RDX.i169
  %1772 = add i64 %1771, 44
  %1773 = bitcast %union.vec128_t* %XMM1.i170 to i8*
  %1774 = load i64, i64* %PC.i168
  %1775 = add i64 %1774, 5
  store i64 %1775, i64* %PC.i168
  %1776 = bitcast i8* %1773 to <2 x float>*
  %1777 = load <2 x float>, <2 x float>* %1776, align 1
  %1778 = extractelement <2 x float> %1777, i32 0
  %1779 = inttoptr i64 %1772 to float*
  store float %1778, float* %1779
  store %struct.Memory* %loadMem_43164e, %struct.Memory** %MEMORY
  %loadMem_431653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1781 = getelementptr inbounds %struct.GPR, %struct.GPR* %1780, i32 0, i32 33
  %1782 = getelementptr inbounds %struct.Reg, %struct.Reg* %1781, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %1782 to i64*
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 5
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %1785 to i64*
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 15
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %1788 to i64*
  %1789 = load i64, i64* %RBP.i167
  %1790 = sub i64 %1789, 4
  %1791 = load i64, i64* %PC.i165
  %1792 = add i64 %1791, 4
  store i64 %1792, i64* %PC.i165
  %1793 = inttoptr i64 %1790 to i32*
  %1794 = load i32, i32* %1793
  %1795 = sext i32 %1794 to i64
  store i64 %1795, i64* %RCX.i166, align 8
  store %struct.Memory* %loadMem_431653, %struct.Memory** %MEMORY
  %loadMem_431657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 33
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1798 to i64*
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 5
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %1801 to i64*
  %1802 = load i64, i64* %RCX.i164
  %1803 = load i64, i64* %PC.i163
  %1804 = add i64 %1803, 7
  store i64 %1804, i64* %PC.i163
  %1805 = sext i64 %1802 to i128
  %1806 = and i128 %1805, -18446744073709551616
  %1807 = zext i64 %1802 to i128
  %1808 = or i128 %1806, %1807
  %1809 = mul i128 564, %1808
  %1810 = trunc i128 %1809 to i64
  store i64 %1810, i64* %RCX.i164, align 8
  %1811 = sext i64 %1810 to i128
  %1812 = icmp ne i128 %1811, %1809
  %1813 = zext i1 %1812 to i8
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1813, i8* %1814, align 1
  %1815 = trunc i128 %1809 to i32
  %1816 = and i32 %1815, 255
  %1817 = call i32 @llvm.ctpop.i32(i32 %1816)
  %1818 = trunc i32 %1817 to i8
  %1819 = and i8 %1818, 1
  %1820 = xor i8 %1819, 1
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1820, i8* %1821, align 1
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1822, align 1
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1823, align 1
  %1824 = lshr i64 %1810, 63
  %1825 = trunc i64 %1824 to i8
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1825, i8* %1826, align 1
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1813, i8* %1827, align 1
  store %struct.Memory* %loadMem_431657, %struct.Memory** %MEMORY
  %loadMem_43165e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 1
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 7
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RDX.i162 = bitcast %union.anon* %1836 to i64*
  %1837 = load i64, i64* %RAX.i161
  %1838 = load i64, i64* %PC.i160
  %1839 = add i64 %1838, 3
  store i64 %1839, i64* %PC.i160
  store i64 %1837, i64* %RDX.i162, align 8
  store %struct.Memory* %loadMem_43165e, %struct.Memory** %MEMORY
  %loadMem_431661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 33
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 5
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %1845 to i64*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 7
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %RDX.i159 = bitcast %union.anon* %1848 to i64*
  %1849 = load i64, i64* %RDX.i159
  %1850 = load i64, i64* %RCX.i158
  %1851 = load i64, i64* %PC.i157
  %1852 = add i64 %1851, 3
  store i64 %1852, i64* %PC.i157
  %1853 = add i64 %1850, %1849
  store i64 %1853, i64* %RDX.i159, align 8
  %1854 = icmp ult i64 %1853, %1849
  %1855 = icmp ult i64 %1853, %1850
  %1856 = or i1 %1854, %1855
  %1857 = zext i1 %1856 to i8
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1857, i8* %1858, align 1
  %1859 = trunc i64 %1853 to i32
  %1860 = and i32 %1859, 255
  %1861 = call i32 @llvm.ctpop.i32(i32 %1860)
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  %1864 = xor i8 %1863, 1
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1864, i8* %1865, align 1
  %1866 = xor i64 %1850, %1849
  %1867 = xor i64 %1866, %1853
  %1868 = lshr i64 %1867, 4
  %1869 = trunc i64 %1868 to i8
  %1870 = and i8 %1869, 1
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1870, i8* %1871, align 1
  %1872 = icmp eq i64 %1853, 0
  %1873 = zext i1 %1872 to i8
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1873, i8* %1874, align 1
  %1875 = lshr i64 %1853, 63
  %1876 = trunc i64 %1875 to i8
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1876, i8* %1877, align 1
  %1878 = lshr i64 %1849, 63
  %1879 = lshr i64 %1850, 63
  %1880 = xor i64 %1875, %1878
  %1881 = xor i64 %1875, %1879
  %1882 = add i64 %1880, %1881
  %1883 = icmp eq i64 %1882, 2
  %1884 = zext i1 %1883 to i8
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1884, i8* %1885, align 1
  store %struct.Memory* %loadMem_431661, %struct.Memory** %MEMORY
  %loadMem_431664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1888 to i64*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 7
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RDX.i155 = bitcast %union.anon* %1891 to i64*
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1893 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1892, i64 0, i64 1
  %XMM1.i156 = bitcast %union.VectorReg* %1893 to %union.vec128_t*
  %1894 = load i64, i64* %RDX.i155
  %1895 = add i64 %1894, 48
  %1896 = bitcast %union.vec128_t* %XMM1.i156 to i8*
  %1897 = load i64, i64* %PC.i154
  %1898 = add i64 %1897, 5
  store i64 %1898, i64* %PC.i154
  %1899 = bitcast i8* %1896 to <2 x float>*
  %1900 = load <2 x float>, <2 x float>* %1899, align 1
  %1901 = extractelement <2 x float> %1900, i32 0
  %1902 = inttoptr i64 %1895 to float*
  store float %1901, float* %1902
  store %struct.Memory* %loadMem_431664, %struct.Memory** %MEMORY
  %loadMem_431669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1904 = getelementptr inbounds %struct.GPR, %struct.GPR* %1903, i32 0, i32 33
  %1905 = getelementptr inbounds %struct.Reg, %struct.Reg* %1904, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1905 to i64*
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 5
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 15
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %1911 to i64*
  %1912 = load i64, i64* %RBP.i153
  %1913 = sub i64 %1912, 4
  %1914 = load i64, i64* %PC.i151
  %1915 = add i64 %1914, 4
  store i64 %1915, i64* %PC.i151
  %1916 = inttoptr i64 %1913 to i32*
  %1917 = load i32, i32* %1916
  %1918 = sext i32 %1917 to i64
  store i64 %1918, i64* %RCX.i152, align 8
  store %struct.Memory* %loadMem_431669, %struct.Memory** %MEMORY
  %loadMem_43166d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 33
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %1921 to i64*
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 5
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %1924 to i64*
  %1925 = load i64, i64* %RCX.i150
  %1926 = load i64, i64* %PC.i149
  %1927 = add i64 %1926, 7
  store i64 %1927, i64* %PC.i149
  %1928 = sext i64 %1925 to i128
  %1929 = and i128 %1928, -18446744073709551616
  %1930 = zext i64 %1925 to i128
  %1931 = or i128 %1929, %1930
  %1932 = mul i128 564, %1931
  %1933 = trunc i128 %1932 to i64
  store i64 %1933, i64* %RCX.i150, align 8
  %1934 = sext i64 %1933 to i128
  %1935 = icmp ne i128 %1934, %1932
  %1936 = zext i1 %1935 to i8
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1936, i8* %1937, align 1
  %1938 = trunc i128 %1932 to i32
  %1939 = and i32 %1938, 255
  %1940 = call i32 @llvm.ctpop.i32(i32 %1939)
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  %1943 = xor i8 %1942, 1
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1943, i8* %1944, align 1
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1945, align 1
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1946, align 1
  %1947 = lshr i64 %1933, 63
  %1948 = trunc i64 %1947 to i8
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1948, i8* %1949, align 1
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1936, i8* %1950, align 1
  store %struct.Memory* %loadMem_43166d, %struct.Memory** %MEMORY
  %loadMem_431674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 33
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %1953 to i64*
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 1
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 7
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %RDX.i148 = bitcast %union.anon* %1959 to i64*
  %1960 = load i64, i64* %RAX.i147
  %1961 = load i64, i64* %PC.i146
  %1962 = add i64 %1961, 3
  store i64 %1962, i64* %PC.i146
  store i64 %1960, i64* %RDX.i148, align 8
  store %struct.Memory* %loadMem_431674, %struct.Memory** %MEMORY
  %loadMem_431677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 5
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 7
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RDX.i145 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %RDX.i145
  %1973 = load i64, i64* %RCX.i144
  %1974 = load i64, i64* %PC.i143
  %1975 = add i64 %1974, 3
  store i64 %1975, i64* %PC.i143
  %1976 = add i64 %1973, %1972
  store i64 %1976, i64* %RDX.i145, align 8
  %1977 = icmp ult i64 %1976, %1972
  %1978 = icmp ult i64 %1976, %1973
  %1979 = or i1 %1977, %1978
  %1980 = zext i1 %1979 to i8
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1980, i8* %1981, align 1
  %1982 = trunc i64 %1976 to i32
  %1983 = and i32 %1982, 255
  %1984 = call i32 @llvm.ctpop.i32(i32 %1983)
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  %1987 = xor i8 %1986, 1
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1987, i8* %1988, align 1
  %1989 = xor i64 %1973, %1972
  %1990 = xor i64 %1989, %1976
  %1991 = lshr i64 %1990, 4
  %1992 = trunc i64 %1991 to i8
  %1993 = and i8 %1992, 1
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1993, i8* %1994, align 1
  %1995 = icmp eq i64 %1976, 0
  %1996 = zext i1 %1995 to i8
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1996, i8* %1997, align 1
  %1998 = lshr i64 %1976, 63
  %1999 = trunc i64 %1998 to i8
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1999, i8* %2000, align 1
  %2001 = lshr i64 %1972, 63
  %2002 = lshr i64 %1973, 63
  %2003 = xor i64 %1998, %2001
  %2004 = xor i64 %1998, %2002
  %2005 = add i64 %2003, %2004
  %2006 = icmp eq i64 %2005, 2
  %2007 = zext i1 %2006 to i8
  %2008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2007, i8* %2008, align 1
  store %struct.Memory* %loadMem_431677, %struct.Memory** %MEMORY
  %loadMem_43167a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 33
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 7
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %RDX.i141 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2016 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2015, i64 0, i64 1
  %XMM1.i142 = bitcast %union.VectorReg* %2016 to %union.vec128_t*
  %2017 = load i64, i64* %RDX.i141
  %2018 = add i64 %2017, 52
  %2019 = bitcast %union.vec128_t* %XMM1.i142 to i8*
  %2020 = load i64, i64* %PC.i140
  %2021 = add i64 %2020, 5
  store i64 %2021, i64* %PC.i140
  %2022 = bitcast i8* %2019 to <2 x float>*
  %2023 = load <2 x float>, <2 x float>* %2022, align 1
  %2024 = extractelement <2 x float> %2023, i32 0
  %2025 = inttoptr i64 %2018 to float*
  store float %2024, float* %2025
  store %struct.Memory* %loadMem_43167a, %struct.Memory** %MEMORY
  %loadMem_43167f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 5
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 15
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %2034 to i64*
  %2035 = load i64, i64* %RBP.i139
  %2036 = sub i64 %2035, 4
  %2037 = load i64, i64* %PC.i137
  %2038 = add i64 %2037, 4
  store i64 %2038, i64* %PC.i137
  %2039 = inttoptr i64 %2036 to i32*
  %2040 = load i32, i32* %2039
  %2041 = sext i32 %2040 to i64
  store i64 %2041, i64* %RCX.i138, align 8
  store %struct.Memory* %loadMem_43167f, %struct.Memory** %MEMORY
  %loadMem_431683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 33
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2044 to i64*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 5
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %2047 to i64*
  %2048 = load i64, i64* %RCX.i136
  %2049 = load i64, i64* %PC.i135
  %2050 = add i64 %2049, 7
  store i64 %2050, i64* %PC.i135
  %2051 = sext i64 %2048 to i128
  %2052 = and i128 %2051, -18446744073709551616
  %2053 = zext i64 %2048 to i128
  %2054 = or i128 %2052, %2053
  %2055 = mul i128 564, %2054
  %2056 = trunc i128 %2055 to i64
  store i64 %2056, i64* %RCX.i136, align 8
  %2057 = sext i64 %2056 to i128
  %2058 = icmp ne i128 %2057, %2055
  %2059 = zext i1 %2058 to i8
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2059, i8* %2060, align 1
  %2061 = trunc i128 %2055 to i32
  %2062 = and i32 %2061, 255
  %2063 = call i32 @llvm.ctpop.i32(i32 %2062)
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2066, i8* %2067, align 1
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2068, align 1
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2069, align 1
  %2070 = lshr i64 %2056, 63
  %2071 = trunc i64 %2070 to i8
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2071, i8* %2072, align 1
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2059, i8* %2073, align 1
  store %struct.Memory* %loadMem_431683, %struct.Memory** %MEMORY
  %loadMem_43168a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 33
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2076 to i64*
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 1
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 7
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %RDX.i134 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %RAX.i133
  %2084 = load i64, i64* %PC.i132
  %2085 = add i64 %2084, 3
  store i64 %2085, i64* %PC.i132
  store i64 %2083, i64* %RDX.i134, align 8
  store %struct.Memory* %loadMem_43168a, %struct.Memory** %MEMORY
  %loadMem_43168d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 33
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 5
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %2091 to i64*
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 7
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %RDX.i131 = bitcast %union.anon* %2094 to i64*
  %2095 = load i64, i64* %RDX.i131
  %2096 = load i64, i64* %RCX.i130
  %2097 = load i64, i64* %PC.i129
  %2098 = add i64 %2097, 3
  store i64 %2098, i64* %PC.i129
  %2099 = add i64 %2096, %2095
  store i64 %2099, i64* %RDX.i131, align 8
  %2100 = icmp ult i64 %2099, %2095
  %2101 = icmp ult i64 %2099, %2096
  %2102 = or i1 %2100, %2101
  %2103 = zext i1 %2102 to i8
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2103, i8* %2104, align 1
  %2105 = trunc i64 %2099 to i32
  %2106 = and i32 %2105, 255
  %2107 = call i32 @llvm.ctpop.i32(i32 %2106)
  %2108 = trunc i32 %2107 to i8
  %2109 = and i8 %2108, 1
  %2110 = xor i8 %2109, 1
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2110, i8* %2111, align 1
  %2112 = xor i64 %2096, %2095
  %2113 = xor i64 %2112, %2099
  %2114 = lshr i64 %2113, 4
  %2115 = trunc i64 %2114 to i8
  %2116 = and i8 %2115, 1
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2116, i8* %2117, align 1
  %2118 = icmp eq i64 %2099, 0
  %2119 = zext i1 %2118 to i8
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2119, i8* %2120, align 1
  %2121 = lshr i64 %2099, 63
  %2122 = trunc i64 %2121 to i8
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2122, i8* %2123, align 1
  %2124 = lshr i64 %2095, 63
  %2125 = lshr i64 %2096, 63
  %2126 = xor i64 %2121, %2124
  %2127 = xor i64 %2121, %2125
  %2128 = add i64 %2126, %2127
  %2129 = icmp eq i64 %2128, 2
  %2130 = zext i1 %2129 to i8
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2130, i8* %2131, align 1
  store %struct.Memory* %loadMem_43168d, %struct.Memory** %MEMORY
  %loadMem_431690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 33
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 7
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RDX.i127 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2139 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2138, i64 0, i64 0
  %XMM0.i128 = bitcast %union.VectorReg* %2139 to %union.vec128_t*
  %2140 = load i64, i64* %RDX.i127
  %2141 = add i64 %2140, 56
  %2142 = bitcast %union.vec128_t* %XMM0.i128 to i8*
  %2143 = load i64, i64* %PC.i126
  %2144 = add i64 %2143, 5
  store i64 %2144, i64* %PC.i126
  %2145 = bitcast i8* %2142 to <2 x float>*
  %2146 = load <2 x float>, <2 x float>* %2145, align 1
  %2147 = extractelement <2 x float> %2146, i32 0
  %2148 = inttoptr i64 %2141 to float*
  store float %2147, float* %2148
  store %struct.Memory* %loadMem_431690, %struct.Memory** %MEMORY
  %loadMem_431695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 33
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 5
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %2154 to i64*
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 15
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %2157 to i64*
  %2158 = load i64, i64* %RBP.i125
  %2159 = sub i64 %2158, 4
  %2160 = load i64, i64* %PC.i123
  %2161 = add i64 %2160, 4
  store i64 %2161, i64* %PC.i123
  %2162 = inttoptr i64 %2159 to i32*
  %2163 = load i32, i32* %2162
  %2164 = sext i32 %2163 to i64
  store i64 %2164, i64* %RCX.i124, align 8
  store %struct.Memory* %loadMem_431695, %struct.Memory** %MEMORY
  %loadMem_431699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 5
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %2170 to i64*
  %2171 = load i64, i64* %RCX.i122
  %2172 = load i64, i64* %PC.i121
  %2173 = add i64 %2172, 7
  store i64 %2173, i64* %PC.i121
  %2174 = sext i64 %2171 to i128
  %2175 = and i128 %2174, -18446744073709551616
  %2176 = zext i64 %2171 to i128
  %2177 = or i128 %2175, %2176
  %2178 = mul i128 564, %2177
  %2179 = trunc i128 %2178 to i64
  store i64 %2179, i64* %RCX.i122, align 8
  %2180 = sext i64 %2179 to i128
  %2181 = icmp ne i128 %2180, %2178
  %2182 = zext i1 %2181 to i8
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2182, i8* %2183, align 1
  %2184 = trunc i128 %2178 to i32
  %2185 = and i32 %2184, 255
  %2186 = call i32 @llvm.ctpop.i32(i32 %2185)
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  %2189 = xor i8 %2188, 1
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2189, i8* %2190, align 1
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2191, align 1
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2192, align 1
  %2193 = lshr i64 %2179, 63
  %2194 = trunc i64 %2193 to i8
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2194, i8* %2195, align 1
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2182, i8* %2196, align 1
  store %struct.Memory* %loadMem_431699, %struct.Memory** %MEMORY
  %loadMem_4316a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 33
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2199 to i64*
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 1
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %2202 to i64*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 7
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %RDX.i120 = bitcast %union.anon* %2205 to i64*
  %2206 = load i64, i64* %RAX.i119
  %2207 = load i64, i64* %PC.i118
  %2208 = add i64 %2207, 3
  store i64 %2208, i64* %PC.i118
  store i64 %2206, i64* %RDX.i120, align 8
  store %struct.Memory* %loadMem_4316a0, %struct.Memory** %MEMORY
  %loadMem_4316a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 5
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 7
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RDX.i117 = bitcast %union.anon* %2217 to i64*
  %2218 = load i64, i64* %RDX.i117
  %2219 = load i64, i64* %RCX.i116
  %2220 = load i64, i64* %PC.i115
  %2221 = add i64 %2220, 3
  store i64 %2221, i64* %PC.i115
  %2222 = add i64 %2219, %2218
  store i64 %2222, i64* %RDX.i117, align 8
  %2223 = icmp ult i64 %2222, %2218
  %2224 = icmp ult i64 %2222, %2219
  %2225 = or i1 %2223, %2224
  %2226 = zext i1 %2225 to i8
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2226, i8* %2227, align 1
  %2228 = trunc i64 %2222 to i32
  %2229 = and i32 %2228, 255
  %2230 = call i32 @llvm.ctpop.i32(i32 %2229)
  %2231 = trunc i32 %2230 to i8
  %2232 = and i8 %2231, 1
  %2233 = xor i8 %2232, 1
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2233, i8* %2234, align 1
  %2235 = xor i64 %2219, %2218
  %2236 = xor i64 %2235, %2222
  %2237 = lshr i64 %2236, 4
  %2238 = trunc i64 %2237 to i8
  %2239 = and i8 %2238, 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2239, i8* %2240, align 1
  %2241 = icmp eq i64 %2222, 0
  %2242 = zext i1 %2241 to i8
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2242, i8* %2243, align 1
  %2244 = lshr i64 %2222, 63
  %2245 = trunc i64 %2244 to i8
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2245, i8* %2246, align 1
  %2247 = lshr i64 %2218, 63
  %2248 = lshr i64 %2219, 63
  %2249 = xor i64 %2244, %2247
  %2250 = xor i64 %2244, %2248
  %2251 = add i64 %2249, %2250
  %2252 = icmp eq i64 %2251, 2
  %2253 = zext i1 %2252 to i8
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2253, i8* %2254, align 1
  store %struct.Memory* %loadMem_4316a3, %struct.Memory** %MEMORY
  %loadMem_4316a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 33
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 7
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2262 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2261, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2262 to %union.vec128_t*
  %2263 = load i64, i64* %RDX.i114
  %2264 = add i64 %2263, 60
  %2265 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2266 = load i64, i64* %PC.i113
  %2267 = add i64 %2266, 5
  store i64 %2267, i64* %PC.i113
  %2268 = bitcast i8* %2265 to <2 x float>*
  %2269 = load <2 x float>, <2 x float>* %2268, align 1
  %2270 = extractelement <2 x float> %2269, i32 0
  %2271 = inttoptr i64 %2264 to float*
  store float %2270, float* %2271
  store %struct.Memory* %loadMem_4316a6, %struct.Memory** %MEMORY
  %loadMem_4316ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2273 = getelementptr inbounds %struct.GPR, %struct.GPR* %2272, i32 0, i32 33
  %2274 = getelementptr inbounds %struct.Reg, %struct.Reg* %2273, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %2274 to i64*
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 5
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %2277 to i64*
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 15
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %2280 to i64*
  %2281 = load i64, i64* %RBP.i112
  %2282 = sub i64 %2281, 4
  %2283 = load i64, i64* %PC.i110
  %2284 = add i64 %2283, 4
  store i64 %2284, i64* %PC.i110
  %2285 = inttoptr i64 %2282 to i32*
  %2286 = load i32, i32* %2285
  %2287 = sext i32 %2286 to i64
  store i64 %2287, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_4316ab, %struct.Memory** %MEMORY
  %loadMem_4316af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 33
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2290 to i64*
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 5
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %2293 to i64*
  %2294 = load i64, i64* %RCX.i109
  %2295 = load i64, i64* %PC.i108
  %2296 = add i64 %2295, 7
  store i64 %2296, i64* %PC.i108
  %2297 = sext i64 %2294 to i128
  %2298 = and i128 %2297, -18446744073709551616
  %2299 = zext i64 %2294 to i128
  %2300 = or i128 %2298, %2299
  %2301 = mul i128 564, %2300
  %2302 = trunc i128 %2301 to i64
  store i64 %2302, i64* %RCX.i109, align 8
  %2303 = sext i64 %2302 to i128
  %2304 = icmp ne i128 %2303, %2301
  %2305 = zext i1 %2304 to i8
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2305, i8* %2306, align 1
  %2307 = trunc i128 %2301 to i32
  %2308 = and i32 %2307, 255
  %2309 = call i32 @llvm.ctpop.i32(i32 %2308)
  %2310 = trunc i32 %2309 to i8
  %2311 = and i8 %2310, 1
  %2312 = xor i8 %2311, 1
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2312, i8* %2313, align 1
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2314, align 1
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2315, align 1
  %2316 = lshr i64 %2302, 63
  %2317 = trunc i64 %2316 to i8
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2317, i8* %2318, align 1
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2305, i8* %2319, align 1
  store %struct.Memory* %loadMem_4316af, %struct.Memory** %MEMORY
  %loadMem_4316b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 1
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %2325 to i64*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 5
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %2328 to i64*
  %2329 = load i64, i64* %RAX.i106
  %2330 = load i64, i64* %RCX.i107
  %2331 = load i64, i64* %PC.i105
  %2332 = add i64 %2331, 3
  store i64 %2332, i64* %PC.i105
  %2333 = add i64 %2330, %2329
  store i64 %2333, i64* %RAX.i106, align 8
  %2334 = icmp ult i64 %2333, %2329
  %2335 = icmp ult i64 %2333, %2330
  %2336 = or i1 %2334, %2335
  %2337 = zext i1 %2336 to i8
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2337, i8* %2338, align 1
  %2339 = trunc i64 %2333 to i32
  %2340 = and i32 %2339, 255
  %2341 = call i32 @llvm.ctpop.i32(i32 %2340)
  %2342 = trunc i32 %2341 to i8
  %2343 = and i8 %2342, 1
  %2344 = xor i8 %2343, 1
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2344, i8* %2345, align 1
  %2346 = xor i64 %2330, %2329
  %2347 = xor i64 %2346, %2333
  %2348 = lshr i64 %2347, 4
  %2349 = trunc i64 %2348 to i8
  %2350 = and i8 %2349, 1
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2350, i8* %2351, align 1
  %2352 = icmp eq i64 %2333, 0
  %2353 = zext i1 %2352 to i8
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2353, i8* %2354, align 1
  %2355 = lshr i64 %2333, 63
  %2356 = trunc i64 %2355 to i8
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2356, i8* %2357, align 1
  %2358 = lshr i64 %2329, 63
  %2359 = lshr i64 %2330, 63
  %2360 = xor i64 %2355, %2358
  %2361 = xor i64 %2355, %2359
  %2362 = add i64 %2360, %2361
  %2363 = icmp eq i64 %2362, 2
  %2364 = zext i1 %2363 to i8
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2364, i8* %2365, align 1
  store %struct.Memory* %loadMem_4316b6, %struct.Memory** %MEMORY
  %loadMem_4316b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 33
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %2368 to i64*
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2370 = getelementptr inbounds %struct.GPR, %struct.GPR* %2369, i32 0, i32 1
  %2371 = getelementptr inbounds %struct.Reg, %struct.Reg* %2370, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %2371 to i64*
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2373 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2372, i64 0, i64 0
  %XMM0.i104 = bitcast %union.VectorReg* %2373 to %union.vec128_t*
  %2374 = load i64, i64* %RAX.i103
  %2375 = add i64 %2374, 64
  %2376 = bitcast %union.vec128_t* %XMM0.i104 to i8*
  %2377 = load i64, i64* %PC.i102
  %2378 = add i64 %2377, 5
  store i64 %2378, i64* %PC.i102
  %2379 = bitcast i8* %2376 to <2 x float>*
  %2380 = load <2 x float>, <2 x float>* %2379, align 1
  %2381 = extractelement <2 x float> %2380, i32 0
  %2382 = inttoptr i64 %2375 to float*
  store float %2381, float* %2382
  store %struct.Memory* %loadMem_4316b9, %struct.Memory** %MEMORY
  %loadMem_4316be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 33
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 15
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %2388 to i64*
  %2389 = load i64, i64* %RBP.i101
  %2390 = sub i64 %2389, 8
  %2391 = load i64, i64* %PC.i100
  %2392 = add i64 %2391, 7
  store i64 %2392, i64* %PC.i100
  %2393 = inttoptr i64 %2390 to i32*
  store i32 0, i32* %2393
  store %struct.Memory* %loadMem_4316be, %struct.Memory** %MEMORY
  br label %block_.L_4316c5

block_.L_4316c5:                                  ; preds = %block_4316cf, %block_431533
  %loadMem_4316c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 33
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %2396 to i64*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 15
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %2399 to i64*
  %2400 = load i64, i64* %RBP.i99
  %2401 = sub i64 %2400, 8
  %2402 = load i64, i64* %PC.i98
  %2403 = add i64 %2402, 4
  store i64 %2403, i64* %PC.i98
  %2404 = inttoptr i64 %2401 to i32*
  %2405 = load i32, i32* %2404
  %2406 = sub i32 %2405, 120
  %2407 = icmp ult i32 %2405, 120
  %2408 = zext i1 %2407 to i8
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2408, i8* %2409, align 1
  %2410 = and i32 %2406, 255
  %2411 = call i32 @llvm.ctpop.i32(i32 %2410)
  %2412 = trunc i32 %2411 to i8
  %2413 = and i8 %2412, 1
  %2414 = xor i8 %2413, 1
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2414, i8* %2415, align 1
  %2416 = xor i32 %2405, 120
  %2417 = xor i32 %2416, %2406
  %2418 = lshr i32 %2417, 4
  %2419 = trunc i32 %2418 to i8
  %2420 = and i8 %2419, 1
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2420, i8* %2421, align 1
  %2422 = icmp eq i32 %2406, 0
  %2423 = zext i1 %2422 to i8
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2423, i8* %2424, align 1
  %2425 = lshr i32 %2406, 31
  %2426 = trunc i32 %2425 to i8
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2426, i8* %2427, align 1
  %2428 = lshr i32 %2405, 31
  %2429 = xor i32 %2425, %2428
  %2430 = add i32 %2429, %2428
  %2431 = icmp eq i32 %2430, 2
  %2432 = zext i1 %2431 to i8
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2432, i8* %2433, align 1
  store %struct.Memory* %loadMem_4316c5, %struct.Memory** %MEMORY
  %loadMem_4316c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 33
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2436 to i64*
  %2437 = load i64, i64* %PC.i97
  %2438 = add i64 %2437, 56
  %2439 = load i64, i64* %PC.i97
  %2440 = add i64 %2439, 6
  %2441 = load i64, i64* %PC.i97
  %2442 = add i64 %2441, 6
  store i64 %2442, i64* %PC.i97
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2444 = load i8, i8* %2443, align 1
  %2445 = icmp ne i8 %2444, 0
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2447 = load i8, i8* %2446, align 1
  %2448 = icmp ne i8 %2447, 0
  %2449 = xor i1 %2445, %2448
  %2450 = xor i1 %2449, true
  %2451 = zext i1 %2450 to i8
  store i8 %2451, i8* %BRANCH_TAKEN, align 1
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2453 = select i1 %2449, i64 %2440, i64 %2438
  store i64 %2453, i64* %2452, align 8
  store %struct.Memory* %loadMem_4316c9, %struct.Memory** %MEMORY
  %loadBr_4316c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4316c9 = icmp eq i8 %loadBr_4316c9, 1
  br i1 %cmpBr_4316c9, label %block_.L_431701, label %block_4316cf

block_4316cf:                                     ; preds = %block_.L_4316c5
  %loadMem_4316cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 33
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2456 to i64*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 1
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %2459 to i64*
  %2460 = load i64, i64* %PC.i95
  %2461 = add i64 %2460, 10
  store i64 %2461, i64* %PC.i95
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i96, align 8
  store %struct.Memory* %loadMem_4316cf, %struct.Memory** %MEMORY
  %loadMem_4316d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 33
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 5
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %2467 to i64*
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 15
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %2470 to i64*
  %2471 = load i64, i64* %RBP.i94
  %2472 = sub i64 %2471, 4
  %2473 = load i64, i64* %PC.i92
  %2474 = add i64 %2473, 4
  store i64 %2474, i64* %PC.i92
  %2475 = inttoptr i64 %2472 to i32*
  %2476 = load i32, i32* %2475
  %2477 = sext i32 %2476 to i64
  store i64 %2477, i64* %RCX.i93, align 8
  store %struct.Memory* %loadMem_4316d9, %struct.Memory** %MEMORY
  %loadMem_4316dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 5
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %2483 to i64*
  %2484 = load i64, i64* %RCX.i91
  %2485 = load i64, i64* %PC.i90
  %2486 = add i64 %2485, 7
  store i64 %2486, i64* %PC.i90
  %2487 = sext i64 %2484 to i128
  %2488 = and i128 %2487, -18446744073709551616
  %2489 = zext i64 %2484 to i128
  %2490 = or i128 %2488, %2489
  %2491 = mul i128 564, %2490
  %2492 = trunc i128 %2491 to i64
  store i64 %2492, i64* %RCX.i91, align 8
  %2493 = sext i64 %2492 to i128
  %2494 = icmp ne i128 %2493, %2491
  %2495 = zext i1 %2494 to i8
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2495, i8* %2496, align 1
  %2497 = trunc i128 %2491 to i32
  %2498 = and i32 %2497, 255
  %2499 = call i32 @llvm.ctpop.i32(i32 %2498)
  %2500 = trunc i32 %2499 to i8
  %2501 = and i8 %2500, 1
  %2502 = xor i8 %2501, 1
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2502, i8* %2503, align 1
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2504, align 1
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2505, align 1
  %2506 = lshr i64 %2492, 63
  %2507 = trunc i64 %2506 to i8
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2507, i8* %2508, align 1
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2495, i8* %2509, align 1
  store %struct.Memory* %loadMem_4316dd, %struct.Memory** %MEMORY
  %loadMem_4316e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 1
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 5
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %2518 to i64*
  %2519 = load i64, i64* %RAX.i88
  %2520 = load i64, i64* %RCX.i89
  %2521 = load i64, i64* %PC.i87
  %2522 = add i64 %2521, 3
  store i64 %2522, i64* %PC.i87
  %2523 = add i64 %2520, %2519
  store i64 %2523, i64* %RAX.i88, align 8
  %2524 = icmp ult i64 %2523, %2519
  %2525 = icmp ult i64 %2523, %2520
  %2526 = or i1 %2524, %2525
  %2527 = zext i1 %2526 to i8
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2527, i8* %2528, align 1
  %2529 = trunc i64 %2523 to i32
  %2530 = and i32 %2529, 255
  %2531 = call i32 @llvm.ctpop.i32(i32 %2530)
  %2532 = trunc i32 %2531 to i8
  %2533 = and i8 %2532, 1
  %2534 = xor i8 %2533, 1
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2534, i8* %2535, align 1
  %2536 = xor i64 %2520, %2519
  %2537 = xor i64 %2536, %2523
  %2538 = lshr i64 %2537, 4
  %2539 = trunc i64 %2538 to i8
  %2540 = and i8 %2539, 1
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2540, i8* %2541, align 1
  %2542 = icmp eq i64 %2523, 0
  %2543 = zext i1 %2542 to i8
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2543, i8* %2544, align 1
  %2545 = lshr i64 %2523, 63
  %2546 = trunc i64 %2545 to i8
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2546, i8* %2547, align 1
  %2548 = lshr i64 %2519, 63
  %2549 = lshr i64 %2520, 63
  %2550 = xor i64 %2545, %2548
  %2551 = xor i64 %2545, %2549
  %2552 = add i64 %2550, %2551
  %2553 = icmp eq i64 %2552, 2
  %2554 = zext i1 %2553 to i8
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2554, i8* %2555, align 1
  store %struct.Memory* %loadMem_4316e4, %struct.Memory** %MEMORY
  %loadMem_4316e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 5
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %2561 to i64*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 15
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %2564 to i64*
  %2565 = load i64, i64* %RBP.i86
  %2566 = sub i64 %2565, 8
  %2567 = load i64, i64* %PC.i84
  %2568 = add i64 %2567, 4
  store i64 %2568, i64* %PC.i84
  %2569 = inttoptr i64 %2566 to i32*
  %2570 = load i32, i32* %2569
  %2571 = sext i32 %2570 to i64
  store i64 %2571, i64* %RCX.i85, align 8
  store %struct.Memory* %loadMem_4316e7, %struct.Memory** %MEMORY
  %loadMem_4316eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 33
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2574 to i64*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 1
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 5
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %2580 to i64*
  %2581 = load i64, i64* %RAX.i82
  %2582 = load i64, i64* %RCX.i83
  %2583 = mul i64 %2582, 4
  %2584 = add i64 %2581, 72
  %2585 = add i64 %2584, %2583
  %2586 = load i64, i64* %PC.i81
  %2587 = add i64 %2586, 8
  store i64 %2587, i64* %PC.i81
  %2588 = inttoptr i64 %2585 to i32*
  store i32 -1, i32* %2588
  store %struct.Memory* %loadMem_4316eb, %struct.Memory** %MEMORY
  %loadMem_4316f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 33
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 1
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %2594 to i64*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 15
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %2597 to i64*
  %2598 = load i64, i64* %RBP.i80
  %2599 = sub i64 %2598, 8
  %2600 = load i64, i64* %PC.i78
  %2601 = add i64 %2600, 3
  store i64 %2601, i64* %PC.i78
  %2602 = inttoptr i64 %2599 to i32*
  %2603 = load i32, i32* %2602
  %2604 = zext i32 %2603 to i64
  store i64 %2604, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_4316f3, %struct.Memory** %MEMORY
  %loadMem_4316f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 1
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %2610 to i64*
  %2611 = load i64, i64* %RAX.i77
  %2612 = load i64, i64* %PC.i76
  %2613 = add i64 %2612, 3
  store i64 %2613, i64* %PC.i76
  %2614 = trunc i64 %2611 to i32
  %2615 = add i32 1, %2614
  %2616 = zext i32 %2615 to i64
  store i64 %2616, i64* %RAX.i77, align 8
  %2617 = icmp ult i32 %2615, %2614
  %2618 = icmp ult i32 %2615, 1
  %2619 = or i1 %2617, %2618
  %2620 = zext i1 %2619 to i8
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2620, i8* %2621, align 1
  %2622 = and i32 %2615, 255
  %2623 = call i32 @llvm.ctpop.i32(i32 %2622)
  %2624 = trunc i32 %2623 to i8
  %2625 = and i8 %2624, 1
  %2626 = xor i8 %2625, 1
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2626, i8* %2627, align 1
  %2628 = xor i64 1, %2611
  %2629 = trunc i64 %2628 to i32
  %2630 = xor i32 %2629, %2615
  %2631 = lshr i32 %2630, 4
  %2632 = trunc i32 %2631 to i8
  %2633 = and i8 %2632, 1
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2633, i8* %2634, align 1
  %2635 = icmp eq i32 %2615, 0
  %2636 = zext i1 %2635 to i8
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2636, i8* %2637, align 1
  %2638 = lshr i32 %2615, 31
  %2639 = trunc i32 %2638 to i8
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2639, i8* %2640, align 1
  %2641 = lshr i32 %2614, 31
  %2642 = xor i32 %2638, %2641
  %2643 = add i32 %2642, %2638
  %2644 = icmp eq i32 %2643, 2
  %2645 = zext i1 %2644 to i8
  %2646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2645, i8* %2646, align 1
  store %struct.Memory* %loadMem_4316f6, %struct.Memory** %MEMORY
  %loadMem_4316f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 33
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2649 to i64*
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 1
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %EAX.i74 = bitcast %union.anon* %2652 to i32*
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 15
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %2655 to i64*
  %2656 = load i64, i64* %RBP.i75
  %2657 = sub i64 %2656, 8
  %2658 = load i32, i32* %EAX.i74
  %2659 = zext i32 %2658 to i64
  %2660 = load i64, i64* %PC.i73
  %2661 = add i64 %2660, 3
  store i64 %2661, i64* %PC.i73
  %2662 = inttoptr i64 %2657 to i32*
  store i32 %2658, i32* %2662
  store %struct.Memory* %loadMem_4316f9, %struct.Memory** %MEMORY
  %loadMem_4316fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 33
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %2665 to i64*
  %2666 = load i64, i64* %PC.i72
  %2667 = add i64 %2666, -55
  %2668 = load i64, i64* %PC.i72
  %2669 = add i64 %2668, 5
  store i64 %2669, i64* %PC.i72
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2667, i64* %2670, align 8
  store %struct.Memory* %loadMem_4316fc, %struct.Memory** %MEMORY
  br label %block_.L_4316c5

block_.L_431701:                                  ; preds = %block_.L_4316c5
  %loadMem_431701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2673 to i64*
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2675 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2674, i64 0, i64 0
  %YMM0.i71 = bitcast %union.VectorReg* %2675 to %"class.std::bitset"*
  %2676 = bitcast %"class.std::bitset"* %YMM0.i71 to i8*
  %2677 = load i64, i64* %PC.i70
  %2678 = add i64 %2677, ptrtoint (%G_0xb1a03__rip__type* @G_0xb1a03__rip_ to i64)
  %2679 = load i64, i64* %PC.i70
  %2680 = add i64 %2679, 8
  store i64 %2680, i64* %PC.i70
  %2681 = inttoptr i64 %2678 to float*
  %2682 = load float, float* %2681
  %2683 = bitcast i8* %2676 to float*
  store float %2682, float* %2683, align 1
  %2684 = getelementptr inbounds i8, i8* %2676, i64 4
  %2685 = bitcast i8* %2684 to float*
  store float 0.000000e+00, float* %2685, align 1
  %2686 = getelementptr inbounds i8, i8* %2676, i64 8
  %2687 = bitcast i8* %2686 to float*
  store float 0.000000e+00, float* %2687, align 1
  %2688 = getelementptr inbounds i8, i8* %2676, i64 12
  %2689 = bitcast i8* %2688 to float*
  store float 0.000000e+00, float* %2689, align 1
  store %struct.Memory* %loadMem_431701, %struct.Memory** %MEMORY
  %loadMem_431709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 1
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %2695 to i64*
  %2696 = load i64, i64* %PC.i68
  %2697 = add i64 %2696, 10
  store i64 %2697, i64* %PC.i68
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_431709, %struct.Memory** %MEMORY
  %loadMem_431713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 5
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 15
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %RBP.i67
  %2708 = sub i64 %2707, 4
  %2709 = load i64, i64* %PC.i65
  %2710 = add i64 %2709, 4
  store i64 %2710, i64* %PC.i65
  %2711 = inttoptr i64 %2708 to i32*
  %2712 = load i32, i32* %2711
  %2713 = sext i32 %2712 to i64
  store i64 %2713, i64* %RCX.i66, align 8
  store %struct.Memory* %loadMem_431713, %struct.Memory** %MEMORY
  %loadMem_431717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 5
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %2719 to i64*
  %2720 = load i64, i64* %RCX.i64
  %2721 = load i64, i64* %PC.i63
  %2722 = add i64 %2721, 7
  store i64 %2722, i64* %PC.i63
  %2723 = sext i64 %2720 to i128
  %2724 = and i128 %2723, -18446744073709551616
  %2725 = zext i64 %2720 to i128
  %2726 = or i128 %2724, %2725
  %2727 = mul i128 564, %2726
  %2728 = trunc i128 %2727 to i64
  store i64 %2728, i64* %RCX.i64, align 8
  %2729 = sext i64 %2728 to i128
  %2730 = icmp ne i128 %2729, %2727
  %2731 = zext i1 %2730 to i8
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2731, i8* %2732, align 1
  %2733 = trunc i128 %2727 to i32
  %2734 = and i32 %2733, 255
  %2735 = call i32 @llvm.ctpop.i32(i32 %2734)
  %2736 = trunc i32 %2735 to i8
  %2737 = and i8 %2736, 1
  %2738 = xor i8 %2737, 1
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2738, i8* %2739, align 1
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2740, align 1
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2741, align 1
  %2742 = lshr i64 %2728, 63
  %2743 = trunc i64 %2742 to i8
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2743, i8* %2744, align 1
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2731, i8* %2745, align 1
  store %struct.Memory* %loadMem_431717, %struct.Memory** %MEMORY
  %loadMem_43171e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 33
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 1
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 7
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RDX.i62 = bitcast %union.anon* %2754 to i64*
  %2755 = load i64, i64* %RAX.i61
  %2756 = load i64, i64* %PC.i60
  %2757 = add i64 %2756, 3
  store i64 %2757, i64* %PC.i60
  store i64 %2755, i64* %RDX.i62, align 8
  store %struct.Memory* %loadMem_43171e, %struct.Memory** %MEMORY
  %loadMem_431721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 33
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 5
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 7
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %RDX.i59 = bitcast %union.anon* %2766 to i64*
  %2767 = load i64, i64* %RDX.i59
  %2768 = load i64, i64* %RCX.i58
  %2769 = load i64, i64* %PC.i57
  %2770 = add i64 %2769, 3
  store i64 %2770, i64* %PC.i57
  %2771 = add i64 %2768, %2767
  store i64 %2771, i64* %RDX.i59, align 8
  %2772 = icmp ult i64 %2771, %2767
  %2773 = icmp ult i64 %2771, %2768
  %2774 = or i1 %2772, %2773
  %2775 = zext i1 %2774 to i8
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2775, i8* %2776, align 1
  %2777 = trunc i64 %2771 to i32
  %2778 = and i32 %2777, 255
  %2779 = call i32 @llvm.ctpop.i32(i32 %2778)
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  %2782 = xor i8 %2781, 1
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2782, i8* %2783, align 1
  %2784 = xor i64 %2768, %2767
  %2785 = xor i64 %2784, %2771
  %2786 = lshr i64 %2785, 4
  %2787 = trunc i64 %2786 to i8
  %2788 = and i8 %2787, 1
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2788, i8* %2789, align 1
  %2790 = icmp eq i64 %2771, 0
  %2791 = zext i1 %2790 to i8
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2791, i8* %2792, align 1
  %2793 = lshr i64 %2771, 63
  %2794 = trunc i64 %2793 to i8
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2794, i8* %2795, align 1
  %2796 = lshr i64 %2767, 63
  %2797 = lshr i64 %2768, 63
  %2798 = xor i64 %2793, %2796
  %2799 = xor i64 %2793, %2797
  %2800 = add i64 %2798, %2799
  %2801 = icmp eq i64 %2800, 2
  %2802 = zext i1 %2801 to i8
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2802, i8* %2803, align 1
  store %struct.Memory* %loadMem_431721, %struct.Memory** %MEMORY
  %loadMem_431724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 33
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 7
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RDX.i56 = bitcast %union.anon* %2809 to i64*
  %2810 = load i64, i64* %RDX.i56
  %2811 = add i64 %2810, 552
  %2812 = load i64, i64* %PC.i55
  %2813 = add i64 %2812, 10
  store i64 %2813, i64* %PC.i55
  %2814 = inttoptr i64 %2811 to i32*
  store i32 0, i32* %2814
  store %struct.Memory* %loadMem_431724, %struct.Memory** %MEMORY
  %loadMem_43172e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 33
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 5
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %2820 to i64*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 15
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %2823 to i64*
  %2824 = load i64, i64* %RBP.i54
  %2825 = sub i64 %2824, 4
  %2826 = load i64, i64* %PC.i52
  %2827 = add i64 %2826, 4
  store i64 %2827, i64* %PC.i52
  %2828 = inttoptr i64 %2825 to i32*
  %2829 = load i32, i32* %2828
  %2830 = sext i32 %2829 to i64
  store i64 %2830, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_43172e, %struct.Memory** %MEMORY
  %loadMem_431732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 33
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %2833 to i64*
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 5
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %2836 to i64*
  %2837 = load i64, i64* %RCX.i51
  %2838 = load i64, i64* %PC.i50
  %2839 = add i64 %2838, 7
  store i64 %2839, i64* %PC.i50
  %2840 = sext i64 %2837 to i128
  %2841 = and i128 %2840, -18446744073709551616
  %2842 = zext i64 %2837 to i128
  %2843 = or i128 %2841, %2842
  %2844 = mul i128 564, %2843
  %2845 = trunc i128 %2844 to i64
  store i64 %2845, i64* %RCX.i51, align 8
  %2846 = sext i64 %2845 to i128
  %2847 = icmp ne i128 %2846, %2844
  %2848 = zext i1 %2847 to i8
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2848, i8* %2849, align 1
  %2850 = trunc i128 %2844 to i32
  %2851 = and i32 %2850, 255
  %2852 = call i32 @llvm.ctpop.i32(i32 %2851)
  %2853 = trunc i32 %2852 to i8
  %2854 = and i8 %2853, 1
  %2855 = xor i8 %2854, 1
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2855, i8* %2856, align 1
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2857, align 1
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2858, align 1
  %2859 = lshr i64 %2845, 63
  %2860 = trunc i64 %2859 to i8
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2860, i8* %2861, align 1
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2848, i8* %2862, align 1
  store %struct.Memory* %loadMem_431732, %struct.Memory** %MEMORY
  %loadMem_431739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 1
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %2868 to i64*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 7
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RDX.i49 = bitcast %union.anon* %2871 to i64*
  %2872 = load i64, i64* %RAX.i48
  %2873 = load i64, i64* %PC.i47
  %2874 = add i64 %2873, 3
  store i64 %2874, i64* %PC.i47
  store i64 %2872, i64* %RDX.i49, align 8
  store %struct.Memory* %loadMem_431739, %struct.Memory** %MEMORY
  %loadMem_43173c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 33
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 5
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 7
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RDX.i46 = bitcast %union.anon* %2883 to i64*
  %2884 = load i64, i64* %RDX.i46
  %2885 = load i64, i64* %RCX.i45
  %2886 = load i64, i64* %PC.i44
  %2887 = add i64 %2886, 3
  store i64 %2887, i64* %PC.i44
  %2888 = add i64 %2885, %2884
  store i64 %2888, i64* %RDX.i46, align 8
  %2889 = icmp ult i64 %2888, %2884
  %2890 = icmp ult i64 %2888, %2885
  %2891 = or i1 %2889, %2890
  %2892 = zext i1 %2891 to i8
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2892, i8* %2893, align 1
  %2894 = trunc i64 %2888 to i32
  %2895 = and i32 %2894, 255
  %2896 = call i32 @llvm.ctpop.i32(i32 %2895)
  %2897 = trunc i32 %2896 to i8
  %2898 = and i8 %2897, 1
  %2899 = xor i8 %2898, 1
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2899, i8* %2900, align 1
  %2901 = xor i64 %2885, %2884
  %2902 = xor i64 %2901, %2888
  %2903 = lshr i64 %2902, 4
  %2904 = trunc i64 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2905, i8* %2906, align 1
  %2907 = icmp eq i64 %2888, 0
  %2908 = zext i1 %2907 to i8
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2908, i8* %2909, align 1
  %2910 = lshr i64 %2888, 63
  %2911 = trunc i64 %2910 to i8
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2911, i8* %2912, align 1
  %2913 = lshr i64 %2884, 63
  %2914 = lshr i64 %2885, 63
  %2915 = xor i64 %2910, %2913
  %2916 = xor i64 %2910, %2914
  %2917 = add i64 %2915, %2916
  %2918 = icmp eq i64 %2917, 2
  %2919 = zext i1 %2918 to i8
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2919, i8* %2920, align 1
  store %struct.Memory* %loadMem_43173c, %struct.Memory** %MEMORY
  %loadMem_43173f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 33
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2923 to i64*
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 7
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2926 to i64*
  %2927 = load i64, i64* %RDX.i
  %2928 = add i64 %2927, 556
  %2929 = load i64, i64* %PC.i43
  %2930 = add i64 %2929, 10
  store i64 %2930, i64* %PC.i43
  %2931 = inttoptr i64 %2928 to i32*
  store i32 0, i32* %2931
  store %struct.Memory* %loadMem_43173f, %struct.Memory** %MEMORY
  %loadMem_431749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 33
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %2934 to i64*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 5
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %2937 to i64*
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 15
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %2940 to i64*
  %2941 = load i64, i64* %RBP.i42
  %2942 = sub i64 %2941, 4
  %2943 = load i64, i64* %PC.i40
  %2944 = add i64 %2943, 4
  store i64 %2944, i64* %PC.i40
  %2945 = inttoptr i64 %2942 to i32*
  %2946 = load i32, i32* %2945
  %2947 = sext i32 %2946 to i64
  store i64 %2947, i64* %RCX.i41, align 8
  store %struct.Memory* %loadMem_431749, %struct.Memory** %MEMORY
  %loadMem_43174d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %2950 to i64*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 5
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %RCX.i39 = bitcast %union.anon* %2953 to i64*
  %2954 = load i64, i64* %RCX.i39
  %2955 = load i64, i64* %PC.i38
  %2956 = add i64 %2955, 7
  store i64 %2956, i64* %PC.i38
  %2957 = sext i64 %2954 to i128
  %2958 = and i128 %2957, -18446744073709551616
  %2959 = zext i64 %2954 to i128
  %2960 = or i128 %2958, %2959
  %2961 = mul i128 564, %2960
  %2962 = trunc i128 %2961 to i64
  store i64 %2962, i64* %RCX.i39, align 8
  %2963 = sext i64 %2962 to i128
  %2964 = icmp ne i128 %2963, %2961
  %2965 = zext i1 %2964 to i8
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2965, i8* %2966, align 1
  %2967 = trunc i128 %2961 to i32
  %2968 = and i32 %2967, 255
  %2969 = call i32 @llvm.ctpop.i32(i32 %2968)
  %2970 = trunc i32 %2969 to i8
  %2971 = and i8 %2970, 1
  %2972 = xor i8 %2971, 1
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2972, i8* %2973, align 1
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2974, align 1
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2975, align 1
  %2976 = lshr i64 %2962, 63
  %2977 = trunc i64 %2976 to i8
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2977, i8* %2978, align 1
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2965, i8* %2979, align 1
  store %struct.Memory* %loadMem_43174d, %struct.Memory** %MEMORY
  %loadMem_431754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 33
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 1
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %2985 to i64*
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 5
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %RAX.i36
  %2990 = load i64, i64* %RCX.i37
  %2991 = load i64, i64* %PC.i35
  %2992 = add i64 %2991, 3
  store i64 %2992, i64* %PC.i35
  %2993 = add i64 %2990, %2989
  store i64 %2993, i64* %RAX.i36, align 8
  %2994 = icmp ult i64 %2993, %2989
  %2995 = icmp ult i64 %2993, %2990
  %2996 = or i1 %2994, %2995
  %2997 = zext i1 %2996 to i8
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2997, i8* %2998, align 1
  %2999 = trunc i64 %2993 to i32
  %3000 = and i32 %2999, 255
  %3001 = call i32 @llvm.ctpop.i32(i32 %3000)
  %3002 = trunc i32 %3001 to i8
  %3003 = and i8 %3002, 1
  %3004 = xor i8 %3003, 1
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3004, i8* %3005, align 1
  %3006 = xor i64 %2990, %2989
  %3007 = xor i64 %3006, %2993
  %3008 = lshr i64 %3007, 4
  %3009 = trunc i64 %3008 to i8
  %3010 = and i8 %3009, 1
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3010, i8* %3011, align 1
  %3012 = icmp eq i64 %2993, 0
  %3013 = zext i1 %3012 to i8
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3013, i8* %3014, align 1
  %3015 = lshr i64 %2993, 63
  %3016 = trunc i64 %3015 to i8
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3016, i8* %3017, align 1
  %3018 = lshr i64 %2989, 63
  %3019 = lshr i64 %2990, 63
  %3020 = xor i64 %3015, %3018
  %3021 = xor i64 %3015, %3019
  %3022 = add i64 %3020, %3021
  %3023 = icmp eq i64 %3022, 2
  %3024 = zext i1 %3023 to i8
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3024, i8* %3025, align 1
  store %struct.Memory* %loadMem_431754, %struct.Memory** %MEMORY
  %loadMem_431757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 33
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3028 to i64*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 1
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3033 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3032, i64 0, i64 0
  %XMM0.i34 = bitcast %union.VectorReg* %3033 to %union.vec128_t*
  %3034 = load i64, i64* %RAX.i33
  %3035 = add i64 %3034, 68
  %3036 = bitcast %union.vec128_t* %XMM0.i34 to i8*
  %3037 = load i64, i64* %PC.i32
  %3038 = add i64 %3037, 5
  store i64 %3038, i64* %PC.i32
  %3039 = bitcast i8* %3036 to <2 x float>*
  %3040 = load <2 x float>, <2 x float>* %3039, align 1
  %3041 = extractelement <2 x float> %3040, i32 0
  %3042 = inttoptr i64 %3035 to float*
  store float %3041, float* %3042
  store %struct.Memory* %loadMem_431757, %struct.Memory** %MEMORY
  %loadMem1_43175c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 33
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %3045 to i64*
  %3046 = load i64, i64* %PC.i31
  %3047 = add i64 %3046, 726644
  %3048 = load i64, i64* %PC.i31
  %3049 = add i64 %3048, 5
  %3050 = load i64, i64* %PC.i31
  %3051 = add i64 %3050, 5
  store i64 %3051, i64* %PC.i31
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3053 = load i64, i64* %3052, align 8
  %3054 = add i64 %3053, -8
  %3055 = inttoptr i64 %3054 to i64*
  store i64 %3049, i64* %3055
  store i64 %3054, i64* %3052, align 8
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3047, i64* %3056, align 8
  store %struct.Memory* %loadMem1_43175c, %struct.Memory** %MEMORY
  %loadMem2_43175c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43175c = load i64, i64* %3
  %call2_43175c = call %struct.Memory* @sub_4e2dd0.gg_drand(%struct.State* %0, i64 %loadPC_43175c, %struct.Memory* %loadMem2_43175c)
  store %struct.Memory* %call2_43175c, %struct.Memory** %MEMORY
  %loadMem_431761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 1
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %3062 to i64*
  %3063 = load i64, i64* %PC.i29
  %3064 = add i64 %3063, 10
  store i64 %3064, i64* %PC.i29
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_431761, %struct.Memory** %MEMORY
  %loadMem_43176b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 33
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3069 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3068, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %3069 to %"class.std::bitset"*
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3071 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3070, i64 0, i64 0
  %XMM0.i28 = bitcast %union.VectorReg* %3071 to %union.vec128_t*
  %3072 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %3073 = bitcast %union.vec128_t* %XMM0.i28 to i8*
  %3074 = load i64, i64* %PC.i27
  %3075 = add i64 %3074, 4
  store i64 %3075, i64* %PC.i27
  %3076 = bitcast i8* %3072 to <2 x i32>*
  %3077 = load <2 x i32>, <2 x i32>* %3076, align 1
  %3078 = getelementptr inbounds i8, i8* %3072, i64 8
  %3079 = bitcast i8* %3078 to <2 x i32>*
  %3080 = load <2 x i32>, <2 x i32>* %3079, align 1
  %3081 = bitcast i8* %3073 to double*
  %3082 = load double, double* %3081, align 1
  %3083 = fptrunc double %3082 to float
  %3084 = bitcast i8* %3072 to float*
  store float %3083, float* %3084, align 1
  %3085 = extractelement <2 x i32> %3077, i32 1
  %3086 = getelementptr inbounds i8, i8* %3072, i64 4
  %3087 = bitcast i8* %3086 to i32*
  store i32 %3085, i32* %3087, align 1
  %3088 = extractelement <2 x i32> %3080, i32 0
  %3089 = bitcast i8* %3078 to i32*
  store i32 %3088, i32* %3089, align 1
  %3090 = extractelement <2 x i32> %3080, i32 1
  %3091 = getelementptr inbounds i8, i8* %3072, i64 12
  %3092 = bitcast i8* %3091 to i32*
  store i32 %3090, i32* %3092, align 1
  store %struct.Memory* %loadMem_43176b, %struct.Memory** %MEMORY
  %loadMem_43176f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 33
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 5
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RCX.i25 = bitcast %union.anon* %3098 to i64*
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 15
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %3101 to i64*
  %3102 = load i64, i64* %RBP.i26
  %3103 = sub i64 %3102, 4
  %3104 = load i64, i64* %PC.i24
  %3105 = add i64 %3104, 4
  store i64 %3105, i64* %PC.i24
  %3106 = inttoptr i64 %3103 to i32*
  %3107 = load i32, i32* %3106
  %3108 = sext i32 %3107 to i64
  store i64 %3108, i64* %RCX.i25, align 8
  store %struct.Memory* %loadMem_43176f, %struct.Memory** %MEMORY
  %loadMem_431773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 33
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 5
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %3114 to i64*
  %3115 = load i64, i64* %RCX.i23
  %3116 = load i64, i64* %PC.i22
  %3117 = add i64 %3116, 7
  store i64 %3117, i64* %PC.i22
  %3118 = sext i64 %3115 to i128
  %3119 = and i128 %3118, -18446744073709551616
  %3120 = zext i64 %3115 to i128
  %3121 = or i128 %3119, %3120
  %3122 = mul i128 564, %3121
  %3123 = trunc i128 %3122 to i64
  store i64 %3123, i64* %RCX.i23, align 8
  %3124 = sext i64 %3123 to i128
  %3125 = icmp ne i128 %3124, %3122
  %3126 = zext i1 %3125 to i8
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3126, i8* %3127, align 1
  %3128 = trunc i128 %3122 to i32
  %3129 = and i32 %3128, 255
  %3130 = call i32 @llvm.ctpop.i32(i32 %3129)
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  %3133 = xor i8 %3132, 1
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3133, i8* %3134, align 1
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3135, align 1
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3136, align 1
  %3137 = lshr i64 %3123, 63
  %3138 = trunc i64 %3137 to i8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3138, i8* %3139, align 1
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3126, i8* %3140, align 1
  store %struct.Memory* %loadMem_431773, %struct.Memory** %MEMORY
  %loadMem_43177a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 33
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %3143 to i64*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 1
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %3146 to i64*
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 5
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3149 to i64*
  %3150 = load i64, i64* %RAX.i21
  %3151 = load i64, i64* %RCX.i
  %3152 = load i64, i64* %PC.i20
  %3153 = add i64 %3152, 3
  store i64 %3153, i64* %PC.i20
  %3154 = add i64 %3151, %3150
  store i64 %3154, i64* %RAX.i21, align 8
  %3155 = icmp ult i64 %3154, %3150
  %3156 = icmp ult i64 %3154, %3151
  %3157 = or i1 %3155, %3156
  %3158 = zext i1 %3157 to i8
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3158, i8* %3159, align 1
  %3160 = trunc i64 %3154 to i32
  %3161 = and i32 %3160, 255
  %3162 = call i32 @llvm.ctpop.i32(i32 %3161)
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = xor i8 %3164, 1
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3165, i8* %3166, align 1
  %3167 = xor i64 %3151, %3150
  %3168 = xor i64 %3167, %3154
  %3169 = lshr i64 %3168, 4
  %3170 = trunc i64 %3169 to i8
  %3171 = and i8 %3170, 1
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3171, i8* %3172, align 1
  %3173 = icmp eq i64 %3154, 0
  %3174 = zext i1 %3173 to i8
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3174, i8* %3175, align 1
  %3176 = lshr i64 %3154, 63
  %3177 = trunc i64 %3176 to i8
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3177, i8* %3178, align 1
  %3179 = lshr i64 %3150, 63
  %3180 = lshr i64 %3151, 63
  %3181 = xor i64 %3176, %3179
  %3182 = xor i64 %3176, %3180
  %3183 = add i64 %3181, %3182
  %3184 = icmp eq i64 %3183, 2
  %3185 = zext i1 %3184 to i8
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3185, i8* %3186, align 1
  store %struct.Memory* %loadMem_43177a, %struct.Memory** %MEMORY
  %loadMem_43177d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3188 = getelementptr inbounds %struct.GPR, %struct.GPR* %3187, i32 0, i32 33
  %3189 = getelementptr inbounds %struct.Reg, %struct.Reg* %3188, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3189 to i64*
  %3190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3191 = getelementptr inbounds %struct.GPR, %struct.GPR* %3190, i32 0, i32 1
  %3192 = getelementptr inbounds %struct.Reg, %struct.Reg* %3191, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %3192 to i64*
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3194 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3193, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %3194 to %union.vec128_t*
  %3195 = load i64, i64* %RAX.i19
  %3196 = add i64 %3195, 560
  %3197 = bitcast %union.vec128_t* %XMM0.i to i8*
  %3198 = load i64, i64* %PC.i18
  %3199 = add i64 %3198, 8
  store i64 %3199, i64* %PC.i18
  %3200 = bitcast i8* %3197 to <2 x float>*
  %3201 = load <2 x float>, <2 x float>* %3200, align 1
  %3202 = extractelement <2 x float> %3201, i32 0
  %3203 = inttoptr i64 %3196 to float*
  store float %3202, float* %3203
  store %struct.Memory* %loadMem_43177d, %struct.Memory** %MEMORY
  %loadMem_431785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 33
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3206 to i64*
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3208 = getelementptr inbounds %struct.GPR, %struct.GPR* %3207, i32 0, i32 1
  %3209 = getelementptr inbounds %struct.Reg, %struct.Reg* %3208, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %3209 to i64*
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 15
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %3212 to i64*
  %3213 = load i64, i64* %RBP.i17
  %3214 = sub i64 %3213, 4
  %3215 = load i64, i64* %PC.i15
  %3216 = add i64 %3215, 4
  store i64 %3216, i64* %PC.i15
  %3217 = inttoptr i64 %3214 to i32*
  %3218 = load i32, i32* %3217
  %3219 = sext i32 %3218 to i64
  store i64 %3219, i64* %RAX.i16, align 8
  store %struct.Memory* %loadMem_431785, %struct.Memory** %MEMORY
  %loadMem_431789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3221 = getelementptr inbounds %struct.GPR, %struct.GPR* %3220, i32 0, i32 33
  %3222 = getelementptr inbounds %struct.Reg, %struct.Reg* %3221, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3222 to i64*
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3224 = getelementptr inbounds %struct.GPR, %struct.GPR* %3223, i32 0, i32 1
  %3225 = getelementptr inbounds %struct.Reg, %struct.Reg* %3224, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %3225 to i64*
  %3226 = load i64, i64* %RAX.i14
  %3227 = mul i64 %3226, 4
  %3228 = add i64 %3227, 12097552
  %3229 = load i64, i64* %PC.i13
  %3230 = add i64 %3229, 11
  store i64 %3230, i64* %PC.i13
  %3231 = inttoptr i64 %3228 to i32*
  store i32 0, i32* %3231
  store %struct.Memory* %loadMem_431789, %struct.Memory** %MEMORY
  br label %block_.L_431794

block_.L_431794:                                  ; preds = %block_.L_431701, %block_43151e
  %loadMem_431794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 33
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3234 to i64*
  %3235 = load i64, i64* %PC.i12
  %3236 = add i64 %3235, 5
  %3237 = load i64, i64* %PC.i12
  %3238 = add i64 %3237, 5
  store i64 %3238, i64* %PC.i12
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3236, i64* %3239, align 8
  store %struct.Memory* %loadMem_431794, %struct.Memory** %MEMORY
  br label %block_.L_431799

block_.L_431799:                                  ; preds = %block_.L_431794
  %loadMem_431799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 1
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 15
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %3248 to i64*
  %3249 = load i64, i64* %RBP.i11
  %3250 = sub i64 %3249, 4
  %3251 = load i64, i64* %PC.i9
  %3252 = add i64 %3251, 3
  store i64 %3252, i64* %PC.i9
  %3253 = inttoptr i64 %3250 to i32*
  %3254 = load i32, i32* %3253
  %3255 = zext i32 %3254 to i64
  store i64 %3255, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_431799, %struct.Memory** %MEMORY
  %loadMem_43179c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 33
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3258 to i64*
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 1
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3261 to i64*
  %3262 = load i64, i64* %RAX.i
  %3263 = load i64, i64* %PC.i8
  %3264 = add i64 %3263, 3
  store i64 %3264, i64* %PC.i8
  %3265 = trunc i64 %3262 to i32
  %3266 = add i32 1, %3265
  %3267 = zext i32 %3266 to i64
  store i64 %3267, i64* %RAX.i, align 8
  %3268 = icmp ult i32 %3266, %3265
  %3269 = icmp ult i32 %3266, 1
  %3270 = or i1 %3268, %3269
  %3271 = zext i1 %3270 to i8
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3271, i8* %3272, align 1
  %3273 = and i32 %3266, 255
  %3274 = call i32 @llvm.ctpop.i32(i32 %3273)
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = xor i8 %3276, 1
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3277, i8* %3278, align 1
  %3279 = xor i64 1, %3262
  %3280 = trunc i64 %3279 to i32
  %3281 = xor i32 %3280, %3266
  %3282 = lshr i32 %3281, 4
  %3283 = trunc i32 %3282 to i8
  %3284 = and i8 %3283, 1
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3284, i8* %3285, align 1
  %3286 = icmp eq i32 %3266, 0
  %3287 = zext i1 %3286 to i8
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3287, i8* %3288, align 1
  %3289 = lshr i32 %3266, 31
  %3290 = trunc i32 %3289 to i8
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3290, i8* %3291, align 1
  %3292 = lshr i32 %3265, 31
  %3293 = xor i32 %3289, %3292
  %3294 = add i32 %3293, %3289
  %3295 = icmp eq i32 %3294, 2
  %3296 = zext i1 %3295 to i8
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3296, i8* %3297, align 1
  store %struct.Memory* %loadMem_43179c, %struct.Memory** %MEMORY
  %loadMem_43179f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 33
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3300 to i64*
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3302 = getelementptr inbounds %struct.GPR, %struct.GPR* %3301, i32 0, i32 1
  %3303 = getelementptr inbounds %struct.Reg, %struct.Reg* %3302, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3303 to i32*
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3305 = getelementptr inbounds %struct.GPR, %struct.GPR* %3304, i32 0, i32 15
  %3306 = getelementptr inbounds %struct.Reg, %struct.Reg* %3305, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3306 to i64*
  %3307 = load i64, i64* %RBP.i7
  %3308 = sub i64 %3307, 4
  %3309 = load i32, i32* %EAX.i
  %3310 = zext i32 %3309 to i64
  %3311 = load i64, i64* %PC.i6
  %3312 = add i64 %3311, 3
  store i64 %3312, i64* %PC.i6
  %3313 = inttoptr i64 %3308 to i32*
  store i32 %3309, i32* %3313
  store %struct.Memory* %loadMem_43179f, %struct.Memory** %MEMORY
  %loadMem_4317a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 33
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3316 to i64*
  %3317 = load i64, i64* %PC.i5
  %3318 = add i64 %3317, -657
  %3319 = load i64, i64* %PC.i5
  %3320 = add i64 %3319, 5
  store i64 %3320, i64* %PC.i5
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3318, i64* %3321, align 8
  store %struct.Memory* %loadMem_4317a2, %struct.Memory** %MEMORY
  br label %block_.L_431511

block_.L_4317a7:                                  ; preds = %block_.L_431511
  %loadMem_4317a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3323 = getelementptr inbounds %struct.GPR, %struct.GPR* %3322, i32 0, i32 33
  %3324 = getelementptr inbounds %struct.Reg, %struct.Reg* %3323, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3324 to i64*
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 13
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3327 to i64*
  %3328 = load i64, i64* %RSP.i
  %3329 = load i64, i64* %PC.i4
  %3330 = add i64 %3329, 4
  store i64 %3330, i64* %PC.i4
  %3331 = add i64 16, %3328
  store i64 %3331, i64* %RSP.i, align 8
  %3332 = icmp ult i64 %3331, %3328
  %3333 = icmp ult i64 %3331, 16
  %3334 = or i1 %3332, %3333
  %3335 = zext i1 %3334 to i8
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3335, i8* %3336, align 1
  %3337 = trunc i64 %3331 to i32
  %3338 = and i32 %3337, 255
  %3339 = call i32 @llvm.ctpop.i32(i32 %3338)
  %3340 = trunc i32 %3339 to i8
  %3341 = and i8 %3340, 1
  %3342 = xor i8 %3341, 1
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3342, i8* %3343, align 1
  %3344 = xor i64 16, %3328
  %3345 = xor i64 %3344, %3331
  %3346 = lshr i64 %3345, 4
  %3347 = trunc i64 %3346 to i8
  %3348 = and i8 %3347, 1
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3348, i8* %3349, align 1
  %3350 = icmp eq i64 %3331, 0
  %3351 = zext i1 %3350 to i8
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3351, i8* %3352, align 1
  %3353 = lshr i64 %3331, 63
  %3354 = trunc i64 %3353 to i8
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3354, i8* %3355, align 1
  %3356 = lshr i64 %3328, 63
  %3357 = xor i64 %3353, %3356
  %3358 = add i64 %3357, %3353
  %3359 = icmp eq i64 %3358, 2
  %3360 = zext i1 %3359 to i8
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3360, i8* %3361, align 1
  store %struct.Memory* %loadMem_4317a7, %struct.Memory** %MEMORY
  %loadMem_4317ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 33
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3364 to i64*
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 15
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3367 to i64*
  %3368 = load i64, i64* %PC.i2
  %3369 = add i64 %3368, 1
  store i64 %3369, i64* %PC.i2
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3371 = load i64, i64* %3370, align 8
  %3372 = add i64 %3371, 8
  %3373 = inttoptr i64 %3371 to i64*
  %3374 = load i64, i64* %3373
  store i64 %3374, i64* %RBP.i3, align 8
  store i64 %3372, i64* %3370, align 8
  store %struct.Memory* %loadMem_4317ab, %struct.Memory** %MEMORY
  %loadMem_4317ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 33
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3377 to i64*
  %3378 = load i64, i64* %PC.i1
  %3379 = add i64 %3378, 1
  store i64 %3379, i64* %PC.i1
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3382 = load i64, i64* %3381, align 8
  %3383 = inttoptr i64 %3382 to i64*
  %3384 = load i64, i64* %3383
  store i64 %3384, i64* %3380, align 8
  %3385 = add i64 %3382, 8
  store i64 %3385, i64* %3381, align 8
  store %struct.Memory* %loadMem_4317ac, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4317ac
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

define %struct.Memory* @routine_subq__0x10___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 16
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 16
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
  %23 = xor i64 16, %9
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

define %struct.Memory* @routine_movl__0x0__0xb8c044(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0xb8c044_type* @G_0xb8c044 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xb6e914(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0xb6e914_type* @G_0xb6e914 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xb8b864(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0xb8b864_type* @G_0xb8b864 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xb89e58(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0xb89e58_type* @G_0xb89e58 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xb4bce4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0xb4bce4_type* @G_0xb4bce4 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xb8b858(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 0, i32* bitcast (%G_0xb8b858_type* @G_0xb8b858 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 400
  %16 = icmp ult i32 %14, 400
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
  %25 = xor i32 %14, 400
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

define %struct.Memory* @routine_jge_.L_4317a7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_431794(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_0xb1c0d__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb1c0d__rip__type* @G_0xb1c0d__rip_ to i64)
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

define %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb9d8f0_type* @G__0xb9d8f0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 564, %15
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

define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_movss__xmm1____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %12 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = extractelement <2 x float> %16, i32 0
  %18 = inttoptr i64 %11 to float*
  store float %17, float* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x4__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 4
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

define %struct.Memory* @routine_movss__xmm1__0x8__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 8
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

define %struct.Memory* @routine_movss__xmm1__0xc__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 12
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

define %struct.Memory* @routine_movss__xmm1__0x10__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 16
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

define %struct.Memory* @routine_movss__xmm1__0x14__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 20
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

define %struct.Memory* @routine_movl__0x0__0x1c__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x18__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 24
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

define %struct.Memory* @routine_movl__0x0__0x20__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0x24__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 36
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

define %struct.Memory* @routine_movss__xmm1__0x28__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 40
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

define %struct.Memory* @routine_movss__xmm1__0x2c__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 44
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

define %struct.Memory* @routine_movss__xmm1__0x30__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 48
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

define %struct.Memory* @routine_movss__xmm1__0x34__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 52
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

define %struct.Memory* @routine_movss__xmm0__0x38__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* %RDX
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

define %struct.Memory* @routine_movss__xmm1__0x3c__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 60
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

define %struct.Memory* @routine_movss__xmm0__0x40__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 64
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

define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x78__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 120
  %16 = icmp ult i32 %14, 120
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
  %25 = xor i32 %14, 120
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

define %struct.Memory* @routine_jge_.L_431701(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__0x48__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 72
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 -1, i32* %19
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

define %struct.Memory* @routine_jmpq_.L_4316c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_0xb1a03__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0xb1a03__rip__type* @G_0xb1a03__rip_ to i64)
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

define %struct.Memory* @routine_movl__0x0__0x228__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 552
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x22c__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x44__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 68
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

define %struct.Memory* @routine_callq_.gg_drand(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__0x230__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 560
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0xb89810___rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 12097552
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  store i32 0, i32* %14
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_431799(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_431511(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x10___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 16, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 16
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
  %25 = xor i64 16, %9
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
