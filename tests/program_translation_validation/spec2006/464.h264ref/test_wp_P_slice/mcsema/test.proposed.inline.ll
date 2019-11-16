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
%G_0x15ed__rip__type = type <{ [8 x i8] }>
%G_0x16f2__rip__type = type <{ [8 x i8] }>
%G_0x2763f8__rip__type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d4740_type = type <{ [8 x i8] }>
%G_0x6f9728_type = type <{ [8 x i8] }>
%G_0x70f6d0_type = type <{ [4 x i8] }>
%G_0x710790_type = type <{ [4 x i8] }>
%G_0x7107a0_type = type <{ [4 x i8] }>
%G_0x7242a0_type = type <{ [4 x i8] }>
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
@G_0x15ed__rip_ = global %G_0x15ed__rip__type zeroinitializer
@G_0x16f2__rip_ = global %G_0x16f2__rip__type zeroinitializer
@G_0x2763f8__rip_ = global %G_0x2763f8__rip__type zeroinitializer
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G_0x6d4740 = global %G_0x6d4740_type zeroinitializer
@G_0x6f9728 = global %G_0x6f9728_type zeroinitializer
@G_0x70f6d0 = global %G_0x70f6d0_type zeroinitializer
@G_0x710790 = global %G_0x710790_type zeroinitializer
@G_0x7107a0 = global %G_0x7107a0_type zeroinitializer
@G_0x7242a0 = global %G_0x7242a0_type zeroinitializer

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
define %struct.Memory* @test_wp_P_slice(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4afd90 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4afd90, %struct.Memory** %MEMORY
  %loadMem_4afd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i527 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i527
  %27 = load i64, i64* %PC.i526
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i526
  store i64 %26, i64* %RBP.i528, align 8
  store %struct.Memory* %loadMem_4afd91, %struct.Memory** %MEMORY
  %loadMem_4afd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i972 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i972
  %36 = load i64, i64* %PC.i971
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i971
  %38 = sub i64 %35, 832
  store i64 %38, i64* %RSP.i972, align 8
  %39 = icmp ult i64 %35, 832
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
  %49 = xor i64 832, %35
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
  store %struct.Memory* %loadMem_4afd94, %struct.Memory** %MEMORY
  %loadMem_4afd9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i1018 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i1019 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %73 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 0
  %XMM0.i1020 = bitcast %union.VectorReg* %73 to %union.vec128_t*
  %74 = bitcast %"class.std::bitset"* %YMM0.i1019 to i8*
  %75 = bitcast %"class.std::bitset"* %YMM0.i1019 to i8*
  %76 = bitcast %union.vec128_t* %XMM0.i1020 to i8*
  %77 = load i64, i64* %PC.i1018
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC.i1018
  %79 = bitcast i8* %75 to i64*
  %80 = load i64, i64* %79, align 1
  %81 = getelementptr inbounds i8, i8* %75, i64 8
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 1
  %84 = bitcast i8* %76 to i64*
  %85 = load i64, i64* %84, align 1
  %86 = getelementptr inbounds i8, i8* %76, i64 8
  %87 = bitcast i8* %86 to i64*
  %88 = load i64, i64* %87, align 1
  %89 = xor i64 %85, %80
  %90 = xor i64 %88, %83
  %91 = trunc i64 %89 to i32
  %92 = lshr i64 %89, 32
  %93 = trunc i64 %92 to i32
  %94 = bitcast i8* %74 to i32*
  store i32 %91, i32* %94, align 1
  %95 = getelementptr inbounds i8, i8* %74, i64 4
  %96 = bitcast i8* %95 to i32*
  store i32 %93, i32* %96, align 1
  %97 = trunc i64 %90 to i32
  %98 = getelementptr inbounds i8, i8* %74, i64 8
  %99 = bitcast i8* %98 to i32*
  store i32 %97, i32* %99, align 1
  %100 = lshr i64 %90, 32
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds i8, i8* %74, i64 12
  %103 = bitcast i8* %102 to i32*
  store i32 %101, i32* %103, align 1
  store %struct.Memory* %loadMem_4afd9b, %struct.Memory** %MEMORY
  %loadMem_4afd9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i1016 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 11
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %109 to i32*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 15
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RBP.i1017 = bitcast %union.anon* %112 to i64*
  %113 = load i64, i64* %RBP.i1017
  %114 = sub i64 %113, 4
  %115 = load i32, i32* %EDI.i
  %116 = zext i32 %115 to i64
  %117 = load i64, i64* %PC.i1016
  %118 = add i64 %117, 3
  store i64 %118, i64* %PC.i1016
  %119 = inttoptr i64 %114 to i32*
  store i32 %115, i32* %119
  store %struct.Memory* %loadMem_4afd9e, %struct.Memory** %MEMORY
  %loadMem_4afda1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 33
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %PC.i1013 = bitcast %union.anon* %122 to i64*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 15
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %RBP.i1014 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %126, i64 0, i64 0
  %XMM0.i1015 = bitcast %union.VectorReg* %127 to %union.vec128_t*
  %128 = load i64, i64* %RBP.i1014
  %129 = sub i64 %128, 24
  %130 = bitcast %union.vec128_t* %XMM0.i1015 to i8*
  %131 = load i64, i64* %PC.i1013
  %132 = add i64 %131, 5
  store i64 %132, i64* %PC.i1013
  %133 = bitcast i8* %130 to double*
  %134 = load double, double* %133, align 1
  %135 = inttoptr i64 %129 to double*
  store double %134, double* %135
  store %struct.Memory* %loadMem_4afda1, %struct.Memory** %MEMORY
  %loadMem_4afda6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 33
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %PC.i1011 = bitcast %union.anon* %138 to i64*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RAX.i1012 = bitcast %union.anon* %141 to i64*
  %142 = load i64, i64* %PC.i1011
  %143 = add i64 %142, 8
  store i64 %143, i64* %PC.i1011
  %144 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %144, i64* %RAX.i1012, align 8
  store %struct.Memory* %loadMem_4afda6, %struct.Memory** %MEMORY
  %loadMem_4afdae = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i1009 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RAX.i1010 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %RAX.i1010
  %152 = add i64 %151, 72400
  %153 = load i64, i64* %PC.i1009
  %154 = add i64 %153, 7
  store i64 %154, i64* %PC.i1009
  %155 = inttoptr i64 %152 to i32*
  %156 = load i32, i32* %155
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %157, align 1
  %158 = and i32 %156, 255
  %159 = call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %162, i8* %163, align 1
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %164, align 1
  %165 = icmp eq i32 %156, 0
  %166 = zext i1 %165 to i8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %166, i8* %167, align 1
  %168 = lshr i32 %156, 31
  %169 = trunc i32 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %169, i8* %170, align 1
  %171 = lshr i32 %156, 31
  %172 = xor i32 %168, %171
  %173 = add i32 %172, %171
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %175, i8* %176, align 1
  store %struct.Memory* %loadMem_4afdae, %struct.Memory** %MEMORY
  %loadMem_4afdb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 33
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %PC.i1008 = bitcast %union.anon* %179 to i64*
  %180 = load i64, i64* %PC.i1008
  %181 = add i64 %180, 111
  %182 = load i64, i64* %PC.i1008
  %183 = add i64 %182, 6
  %184 = load i64, i64* %PC.i1008
  %185 = add i64 %184, 6
  store i64 %185, i64* %PC.i1008
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %187 = load i8, i8* %186, align 1
  store i8 %187, i8* %BRANCH_TAKEN, align 1
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %189 = icmp ne i8 %187, 0
  %190 = select i1 %189, i64 %181, i64 %183
  store i64 %190, i64* %188, align 8
  store %struct.Memory* %loadMem_4afdb5, %struct.Memory** %MEMORY
  %loadBr_4afdb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afdb5 = icmp eq i8 %loadBr_4afdb5, 1
  br i1 %cmpBr_4afdb5, label %block_.L_4afe24, label %block_4afdbb

block_4afdbb:                                     ; preds = %entry
  %loadMem_4afdbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 33
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %PC.i1006 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %RAX.i1007 = bitcast %union.anon* %196 to i64*
  %197 = load i64, i64* %PC.i1006
  %198 = add i64 %197, 8
  store i64 %198, i64* %PC.i1006
  %199 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %199, i64* %RAX.i1007, align 8
  store %struct.Memory* %loadMem_4afdbb, %struct.Memory** %MEMORY
  %loadMem_4afdc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i1004 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %RAX.i1005 = bitcast %union.anon* %205 to i64*
  %206 = load i64, i64* %RAX.i1005
  %207 = add i64 %206, 14168
  %208 = load i64, i64* %PC.i1004
  %209 = add i64 %208, 7
  store i64 %209, i64* %PC.i1004
  %210 = inttoptr i64 %207 to i64*
  %211 = load i64, i64* %210
  store i64 %211, i64* %RAX.i1005, align 8
  store %struct.Memory* %loadMem_4afdc3, %struct.Memory** %MEMORY
  %loadMem_4afdca = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i1002 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RCX.i1003 = bitcast %union.anon* %217 to i64*
  %218 = load i64, i64* %PC.i1002
  %219 = add i64 %218, 8
  store i64 %219, i64* %PC.i1002
  %220 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %220, i64* %RCX.i1003, align 8
  store %struct.Memory* %loadMem_4afdca, %struct.Memory** %MEMORY
  %loadMem_4afdd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 33
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %PC.i1000 = bitcast %union.anon* %223 to i64*
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %225 = getelementptr inbounds %struct.GPR, %struct.GPR* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.Reg, %struct.Reg* %225, i32 0, i32 0
  %RCX.i1001 = bitcast %union.anon* %226 to i64*
  %227 = load i64, i64* %RCX.i1001
  %228 = add i64 %227, 12
  %229 = load i64, i64* %PC.i1000
  %230 = add i64 %229, 4
  store i64 %230, i64* %PC.i1000
  %231 = inttoptr i64 %228 to i32*
  %232 = load i32, i32* %231
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %RCX.i1001, align 8
  store %struct.Memory* %loadMem_4afdd2, %struct.Memory** %MEMORY
  %loadMem_4afdd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i998 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 5
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RCX.i999 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %RCX.i999
  %241 = load i64, i64* %PC.i998
  %242 = add i64 %241, 7
  store i64 %242, i64* %PC.i998
  %243 = sext i64 %240 to i128
  %244 = and i128 %243, -18446744073709551616
  %245 = zext i64 %240 to i128
  %246 = or i128 %244, %245
  %247 = mul i128 632, %246
  %248 = trunc i128 %247 to i64
  store i64 %248, i64* %RCX.i999, align 8
  %249 = sext i64 %248 to i128
  %250 = icmp ne i128 %249, %247
  %251 = zext i1 %250 to i8
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %251, i8* %252, align 1
  %253 = trunc i128 %247 to i32
  %254 = and i32 %253, 255
  %255 = call i32 @llvm.ctpop.i32(i32 %254)
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = xor i8 %257, 1
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %258, i8* %259, align 1
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %260, align 1
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %261, align 1
  %262 = lshr i64 %248, 63
  %263 = trunc i64 %262 to i8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %263, i8* %264, align 1
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %251, i8* %265, align 1
  store %struct.Memory* %loadMem_4afdd6, %struct.Memory** %MEMORY
  %loadMem_4afddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 33
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %PC.i995 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RAX.i996 = bitcast %union.anon* %271 to i64*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 5
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RCX.i997 = bitcast %union.anon* %274 to i64*
  %275 = load i64, i64* %RAX.i996
  %276 = load i64, i64* %RCX.i997
  %277 = load i64, i64* %PC.i995
  %278 = add i64 %277, 3
  store i64 %278, i64* %PC.i995
  %279 = add i64 %276, %275
  store i64 %279, i64* %RAX.i996, align 8
  %280 = icmp ult i64 %279, %275
  %281 = icmp ult i64 %279, %276
  %282 = or i1 %280, %281
  %283 = zext i1 %282 to i8
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %283, i8* %284, align 1
  %285 = trunc i64 %279 to i32
  %286 = and i32 %285, 255
  %287 = call i32 @llvm.ctpop.i32(i32 %286)
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  %290 = xor i8 %289, 1
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %290, i8* %291, align 1
  %292 = xor i64 %276, %275
  %293 = xor i64 %292, %279
  %294 = lshr i64 %293, 4
  %295 = trunc i64 %294 to i8
  %296 = and i8 %295, 1
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %296, i8* %297, align 1
  %298 = icmp eq i64 %279, 0
  %299 = zext i1 %298 to i8
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %299, i8* %300, align 1
  %301 = lshr i64 %279, 63
  %302 = trunc i64 %301 to i8
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %302, i8* %303, align 1
  %304 = lshr i64 %275, 63
  %305 = lshr i64 %276, 63
  %306 = xor i64 %301, %304
  %307 = xor i64 %301, %305
  %308 = add i64 %306, %307
  %309 = icmp eq i64 %308, 2
  %310 = zext i1 %309 to i8
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %310, i8* %311, align 1
  store %struct.Memory* %loadMem_4afddd, %struct.Memory** %MEMORY
  %loadMem_4afde0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i993 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RAX.i994 = bitcast %union.anon* %317 to i64*
  %318 = load i64, i64* %RAX.i994
  %319 = add i64 %318, 532
  %320 = load i64, i64* %PC.i993
  %321 = add i64 %320, 7
  store i64 %321, i64* %PC.i993
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %324, align 1
  %325 = and i32 %323, 255
  %326 = call i32 @llvm.ctpop.i32(i32 %325)
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %329, i8* %330, align 1
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %331, align 1
  %332 = icmp eq i32 %323, 0
  %333 = zext i1 %332 to i8
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %333, i8* %334, align 1
  %335 = lshr i32 %323, 31
  %336 = trunc i32 %335 to i8
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %336, i8* %337, align 1
  %338 = lshr i32 %323, 31
  %339 = xor i32 %335, %338
  %340 = add i32 %339, %338
  %341 = icmp eq i32 %340, 2
  %342 = zext i1 %341 to i8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %342, i8* %343, align 1
  store %struct.Memory* %loadMem_4afde0, %struct.Memory** %MEMORY
  %loadMem_4afde7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i992 = bitcast %union.anon* %346 to i64*
  %347 = load i64, i64* %PC.i992
  %348 = add i64 %347, 61
  %349 = load i64, i64* %PC.i992
  %350 = add i64 %349, 6
  %351 = load i64, i64* %PC.i992
  %352 = add i64 %351, 6
  store i64 %352, i64* %PC.i992
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %354 = load i8, i8* %353, align 1
  store i8 %354, i8* %BRANCH_TAKEN, align 1
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %356 = icmp ne i8 %354, 0
  %357 = select i1 %356, i64 %348, i64 %350
  store i64 %357, i64* %355, align 8
  store %struct.Memory* %loadMem_4afde7, %struct.Memory** %MEMORY
  %loadBr_4afde7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afde7 = icmp eq i8 %loadBr_4afde7, 1
  br i1 %cmpBr_4afde7, label %block_.L_4afe24, label %block_4afded

block_4afded:                                     ; preds = %block_4afdbb
  %loadMem_4afded = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i990 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RAX.i991 = bitcast %union.anon* %363 to i64*
  %364 = load i64, i64* %PC.i990
  %365 = add i64 %364, 5
  store i64 %365, i64* %PC.i990
  store i64 2, i64* %RAX.i991, align 8
  store %struct.Memory* %loadMem_4afded, %struct.Memory** %MEMORY
  %loadMem_4afdf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 33
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %PC.i988 = bitcast %union.anon* %368 to i64*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 5
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %RCX.i989 = bitcast %union.anon* %371 to i64*
  %372 = load i64, i64* %PC.i988
  %373 = add i64 %372, 5
  store i64 %373, i64* %PC.i988
  store i64 4, i64* %RCX.i989, align 8
  store %struct.Memory* %loadMem_4afdf2, %struct.Memory** %MEMORY
  %loadMem_4afdf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i986 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 7
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RDX.i987 = bitcast %union.anon* %379 to i64*
  %380 = load i64, i64* %PC.i986
  %381 = add i64 %380, 8
  store i64 %381, i64* %PC.i986
  %382 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %382, i64* %RDX.i987, align 8
  store %struct.Memory* %loadMem_4afdf7, %struct.Memory** %MEMORY
  %loadMem_4afdff = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i983 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 7
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RDX.i984 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 9
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %RSI.i985 = bitcast %union.anon* %391 to i64*
  %392 = load i64, i64* %RDX.i984
  %393 = add i64 %392, 12
  %394 = load i64, i64* %PC.i983
  %395 = add i64 %394, 3
  store i64 %395, i64* %PC.i983
  %396 = inttoptr i64 %393 to i32*
  %397 = load i32, i32* %396
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RSI.i985, align 8
  store %struct.Memory* %loadMem_4afdff, %struct.Memory** %MEMORY
  %loadMem_4afe02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 33
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %EAX.i981 = bitcast %union.anon* %404 to i32*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 15
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %RBP.i982 = bitcast %union.anon* %407 to i64*
  %408 = load i64, i64* %RBP.i982
  %409 = sub i64 %408, 940
  %410 = load i32, i32* %EAX.i981
  %411 = zext i32 %410 to i64
  %412 = load i64, i64* %PC.i980
  %413 = add i64 %412, 6
  store i64 %413, i64* %PC.i980
  %414 = inttoptr i64 %409 to i32*
  store i32 %410, i32* %414
  store %struct.Memory* %loadMem_4afe02, %struct.Memory** %MEMORY
  %loadMem_4afe08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i977 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 9
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %ESI.i978 = bitcast %union.anon* %420 to i32*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %RAX.i979 = bitcast %union.anon* %423 to i64*
  %424 = load i32, i32* %ESI.i978
  %425 = zext i32 %424 to i64
  %426 = load i64, i64* %PC.i977
  %427 = add i64 %426, 2
  store i64 %427, i64* %PC.i977
  %428 = and i64 %425, 4294967295
  store i64 %428, i64* %RAX.i979, align 8
  store %struct.Memory* %loadMem_4afe08, %struct.Memory** %MEMORY
  %loadMem_4afe0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %431 to i64*
  %432 = load i64, i64* %PC.i976
  %433 = add i64 %432, 1
  store i64 %433, i64* %PC.i976
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %436 = bitcast %union.anon* %435 to i32*
  %437 = load i32, i32* %436, align 8
  %438 = sext i32 %437 to i64
  %439 = lshr i64 %438, 32
  store i64 %439, i64* %434, align 8
  store %struct.Memory* %loadMem_4afe0a, %struct.Memory** %MEMORY
  %loadMem_4afe0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i973 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 9
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RSI.i974 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 15
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RBP.i975 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %RBP.i975
  %450 = sub i64 %449, 940
  %451 = load i64, i64* %PC.i973
  %452 = add i64 %451, 6
  store i64 %452, i64* %PC.i973
  %453 = inttoptr i64 %450 to i32*
  %454 = load i32, i32* %453
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RSI.i974, align 8
  store %struct.Memory* %loadMem_4afe0b, %struct.Memory** %MEMORY
  %loadMem_4afe11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i969 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 9
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %ESI.i970 = bitcast %union.anon* %461 to i32*
  %462 = load i32, i32* %ESI.i970
  %463 = zext i32 %462 to i64
  %464 = load i64, i64* %PC.i969
  %465 = add i64 %464, 2
  store i64 %465, i64* %PC.i969
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %467 = bitcast %union.anon* %466 to i32*
  %468 = load i32, i32* %467, align 8
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %471 = bitcast %union.anon* %470 to i32*
  %472 = load i32, i32* %471, align 8
  %473 = zext i32 %472 to i64
  %474 = shl i64 %463, 32
  %475 = ashr exact i64 %474, 32
  %476 = shl i64 %473, 32
  %477 = or i64 %476, %469
  %478 = sdiv i64 %477, %475
  %479 = shl i64 %478, 32
  %480 = ashr exact i64 %479, 32
  %481 = icmp eq i64 %478, %480
  br i1 %481, label %486, label %482

; <label>:482:                                    ; preds = %block_4afded
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %484, %struct.Memory* %loadMem_4afe11)
  br label %routine_idivl__esi.exit

; <label>:486:                                    ; preds = %block_4afded
  %487 = srem i64 %477, %475
  %488 = getelementptr inbounds %union.anon, %union.anon* %466, i64 0, i32 0
  %489 = and i64 %478, 4294967295
  store i64 %489, i64* %488, align 8
  %490 = getelementptr inbounds %union.anon, %union.anon* %470, i64 0, i32 0
  %491 = and i64 %487, 4294967295
  store i64 %491, i64* %490, align 8
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %492, align 1
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %493, align 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %494, align 1
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %495, align 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %496, align 1
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %497, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %482, %486
  %498 = phi %struct.Memory* [ %485, %482 ], [ %loadMem_4afe11, %486 ]
  store %struct.Memory* %498, %struct.Memory** %MEMORY
  %loadMem_4afe13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 7
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %EDX.i968 = bitcast %union.anon* %504 to i32*
  %505 = load i32, i32* %EDX.i968
  %506 = zext i32 %505 to i64
  %507 = load i64, i64* %PC.i967
  %508 = add i64 %507, 3
  store i64 %508, i64* %PC.i967
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %509, align 1
  %510 = and i32 %505, 255
  %511 = call i32 @llvm.ctpop.i32(i32 %510)
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = xor i8 %513, 1
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %514, i8* %515, align 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %516, align 1
  %517 = icmp eq i32 %505, 0
  %518 = zext i1 %517 to i8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %518, i8* %519, align 1
  %520 = lshr i32 %505, 31
  %521 = trunc i32 %520 to i8
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %521, i8* %522, align 1
  %523 = lshr i32 %505, 31
  %524 = xor i32 %520, %523
  %525 = add i32 %524, %523
  %526 = icmp eq i32 %525, 2
  %527 = zext i1 %526 to i8
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %527, i8* %528, align 1
  store %struct.Memory* %loadMem_4afe13, %struct.Memory** %MEMORY
  %loadMem_4afe16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 5
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %ECX.i965 = bitcast %union.anon* %534 to i32*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 9
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RSI.i966 = bitcast %union.anon* %537 to i64*
  %538 = load i32, i32* %ECX.i965
  %539 = zext i32 %538 to i64
  %540 = load i64, i64* %PC.i964
  %541 = add i64 %540, 3
  store i64 %541, i64* %PC.i964
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %543 = load i8, i8* %542, align 1
  %544 = icmp eq i8 %543, 0
  %545 = load i64, i64* %RSI.i966, align 8
  %546 = select i1 %544, i64 %539, i64 %545
  %547 = and i64 %546, 4294967295
  store i64 %547, i64* %RSI.i966, align 8
  store %struct.Memory* %loadMem_4afe16, %struct.Memory** %MEMORY
  %loadMem_4afe19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i962 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 9
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %553 to i32*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 15
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RBP.i963 = bitcast %union.anon* %556 to i64*
  %557 = load i64, i64* %RBP.i963
  %558 = sub i64 %557, 944
  %559 = load i32, i32* %ESI.i
  %560 = zext i32 %559 to i64
  %561 = load i64, i64* %PC.i962
  %562 = add i64 %561, 6
  store i64 %562, i64* %PC.i962
  %563 = inttoptr i64 %558 to i32*
  store i32 %559, i32* %563
  store %struct.Memory* %loadMem_4afe19, %struct.Memory** %MEMORY
  %loadMem_4afe1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 33
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %566 to i64*
  %567 = load i64, i64* %PC.i961
  %568 = add i64 %567, 18
  %569 = load i64, i64* %PC.i961
  %570 = add i64 %569, 5
  store i64 %570, i64* %PC.i961
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %568, i64* %571, align 8
  store %struct.Memory* %loadMem_4afe1f, %struct.Memory** %MEMORY
  br label %block_.L_4afe31

block_.L_4afe24:                                  ; preds = %block_4afdbb, %entry
  %loadMem_4afe24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 33
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %EAX.i959 = bitcast %union.anon* %577 to i32*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 1
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RAX.i960 = bitcast %union.anon* %580 to i64*
  %581 = load i64, i64* %RAX.i960
  %582 = load i32, i32* %EAX.i959
  %583 = zext i32 %582 to i64
  %584 = load i64, i64* %PC.i958
  %585 = add i64 %584, 2
  store i64 %585, i64* %PC.i958
  %586 = xor i64 %583, %581
  %587 = trunc i64 %586 to i32
  %588 = and i64 %586, 4294967295
  store i64 %588, i64* %RAX.i960, align 8
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %589, align 1
  %590 = and i32 %587, 255
  %591 = call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %594, i8* %595, align 1
  %596 = icmp eq i32 %587, 0
  %597 = zext i1 %596 to i8
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %597, i8* %598, align 1
  %599 = lshr i32 %587, 31
  %600 = trunc i32 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %600, i8* %601, align 1
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %602, align 1
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %603, align 1
  store %struct.Memory* %loadMem_4afe24, %struct.Memory** %MEMORY
  %loadMem_4afe26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 33
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 1
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %EAX.i956 = bitcast %union.anon* %609 to i32*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 15
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RBP.i957 = bitcast %union.anon* %612 to i64*
  %613 = load i64, i64* %RBP.i957
  %614 = sub i64 %613, 944
  %615 = load i32, i32* %EAX.i956
  %616 = zext i32 %615 to i64
  %617 = load i64, i64* %PC.i955
  %618 = add i64 %617, 6
  store i64 %618, i64* %PC.i955
  %619 = inttoptr i64 %614 to i32*
  store i32 %615, i32* %619
  store %struct.Memory* %loadMem_4afe26, %struct.Memory** %MEMORY
  %loadMem_4afe2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 33
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %PC.i954 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %PC.i954
  %624 = add i64 %623, 5
  %625 = load i64, i64* %PC.i954
  %626 = add i64 %625, 5
  store i64 %626, i64* %PC.i954
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %624, i64* %627, align 8
  store %struct.Memory* %loadMem_4afe2c, %struct.Memory** %MEMORY
  br label %block_.L_4afe31

block_.L_4afe31:                                  ; preds = %block_.L_4afe24, %routine_idivl__esi.exit
  %loadMem_4afe31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 33
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 1
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RAX.i952 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 15
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RBP.i953 = bitcast %union.anon* %636 to i64*
  %637 = load i64, i64* %RBP.i953
  %638 = sub i64 %637, 944
  %639 = load i64, i64* %PC.i951
  %640 = add i64 %639, 6
  store i64 %640, i64* %PC.i951
  %641 = inttoptr i64 %638 to i32*
  %642 = load i32, i32* %641
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RAX.i952, align 8
  store %struct.Memory* %loadMem_4afe31, %struct.Memory** %MEMORY
  %loadMem_4afe37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 5
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %RCX.i950 = bitcast %union.anon* %649 to i64*
  %650 = load i64, i64* %PC.i949
  %651 = add i64 %650, 5
  store i64 %651, i64* %PC.i949
  store i64 1, i64* %RCX.i950, align 8
  store %struct.Memory* %loadMem_4afe37, %struct.Memory** %MEMORY
  %loadMem_4afe3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 33
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 1
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %EAX.i947 = bitcast %union.anon* %657 to i32*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 15
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RBP.i948 = bitcast %union.anon* %660 to i64*
  %661 = load i64, i64* %RBP.i948
  %662 = sub i64 %661, 188
  %663 = load i32, i32* %EAX.i947
  %664 = zext i32 %663 to i64
  %665 = load i64, i64* %PC.i946
  %666 = add i64 %665, 6
  store i64 %666, i64* %PC.i946
  %667 = inttoptr i64 %662 to i32*
  store i32 %663, i32* %667
  store %struct.Memory* %loadMem_4afe3c, %struct.Memory** %MEMORY
  %loadMem_4afe42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 15
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RBP.i945 = bitcast %union.anon* %673 to i64*
  %674 = load i64, i64* %RBP.i945
  %675 = sub i64 %674, 936
  %676 = load i64, i64* %PC.i944
  %677 = add i64 %676, 10
  store i64 %677, i64* %PC.i944
  %678 = inttoptr i64 %675 to i32*
  store i32 0, i32* %678
  store %struct.Memory* %loadMem_4afe42, %struct.Memory** %MEMORY
  %loadMem_4afe4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %681 to i64*
  %682 = load i64, i64* %PC.i943
  %683 = add i64 %682, 11
  store i64 %683, i64* %PC.i943
  store i32 5, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*)
  store %struct.Memory* %loadMem_4afe4c, %struct.Memory** %MEMORY
  %loadMem_4afe57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %686 to i64*
  %687 = load i64, i64* %PC.i942
  %688 = add i64 %687, 11
  store i64 %688, i64* %PC.i942
  store i32 5, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*)
  store %struct.Memory* %loadMem_4afe57, %struct.Memory** %MEMORY
  %loadMem_4afe62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 33
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 1
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %RAX.i941 = bitcast %union.anon* %694 to i64*
  %695 = load i64, i64* %PC.i940
  %696 = add i64 %695, 7
  store i64 %696, i64* %PC.i940
  %697 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*)
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RAX.i941, align 8
  store %struct.Memory* %loadMem_4afe62, %struct.Memory** %MEMORY
  %loadMem_4afe69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 33
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %PC.i938 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 1
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RAX.i939 = bitcast %union.anon* %704 to i64*
  %705 = load i64, i64* %RAX.i939
  %706 = load i64, i64* %PC.i938
  %707 = add i64 %706, 3
  store i64 %707, i64* %PC.i938
  %708 = trunc i64 %705 to i32
  %709 = sub i32 %708, 1
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %RAX.i939, align 8
  %711 = icmp ult i32 %708, 1
  %712 = zext i1 %711 to i8
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %712, i8* %713, align 1
  %714 = and i32 %709, 255
  %715 = call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %718, i8* %719, align 1
  %720 = xor i64 1, %705
  %721 = trunc i64 %720 to i32
  %722 = xor i32 %721, %709
  %723 = lshr i32 %722, 4
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %725, i8* %726, align 1
  %727 = icmp eq i32 %709, 0
  %728 = zext i1 %727 to i8
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %728, i8* %729, align 1
  %730 = lshr i32 %709, 31
  %731 = trunc i32 %730 to i8
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %731, i8* %732, align 1
  %733 = lshr i32 %708, 31
  %734 = xor i32 %730, %733
  %735 = add i32 %734, %733
  %736 = icmp eq i32 %735, 2
  %737 = zext i1 %736 to i8
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %737, i8* %738, align 1
  store %struct.Memory* %loadMem_4afe69, %struct.Memory** %MEMORY
  %loadMem_4afe6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 33
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %PC.i935 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 5
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %ECX.i936 = bitcast %union.anon* %744 to i32*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 15
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RBP.i937 = bitcast %union.anon* %747 to i64*
  %748 = load i64, i64* %RBP.i937
  %749 = sub i64 %748, 948
  %750 = load i32, i32* %ECX.i936
  %751 = zext i32 %750 to i64
  %752 = load i64, i64* %PC.i935
  %753 = add i64 %752, 6
  store i64 %753, i64* %PC.i935
  %754 = inttoptr i64 %749 to i32*
  store i32 %750, i32* %754
  store %struct.Memory* %loadMem_4afe6c, %struct.Memory** %MEMORY
  %loadMem_4afe72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 1
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %EAX.i933 = bitcast %union.anon* %760 to i32*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 5
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RCX.i934 = bitcast %union.anon* %763 to i64*
  %764 = load i32, i32* %EAX.i933
  %765 = zext i32 %764 to i64
  %766 = load i64, i64* %PC.i932
  %767 = add i64 %766, 2
  store i64 %767, i64* %PC.i932
  %768 = and i64 %765, 4294967295
  store i64 %768, i64* %RCX.i934, align 8
  store %struct.Memory* %loadMem_4afe72, %struct.Memory** %MEMORY
  %loadMem_4afe74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 1
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %RAX.i930 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 15
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %RBP.i931 = bitcast %union.anon* %777 to i64*
  %778 = load i64, i64* %RBP.i931
  %779 = sub i64 %778, 948
  %780 = load i64, i64* %PC.i929
  %781 = add i64 %780, 6
  store i64 %781, i64* %PC.i929
  %782 = inttoptr i64 %779 to i32*
  %783 = load i32, i32* %782
  %784 = zext i32 %783 to i64
  store i64 %784, i64* %RAX.i930, align 8
  store %struct.Memory* %loadMem_4afe74, %struct.Memory** %MEMORY
  %loadMem_4afe7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 5
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %791 = bitcast %union.anon* %790 to %struct.anon.2*
  %CL.i926 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %791, i32 0, i32 0
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %793 = getelementptr inbounds %struct.GPR, %struct.GPR* %792, i32 0, i32 1
  %794 = getelementptr inbounds %struct.Reg, %struct.Reg* %793, i32 0, i32 0
  %RAX.i927 = bitcast %union.anon* %794 to i64*
  %795 = load i64, i64* %RAX.i927
  %796 = load i8, i8* %CL.i926
  %797 = zext i8 %796 to i64
  %798 = load i64, i64* %PC.i925
  %799 = add i64 %798, 2
  store i64 %799, i64* %PC.i925
  %800 = trunc i64 %797 to i5
  switch i5 %800, label %807 [
    i5 0, label %routine_shll__cl___eax.exit928
    i5 1, label %801
  ]

; <label>:801:                                    ; preds = %block_.L_4afe31
  %802 = trunc i64 %795 to i32
  %803 = shl i32 %802, 1
  %804 = icmp slt i32 %802, 0
  %805 = icmp slt i32 %803, 0
  %806 = xor i1 %804, %805
  br label %816

; <label>:807:                                    ; preds = %block_.L_4afe31
  %808 = and i64 %797, 31
  %809 = add i64 %808, 4294967295
  %810 = and i64 %795, 4294967295
  %811 = and i64 %809, 4294967295
  %812 = shl i64 %810, %811
  %813 = trunc i64 %812 to i32
  %814 = icmp slt i32 %813, 0
  %815 = shl i32 %813, 1
  br label %816

; <label>:816:                                    ; preds = %807, %801
  %817 = phi i1 [ %804, %801 ], [ %814, %807 ]
  %818 = phi i1 [ %806, %801 ], [ false, %807 ]
  %819 = phi i32 [ %803, %801 ], [ %815, %807 ]
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RAX.i927, align 8
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %822 = zext i1 %817 to i8
  store i8 %822, i8* %821, align 1
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %824 = and i32 %819, 254
  %825 = call i32 @llvm.ctpop.i32(i32 %824)
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  store i8 %828, i8* %823, align 1
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %829, align 1
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %831 = icmp eq i32 %819, 0
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %830, align 1
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %834 = lshr i32 %819, 31
  %835 = trunc i32 %834 to i8
  store i8 %835, i8* %833, align 1
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %837 = zext i1 %818 to i8
  store i8 %837, i8* %836, align 1
  br label %routine_shll__cl___eax.exit928

routine_shll__cl___eax.exit928:                   ; preds = %block_.L_4afe31, %816
  store %struct.Memory* %loadMem_4afe7a, %struct.Memory** %MEMORY
  %loadMem_4afe7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 33
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %PC.i923 = bitcast %union.anon* %840 to i64*
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 1
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %EAX.i924 = bitcast %union.anon* %843 to i32*
  %844 = load i32, i32* %EAX.i924
  %845 = zext i32 %844 to i64
  %846 = load i64, i64* %PC.i923
  %847 = add i64 %846, 7
  store i64 %847, i64* %PC.i923
  store i32 %844, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*)
  store %struct.Memory* %loadMem_4afe7c, %struct.Memory** %MEMORY
  %loadMem_4afe83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 33
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 1
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %RAX.i922 = bitcast %union.anon* %853 to i64*
  %854 = load i64, i64* %PC.i921
  %855 = add i64 %854, 7
  store i64 %855, i64* %PC.i921
  %856 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*)
  %857 = zext i32 %856 to i64
  store i64 %857, i64* %RAX.i922, align 8
  store %struct.Memory* %loadMem_4afe83, %struct.Memory** %MEMORY
  %loadMem_4afe8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 1
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RAX.i920 = bitcast %union.anon* %863 to i64*
  %864 = load i64, i64* %RAX.i920
  %865 = load i64, i64* %PC.i919
  %866 = add i64 %865, 3
  store i64 %866, i64* %PC.i919
  %867 = trunc i64 %864 to i32
  %868 = sub i32 %867, 1
  %869 = zext i32 %868 to i64
  store i64 %869, i64* %RAX.i920, align 8
  %870 = icmp ult i32 %867, 1
  %871 = zext i1 %870 to i8
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %871, i8* %872, align 1
  %873 = and i32 %868, 255
  %874 = call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %877, i8* %878, align 1
  %879 = xor i64 1, %864
  %880 = trunc i64 %879 to i32
  %881 = xor i32 %880, %868
  %882 = lshr i32 %881, 4
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %884, i8* %885, align 1
  %886 = icmp eq i32 %868, 0
  %887 = zext i1 %886 to i8
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %887, i8* %888, align 1
  %889 = lshr i32 %868, 31
  %890 = trunc i32 %889 to i8
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %890, i8* %891, align 1
  %892 = lshr i32 %867, 31
  %893 = xor i32 %889, %892
  %894 = add i32 %893, %892
  %895 = icmp eq i32 %894, 2
  %896 = zext i1 %895 to i8
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %896, i8* %897, align 1
  store %struct.Memory* %loadMem_4afe8a, %struct.Memory** %MEMORY
  %loadMem_4afe8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 1
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %EAX.i917 = bitcast %union.anon* %903 to i32*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 5
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RCX.i918 = bitcast %union.anon* %906 to i64*
  %907 = load i32, i32* %EAX.i917
  %908 = zext i32 %907 to i64
  %909 = load i64, i64* %PC.i916
  %910 = add i64 %909, 2
  store i64 %910, i64* %PC.i916
  %911 = and i64 %908, 4294967295
  store i64 %911, i64* %RCX.i918, align 8
  store %struct.Memory* %loadMem_4afe8d, %struct.Memory** %MEMORY
  %loadMem_4afe8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 33
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %914 to i64*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 1
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %RAX.i914 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 15
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %RBP.i915 = bitcast %union.anon* %920 to i64*
  %921 = load i64, i64* %RBP.i915
  %922 = sub i64 %921, 948
  %923 = load i64, i64* %PC.i913
  %924 = add i64 %923, 6
  store i64 %924, i64* %PC.i913
  %925 = inttoptr i64 %922 to i32*
  %926 = load i32, i32* %925
  %927 = zext i32 %926 to i64
  store i64 %927, i64* %RAX.i914, align 8
  store %struct.Memory* %loadMem_4afe8f, %struct.Memory** %MEMORY
  %loadMem_4afe95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 33
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %PC.i909 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 5
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %934 = bitcast %union.anon* %933 to %struct.anon.2*
  %CL.i910 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %934, i32 0, i32 0
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 1
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %RAX.i911 = bitcast %union.anon* %937 to i64*
  %938 = load i64, i64* %RAX.i911
  %939 = load i8, i8* %CL.i910
  %940 = zext i8 %939 to i64
  %941 = load i64, i64* %PC.i909
  %942 = add i64 %941, 2
  store i64 %942, i64* %PC.i909
  %943 = trunc i64 %940 to i5
  switch i5 %943, label %950 [
    i5 0, label %routine_shll__cl___eax.exit912
    i5 1, label %944
  ]

; <label>:944:                                    ; preds = %routine_shll__cl___eax.exit928
  %945 = trunc i64 %938 to i32
  %946 = shl i32 %945, 1
  %947 = icmp slt i32 %945, 0
  %948 = icmp slt i32 %946, 0
  %949 = xor i1 %947, %948
  br label %959

; <label>:950:                                    ; preds = %routine_shll__cl___eax.exit928
  %951 = and i64 %940, 31
  %952 = add i64 %951, 4294967295
  %953 = and i64 %938, 4294967295
  %954 = and i64 %952, 4294967295
  %955 = shl i64 %953, %954
  %956 = trunc i64 %955 to i32
  %957 = icmp slt i32 %956, 0
  %958 = shl i32 %956, 1
  br label %959

; <label>:959:                                    ; preds = %950, %944
  %960 = phi i1 [ %947, %944 ], [ %957, %950 ]
  %961 = phi i1 [ %949, %944 ], [ false, %950 ]
  %962 = phi i32 [ %946, %944 ], [ %958, %950 ]
  %963 = zext i32 %962 to i64
  store i64 %963, i64* %RAX.i911, align 8
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %965 = zext i1 %960 to i8
  store i8 %965, i8* %964, align 1
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %967 = and i32 %962, 254
  %968 = call i32 @llvm.ctpop.i32(i32 %967)
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  %971 = xor i8 %970, 1
  store i8 %971, i8* %966, align 1
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %972, align 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %974 = icmp eq i32 %962, 0
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %973, align 1
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %977 = lshr i32 %962, 31
  %978 = trunc i32 %977 to i8
  store i8 %978, i8* %976, align 1
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %980 = zext i1 %961 to i8
  store i8 %980, i8* %979, align 1
  br label %routine_shll__cl___eax.exit912

routine_shll__cl___eax.exit912:                   ; preds = %routine_shll__cl___eax.exit928, %959
  store %struct.Memory* %loadMem_4afe95, %struct.Memory** %MEMORY
  %loadMem_4afe97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 1
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %EAX.i908 = bitcast %union.anon* %986 to i32*
  %987 = load i32, i32* %EAX.i908
  %988 = zext i32 %987 to i64
  %989 = load i64, i64* %PC.i907
  %990 = add i64 %989, 7
  store i64 %990, i64* %PC.i907
  store i32 %987, i32* bitcast (%G_0x710790_type* @G_0x710790 to i32*)
  store %struct.Memory* %loadMem_4afe97, %struct.Memory** %MEMORY
  %loadMem_4afe9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 5
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RCX.i906 = bitcast %union.anon* %996 to i64*
  %997 = load i64, i64* %PC.i905
  %998 = add i64 %997, 7
  store i64 %998, i64* %PC.i905
  %999 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*)
  %1000 = zext i32 %999 to i64
  store i64 %1000, i64* %RCX.i906, align 8
  store %struct.Memory* %loadMem_4afe9e, %struct.Memory** %MEMORY
  %loadMem_4afea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 33
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 1
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RAX.i903 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 15
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RBP.i904 = bitcast %union.anon* %1009 to i64*
  %1010 = load i64, i64* %RBP.i904
  %1011 = sub i64 %1010, 948
  %1012 = load i64, i64* %PC.i902
  %1013 = add i64 %1012, 6
  store i64 %1013, i64* %PC.i902
  %1014 = inttoptr i64 %1011 to i32*
  %1015 = load i32, i32* %1014
  %1016 = zext i32 %1015 to i64
  store i64 %1016, i64* %RAX.i903, align 8
  store %struct.Memory* %loadMem_4afea5, %struct.Memory** %MEMORY
  %loadMem_4afeab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 5
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %1023 = bitcast %union.anon* %1022 to %struct.anon.2*
  %CL.i899 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1023, i32 0, i32 0
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 1
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RAX.i900 = bitcast %union.anon* %1026 to i64*
  %1027 = load i64, i64* %RAX.i900
  %1028 = load i8, i8* %CL.i899
  %1029 = zext i8 %1028 to i64
  %1030 = load i64, i64* %PC.i898
  %1031 = add i64 %1030, 2
  store i64 %1031, i64* %PC.i898
  %1032 = trunc i64 %1029 to i5
  switch i5 %1032, label %1039 [
    i5 0, label %routine_shll__cl___eax.exit901
    i5 1, label %1033
  ]

; <label>:1033:                                   ; preds = %routine_shll__cl___eax.exit912
  %1034 = trunc i64 %1027 to i32
  %1035 = shl i32 %1034, 1
  %1036 = icmp slt i32 %1034, 0
  %1037 = icmp slt i32 %1035, 0
  %1038 = xor i1 %1036, %1037
  br label %1048

; <label>:1039:                                   ; preds = %routine_shll__cl___eax.exit912
  %1040 = and i64 %1029, 31
  %1041 = add i64 %1040, 4294967295
  %1042 = and i64 %1027, 4294967295
  %1043 = and i64 %1041, 4294967295
  %1044 = shl i64 %1042, %1043
  %1045 = trunc i64 %1044 to i32
  %1046 = icmp slt i32 %1045, 0
  %1047 = shl i32 %1045, 1
  br label %1048

; <label>:1048:                                   ; preds = %1039, %1033
  %1049 = phi i1 [ %1036, %1033 ], [ %1046, %1039 ]
  %1050 = phi i1 [ %1038, %1033 ], [ false, %1039 ]
  %1051 = phi i32 [ %1035, %1033 ], [ %1047, %1039 ]
  %1052 = zext i32 %1051 to i64
  store i64 %1052, i64* %RAX.i900, align 8
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1054 = zext i1 %1049 to i8
  store i8 %1054, i8* %1053, align 1
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1056 = and i32 %1051, 254
  %1057 = call i32 @llvm.ctpop.i32(i32 %1056)
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  %1060 = xor i8 %1059, 1
  store i8 %1060, i8* %1055, align 1
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1061, align 1
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1063 = icmp eq i32 %1051, 0
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %1062, align 1
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1066 = lshr i32 %1051, 31
  %1067 = trunc i32 %1066 to i8
  store i8 %1067, i8* %1065, align 1
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1069 = zext i1 %1050 to i8
  store i8 %1069, i8* %1068, align 1
  br label %routine_shll__cl___eax.exit901

routine_shll__cl___eax.exit901:                   ; preds = %routine_shll__cl___eax.exit912, %1048
  store %struct.Memory* %loadMem_4afeab, %struct.Memory** %MEMORY
  %loadMem_4afead = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 1
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %EAX.i896 = bitcast %union.anon* %1075 to i32*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 15
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RBP.i897 = bitcast %union.anon* %1078 to i64*
  %1079 = load i64, i64* %RBP.i897
  %1080 = sub i64 %1079, 180
  %1081 = load i32, i32* %EAX.i896
  %1082 = zext i32 %1081 to i64
  %1083 = load i64, i64* %PC.i895
  %1084 = add i64 %1083, 6
  store i64 %1084, i64* %PC.i895
  %1085 = inttoptr i64 %1080 to i32*
  store i32 %1081, i32* %1085
  store %struct.Memory* %loadMem_4afead, %struct.Memory** %MEMORY
  %loadMem_4afeb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i893 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 5
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RCX.i894 = bitcast %union.anon* %1091 to i64*
  %1092 = load i64, i64* %PC.i893
  %1093 = add i64 %1092, 7
  store i64 %1093, i64* %PC.i893
  %1094 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*)
  %1095 = zext i32 %1094 to i64
  store i64 %1095, i64* %RCX.i894, align 8
  store %struct.Memory* %loadMem_4afeb3, %struct.Memory** %MEMORY
  %loadMem_4afeba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 33
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %PC.i890 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 1
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %RAX.i891 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 15
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RBP.i892 = bitcast %union.anon* %1104 to i64*
  %1105 = load i64, i64* %RBP.i892
  %1106 = sub i64 %1105, 948
  %1107 = load i64, i64* %PC.i890
  %1108 = add i64 %1107, 6
  store i64 %1108, i64* %PC.i890
  %1109 = inttoptr i64 %1106 to i32*
  %1110 = load i32, i32* %1109
  %1111 = zext i32 %1110 to i64
  store i64 %1111, i64* %RAX.i891, align 8
  store %struct.Memory* %loadMem_4afeba, %struct.Memory** %MEMORY
  %loadMem_4afec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 5
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %1118 = bitcast %union.anon* %1117 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1118, i32 0, i32 0
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 1
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %RAX.i889 = bitcast %union.anon* %1121 to i64*
  %1122 = load i64, i64* %RAX.i889
  %1123 = load i8, i8* %CL.i
  %1124 = zext i8 %1123 to i64
  %1125 = load i64, i64* %PC.i888
  %1126 = add i64 %1125, 2
  store i64 %1126, i64* %PC.i888
  %1127 = trunc i64 %1124 to i5
  switch i5 %1127, label %1134 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %1128
  ]

; <label>:1128:                                   ; preds = %routine_shll__cl___eax.exit901
  %1129 = trunc i64 %1122 to i32
  %1130 = shl i32 %1129, 1
  %1131 = icmp slt i32 %1129, 0
  %1132 = icmp slt i32 %1130, 0
  %1133 = xor i1 %1131, %1132
  br label %1143

; <label>:1134:                                   ; preds = %routine_shll__cl___eax.exit901
  %1135 = and i64 %1124, 31
  %1136 = add i64 %1135, 4294967295
  %1137 = and i64 %1122, 4294967295
  %1138 = and i64 %1136, 4294967295
  %1139 = shl i64 %1137, %1138
  %1140 = trunc i64 %1139 to i32
  %1141 = icmp slt i32 %1140, 0
  %1142 = shl i32 %1140, 1
  br label %1143

; <label>:1143:                                   ; preds = %1134, %1128
  %1144 = phi i1 [ %1131, %1128 ], [ %1141, %1134 ]
  %1145 = phi i1 [ %1133, %1128 ], [ false, %1134 ]
  %1146 = phi i32 [ %1130, %1128 ], [ %1142, %1134 ]
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RAX.i889, align 8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1149 = zext i1 %1144 to i8
  store i8 %1149, i8* %1148, align 1
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1151 = and i32 %1146, 254
  %1152 = call i32 @llvm.ctpop.i32(i32 %1151)
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  %1155 = xor i8 %1154, 1
  store i8 %1155, i8* %1150, align 1
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1156, align 1
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1158 = icmp eq i32 %1146, 0
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %1157, align 1
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1161 = lshr i32 %1146, 31
  %1162 = trunc i32 %1161 to i8
  store i8 %1162, i8* %1160, align 1
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1164 = zext i1 %1145 to i8
  store i8 %1164, i8* %1163, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %routine_shll__cl___eax.exit901, %1143
  store %struct.Memory* %loadMem_4afec0, %struct.Memory** %MEMORY
  %loadMem_4afec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 33
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %1167 to i64*
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1169 = getelementptr inbounds %struct.GPR, %struct.GPR* %1168, i32 0, i32 1
  %1170 = getelementptr inbounds %struct.Reg, %struct.Reg* %1169, i32 0, i32 0
  %EAX.i886 = bitcast %union.anon* %1170 to i32*
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 15
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %RBP.i887 = bitcast %union.anon* %1173 to i64*
  %1174 = load i64, i64* %RBP.i887
  %1175 = sub i64 %1174, 184
  %1176 = load i32, i32* %EAX.i886
  %1177 = zext i32 %1176 to i64
  %1178 = load i64, i64* %PC.i885
  %1179 = add i64 %1178, 6
  store i64 %1179, i64* %PC.i885
  %1180 = inttoptr i64 %1175 to i32*
  store i32 %1176, i32* %1180
  store %struct.Memory* %loadMem_4afec2, %struct.Memory** %MEMORY
  %loadMem_4afec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 33
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %1183 to i64*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 15
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RBP.i884 = bitcast %union.anon* %1186 to i64*
  %1187 = load i64, i64* %RBP.i884
  %1188 = sub i64 %1187, 8
  %1189 = load i64, i64* %PC.i883
  %1190 = add i64 %1189, 7
  store i64 %1190, i64* %PC.i883
  %1191 = inttoptr i64 %1188 to i32*
  store i32 0, i32* %1191
  store %struct.Memory* %loadMem_4afec8, %struct.Memory** %MEMORY
  br label %block_.L_4afecf

block_.L_4afecf:                                  ; preds = %block_.L_4affd5, %routine_shll__cl___eax.exit
  %loadMem_4afecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1193 = getelementptr inbounds %struct.GPR, %struct.GPR* %1192, i32 0, i32 33
  %1194 = getelementptr inbounds %struct.Reg, %struct.Reg* %1193, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %1194 to i64*
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 1
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %RAX.i881 = bitcast %union.anon* %1197 to i64*
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1199 = getelementptr inbounds %struct.GPR, %struct.GPR* %1198, i32 0, i32 15
  %1200 = getelementptr inbounds %struct.Reg, %struct.Reg* %1199, i32 0, i32 0
  %RBP.i882 = bitcast %union.anon* %1200 to i64*
  %1201 = load i64, i64* %RBP.i882
  %1202 = sub i64 %1201, 8
  %1203 = load i64, i64* %PC.i880
  %1204 = add i64 %1203, 3
  store i64 %1204, i64* %PC.i880
  %1205 = inttoptr i64 %1202 to i32*
  %1206 = load i32, i32* %1205
  %1207 = zext i32 %1206 to i64
  store i64 %1207, i64* %RAX.i881, align 8
  store %struct.Memory* %loadMem_4afecf, %struct.Memory** %MEMORY
  %loadMem_4afed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 33
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 5
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %RCX.i878 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 15
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %RBP.i879 = bitcast %union.anon* %1216 to i64*
  %1217 = load i64, i64* %RBP.i879
  %1218 = sub i64 %1217, 188
  %1219 = load i64, i64* %PC.i877
  %1220 = add i64 %1219, 6
  store i64 %1220, i64* %PC.i877
  %1221 = inttoptr i64 %1218 to i32*
  %1222 = load i32, i32* %1221
  %1223 = zext i32 %1222 to i64
  store i64 %1223, i64* %RCX.i878, align 8
  store %struct.Memory* %loadMem_4afed2, %struct.Memory** %MEMORY
  %loadMem_4afed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 33
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %1226 to i64*
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1228 = getelementptr inbounds %struct.GPR, %struct.GPR* %1227, i32 0, i32 5
  %1229 = getelementptr inbounds %struct.Reg, %struct.Reg* %1228, i32 0, i32 0
  %RCX.i876 = bitcast %union.anon* %1229 to i64*
  %1230 = load i64, i64* %RCX.i876
  %1231 = load i64, i64* %PC.i875
  %1232 = add i64 %1231, 3
  store i64 %1232, i64* %PC.i875
  %1233 = trunc i64 %1230 to i32
  %1234 = add i32 2, %1233
  %1235 = zext i32 %1234 to i64
  store i64 %1235, i64* %RCX.i876, align 8
  %1236 = icmp ult i32 %1234, %1233
  %1237 = icmp ult i32 %1234, 2
  %1238 = or i1 %1236, %1237
  %1239 = zext i1 %1238 to i8
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1239, i8* %1240, align 1
  %1241 = and i32 %1234, 255
  %1242 = call i32 @llvm.ctpop.i32(i32 %1241)
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = xor i8 %1244, 1
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1245, i8* %1246, align 1
  %1247 = xor i64 2, %1230
  %1248 = trunc i64 %1247 to i32
  %1249 = xor i32 %1248, %1234
  %1250 = lshr i32 %1249, 4
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1252, i8* %1253, align 1
  %1254 = icmp eq i32 %1234, 0
  %1255 = zext i1 %1254 to i8
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1255, i8* %1256, align 1
  %1257 = lshr i32 %1234, 31
  %1258 = trunc i32 %1257 to i8
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1258, i8* %1259, align 1
  %1260 = lshr i32 %1233, 31
  %1261 = xor i32 %1257, %1260
  %1262 = add i32 %1261, %1257
  %1263 = icmp eq i32 %1262, 2
  %1264 = zext i1 %1263 to i8
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1264, i8* %1265, align 1
  store %struct.Memory* %loadMem_4afed8, %struct.Memory** %MEMORY
  %loadMem_4afedb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 33
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 1
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %EAX.i873 = bitcast %union.anon* %1271 to i32*
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 5
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %ECX.i874 = bitcast %union.anon* %1274 to i32*
  %1275 = load i32, i32* %EAX.i873
  %1276 = zext i32 %1275 to i64
  %1277 = load i32, i32* %ECX.i874
  %1278 = zext i32 %1277 to i64
  %1279 = load i64, i64* %PC.i872
  %1280 = add i64 %1279, 2
  store i64 %1280, i64* %PC.i872
  %1281 = sub i32 %1275, %1277
  %1282 = icmp ult i32 %1275, %1277
  %1283 = zext i1 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1283, i8* %1284, align 1
  %1285 = and i32 %1281, 255
  %1286 = call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1289, i8* %1290, align 1
  %1291 = xor i64 %1278, %1276
  %1292 = trunc i64 %1291 to i32
  %1293 = xor i32 %1292, %1281
  %1294 = lshr i32 %1293, 4
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1296, i8* %1297, align 1
  %1298 = icmp eq i32 %1281, 0
  %1299 = zext i1 %1298 to i8
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1299, i8* %1300, align 1
  %1301 = lshr i32 %1281, 31
  %1302 = trunc i32 %1301 to i8
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1302, i8* %1303, align 1
  %1304 = lshr i32 %1275, 31
  %1305 = lshr i32 %1277, 31
  %1306 = xor i32 %1305, %1304
  %1307 = xor i32 %1301, %1304
  %1308 = add i32 %1307, %1306
  %1309 = icmp eq i32 %1308, 2
  %1310 = zext i1 %1309 to i8
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1310, i8* %1311, align 1
  store %struct.Memory* %loadMem_4afedb, %struct.Memory** %MEMORY
  %loadMem_4afedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 33
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %1314 to i64*
  %1315 = load i64, i64* %PC.i871
  %1316 = add i64 %1315, 262
  %1317 = load i64, i64* %PC.i871
  %1318 = add i64 %1317, 6
  %1319 = load i64, i64* %PC.i871
  %1320 = add i64 %1319, 6
  store i64 %1320, i64* %PC.i871
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1322 = load i8, i8* %1321, align 1
  %1323 = icmp ne i8 %1322, 0
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1325 = load i8, i8* %1324, align 1
  %1326 = icmp ne i8 %1325, 0
  %1327 = xor i1 %1323, %1326
  %1328 = xor i1 %1327, true
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %BRANCH_TAKEN, align 1
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1331 = select i1 %1327, i64 %1318, i64 %1316
  store i64 %1331, i64* %1330, align 8
  store %struct.Memory* %loadMem_4afedd, %struct.Memory** %MEMORY
  %loadBr_4afedd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afedd = icmp eq i8 %loadBr_4afedd, 1
  br i1 %cmpBr_4afedd, label %block_.L_4affe3, label %block_4afee3

block_4afee3:                                     ; preds = %block_.L_4afecf
  %loadMem_4afee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 33
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %1334 to i64*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 15
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %RBP.i870 = bitcast %union.anon* %1337 to i64*
  %1338 = load i64, i64* %RBP.i870
  %1339 = sub i64 %1338, 12
  %1340 = load i64, i64* %PC.i869
  %1341 = add i64 %1340, 7
  store i64 %1341, i64* %PC.i869
  %1342 = inttoptr i64 %1339 to i32*
  store i32 0, i32* %1342
  store %struct.Memory* %loadMem_4afee3, %struct.Memory** %MEMORY
  br label %block_.L_4afeea

block_.L_4afeea:                                  ; preds = %block_.L_4affc2, %block_4afee3
  %loadMem_4afeea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 33
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 1
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %RAX.i867 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 15
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %RBP.i868 = bitcast %union.anon* %1351 to i64*
  %1352 = load i64, i64* %RBP.i868
  %1353 = sub i64 %1352, 12
  %1354 = load i64, i64* %PC.i866
  %1355 = add i64 %1354, 3
  store i64 %1355, i64* %PC.i866
  %1356 = inttoptr i64 %1353 to i32*
  %1357 = load i32, i32* %1356
  %1358 = zext i32 %1357 to i64
  store i64 %1358, i64* %RAX.i867, align 8
  store %struct.Memory* %loadMem_4afeea, %struct.Memory** %MEMORY
  %loadMem_4afeed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 5
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RCX.i864 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 15
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RBP.i865 = bitcast %union.anon* %1367 to i64*
  %1368 = load i64, i64* %RBP.i865
  %1369 = sub i64 %1368, 8
  %1370 = load i64, i64* %PC.i863
  %1371 = add i64 %1370, 4
  store i64 %1371, i64* %PC.i863
  %1372 = inttoptr i64 %1369 to i32*
  %1373 = load i32, i32* %1372
  %1374 = sext i32 %1373 to i64
  store i64 %1374, i64* %RCX.i864, align 8
  store %struct.Memory* %loadMem_4afeed, %struct.Memory** %MEMORY
  %loadMem_4afef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 1
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %EAX.i861 = bitcast %union.anon* %1380 to i32*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 5
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RCX.i862 = bitcast %union.anon* %1383 to i64*
  %1384 = load i32, i32* %EAX.i861
  %1385 = zext i32 %1384 to i64
  %1386 = load i64, i64* %RCX.i862
  %1387 = mul i64 %1386, 4
  %1388 = add i64 %1387, 7489456
  %1389 = load i64, i64* %PC.i860
  %1390 = add i64 %1389, 7
  store i64 %1390, i64* %PC.i860
  %1391 = inttoptr i64 %1388 to i32*
  %1392 = load i32, i32* %1391
  %1393 = sub i32 %1384, %1392
  %1394 = icmp ult i32 %1384, %1392
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
  %1403 = xor i32 %1392, %1384
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
  %1415 = lshr i32 %1384, 31
  %1416 = lshr i32 %1392, 31
  %1417 = xor i32 %1416, %1415
  %1418 = xor i32 %1412, %1415
  %1419 = add i32 %1418, %1417
  %1420 = icmp eq i32 %1419, 2
  %1421 = zext i1 %1420 to i8
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1421, i8* %1422, align 1
  store %struct.Memory* %loadMem_4afef1, %struct.Memory** %MEMORY
  %loadMem_4afef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 33
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %1425 to i64*
  %1426 = load i64, i64* %PC.i859
  %1427 = add i64 %1426, 216
  %1428 = load i64, i64* %PC.i859
  %1429 = add i64 %1428, 6
  %1430 = load i64, i64* %PC.i859
  %1431 = add i64 %1430, 6
  store i64 %1431, i64* %PC.i859
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1433 = load i8, i8* %1432, align 1
  %1434 = icmp ne i8 %1433, 0
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1436 = load i8, i8* %1435, align 1
  %1437 = icmp ne i8 %1436, 0
  %1438 = xor i1 %1434, %1437
  %1439 = xor i1 %1438, true
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %BRANCH_TAKEN, align 1
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1442 = select i1 %1438, i64 %1429, i64 %1427
  store i64 %1442, i64* %1441, align 8
  store %struct.Memory* %loadMem_4afef8, %struct.Memory** %MEMORY
  %loadBr_4afef8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afef8 = icmp eq i8 %loadBr_4afef8, 1
  br i1 %cmpBr_4afef8, label %block_.L_4affd0, label %block_4afefe

block_4afefe:                                     ; preds = %block_.L_4afeea
  %loadMem_4afefe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 33
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 15
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %1448 to i64*
  %1449 = load i64, i64* %RBP.i858
  %1450 = sub i64 %1449, 16
  %1451 = load i64, i64* %PC.i857
  %1452 = add i64 %1451, 7
  store i64 %1452, i64* %PC.i857
  %1453 = inttoptr i64 %1450 to i32*
  store i32 0, i32* %1453
  store %struct.Memory* %loadMem_4afefe, %struct.Memory** %MEMORY
  br label %block_.L_4aff05

block_.L_4aff05:                                  ; preds = %block_4aff0f, %block_4afefe
  %loadMem_4aff05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 15
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %RBP.i856 = bitcast %union.anon* %1459 to i64*
  %1460 = load i64, i64* %RBP.i856
  %1461 = sub i64 %1460, 16
  %1462 = load i64, i64* %PC.i855
  %1463 = add i64 %1462, 4
  store i64 %1463, i64* %PC.i855
  %1464 = inttoptr i64 %1461 to i32*
  %1465 = load i32, i32* %1464
  %1466 = sub i32 %1465, 3
  %1467 = icmp ult i32 %1465, 3
  %1468 = zext i1 %1467 to i8
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1468, i8* %1469, align 1
  %1470 = and i32 %1466, 255
  %1471 = call i32 @llvm.ctpop.i32(i32 %1470)
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  %1474 = xor i8 %1473, 1
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1474, i8* %1475, align 1
  %1476 = xor i32 %1465, 3
  %1477 = xor i32 %1476, %1466
  %1478 = lshr i32 %1477, 4
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1480, i8* %1481, align 1
  %1482 = icmp eq i32 %1466, 0
  %1483 = zext i1 %1482 to i8
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1483, i8* %1484, align 1
  %1485 = lshr i32 %1466, 31
  %1486 = trunc i32 %1485 to i8
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1486, i8* %1487, align 1
  %1488 = lshr i32 %1465, 31
  %1489 = xor i32 %1485, %1488
  %1490 = add i32 %1489, %1488
  %1491 = icmp eq i32 %1490, 2
  %1492 = zext i1 %1491 to i8
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1492, i8* %1493, align 1
  store %struct.Memory* %loadMem_4aff05, %struct.Memory** %MEMORY
  %loadMem_4aff09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 33
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %1496 to i64*
  %1497 = load i64, i64* %PC.i854
  %1498 = add i64 %1497, 180
  %1499 = load i64, i64* %PC.i854
  %1500 = add i64 %1499, 6
  %1501 = load i64, i64* %PC.i854
  %1502 = add i64 %1501, 6
  store i64 %1502, i64* %PC.i854
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1504 = load i8, i8* %1503, align 1
  %1505 = icmp ne i8 %1504, 0
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1507 = load i8, i8* %1506, align 1
  %1508 = icmp ne i8 %1507, 0
  %1509 = xor i1 %1505, %1508
  %1510 = xor i1 %1509, true
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %BRANCH_TAKEN, align 1
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1513 = select i1 %1509, i64 %1500, i64 %1498
  store i64 %1513, i64* %1512, align 8
  store %struct.Memory* %loadMem_4aff09, %struct.Memory** %MEMORY
  %loadBr_4aff09 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aff09 = icmp eq i8 %loadBr_4aff09, 1
  br i1 %cmpBr_4aff09, label %block_.L_4affbd, label %block_4aff0f

block_4aff0f:                                     ; preds = %block_.L_4aff05
  %loadMem_4aff0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 1
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RAX.i852 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 15
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RBP.i853 = bitcast %union.anon* %1522 to i64*
  %1523 = load i64, i64* %RBP.i853
  %1524 = sub i64 %1523, 928
  %1525 = load i64, i64* %PC.i851
  %1526 = add i64 %1525, 7
  store i64 %1526, i64* %PC.i851
  store i64 %1524, i64* %RAX.i852, align 8
  store %struct.Memory* %loadMem_4aff0f, %struct.Memory** %MEMORY
  %loadMem_4aff16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 33
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 5
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RCX.i849 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 15
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %RBP.i850 = bitcast %union.anon* %1535 to i64*
  %1536 = load i64, i64* %RBP.i850
  %1537 = sub i64 %1536, 560
  %1538 = load i64, i64* %PC.i848
  %1539 = add i64 %1538, 7
  store i64 %1539, i64* %PC.i848
  store i64 %1537, i64* %RCX.i849, align 8
  store %struct.Memory* %loadMem_4aff16, %struct.Memory** %MEMORY
  %loadMem_4aff1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 33
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %1542 to i64*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 7
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %RDX.i846 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 15
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %1548 to i64*
  %1549 = load i64, i64* %RBP.i847
  %1550 = sub i64 %1549, 180
  %1551 = load i64, i64* %PC.i845
  %1552 = add i64 %1551, 6
  store i64 %1552, i64* %PC.i845
  %1553 = inttoptr i64 %1550 to i32*
  %1554 = load i32, i32* %1553
  %1555 = zext i32 %1554 to i64
  store i64 %1555, i64* %RDX.i846, align 8
  store %struct.Memory* %loadMem_4aff1d, %struct.Memory** %MEMORY
  %loadMem_4aff23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 33
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %1558 to i64*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 9
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RSI.i843 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 15
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RBP.i844 = bitcast %union.anon* %1564 to i64*
  %1565 = load i64, i64* %RBP.i844
  %1566 = sub i64 %1565, 8
  %1567 = load i64, i64* %PC.i842
  %1568 = add i64 %1567, 4
  store i64 %1568, i64* %PC.i842
  %1569 = inttoptr i64 %1566 to i32*
  %1570 = load i32, i32* %1569
  %1571 = sext i32 %1570 to i64
  store i64 %1571, i64* %RSI.i843, align 8
  store %struct.Memory* %loadMem_4aff23, %struct.Memory** %MEMORY
  %loadMem_4aff27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 9
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RSI.i841 = bitcast %union.anon* %1577 to i64*
  %1578 = load i64, i64* %RSI.i841
  %1579 = load i64, i64* %PC.i840
  %1580 = add i64 %1579, 7
  store i64 %1580, i64* %PC.i840
  %1581 = sext i64 %1578 to i128
  %1582 = and i128 %1581, -18446744073709551616
  %1583 = zext i64 %1578 to i128
  %1584 = or i128 %1582, %1583
  %1585 = mul i128 180, %1584
  %1586 = trunc i128 %1585 to i64
  store i64 %1586, i64* %RSI.i841, align 8
  %1587 = sext i64 %1586 to i128
  %1588 = icmp ne i128 %1587, %1585
  %1589 = zext i1 %1588 to i8
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1589, i8* %1590, align 1
  %1591 = trunc i128 %1585 to i32
  %1592 = and i32 %1591, 255
  %1593 = call i32 @llvm.ctpop.i32(i32 %1592)
  %1594 = trunc i32 %1593 to i8
  %1595 = and i8 %1594, 1
  %1596 = xor i8 %1595, 1
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1596, i8* %1597, align 1
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1598, align 1
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1599, align 1
  %1600 = lshr i64 %1586, 63
  %1601 = trunc i64 %1600 to i8
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1601, i8* %1602, align 1
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1589, i8* %1603, align 1
  store %struct.Memory* %loadMem_4aff27, %struct.Memory** %MEMORY
  %loadMem_4aff2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i837 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 5
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %RCX.i838 = bitcast %union.anon* %1609 to i64*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 9
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RSI.i839 = bitcast %union.anon* %1612 to i64*
  %1613 = load i64, i64* %RCX.i838
  %1614 = load i64, i64* %RSI.i839
  %1615 = load i64, i64* %PC.i837
  %1616 = add i64 %1615, 3
  store i64 %1616, i64* %PC.i837
  %1617 = add i64 %1614, %1613
  store i64 %1617, i64* %RCX.i838, align 8
  %1618 = icmp ult i64 %1617, %1613
  %1619 = icmp ult i64 %1617, %1614
  %1620 = or i1 %1618, %1619
  %1621 = zext i1 %1620 to i8
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1621, i8* %1622, align 1
  %1623 = trunc i64 %1617 to i32
  %1624 = and i32 %1623, 255
  %1625 = call i32 @llvm.ctpop.i32(i32 %1624)
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = xor i8 %1627, 1
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1628, i8* %1629, align 1
  %1630 = xor i64 %1614, %1613
  %1631 = xor i64 %1630, %1617
  %1632 = lshr i64 %1631, 4
  %1633 = trunc i64 %1632 to i8
  %1634 = and i8 %1633, 1
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1634, i8* %1635, align 1
  %1636 = icmp eq i64 %1617, 0
  %1637 = zext i1 %1636 to i8
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1637, i8* %1638, align 1
  %1639 = lshr i64 %1617, 63
  %1640 = trunc i64 %1639 to i8
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1640, i8* %1641, align 1
  %1642 = lshr i64 %1613, 63
  %1643 = lshr i64 %1614, 63
  %1644 = xor i64 %1639, %1642
  %1645 = xor i64 %1639, %1643
  %1646 = add i64 %1644, %1645
  %1647 = icmp eq i64 %1646, 2
  %1648 = zext i1 %1647 to i8
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1648, i8* %1649, align 1
  store %struct.Memory* %loadMem_4aff2e, %struct.Memory** %MEMORY
  %loadMem_4aff31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 33
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %PC.i834 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 9
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %RSI.i835 = bitcast %union.anon* %1655 to i64*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 15
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %RBP.i836 = bitcast %union.anon* %1658 to i64*
  %1659 = load i64, i64* %RBP.i836
  %1660 = sub i64 %1659, 12
  %1661 = load i64, i64* %PC.i834
  %1662 = add i64 %1661, 4
  store i64 %1662, i64* %PC.i834
  %1663 = inttoptr i64 %1660 to i32*
  %1664 = load i32, i32* %1663
  %1665 = sext i32 %1664 to i64
  store i64 %1665, i64* %RSI.i835, align 8
  store %struct.Memory* %loadMem_4aff31, %struct.Memory** %MEMORY
  %loadMem_4aff35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 9
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RSI.i833 = bitcast %union.anon* %1671 to i64*
  %1672 = load i64, i64* %RSI.i833
  %1673 = load i64, i64* %PC.i832
  %1674 = add i64 %1673, 4
  store i64 %1674, i64* %PC.i832
  %1675 = sext i64 %1672 to i128
  %1676 = and i128 %1675, -18446744073709551616
  %1677 = zext i64 %1672 to i128
  %1678 = or i128 %1676, %1677
  %1679 = mul i128 12, %1678
  %1680 = trunc i128 %1679 to i64
  store i64 %1680, i64* %RSI.i833, align 8
  %1681 = sext i64 %1680 to i128
  %1682 = icmp ne i128 %1681, %1679
  %1683 = zext i1 %1682 to i8
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1683, i8* %1684, align 1
  %1685 = trunc i128 %1679 to i32
  %1686 = and i32 %1685, 255
  %1687 = call i32 @llvm.ctpop.i32(i32 %1686)
  %1688 = trunc i32 %1687 to i8
  %1689 = and i8 %1688, 1
  %1690 = xor i8 %1689, 1
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1690, i8* %1691, align 1
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1692, align 1
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1693, align 1
  %1694 = lshr i64 %1680, 63
  %1695 = trunc i64 %1694 to i8
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1695, i8* %1696, align 1
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1683, i8* %1697, align 1
  store %struct.Memory* %loadMem_4aff35, %struct.Memory** %MEMORY
  %loadMem_4aff39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 5
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %RCX.i830 = bitcast %union.anon* %1703 to i64*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 9
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %RSI.i831 = bitcast %union.anon* %1706 to i64*
  %1707 = load i64, i64* %RCX.i830
  %1708 = load i64, i64* %RSI.i831
  %1709 = load i64, i64* %PC.i829
  %1710 = add i64 %1709, 3
  store i64 %1710, i64* %PC.i829
  %1711 = add i64 %1708, %1707
  store i64 %1711, i64* %RCX.i830, align 8
  %1712 = icmp ult i64 %1711, %1707
  %1713 = icmp ult i64 %1711, %1708
  %1714 = or i1 %1712, %1713
  %1715 = zext i1 %1714 to i8
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1715, i8* %1716, align 1
  %1717 = trunc i64 %1711 to i32
  %1718 = and i32 %1717, 255
  %1719 = call i32 @llvm.ctpop.i32(i32 %1718)
  %1720 = trunc i32 %1719 to i8
  %1721 = and i8 %1720, 1
  %1722 = xor i8 %1721, 1
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1722, i8* %1723, align 1
  %1724 = xor i64 %1708, %1707
  %1725 = xor i64 %1724, %1711
  %1726 = lshr i64 %1725, 4
  %1727 = trunc i64 %1726 to i8
  %1728 = and i8 %1727, 1
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1728, i8* %1729, align 1
  %1730 = icmp eq i64 %1711, 0
  %1731 = zext i1 %1730 to i8
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1731, i8* %1732, align 1
  %1733 = lshr i64 %1711, 63
  %1734 = trunc i64 %1733 to i8
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1734, i8* %1735, align 1
  %1736 = lshr i64 %1707, 63
  %1737 = lshr i64 %1708, 63
  %1738 = xor i64 %1733, %1736
  %1739 = xor i64 %1733, %1737
  %1740 = add i64 %1738, %1739
  %1741 = icmp eq i64 %1740, 2
  %1742 = zext i1 %1741 to i8
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1742, i8* %1743, align 1
  store %struct.Memory* %loadMem_4aff39, %struct.Memory** %MEMORY
  %loadMem_4aff3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 33
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %1746 to i64*
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 9
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %RSI.i827 = bitcast %union.anon* %1749 to i64*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 15
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %1752 to i64*
  %1753 = load i64, i64* %RBP.i828
  %1754 = sub i64 %1753, 16
  %1755 = load i64, i64* %PC.i826
  %1756 = add i64 %1755, 4
  store i64 %1756, i64* %PC.i826
  %1757 = inttoptr i64 %1754 to i32*
  %1758 = load i32, i32* %1757
  %1759 = sext i32 %1758 to i64
  store i64 %1759, i64* %RSI.i827, align 8
  store %struct.Memory* %loadMem_4aff3c, %struct.Memory** %MEMORY
  %loadMem_4aff40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 7
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %EDX.i823 = bitcast %union.anon* %1765 to i32*
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 5
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %RCX.i824 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 9
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %RSI.i825 = bitcast %union.anon* %1771 to i64*
  %1772 = load i64, i64* %RCX.i824
  %1773 = load i64, i64* %RSI.i825
  %1774 = mul i64 %1773, 4
  %1775 = add i64 %1774, %1772
  %1776 = load i32, i32* %EDX.i823
  %1777 = zext i32 %1776 to i64
  %1778 = load i64, i64* %PC.i822
  %1779 = add i64 %1778, 3
  store i64 %1779, i64* %PC.i822
  %1780 = inttoptr i64 %1775 to i32*
  store i32 %1776, i32* %1780
  store %struct.Memory* %loadMem_4aff40, %struct.Memory** %MEMORY
  %loadMem_4aff43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 33
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 7
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %RDX.i820 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 15
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %RBP.i821
  %1791 = sub i64 %1790, 180
  %1792 = load i64, i64* %PC.i819
  %1793 = add i64 %1792, 6
  store i64 %1793, i64* %PC.i819
  %1794 = inttoptr i64 %1791 to i32*
  %1795 = load i32, i32* %1794
  %1796 = zext i32 %1795 to i64
  store i64 %1796, i64* %RDX.i820, align 8
  store %struct.Memory* %loadMem_4aff43, %struct.Memory** %MEMORY
  %loadMem_4aff49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 5
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RCX.i818 = bitcast %union.anon* %1802 to i64*
  %1803 = load i64, i64* %PC.i817
  %1804 = add i64 %1803, 8
  store i64 %1804, i64* %PC.i817
  %1805 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %1805, i64* %RCX.i818, align 8
  store %struct.Memory* %loadMem_4aff49, %struct.Memory** %MEMORY
  %loadMem_4aff51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 9
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %RSI.i815 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 15
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RBP.i816 = bitcast %union.anon* %1814 to i64*
  %1815 = load i64, i64* %RBP.i816
  %1816 = sub i64 %1815, 8
  %1817 = load i64, i64* %PC.i814
  %1818 = add i64 %1817, 4
  store i64 %1818, i64* %PC.i814
  %1819 = inttoptr i64 %1816 to i32*
  %1820 = load i32, i32* %1819
  %1821 = sext i32 %1820 to i64
  store i64 %1821, i64* %RSI.i815, align 8
  store %struct.Memory* %loadMem_4aff51, %struct.Memory** %MEMORY
  %loadMem_4aff55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 33
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %1824 to i64*
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 5
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %RCX.i812 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 9
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %RSI.i813 = bitcast %union.anon* %1830 to i64*
  %1831 = load i64, i64* %RCX.i812
  %1832 = load i64, i64* %RSI.i813
  %1833 = mul i64 %1832, 8
  %1834 = add i64 %1833, %1831
  %1835 = load i64, i64* %PC.i811
  %1836 = add i64 %1835, 4
  store i64 %1836, i64* %PC.i811
  %1837 = inttoptr i64 %1834 to i64*
  %1838 = load i64, i64* %1837
  store i64 %1838, i64* %RCX.i812, align 8
  store %struct.Memory* %loadMem_4aff55, %struct.Memory** %MEMORY
  %loadMem_4aff59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 33
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 9
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %RSI.i809 = bitcast %union.anon* %1844 to i64*
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 15
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %RBP.i810 = bitcast %union.anon* %1847 to i64*
  %1848 = load i64, i64* %RBP.i810
  %1849 = sub i64 %1848, 12
  %1850 = load i64, i64* %PC.i808
  %1851 = add i64 %1850, 4
  store i64 %1851, i64* %PC.i808
  %1852 = inttoptr i64 %1849 to i32*
  %1853 = load i32, i32* %1852
  %1854 = sext i32 %1853 to i64
  store i64 %1854, i64* %RSI.i809, align 8
  store %struct.Memory* %loadMem_4aff59, %struct.Memory** %MEMORY
  %loadMem_4aff5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 33
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 5
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RCX.i806 = bitcast %union.anon* %1860 to i64*
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 9
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %RSI.i807 = bitcast %union.anon* %1863 to i64*
  %1864 = load i64, i64* %RCX.i806
  %1865 = load i64, i64* %RSI.i807
  %1866 = mul i64 %1865, 8
  %1867 = add i64 %1866, %1864
  %1868 = load i64, i64* %PC.i805
  %1869 = add i64 %1868, 4
  store i64 %1869, i64* %PC.i805
  %1870 = inttoptr i64 %1867 to i64*
  %1871 = load i64, i64* %1870
  store i64 %1871, i64* %RCX.i806, align 8
  store %struct.Memory* %loadMem_4aff5d, %struct.Memory** %MEMORY
  %loadMem_4aff61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 33
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1874 to i64*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 9
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %RSI.i803 = bitcast %union.anon* %1877 to i64*
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 15
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %1880 to i64*
  %1881 = load i64, i64* %RBP.i804
  %1882 = sub i64 %1881, 16
  %1883 = load i64, i64* %PC.i802
  %1884 = add i64 %1883, 4
  store i64 %1884, i64* %PC.i802
  %1885 = inttoptr i64 %1882 to i32*
  %1886 = load i32, i32* %1885
  %1887 = sext i32 %1886 to i64
  store i64 %1887, i64* %RSI.i803, align 8
  store %struct.Memory* %loadMem_4aff61, %struct.Memory** %MEMORY
  %loadMem_4aff65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 33
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %1890 to i64*
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 7
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %EDX.i799 = bitcast %union.anon* %1893 to i32*
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 5
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %RCX.i800 = bitcast %union.anon* %1896 to i64*
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 9
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %RSI.i801 = bitcast %union.anon* %1899 to i64*
  %1900 = load i64, i64* %RCX.i800
  %1901 = load i64, i64* %RSI.i801
  %1902 = mul i64 %1901, 4
  %1903 = add i64 %1902, %1900
  %1904 = load i32, i32* %EDX.i799
  %1905 = zext i32 %1904 to i64
  %1906 = load i64, i64* %PC.i798
  %1907 = add i64 %1906, 3
  store i64 %1907, i64* %PC.i798
  %1908 = inttoptr i64 %1903 to i32*
  store i32 %1904, i32* %1908
  store %struct.Memory* %loadMem_4aff65, %struct.Memory** %MEMORY
  %loadMem_4aff68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 33
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 5
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RCX.i797 = bitcast %union.anon* %1914 to i64*
  %1915 = load i64, i64* %PC.i796
  %1916 = add i64 %1915, 8
  store i64 %1916, i64* %PC.i796
  %1917 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %1917, i64* %RCX.i797, align 8
  store %struct.Memory* %loadMem_4aff68, %struct.Memory** %MEMORY
  %loadMem_4aff70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 33
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 9
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RSI.i794 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 15
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RBP.i795 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %RBP.i795
  %1928 = sub i64 %1927, 8
  %1929 = load i64, i64* %PC.i793
  %1930 = add i64 %1929, 4
  store i64 %1930, i64* %PC.i793
  %1931 = inttoptr i64 %1928 to i32*
  %1932 = load i32, i32* %1931
  %1933 = sext i32 %1932 to i64
  store i64 %1933, i64* %RSI.i794, align 8
  store %struct.Memory* %loadMem_4aff70, %struct.Memory** %MEMORY
  %loadMem_4aff74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 5
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RCX.i791 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 9
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %RSI.i792 = bitcast %union.anon* %1942 to i64*
  %1943 = load i64, i64* %RCX.i791
  %1944 = load i64, i64* %RSI.i792
  %1945 = mul i64 %1944, 8
  %1946 = add i64 %1945, %1943
  %1947 = load i64, i64* %PC.i790
  %1948 = add i64 %1947, 4
  store i64 %1948, i64* %PC.i790
  %1949 = inttoptr i64 %1946 to i64*
  %1950 = load i64, i64* %1949
  store i64 %1950, i64* %RCX.i791, align 8
  store %struct.Memory* %loadMem_4aff74, %struct.Memory** %MEMORY
  %loadMem_4aff78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 33
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1953 to i64*
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 9
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %RSI.i788 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 15
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %RBP.i789 = bitcast %union.anon* %1959 to i64*
  %1960 = load i64, i64* %RBP.i789
  %1961 = sub i64 %1960, 12
  %1962 = load i64, i64* %PC.i787
  %1963 = add i64 %1962, 4
  store i64 %1963, i64* %PC.i787
  %1964 = inttoptr i64 %1961 to i32*
  %1965 = load i32, i32* %1964
  %1966 = sext i32 %1965 to i64
  store i64 %1966, i64* %RSI.i788, align 8
  store %struct.Memory* %loadMem_4aff78, %struct.Memory** %MEMORY
  %loadMem_4aff7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 33
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %1969 to i64*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 5
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %RCX.i785 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 9
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %RSI.i786 = bitcast %union.anon* %1975 to i64*
  %1976 = load i64, i64* %RCX.i785
  %1977 = load i64, i64* %RSI.i786
  %1978 = mul i64 %1977, 8
  %1979 = add i64 %1978, %1976
  %1980 = load i64, i64* %PC.i784
  %1981 = add i64 %1980, 4
  store i64 %1981, i64* %PC.i784
  %1982 = inttoptr i64 %1979 to i64*
  %1983 = load i64, i64* %1982
  store i64 %1983, i64* %RCX.i785, align 8
  store %struct.Memory* %loadMem_4aff7c, %struct.Memory** %MEMORY
  %loadMem_4aff80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 33
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1986 to i64*
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 9
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %RSI.i782 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 15
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %RBP.i783 = bitcast %union.anon* %1992 to i64*
  %1993 = load i64, i64* %RBP.i783
  %1994 = sub i64 %1993, 16
  %1995 = load i64, i64* %PC.i781
  %1996 = add i64 %1995, 4
  store i64 %1996, i64* %PC.i781
  %1997 = inttoptr i64 %1994 to i32*
  %1998 = load i32, i32* %1997
  %1999 = sext i32 %1998 to i64
  store i64 %1999, i64* %RSI.i782, align 8
  store %struct.Memory* %loadMem_4aff80, %struct.Memory** %MEMORY
  %loadMem_4aff84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 33
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 5
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %RCX.i779 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 9
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %RSI.i780 = bitcast %union.anon* %2008 to i64*
  %2009 = load i64, i64* %RCX.i779
  %2010 = load i64, i64* %RSI.i780
  %2011 = mul i64 %2010, 4
  %2012 = add i64 %2011, %2009
  %2013 = load i64, i64* %PC.i778
  %2014 = add i64 %2013, 7
  store i64 %2014, i64* %PC.i778
  %2015 = inttoptr i64 %2012 to i32*
  store i32 0, i32* %2015
  store %struct.Memory* %loadMem_4aff84, %struct.Memory** %MEMORY
  %loadMem_4aff8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 33
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %2018 to i64*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 5
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %RCX.i776 = bitcast %union.anon* %2021 to i64*
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 15
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %RBP.i777 = bitcast %union.anon* %2024 to i64*
  %2025 = load i64, i64* %RBP.i777
  %2026 = sub i64 %2025, 8
  %2027 = load i64, i64* %PC.i775
  %2028 = add i64 %2027, 4
  store i64 %2028, i64* %PC.i775
  %2029 = inttoptr i64 %2026 to i32*
  %2030 = load i32, i32* %2029
  %2031 = sext i32 %2030 to i64
  store i64 %2031, i64* %RCX.i776, align 8
  store %struct.Memory* %loadMem_4aff8b, %struct.Memory** %MEMORY
  %loadMem_4aff8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 5
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RCX.i774 = bitcast %union.anon* %2037 to i64*
  %2038 = load i64, i64* %RCX.i774
  %2039 = load i64, i64* %PC.i773
  %2040 = add i64 %2039, 7
  store i64 %2040, i64* %PC.i773
  %2041 = sext i64 %2038 to i128
  %2042 = and i128 %2041, -18446744073709551616
  %2043 = zext i64 %2038 to i128
  %2044 = or i128 %2042, %2043
  %2045 = mul i128 180, %2044
  %2046 = trunc i128 %2045 to i64
  store i64 %2046, i64* %RCX.i774, align 8
  %2047 = sext i64 %2046 to i128
  %2048 = icmp ne i128 %2047, %2045
  %2049 = zext i1 %2048 to i8
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2049, i8* %2050, align 1
  %2051 = trunc i128 %2045 to i32
  %2052 = and i32 %2051, 255
  %2053 = call i32 @llvm.ctpop.i32(i32 %2052)
  %2054 = trunc i32 %2053 to i8
  %2055 = and i8 %2054, 1
  %2056 = xor i8 %2055, 1
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2056, i8* %2057, align 1
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2058, align 1
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2059, align 1
  %2060 = lshr i64 %2046, 63
  %2061 = trunc i64 %2060 to i8
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2061, i8* %2062, align 1
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2049, i8* %2063, align 1
  store %struct.Memory* %loadMem_4aff8f, %struct.Memory** %MEMORY
  %loadMem_4aff96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 33
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 1
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RAX.i771 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 5
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RCX.i772 = bitcast %union.anon* %2072 to i64*
  %2073 = load i64, i64* %RAX.i771
  %2074 = load i64, i64* %RCX.i772
  %2075 = load i64, i64* %PC.i770
  %2076 = add i64 %2075, 3
  store i64 %2076, i64* %PC.i770
  %2077 = add i64 %2074, %2073
  store i64 %2077, i64* %RAX.i771, align 8
  %2078 = icmp ult i64 %2077, %2073
  %2079 = icmp ult i64 %2077, %2074
  %2080 = or i1 %2078, %2079
  %2081 = zext i1 %2080 to i8
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2081, i8* %2082, align 1
  %2083 = trunc i64 %2077 to i32
  %2084 = and i32 %2083, 255
  %2085 = call i32 @llvm.ctpop.i32(i32 %2084)
  %2086 = trunc i32 %2085 to i8
  %2087 = and i8 %2086, 1
  %2088 = xor i8 %2087, 1
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2088, i8* %2089, align 1
  %2090 = xor i64 %2074, %2073
  %2091 = xor i64 %2090, %2077
  %2092 = lshr i64 %2091, 4
  %2093 = trunc i64 %2092 to i8
  %2094 = and i8 %2093, 1
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2094, i8* %2095, align 1
  %2096 = icmp eq i64 %2077, 0
  %2097 = zext i1 %2096 to i8
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2097, i8* %2098, align 1
  %2099 = lshr i64 %2077, 63
  %2100 = trunc i64 %2099 to i8
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2100, i8* %2101, align 1
  %2102 = lshr i64 %2073, 63
  %2103 = lshr i64 %2074, 63
  %2104 = xor i64 %2099, %2102
  %2105 = xor i64 %2099, %2103
  %2106 = add i64 %2104, %2105
  %2107 = icmp eq i64 %2106, 2
  %2108 = zext i1 %2107 to i8
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2108, i8* %2109, align 1
  store %struct.Memory* %loadMem_4aff96, %struct.Memory** %MEMORY
  %loadMem_4aff99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 33
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %2112 to i64*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 5
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RCX.i768 = bitcast %union.anon* %2115 to i64*
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 15
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %RBP.i769 = bitcast %union.anon* %2118 to i64*
  %2119 = load i64, i64* %RBP.i769
  %2120 = sub i64 %2119, 12
  %2121 = load i64, i64* %PC.i767
  %2122 = add i64 %2121, 4
  store i64 %2122, i64* %PC.i767
  %2123 = inttoptr i64 %2120 to i32*
  %2124 = load i32, i32* %2123
  %2125 = sext i32 %2124 to i64
  store i64 %2125, i64* %RCX.i768, align 8
  store %struct.Memory* %loadMem_4aff99, %struct.Memory** %MEMORY
  %loadMem_4aff9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 33
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %2128 to i64*
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 5
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %RCX.i766 = bitcast %union.anon* %2131 to i64*
  %2132 = load i64, i64* %RCX.i766
  %2133 = load i64, i64* %PC.i765
  %2134 = add i64 %2133, 4
  store i64 %2134, i64* %PC.i765
  %2135 = sext i64 %2132 to i128
  %2136 = and i128 %2135, -18446744073709551616
  %2137 = zext i64 %2132 to i128
  %2138 = or i128 %2136, %2137
  %2139 = mul i128 12, %2138
  %2140 = trunc i128 %2139 to i64
  store i64 %2140, i64* %RCX.i766, align 8
  %2141 = sext i64 %2140 to i128
  %2142 = icmp ne i128 %2141, %2139
  %2143 = zext i1 %2142 to i8
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2143, i8* %2144, align 1
  %2145 = trunc i128 %2139 to i32
  %2146 = and i32 %2145, 255
  %2147 = call i32 @llvm.ctpop.i32(i32 %2146)
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = xor i8 %2149, 1
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2150, i8* %2151, align 1
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2152, align 1
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2153, align 1
  %2154 = lshr i64 %2140, 63
  %2155 = trunc i64 %2154 to i8
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2155, i8* %2156, align 1
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2143, i8* %2157, align 1
  store %struct.Memory* %loadMem_4aff9d, %struct.Memory** %MEMORY
  %loadMem_4affa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 33
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %2160 to i64*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 1
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %RAX.i763 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 5
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RCX.i764 = bitcast %union.anon* %2166 to i64*
  %2167 = load i64, i64* %RAX.i763
  %2168 = load i64, i64* %RCX.i764
  %2169 = load i64, i64* %PC.i762
  %2170 = add i64 %2169, 3
  store i64 %2170, i64* %PC.i762
  %2171 = add i64 %2168, %2167
  store i64 %2171, i64* %RAX.i763, align 8
  %2172 = icmp ult i64 %2171, %2167
  %2173 = icmp ult i64 %2171, %2168
  %2174 = or i1 %2172, %2173
  %2175 = zext i1 %2174 to i8
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2175, i8* %2176, align 1
  %2177 = trunc i64 %2171 to i32
  %2178 = and i32 %2177, 255
  %2179 = call i32 @llvm.ctpop.i32(i32 %2178)
  %2180 = trunc i32 %2179 to i8
  %2181 = and i8 %2180, 1
  %2182 = xor i8 %2181, 1
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2182, i8* %2183, align 1
  %2184 = xor i64 %2168, %2167
  %2185 = xor i64 %2184, %2171
  %2186 = lshr i64 %2185, 4
  %2187 = trunc i64 %2186 to i8
  %2188 = and i8 %2187, 1
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2188, i8* %2189, align 1
  %2190 = icmp eq i64 %2171, 0
  %2191 = zext i1 %2190 to i8
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2191, i8* %2192, align 1
  %2193 = lshr i64 %2171, 63
  %2194 = trunc i64 %2193 to i8
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2194, i8* %2195, align 1
  %2196 = lshr i64 %2167, 63
  %2197 = lshr i64 %2168, 63
  %2198 = xor i64 %2193, %2196
  %2199 = xor i64 %2193, %2197
  %2200 = add i64 %2198, %2199
  %2201 = icmp eq i64 %2200, 2
  %2202 = zext i1 %2201 to i8
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2202, i8* %2203, align 1
  store %struct.Memory* %loadMem_4affa1, %struct.Memory** %MEMORY
  %loadMem_4affa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2205 = getelementptr inbounds %struct.GPR, %struct.GPR* %2204, i32 0, i32 33
  %2206 = getelementptr inbounds %struct.Reg, %struct.Reg* %2205, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %2206 to i64*
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 5
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %RCX.i760 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 15
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RBP.i761 = bitcast %union.anon* %2212 to i64*
  %2213 = load i64, i64* %RBP.i761
  %2214 = sub i64 %2213, 16
  %2215 = load i64, i64* %PC.i759
  %2216 = add i64 %2215, 4
  store i64 %2216, i64* %PC.i759
  %2217 = inttoptr i64 %2214 to i32*
  %2218 = load i32, i32* %2217
  %2219 = sext i32 %2218 to i64
  store i64 %2219, i64* %RCX.i760, align 8
  store %struct.Memory* %loadMem_4affa4, %struct.Memory** %MEMORY
  %loadMem_4affa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 33
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 1
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RAX.i757 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 5
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %RCX.i758 = bitcast %union.anon* %2228 to i64*
  %2229 = load i64, i64* %RAX.i757
  %2230 = load i64, i64* %RCX.i758
  %2231 = mul i64 %2230, 4
  %2232 = add i64 %2231, %2229
  %2233 = load i64, i64* %PC.i756
  %2234 = add i64 %2233, 7
  store i64 %2234, i64* %PC.i756
  %2235 = inttoptr i64 %2232 to i32*
  store i32 0, i32* %2235
  store %struct.Memory* %loadMem_4affa8, %struct.Memory** %MEMORY
  %loadMem_4affaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 33
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 1
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RAX.i754 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 15
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %RBP.i755 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %RBP.i755
  %2246 = sub i64 %2245, 16
  %2247 = load i64, i64* %PC.i753
  %2248 = add i64 %2247, 3
  store i64 %2248, i64* %PC.i753
  %2249 = inttoptr i64 %2246 to i32*
  %2250 = load i32, i32* %2249
  %2251 = zext i32 %2250 to i64
  store i64 %2251, i64* %RAX.i754, align 8
  store %struct.Memory* %loadMem_4affaf, %struct.Memory** %MEMORY
  %loadMem_4affb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 33
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %2254 to i64*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 1
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RAX.i752 = bitcast %union.anon* %2257 to i64*
  %2258 = load i64, i64* %RAX.i752
  %2259 = load i64, i64* %PC.i751
  %2260 = add i64 %2259, 3
  store i64 %2260, i64* %PC.i751
  %2261 = trunc i64 %2258 to i32
  %2262 = add i32 1, %2261
  %2263 = zext i32 %2262 to i64
  store i64 %2263, i64* %RAX.i752, align 8
  %2264 = icmp ult i32 %2262, %2261
  %2265 = icmp ult i32 %2262, 1
  %2266 = or i1 %2264, %2265
  %2267 = zext i1 %2266 to i8
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2267, i8* %2268, align 1
  %2269 = and i32 %2262, 255
  %2270 = call i32 @llvm.ctpop.i32(i32 %2269)
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  %2273 = xor i8 %2272, 1
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2273, i8* %2274, align 1
  %2275 = xor i64 1, %2258
  %2276 = trunc i64 %2275 to i32
  %2277 = xor i32 %2276, %2262
  %2278 = lshr i32 %2277, 4
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2280, i8* %2281, align 1
  %2282 = icmp eq i32 %2262, 0
  %2283 = zext i1 %2282 to i8
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2283, i8* %2284, align 1
  %2285 = lshr i32 %2262, 31
  %2286 = trunc i32 %2285 to i8
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2286, i8* %2287, align 1
  %2288 = lshr i32 %2261, 31
  %2289 = xor i32 %2285, %2288
  %2290 = add i32 %2289, %2285
  %2291 = icmp eq i32 %2290, 2
  %2292 = zext i1 %2291 to i8
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2292, i8* %2293, align 1
  store %struct.Memory* %loadMem_4affb2, %struct.Memory** %MEMORY
  %loadMem_4affb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 33
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %2296 to i64*
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 1
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %EAX.i749 = bitcast %union.anon* %2299 to i32*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 15
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RBP.i750 = bitcast %union.anon* %2302 to i64*
  %2303 = load i64, i64* %RBP.i750
  %2304 = sub i64 %2303, 16
  %2305 = load i32, i32* %EAX.i749
  %2306 = zext i32 %2305 to i64
  %2307 = load i64, i64* %PC.i748
  %2308 = add i64 %2307, 3
  store i64 %2308, i64* %PC.i748
  %2309 = inttoptr i64 %2304 to i32*
  store i32 %2305, i32* %2309
  store %struct.Memory* %loadMem_4affb5, %struct.Memory** %MEMORY
  %loadMem_4affb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %2312 to i64*
  %2313 = load i64, i64* %PC.i747
  %2314 = add i64 %2313, -179
  %2315 = load i64, i64* %PC.i747
  %2316 = add i64 %2315, 5
  store i64 %2316, i64* %PC.i747
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2314, i64* %2317, align 8
  store %struct.Memory* %loadMem_4affb8, %struct.Memory** %MEMORY
  br label %block_.L_4aff05

block_.L_4affbd:                                  ; preds = %block_.L_4aff05
  %loadMem_4affbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 33
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %2320 to i64*
  %2321 = load i64, i64* %PC.i746
  %2322 = add i64 %2321, 5
  %2323 = load i64, i64* %PC.i746
  %2324 = add i64 %2323, 5
  store i64 %2324, i64* %PC.i746
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2322, i64* %2325, align 8
  store %struct.Memory* %loadMem_4affbd, %struct.Memory** %MEMORY
  br label %block_.L_4affc2

block_.L_4affc2:                                  ; preds = %block_.L_4affbd
  %loadMem_4affc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 33
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 1
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %RAX.i744 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 15
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %2334 to i64*
  %2335 = load i64, i64* %RBP.i745
  %2336 = sub i64 %2335, 12
  %2337 = load i64, i64* %PC.i743
  %2338 = add i64 %2337, 3
  store i64 %2338, i64* %PC.i743
  %2339 = inttoptr i64 %2336 to i32*
  %2340 = load i32, i32* %2339
  %2341 = zext i32 %2340 to i64
  store i64 %2341, i64* %RAX.i744, align 8
  store %struct.Memory* %loadMem_4affc2, %struct.Memory** %MEMORY
  %loadMem_4affc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 33
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %2344 to i64*
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 1
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %RAX.i742 = bitcast %union.anon* %2347 to i64*
  %2348 = load i64, i64* %RAX.i742
  %2349 = load i64, i64* %PC.i741
  %2350 = add i64 %2349, 3
  store i64 %2350, i64* %PC.i741
  %2351 = trunc i64 %2348 to i32
  %2352 = add i32 1, %2351
  %2353 = zext i32 %2352 to i64
  store i64 %2353, i64* %RAX.i742, align 8
  %2354 = icmp ult i32 %2352, %2351
  %2355 = icmp ult i32 %2352, 1
  %2356 = or i1 %2354, %2355
  %2357 = zext i1 %2356 to i8
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2357, i8* %2358, align 1
  %2359 = and i32 %2352, 255
  %2360 = call i32 @llvm.ctpop.i32(i32 %2359)
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  %2363 = xor i8 %2362, 1
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2363, i8* %2364, align 1
  %2365 = xor i64 1, %2348
  %2366 = trunc i64 %2365 to i32
  %2367 = xor i32 %2366, %2352
  %2368 = lshr i32 %2367, 4
  %2369 = trunc i32 %2368 to i8
  %2370 = and i8 %2369, 1
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2370, i8* %2371, align 1
  %2372 = icmp eq i32 %2352, 0
  %2373 = zext i1 %2372 to i8
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2373, i8* %2374, align 1
  %2375 = lshr i32 %2352, 31
  %2376 = trunc i32 %2375 to i8
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2376, i8* %2377, align 1
  %2378 = lshr i32 %2351, 31
  %2379 = xor i32 %2375, %2378
  %2380 = add i32 %2379, %2375
  %2381 = icmp eq i32 %2380, 2
  %2382 = zext i1 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2382, i8* %2383, align 1
  store %struct.Memory* %loadMem_4affc5, %struct.Memory** %MEMORY
  %loadMem_4affc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 33
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %2386 to i64*
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 1
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %EAX.i739 = bitcast %union.anon* %2389 to i32*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 15
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RBP.i740 = bitcast %union.anon* %2392 to i64*
  %2393 = load i64, i64* %RBP.i740
  %2394 = sub i64 %2393, 12
  %2395 = load i32, i32* %EAX.i739
  %2396 = zext i32 %2395 to i64
  %2397 = load i64, i64* %PC.i738
  %2398 = add i64 %2397, 3
  store i64 %2398, i64* %PC.i738
  %2399 = inttoptr i64 %2394 to i32*
  store i32 %2395, i32* %2399
  store %struct.Memory* %loadMem_4affc8, %struct.Memory** %MEMORY
  %loadMem_4affcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 33
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %2402 to i64*
  %2403 = load i64, i64* %PC.i737
  %2404 = add i64 %2403, -225
  %2405 = load i64, i64* %PC.i737
  %2406 = add i64 %2405, 5
  store i64 %2406, i64* %PC.i737
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2404, i64* %2407, align 8
  store %struct.Memory* %loadMem_4affcb, %struct.Memory** %MEMORY
  br label %block_.L_4afeea

block_.L_4affd0:                                  ; preds = %block_.L_4afeea
  %loadMem_4affd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 33
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %2410 to i64*
  %2411 = load i64, i64* %PC.i736
  %2412 = add i64 %2411, 5
  %2413 = load i64, i64* %PC.i736
  %2414 = add i64 %2413, 5
  store i64 %2414, i64* %PC.i736
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2412, i64* %2415, align 8
  store %struct.Memory* %loadMem_4affd0, %struct.Memory** %MEMORY
  br label %block_.L_4affd5

block_.L_4affd5:                                  ; preds = %block_.L_4affd0
  %loadMem_4affd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 1
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RAX.i734 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 15
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %2424 to i64*
  %2425 = load i64, i64* %RBP.i735
  %2426 = sub i64 %2425, 8
  %2427 = load i64, i64* %PC.i733
  %2428 = add i64 %2427, 3
  store i64 %2428, i64* %PC.i733
  %2429 = inttoptr i64 %2426 to i32*
  %2430 = load i32, i32* %2429
  %2431 = zext i32 %2430 to i64
  store i64 %2431, i64* %RAX.i734, align 8
  store %struct.Memory* %loadMem_4affd5, %struct.Memory** %MEMORY
  %loadMem_4affd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 1
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RAX.i732 = bitcast %union.anon* %2437 to i64*
  %2438 = load i64, i64* %RAX.i732
  %2439 = load i64, i64* %PC.i731
  %2440 = add i64 %2439, 3
  store i64 %2440, i64* %PC.i731
  %2441 = trunc i64 %2438 to i32
  %2442 = add i32 1, %2441
  %2443 = zext i32 %2442 to i64
  store i64 %2443, i64* %RAX.i732, align 8
  %2444 = icmp ult i32 %2442, %2441
  %2445 = icmp ult i32 %2442, 1
  %2446 = or i1 %2444, %2445
  %2447 = zext i1 %2446 to i8
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2447, i8* %2448, align 1
  %2449 = and i32 %2442, 255
  %2450 = call i32 @llvm.ctpop.i32(i32 %2449)
  %2451 = trunc i32 %2450 to i8
  %2452 = and i8 %2451, 1
  %2453 = xor i8 %2452, 1
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2453, i8* %2454, align 1
  %2455 = xor i64 1, %2438
  %2456 = trunc i64 %2455 to i32
  %2457 = xor i32 %2456, %2442
  %2458 = lshr i32 %2457, 4
  %2459 = trunc i32 %2458 to i8
  %2460 = and i8 %2459, 1
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2460, i8* %2461, align 1
  %2462 = icmp eq i32 %2442, 0
  %2463 = zext i1 %2462 to i8
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2463, i8* %2464, align 1
  %2465 = lshr i32 %2442, 31
  %2466 = trunc i32 %2465 to i8
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2466, i8* %2467, align 1
  %2468 = lshr i32 %2441, 31
  %2469 = xor i32 %2465, %2468
  %2470 = add i32 %2469, %2465
  %2471 = icmp eq i32 %2470, 2
  %2472 = zext i1 %2471 to i8
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2472, i8* %2473, align 1
  store %struct.Memory* %loadMem_4affd8, %struct.Memory** %MEMORY
  %loadMem_4affdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 33
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 1
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %EAX.i729 = bitcast %union.anon* %2479 to i32*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 15
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RBP.i730 = bitcast %union.anon* %2482 to i64*
  %2483 = load i64, i64* %RBP.i730
  %2484 = sub i64 %2483, 8
  %2485 = load i32, i32* %EAX.i729
  %2486 = zext i32 %2485 to i64
  %2487 = load i64, i64* %PC.i728
  %2488 = add i64 %2487, 3
  store i64 %2488, i64* %PC.i728
  %2489 = inttoptr i64 %2484 to i32*
  store i32 %2485, i32* %2489
  store %struct.Memory* %loadMem_4affdb, %struct.Memory** %MEMORY
  %loadMem_4affde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 33
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %2492 to i64*
  %2493 = load i64, i64* %PC.i727
  %2494 = add i64 %2493, -271
  %2495 = load i64, i64* %PC.i727
  %2496 = add i64 %2495, 5
  store i64 %2496, i64* %PC.i727
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2494, i64* %2497, align 8
  store %struct.Memory* %loadMem_4affde, %struct.Memory** %MEMORY
  br label %block_.L_4afecf

block_.L_4affe3:                                  ; preds = %block_.L_4afecf
  %loadMem_4affe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 15
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %2503 to i64*
  %2504 = load i64, i64* %RBP.i726
  %2505 = sub i64 %2504, 8
  %2506 = load i64, i64* %PC.i725
  %2507 = add i64 %2506, 7
  store i64 %2507, i64* %PC.i725
  %2508 = inttoptr i64 %2505 to i32*
  store i32 0, i32* %2508
  store %struct.Memory* %loadMem_4affe3, %struct.Memory** %MEMORY
  br label %block_.L_4affea

block_.L_4affea:                                  ; preds = %block_.L_4b0051, %block_.L_4affe3
  %loadMem_4affea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 33
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %2511 to i64*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 1
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %RAX.i723 = bitcast %union.anon* %2514 to i64*
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 15
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %2517 to i64*
  %2518 = load i64, i64* %RBP.i724
  %2519 = sub i64 %2518, 8
  %2520 = load i64, i64* %PC.i722
  %2521 = add i64 %2520, 3
  store i64 %2521, i64* %PC.i722
  %2522 = inttoptr i64 %2519 to i32*
  %2523 = load i32, i32* %2522
  %2524 = zext i32 %2523 to i64
  store i64 %2524, i64* %RAX.i723, align 8
  store %struct.Memory* %loadMem_4affea, %struct.Memory** %MEMORY
  %loadMem_4affed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2526 = getelementptr inbounds %struct.GPR, %struct.GPR* %2525, i32 0, i32 33
  %2527 = getelementptr inbounds %struct.Reg, %struct.Reg* %2526, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %2527 to i64*
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2529 = getelementptr inbounds %struct.GPR, %struct.GPR* %2528, i32 0, i32 5
  %2530 = getelementptr inbounds %struct.Reg, %struct.Reg* %2529, i32 0, i32 0
  %RCX.i721 = bitcast %union.anon* %2530 to i64*
  %2531 = load i64, i64* %PC.i720
  %2532 = add i64 %2531, 8
  store i64 %2532, i64* %PC.i720
  %2533 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2533, i64* %RCX.i721, align 8
  store %struct.Memory* %loadMem_4affed, %struct.Memory** %MEMORY
  %loadMem_4afff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 33
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %2536 to i64*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 1
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %EAX.i718 = bitcast %union.anon* %2539 to i32*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 5
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RCX.i719 = bitcast %union.anon* %2542 to i64*
  %2543 = load i32, i32* %EAX.i718
  %2544 = zext i32 %2543 to i64
  %2545 = load i64, i64* %RCX.i719
  %2546 = add i64 %2545, 60
  %2547 = load i64, i64* %PC.i717
  %2548 = add i64 %2547, 3
  store i64 %2548, i64* %PC.i717
  %2549 = inttoptr i64 %2546 to i32*
  %2550 = load i32, i32* %2549
  %2551 = sub i32 %2543, %2550
  %2552 = icmp ult i32 %2543, %2550
  %2553 = zext i1 %2552 to i8
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2553, i8* %2554, align 1
  %2555 = and i32 %2551, 255
  %2556 = call i32 @llvm.ctpop.i32(i32 %2555)
  %2557 = trunc i32 %2556 to i8
  %2558 = and i8 %2557, 1
  %2559 = xor i8 %2558, 1
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2559, i8* %2560, align 1
  %2561 = xor i32 %2550, %2543
  %2562 = xor i32 %2561, %2551
  %2563 = lshr i32 %2562, 4
  %2564 = trunc i32 %2563 to i8
  %2565 = and i8 %2564, 1
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2565, i8* %2566, align 1
  %2567 = icmp eq i32 %2551, 0
  %2568 = zext i1 %2567 to i8
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2568, i8* %2569, align 1
  %2570 = lshr i32 %2551, 31
  %2571 = trunc i32 %2570 to i8
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2571, i8* %2572, align 1
  %2573 = lshr i32 %2543, 31
  %2574 = lshr i32 %2550, 31
  %2575 = xor i32 %2574, %2573
  %2576 = xor i32 %2570, %2573
  %2577 = add i32 %2576, %2575
  %2578 = icmp eq i32 %2577, 2
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2579, i8* %2580, align 1
  store %struct.Memory* %loadMem_4afff5, %struct.Memory** %MEMORY
  %loadMem_4afff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 33
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %2583 to i64*
  %2584 = load i64, i64* %PC.i716
  %2585 = add i64 %2584, 103
  %2586 = load i64, i64* %PC.i716
  %2587 = add i64 %2586, 6
  %2588 = load i64, i64* %PC.i716
  %2589 = add i64 %2588, 6
  store i64 %2589, i64* %PC.i716
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2591 = load i8, i8* %2590, align 1
  %2592 = icmp ne i8 %2591, 0
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2594 = load i8, i8* %2593, align 1
  %2595 = icmp ne i8 %2594, 0
  %2596 = xor i1 %2592, %2595
  %2597 = xor i1 %2596, true
  %2598 = zext i1 %2597 to i8
  store i8 %2598, i8* %BRANCH_TAKEN, align 1
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2600 = select i1 %2596, i64 %2587, i64 %2585
  store i64 %2600, i64* %2599, align 8
  store %struct.Memory* %loadMem_4afff8, %struct.Memory** %MEMORY
  %loadBr_4afff8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afff8 = icmp eq i8 %loadBr_4afff8, 1
  br i1 %cmpBr_4afff8, label %block_.L_4b005f, label %block_4afffe

block_4afffe:                                     ; preds = %block_.L_4affea
  %loadMem_4afffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 15
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %RBP.i715 = bitcast %union.anon* %2606 to i64*
  %2607 = load i64, i64* %RBP.i715
  %2608 = sub i64 %2607, 12
  %2609 = load i64, i64* %PC.i714
  %2610 = add i64 %2609, 7
  store i64 %2610, i64* %PC.i714
  %2611 = inttoptr i64 %2608 to i32*
  store i32 0, i32* %2611
  store %struct.Memory* %loadMem_4afffe, %struct.Memory** %MEMORY
  br label %block_.L_4b0005

block_.L_4b0005:                                  ; preds = %block_4b0019, %block_4afffe
  %loadMem_4b0005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 33
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 1
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RAX.i712 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 15
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %RBP.i713 = bitcast %union.anon* %2620 to i64*
  %2621 = load i64, i64* %RBP.i713
  %2622 = sub i64 %2621, 12
  %2623 = load i64, i64* %PC.i711
  %2624 = add i64 %2623, 3
  store i64 %2624, i64* %PC.i711
  %2625 = inttoptr i64 %2622 to i32*
  %2626 = load i32, i32* %2625
  %2627 = zext i32 %2626 to i64
  store i64 %2627, i64* %RAX.i712, align 8
  store %struct.Memory* %loadMem_4b0005, %struct.Memory** %MEMORY
  %loadMem_4b0008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 33
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 5
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RCX.i710 = bitcast %union.anon* %2633 to i64*
  %2634 = load i64, i64* %PC.i709
  %2635 = add i64 %2634, 8
  store i64 %2635, i64* %PC.i709
  %2636 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2636, i64* %RCX.i710, align 8
  store %struct.Memory* %loadMem_4b0008, %struct.Memory** %MEMORY
  %loadMem_4b0010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 33
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %2639 to i64*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 1
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %EAX.i707 = bitcast %union.anon* %2642 to i32*
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 5
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %RCX.i708 = bitcast %union.anon* %2645 to i64*
  %2646 = load i32, i32* %EAX.i707
  %2647 = zext i32 %2646 to i64
  %2648 = load i64, i64* %RCX.i708
  %2649 = add i64 %2648, 52
  %2650 = load i64, i64* %PC.i706
  %2651 = add i64 %2650, 3
  store i64 %2651, i64* %PC.i706
  %2652 = inttoptr i64 %2649 to i32*
  %2653 = load i32, i32* %2652
  %2654 = sub i32 %2646, %2653
  %2655 = icmp ult i32 %2646, %2653
  %2656 = zext i1 %2655 to i8
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2656, i8* %2657, align 1
  %2658 = and i32 %2654, 255
  %2659 = call i32 @llvm.ctpop.i32(i32 %2658)
  %2660 = trunc i32 %2659 to i8
  %2661 = and i8 %2660, 1
  %2662 = xor i8 %2661, 1
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2662, i8* %2663, align 1
  %2664 = xor i32 %2653, %2646
  %2665 = xor i32 %2664, %2654
  %2666 = lshr i32 %2665, 4
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2668, i8* %2669, align 1
  %2670 = icmp eq i32 %2654, 0
  %2671 = zext i1 %2670 to i8
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2671, i8* %2672, align 1
  %2673 = lshr i32 %2654, 31
  %2674 = trunc i32 %2673 to i8
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2674, i8* %2675, align 1
  %2676 = lshr i32 %2646, 31
  %2677 = lshr i32 %2653, 31
  %2678 = xor i32 %2677, %2676
  %2679 = xor i32 %2673, %2676
  %2680 = add i32 %2679, %2678
  %2681 = icmp eq i32 %2680, 2
  %2682 = zext i1 %2681 to i8
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2682, i8* %2683, align 1
  store %struct.Memory* %loadMem_4b0010, %struct.Memory** %MEMORY
  %loadMem_4b0013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 33
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %2686 to i64*
  %2687 = load i64, i64* %PC.i705
  %2688 = add i64 %2687, 57
  %2689 = load i64, i64* %PC.i705
  %2690 = add i64 %2689, 6
  %2691 = load i64, i64* %PC.i705
  %2692 = add i64 %2691, 6
  store i64 %2692, i64* %PC.i705
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2694 = load i8, i8* %2693, align 1
  %2695 = icmp ne i8 %2694, 0
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2697 = load i8, i8* %2696, align 1
  %2698 = icmp ne i8 %2697, 0
  %2699 = xor i1 %2695, %2698
  %2700 = xor i1 %2699, true
  %2701 = zext i1 %2700 to i8
  store i8 %2701, i8* %BRANCH_TAKEN, align 1
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2703 = select i1 %2699, i64 %2690, i64 %2688
  store i64 %2703, i64* %2702, align 8
  store %struct.Memory* %loadMem_4b0013, %struct.Memory** %MEMORY
  %loadBr_4b0013 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0013 = icmp eq i8 %loadBr_4b0013, 1
  br i1 %cmpBr_4b0013, label %block_.L_4b004c, label %block_4b0019

block_4b0019:                                     ; preds = %block_.L_4b0005
  %loadMem_4b0019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 33
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 1
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %RAX.i704 = bitcast %union.anon* %2709 to i64*
  %2710 = load i64, i64* %PC.i703
  %2711 = add i64 %2710, ptrtoint (%G_0x2763f8__rip__type* @G_0x2763f8__rip_ to i64)
  %2712 = load i64, i64* %PC.i703
  %2713 = add i64 %2712, 7
  store i64 %2713, i64* %PC.i703
  %2714 = inttoptr i64 %2711 to i64*
  %2715 = load i64, i64* %2714
  store i64 %2715, i64* %RAX.i704, align 8
  store %struct.Memory* %loadMem_4b0019, %struct.Memory** %MEMORY
  %loadMem_4b0020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 33
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %2718 to i64*
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 5
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %RCX.i701 = bitcast %union.anon* %2721 to i64*
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 15
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %RBP.i702 = bitcast %union.anon* %2724 to i64*
  %2725 = load i64, i64* %RBP.i702
  %2726 = sub i64 %2725, 8
  %2727 = load i64, i64* %PC.i700
  %2728 = add i64 %2727, 4
  store i64 %2728, i64* %PC.i700
  %2729 = inttoptr i64 %2726 to i32*
  %2730 = load i32, i32* %2729
  %2731 = sext i32 %2730 to i64
  store i64 %2731, i64* %RCX.i701, align 8
  store %struct.Memory* %loadMem_4b0020, %struct.Memory** %MEMORY
  %loadMem_4b0024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 1
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RAX.i698 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 5
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RCX.i699 = bitcast %union.anon* %2740 to i64*
  %2741 = load i64, i64* %RAX.i698
  %2742 = load i64, i64* %RCX.i699
  %2743 = mul i64 %2742, 8
  %2744 = add i64 %2743, %2741
  %2745 = load i64, i64* %PC.i697
  %2746 = add i64 %2745, 4
  store i64 %2746, i64* %PC.i697
  %2747 = inttoptr i64 %2744 to i64*
  %2748 = load i64, i64* %2747
  store i64 %2748, i64* %RAX.i698, align 8
  store %struct.Memory* %loadMem_4b0024, %struct.Memory** %MEMORY
  %loadMem_4b0028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 33
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2751 to i64*
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 5
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %RCX.i695 = bitcast %union.anon* %2754 to i64*
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 15
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %RBP.i696 = bitcast %union.anon* %2757 to i64*
  %2758 = load i64, i64* %RBP.i696
  %2759 = sub i64 %2758, 12
  %2760 = load i64, i64* %PC.i694
  %2761 = add i64 %2760, 4
  store i64 %2761, i64* %PC.i694
  %2762 = inttoptr i64 %2759 to i32*
  %2763 = load i32, i32* %2762
  %2764 = sext i32 %2763 to i64
  store i64 %2764, i64* %RCX.i695, align 8
  store %struct.Memory* %loadMem_4b0028, %struct.Memory** %MEMORY
  %loadMem_4b002c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 33
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %2767 to i64*
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 1
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %RAX.i691 = bitcast %union.anon* %2770 to i64*
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 5
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %RCX.i692 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 7
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %RDX.i693 = bitcast %union.anon* %2776 to i64*
  %2777 = load i64, i64* %RAX.i691
  %2778 = load i64, i64* %RCX.i692
  %2779 = mul i64 %2778, 2
  %2780 = add i64 %2779, %2777
  %2781 = load i64, i64* %PC.i690
  %2782 = add i64 %2781, 4
  store i64 %2782, i64* %PC.i690
  %2783 = inttoptr i64 %2780 to i16*
  %2784 = load i16, i16* %2783
  %2785 = zext i16 %2784 to i64
  store i64 %2785, i64* %RDX.i693, align 8
  store %struct.Memory* %loadMem_4b002c, %struct.Memory** %MEMORY
  %loadMem_4b0030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 7
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %EDX.i688 = bitcast %union.anon* %2791 to i32*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2793 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2792, i64 0, i64 0
  %YMM0.i689 = bitcast %union.VectorReg* %2793 to %"class.std::bitset"*
  %2794 = bitcast %"class.std::bitset"* %YMM0.i689 to i8*
  %2795 = load i32, i32* %EDX.i688
  %2796 = zext i32 %2795 to i64
  %2797 = load i64, i64* %PC.i687
  %2798 = add i64 %2797, 4
  store i64 %2798, i64* %PC.i687
  %2799 = sitofp i32 %2795 to double
  %2800 = bitcast i8* %2794 to double*
  store double %2799, double* %2800, align 1
  store %struct.Memory* %loadMem_4b0030, %struct.Memory** %MEMORY
  %loadMem_4b0034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2803 to i64*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 15
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %RBP.i685 = bitcast %union.anon* %2806 to i64*
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2808 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2807, i64 0, i64 0
  %YMM0.i686 = bitcast %union.VectorReg* %2808 to %"class.std::bitset"*
  %2809 = bitcast %"class.std::bitset"* %YMM0.i686 to i8*
  %2810 = bitcast %"class.std::bitset"* %YMM0.i686 to i8*
  %2811 = load i64, i64* %RBP.i685
  %2812 = sub i64 %2811, 24
  %2813 = load i64, i64* %PC.i684
  %2814 = add i64 %2813, 5
  store i64 %2814, i64* %PC.i684
  %2815 = bitcast i8* %2810 to double*
  %2816 = load double, double* %2815, align 1
  %2817 = getelementptr inbounds i8, i8* %2810, i64 8
  %2818 = bitcast i8* %2817 to i64*
  %2819 = load i64, i64* %2818, align 1
  %2820 = inttoptr i64 %2812 to double*
  %2821 = load double, double* %2820
  %2822 = fadd double %2816, %2821
  %2823 = bitcast i8* %2809 to double*
  store double %2822, double* %2823, align 1
  %2824 = getelementptr inbounds i8, i8* %2809, i64 8
  %2825 = bitcast i8* %2824 to i64*
  store i64 %2819, i64* %2825, align 1
  store %struct.Memory* %loadMem_4b0034, %struct.Memory** %MEMORY
  %loadMem_4b0039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 33
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2828 to i64*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 15
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %RBP.i682 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2833 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2832, i64 0, i64 0
  %XMM0.i683 = bitcast %union.VectorReg* %2833 to %union.vec128_t*
  %2834 = load i64, i64* %RBP.i682
  %2835 = sub i64 %2834, 24
  %2836 = bitcast %union.vec128_t* %XMM0.i683 to i8*
  %2837 = load i64, i64* %PC.i681
  %2838 = add i64 %2837, 5
  store i64 %2838, i64* %PC.i681
  %2839 = bitcast i8* %2836 to double*
  %2840 = load double, double* %2839, align 1
  %2841 = inttoptr i64 %2835 to double*
  store double %2840, double* %2841
  store %struct.Memory* %loadMem_4b0039, %struct.Memory** %MEMORY
  %loadMem_4b003e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 33
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 1
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %2847 to i64*
  %2848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2849 = getelementptr inbounds %struct.GPR, %struct.GPR* %2848, i32 0, i32 15
  %2850 = getelementptr inbounds %struct.Reg, %struct.Reg* %2849, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %2850 to i64*
  %2851 = load i64, i64* %RBP.i680
  %2852 = sub i64 %2851, 12
  %2853 = load i64, i64* %PC.i678
  %2854 = add i64 %2853, 3
  store i64 %2854, i64* %PC.i678
  %2855 = inttoptr i64 %2852 to i32*
  %2856 = load i32, i32* %2855
  %2857 = zext i32 %2856 to i64
  store i64 %2857, i64* %RAX.i679, align 8
  store %struct.Memory* %loadMem_4b003e, %struct.Memory** %MEMORY
  %loadMem_4b0041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 33
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 1
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RAX.i677 = bitcast %union.anon* %2863 to i64*
  %2864 = load i64, i64* %RAX.i677
  %2865 = load i64, i64* %PC.i676
  %2866 = add i64 %2865, 3
  store i64 %2866, i64* %PC.i676
  %2867 = trunc i64 %2864 to i32
  %2868 = add i32 1, %2867
  %2869 = zext i32 %2868 to i64
  store i64 %2869, i64* %RAX.i677, align 8
  %2870 = icmp ult i32 %2868, %2867
  %2871 = icmp ult i32 %2868, 1
  %2872 = or i1 %2870, %2871
  %2873 = zext i1 %2872 to i8
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2873, i8* %2874, align 1
  %2875 = and i32 %2868, 255
  %2876 = call i32 @llvm.ctpop.i32(i32 %2875)
  %2877 = trunc i32 %2876 to i8
  %2878 = and i8 %2877, 1
  %2879 = xor i8 %2878, 1
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2879, i8* %2880, align 1
  %2881 = xor i64 1, %2864
  %2882 = trunc i64 %2881 to i32
  %2883 = xor i32 %2882, %2868
  %2884 = lshr i32 %2883, 4
  %2885 = trunc i32 %2884 to i8
  %2886 = and i8 %2885, 1
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2886, i8* %2887, align 1
  %2888 = icmp eq i32 %2868, 0
  %2889 = zext i1 %2888 to i8
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2889, i8* %2890, align 1
  %2891 = lshr i32 %2868, 31
  %2892 = trunc i32 %2891 to i8
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2892, i8* %2893, align 1
  %2894 = lshr i32 %2867, 31
  %2895 = xor i32 %2891, %2894
  %2896 = add i32 %2895, %2891
  %2897 = icmp eq i32 %2896, 2
  %2898 = zext i1 %2897 to i8
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2898, i8* %2899, align 1
  store %struct.Memory* %loadMem_4b0041, %struct.Memory** %MEMORY
  %loadMem_4b0044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 33
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2902 to i64*
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2904 = getelementptr inbounds %struct.GPR, %struct.GPR* %2903, i32 0, i32 1
  %2905 = getelementptr inbounds %struct.Reg, %struct.Reg* %2904, i32 0, i32 0
  %EAX.i674 = bitcast %union.anon* %2905 to i32*
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2907 = getelementptr inbounds %struct.GPR, %struct.GPR* %2906, i32 0, i32 15
  %2908 = getelementptr inbounds %struct.Reg, %struct.Reg* %2907, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %2908 to i64*
  %2909 = load i64, i64* %RBP.i675
  %2910 = sub i64 %2909, 12
  %2911 = load i32, i32* %EAX.i674
  %2912 = zext i32 %2911 to i64
  %2913 = load i64, i64* %PC.i673
  %2914 = add i64 %2913, 3
  store i64 %2914, i64* %PC.i673
  %2915 = inttoptr i64 %2910 to i32*
  store i32 %2911, i32* %2915
  store %struct.Memory* %loadMem_4b0044, %struct.Memory** %MEMORY
  %loadMem_4b0047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %2918 to i64*
  %2919 = load i64, i64* %PC.i672
  %2920 = add i64 %2919, -66
  %2921 = load i64, i64* %PC.i672
  %2922 = add i64 %2921, 5
  store i64 %2922, i64* %PC.i672
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2920, i64* %2923, align 8
  store %struct.Memory* %loadMem_4b0047, %struct.Memory** %MEMORY
  br label %block_.L_4b0005

block_.L_4b004c:                                  ; preds = %block_.L_4b0005
  %loadMem_4b004c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %2926 to i64*
  %2927 = load i64, i64* %PC.i671
  %2928 = add i64 %2927, 5
  %2929 = load i64, i64* %PC.i671
  %2930 = add i64 %2929, 5
  store i64 %2930, i64* %PC.i671
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2928, i64* %2931, align 8
  store %struct.Memory* %loadMem_4b004c, %struct.Memory** %MEMORY
  br label %block_.L_4b0051

block_.L_4b0051:                                  ; preds = %block_.L_4b004c
  %loadMem_4b0051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 33
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %2934 to i64*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 1
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %RAX.i669 = bitcast %union.anon* %2937 to i64*
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 15
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %2940 to i64*
  %2941 = load i64, i64* %RBP.i670
  %2942 = sub i64 %2941, 8
  %2943 = load i64, i64* %PC.i668
  %2944 = add i64 %2943, 3
  store i64 %2944, i64* %PC.i668
  %2945 = inttoptr i64 %2942 to i32*
  %2946 = load i32, i32* %2945
  %2947 = zext i32 %2946 to i64
  store i64 %2947, i64* %RAX.i669, align 8
  store %struct.Memory* %loadMem_4b0051, %struct.Memory** %MEMORY
  %loadMem_4b0054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2950 to i64*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 1
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %RAX.i667 = bitcast %union.anon* %2953 to i64*
  %2954 = load i64, i64* %RAX.i667
  %2955 = load i64, i64* %PC.i666
  %2956 = add i64 %2955, 3
  store i64 %2956, i64* %PC.i666
  %2957 = trunc i64 %2954 to i32
  %2958 = add i32 1, %2957
  %2959 = zext i32 %2958 to i64
  store i64 %2959, i64* %RAX.i667, align 8
  %2960 = icmp ult i32 %2958, %2957
  %2961 = icmp ult i32 %2958, 1
  %2962 = or i1 %2960, %2961
  %2963 = zext i1 %2962 to i8
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2963, i8* %2964, align 1
  %2965 = and i32 %2958, 255
  %2966 = call i32 @llvm.ctpop.i32(i32 %2965)
  %2967 = trunc i32 %2966 to i8
  %2968 = and i8 %2967, 1
  %2969 = xor i8 %2968, 1
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2969, i8* %2970, align 1
  %2971 = xor i64 1, %2954
  %2972 = trunc i64 %2971 to i32
  %2973 = xor i32 %2972, %2958
  %2974 = lshr i32 %2973, 4
  %2975 = trunc i32 %2974 to i8
  %2976 = and i8 %2975, 1
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2976, i8* %2977, align 1
  %2978 = icmp eq i32 %2958, 0
  %2979 = zext i1 %2978 to i8
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2979, i8* %2980, align 1
  %2981 = lshr i32 %2958, 31
  %2982 = trunc i32 %2981 to i8
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2982, i8* %2983, align 1
  %2984 = lshr i32 %2957, 31
  %2985 = xor i32 %2981, %2984
  %2986 = add i32 %2985, %2981
  %2987 = icmp eq i32 %2986, 2
  %2988 = zext i1 %2987 to i8
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2988, i8* %2989, align 1
  store %struct.Memory* %loadMem_4b0054, %struct.Memory** %MEMORY
  %loadMem_4b0057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 33
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %2992 to i64*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 1
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %EAX.i664 = bitcast %union.anon* %2995 to i32*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 15
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %RBP.i665 = bitcast %union.anon* %2998 to i64*
  %2999 = load i64, i64* %RBP.i665
  %3000 = sub i64 %2999, 8
  %3001 = load i32, i32* %EAX.i664
  %3002 = zext i32 %3001 to i64
  %3003 = load i64, i64* %PC.i663
  %3004 = add i64 %3003, 3
  store i64 %3004, i64* %PC.i663
  %3005 = inttoptr i64 %3000 to i32*
  store i32 %3001, i32* %3005
  store %struct.Memory* %loadMem_4b0057, %struct.Memory** %MEMORY
  %loadMem_4b005a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 33
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %3008 to i64*
  %3009 = load i64, i64* %PC.i662
  %3010 = add i64 %3009, -112
  %3011 = load i64, i64* %PC.i662
  %3012 = add i64 %3011, 5
  store i64 %3012, i64* %PC.i662
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3010, i64* %3013, align 8
  store %struct.Memory* %loadMem_4b005a, %struct.Memory** %MEMORY
  br label %block_.L_4affea

block_.L_4b005f:                                  ; preds = %block_.L_4affea
  %loadMem_4b005f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 33
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %3016 to i64*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 15
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %3019 to i64*
  %3020 = load i64, i64* %RBP.i661
  %3021 = sub i64 %3020, 932
  %3022 = load i64, i64* %PC.i660
  %3023 = add i64 %3022, 10
  store i64 %3023, i64* %PC.i660
  %3024 = inttoptr i64 %3021 to i32*
  store i32 0, i32* %3024
  store %struct.Memory* %loadMem_4b005f, %struct.Memory** %MEMORY
  br label %block_.L_4b0069

block_.L_4b0069:                                  ; preds = %block_.L_4b045a, %block_.L_4b005f
  %loadMem_4b0069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 33
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 1
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RAX.i658 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 15
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %3033 to i64*
  %3034 = load i64, i64* %RBP.i659
  %3035 = sub i64 %3034, 932
  %3036 = load i64, i64* %PC.i657
  %3037 = add i64 %3036, 6
  store i64 %3037, i64* %PC.i657
  %3038 = inttoptr i64 %3035 to i32*
  %3039 = load i32, i32* %3038
  %3040 = zext i32 %3039 to i64
  store i64 %3040, i64* %RAX.i658, align 8
  store %struct.Memory* %loadMem_4b0069, %struct.Memory** %MEMORY
  %loadMem_4b006f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 33
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %3043 to i64*
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3045 = getelementptr inbounds %struct.GPR, %struct.GPR* %3044, i32 0, i32 5
  %3046 = getelementptr inbounds %struct.Reg, %struct.Reg* %3045, i32 0, i32 0
  %RCX.i655 = bitcast %union.anon* %3046 to i64*
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 15
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %RBP.i656 = bitcast %union.anon* %3049 to i64*
  %3050 = load i64, i64* %RBP.i656
  %3051 = sub i64 %3050, 188
  %3052 = load i64, i64* %PC.i654
  %3053 = add i64 %3052, 6
  store i64 %3053, i64* %PC.i654
  %3054 = inttoptr i64 %3051 to i32*
  %3055 = load i32, i32* %3054
  %3056 = zext i32 %3055 to i64
  store i64 %3056, i64* %RCX.i655, align 8
  store %struct.Memory* %loadMem_4b006f, %struct.Memory** %MEMORY
  %loadMem_4b0075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 5
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RCX.i653 = bitcast %union.anon* %3062 to i64*
  %3063 = load i64, i64* %RCX.i653
  %3064 = load i64, i64* %PC.i652
  %3065 = add i64 %3064, 3
  store i64 %3065, i64* %PC.i652
  %3066 = trunc i64 %3063 to i32
  %3067 = add i32 2, %3066
  %3068 = zext i32 %3067 to i64
  store i64 %3068, i64* %RCX.i653, align 8
  %3069 = icmp ult i32 %3067, %3066
  %3070 = icmp ult i32 %3067, 2
  %3071 = or i1 %3069, %3070
  %3072 = zext i1 %3071 to i8
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3072, i8* %3073, align 1
  %3074 = and i32 %3067, 255
  %3075 = call i32 @llvm.ctpop.i32(i32 %3074)
  %3076 = trunc i32 %3075 to i8
  %3077 = and i8 %3076, 1
  %3078 = xor i8 %3077, 1
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3078, i8* %3079, align 1
  %3080 = xor i64 2, %3063
  %3081 = trunc i64 %3080 to i32
  %3082 = xor i32 %3081, %3067
  %3083 = lshr i32 %3082, 4
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3085, i8* %3086, align 1
  %3087 = icmp eq i32 %3067, 0
  %3088 = zext i1 %3087 to i8
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3088, i8* %3089, align 1
  %3090 = lshr i32 %3067, 31
  %3091 = trunc i32 %3090 to i8
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3091, i8* %3092, align 1
  %3093 = lshr i32 %3066, 31
  %3094 = xor i32 %3090, %3093
  %3095 = add i32 %3094, %3090
  %3096 = icmp eq i32 %3095, 2
  %3097 = zext i1 %3096 to i8
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3097, i8* %3098, align 1
  store %struct.Memory* %loadMem_4b0075, %struct.Memory** %MEMORY
  %loadMem_4b0078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 33
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 1
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %EAX.i650 = bitcast %union.anon* %3104 to i32*
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3106 = getelementptr inbounds %struct.GPR, %struct.GPR* %3105, i32 0, i32 5
  %3107 = getelementptr inbounds %struct.Reg, %struct.Reg* %3106, i32 0, i32 0
  %ECX.i651 = bitcast %union.anon* %3107 to i32*
  %3108 = load i32, i32* %EAX.i650
  %3109 = zext i32 %3108 to i64
  %3110 = load i32, i32* %ECX.i651
  %3111 = zext i32 %3110 to i64
  %3112 = load i64, i64* %PC.i649
  %3113 = add i64 %3112, 2
  store i64 %3113, i64* %PC.i649
  %3114 = sub i32 %3108, %3110
  %3115 = icmp ult i32 %3108, %3110
  %3116 = zext i1 %3115 to i8
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3116, i8* %3117, align 1
  %3118 = and i32 %3114, 255
  %3119 = call i32 @llvm.ctpop.i32(i32 %3118)
  %3120 = trunc i32 %3119 to i8
  %3121 = and i8 %3120, 1
  %3122 = xor i8 %3121, 1
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3122, i8* %3123, align 1
  %3124 = xor i64 %3111, %3109
  %3125 = trunc i64 %3124 to i32
  %3126 = xor i32 %3125, %3114
  %3127 = lshr i32 %3126, 4
  %3128 = trunc i32 %3127 to i8
  %3129 = and i8 %3128, 1
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3129, i8* %3130, align 1
  %3131 = icmp eq i32 %3114, 0
  %3132 = zext i1 %3131 to i8
  %3133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3132, i8* %3133, align 1
  %3134 = lshr i32 %3114, 31
  %3135 = trunc i32 %3134 to i8
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3135, i8* %3136, align 1
  %3137 = lshr i32 %3108, 31
  %3138 = lshr i32 %3110, 31
  %3139 = xor i32 %3138, %3137
  %3140 = xor i32 %3134, %3137
  %3141 = add i32 %3140, %3139
  %3142 = icmp eq i32 %3141, 2
  %3143 = zext i1 %3142 to i8
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3143, i8* %3144, align 1
  store %struct.Memory* %loadMem_4b0078, %struct.Memory** %MEMORY
  %loadMem_4b007a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 33
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %3147 to i64*
  %3148 = load i64, i64* %PC.i648
  %3149 = add i64 %3148, 1012
  %3150 = load i64, i64* %PC.i648
  %3151 = add i64 %3150, 6
  %3152 = load i64, i64* %PC.i648
  %3153 = add i64 %3152, 6
  store i64 %3153, i64* %PC.i648
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3155 = load i8, i8* %3154, align 1
  %3156 = icmp ne i8 %3155, 0
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3158 = load i8, i8* %3157, align 1
  %3159 = icmp ne i8 %3158, 0
  %3160 = xor i1 %3156, %3159
  %3161 = xor i1 %3160, true
  %3162 = zext i1 %3161 to i8
  store i8 %3162, i8* %BRANCH_TAKEN, align 1
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3164 = select i1 %3160, i64 %3151, i64 %3149
  store i64 %3164, i64* %3163, align 8
  store %struct.Memory* %loadMem_4b007a, %struct.Memory** %MEMORY
  %loadBr_4b007a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b007a = icmp eq i8 %loadBr_4b007a, 1
  br i1 %cmpBr_4b007a, label %block_.L_4b046e, label %block_4b0080

block_4b0080:                                     ; preds = %block_.L_4b0069
  %loadMem_4b0080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 33
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %3167 to i64*
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 15
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %RBP.i647 = bitcast %union.anon* %3170 to i64*
  %3171 = load i64, i64* %RBP.i647
  %3172 = sub i64 %3171, 16
  %3173 = load i64, i64* %PC.i646
  %3174 = add i64 %3173, 7
  store i64 %3174, i64* %PC.i646
  %3175 = inttoptr i64 %3172 to i32*
  store i32 0, i32* %3175
  store %struct.Memory* %loadMem_4b0080, %struct.Memory** %MEMORY
  br label %block_.L_4b0087

block_.L_4b0087:                                  ; preds = %block_.L_4b03f3, %block_4b0080
  %loadMem_4b0087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 33
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %3178 to i64*
  %3179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3180 = getelementptr inbounds %struct.GPR, %struct.GPR* %3179, i32 0, i32 1
  %3181 = getelementptr inbounds %struct.Reg, %struct.Reg* %3180, i32 0, i32 0
  %RAX.i644 = bitcast %union.anon* %3181 to i64*
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 15
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %3184 to i64*
  %3185 = load i64, i64* %RBP.i645
  %3186 = sub i64 %3185, 16
  %3187 = load i64, i64* %PC.i643
  %3188 = add i64 %3187, 3
  store i64 %3188, i64* %PC.i643
  %3189 = inttoptr i64 %3186 to i32*
  %3190 = load i32, i32* %3189
  %3191 = zext i32 %3190 to i64
  store i64 %3191, i64* %RAX.i644, align 8
  store %struct.Memory* %loadMem_4b0087, %struct.Memory** %MEMORY
  %loadMem_4b008a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 33
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %3194 to i64*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 5
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %RCX.i641 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 15
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %3200 to i64*
  %3201 = load i64, i64* %RBP.i642
  %3202 = sub i64 %3201, 932
  %3203 = load i64, i64* %PC.i640
  %3204 = add i64 %3203, 7
  store i64 %3204, i64* %PC.i640
  %3205 = inttoptr i64 %3202 to i32*
  %3206 = load i32, i32* %3205
  %3207 = sext i32 %3206 to i64
  store i64 %3207, i64* %RCX.i641, align 8
  store %struct.Memory* %loadMem_4b008a, %struct.Memory** %MEMORY
  %loadMem_4b0091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 33
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 1
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %EAX.i638 = bitcast %union.anon* %3213 to i32*
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3215 = getelementptr inbounds %struct.GPR, %struct.GPR* %3214, i32 0, i32 5
  %3216 = getelementptr inbounds %struct.Reg, %struct.Reg* %3215, i32 0, i32 0
  %RCX.i639 = bitcast %union.anon* %3216 to i64*
  %3217 = load i32, i32* %EAX.i638
  %3218 = zext i32 %3217 to i64
  %3219 = load i64, i64* %RCX.i639
  %3220 = mul i64 %3219, 4
  %3221 = add i64 %3220, 7489456
  %3222 = load i64, i64* %PC.i637
  %3223 = add i64 %3222, 7
  store i64 %3223, i64* %PC.i637
  %3224 = inttoptr i64 %3221 to i32*
  %3225 = load i32, i32* %3224
  %3226 = sub i32 %3217, %3225
  %3227 = icmp ult i32 %3217, %3225
  %3228 = zext i1 %3227 to i8
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3228, i8* %3229, align 1
  %3230 = and i32 %3226, 255
  %3231 = call i32 @llvm.ctpop.i32(i32 %3230)
  %3232 = trunc i32 %3231 to i8
  %3233 = and i8 %3232, 1
  %3234 = xor i8 %3233, 1
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3234, i8* %3235, align 1
  %3236 = xor i32 %3225, %3217
  %3237 = xor i32 %3236, %3226
  %3238 = lshr i32 %3237, 4
  %3239 = trunc i32 %3238 to i8
  %3240 = and i8 %3239, 1
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3240, i8* %3241, align 1
  %3242 = icmp eq i32 %3226, 0
  %3243 = zext i1 %3242 to i8
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3243, i8* %3244, align 1
  %3245 = lshr i32 %3226, 31
  %3246 = trunc i32 %3245 to i8
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3246, i8* %3247, align 1
  %3248 = lshr i32 %3217, 31
  %3249 = lshr i32 %3225, 31
  %3250 = xor i32 %3249, %3248
  %3251 = xor i32 %3245, %3248
  %3252 = add i32 %3251, %3250
  %3253 = icmp eq i32 %3252, 2
  %3254 = zext i1 %3253 to i8
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3254, i8* %3255, align 1
  store %struct.Memory* %loadMem_4b0091, %struct.Memory** %MEMORY
  %loadMem_4b0098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 33
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %3258 to i64*
  %3259 = load i64, i64* %PC.i636
  %3260 = add i64 %3259, 957
  %3261 = load i64, i64* %PC.i636
  %3262 = add i64 %3261, 6
  %3263 = load i64, i64* %PC.i636
  %3264 = add i64 %3263, 6
  store i64 %3264, i64* %PC.i636
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3266 = load i8, i8* %3265, align 1
  %3267 = icmp ne i8 %3266, 0
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3269 = load i8, i8* %3268, align 1
  %3270 = icmp ne i8 %3269, 0
  %3271 = xor i1 %3267, %3270
  %3272 = xor i1 %3271, true
  %3273 = zext i1 %3272 to i8
  store i8 %3273, i8* %BRANCH_TAKEN, align 1
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3275 = select i1 %3271, i64 %3262, i64 %3260
  store i64 %3275, i64* %3274, align 8
  store %struct.Memory* %loadMem_4b0098, %struct.Memory** %MEMORY
  %loadBr_4b0098 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0098 = icmp eq i8 %loadBr_4b0098, 1
  br i1 %cmpBr_4b0098, label %block_.L_4b0455, label %block_4b009e

block_4b009e:                                     ; preds = %block_.L_4b0087
  %loadMem_4b009e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 33
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %3278 to i64*
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3280 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3279, i64 0, i64 0
  %YMM0.i634 = bitcast %union.VectorReg* %3280 to %"class.std::bitset"*
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3282 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3281, i64 0, i64 0
  %XMM0.i635 = bitcast %union.VectorReg* %3282 to %union.vec128_t*
  %3283 = bitcast %"class.std::bitset"* %YMM0.i634 to i8*
  %3284 = bitcast %"class.std::bitset"* %YMM0.i634 to i8*
  %3285 = bitcast %union.vec128_t* %XMM0.i635 to i8*
  %3286 = load i64, i64* %PC.i633
  %3287 = add i64 %3286, 3
  store i64 %3287, i64* %PC.i633
  %3288 = bitcast i8* %3284 to i64*
  %3289 = load i64, i64* %3288, align 1
  %3290 = getelementptr inbounds i8, i8* %3284, i64 8
  %3291 = bitcast i8* %3290 to i64*
  %3292 = load i64, i64* %3291, align 1
  %3293 = bitcast i8* %3285 to i64*
  %3294 = load i64, i64* %3293, align 1
  %3295 = getelementptr inbounds i8, i8* %3285, i64 8
  %3296 = bitcast i8* %3295 to i64*
  %3297 = load i64, i64* %3296, align 1
  %3298 = xor i64 %3294, %3289
  %3299 = xor i64 %3297, %3292
  %3300 = trunc i64 %3298 to i32
  %3301 = lshr i64 %3298, 32
  %3302 = trunc i64 %3301 to i32
  %3303 = bitcast i8* %3283 to i32*
  store i32 %3300, i32* %3303, align 1
  %3304 = getelementptr inbounds i8, i8* %3283, i64 4
  %3305 = bitcast i8* %3304 to i32*
  store i32 %3302, i32* %3305, align 1
  %3306 = trunc i64 %3299 to i32
  %3307 = getelementptr inbounds i8, i8* %3283, i64 8
  %3308 = bitcast i8* %3307 to i32*
  store i32 %3306, i32* %3308, align 1
  %3309 = lshr i64 %3299, 32
  %3310 = trunc i64 %3309 to i32
  %3311 = getelementptr inbounds i8, i8* %3283, i64 12
  %3312 = bitcast i8* %3311 to i32*
  store i32 %3310, i32* %3312, align 1
  store %struct.Memory* %loadMem_4b009e, %struct.Memory** %MEMORY
  %loadMem_4b00a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 33
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %3315 to i64*
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 1
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %RAX.i631 = bitcast %union.anon* %3318 to i64*
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 15
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %3321 to i64*
  %3322 = load i64, i64* %RBP.i632
  %3323 = sub i64 %3322, 16
  %3324 = load i64, i64* %PC.i630
  %3325 = add i64 %3324, 4
  store i64 %3325, i64* %PC.i630
  %3326 = inttoptr i64 %3323 to i32*
  %3327 = load i32, i32* %3326
  %3328 = sext i32 %3327 to i64
  store i64 %3328, i64* %RAX.i631, align 8
  store %struct.Memory* %loadMem_4b00a1, %struct.Memory** %MEMORY
  %loadMem_4b00a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 33
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 1
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %3334 to i64*
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3336 = getelementptr inbounds %struct.GPR, %struct.GPR* %3335, i32 0, i32 15
  %3337 = getelementptr inbounds %struct.Reg, %struct.Reg* %3336, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %3337 to i64*
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3338, i64 0, i64 0
  %XMM0.i629 = bitcast %union.VectorReg* %3339 to %union.vec128_t*
  %3340 = load i64, i64* %RBP.i628
  %3341 = load i64, i64* %RAX.i627
  %3342 = mul i64 %3341, 8
  %3343 = add i64 %3340, -160
  %3344 = add i64 %3343, %3342
  %3345 = bitcast %union.vec128_t* %XMM0.i629 to i8*
  %3346 = load i64, i64* %PC.i626
  %3347 = add i64 %3346, 9
  store i64 %3347, i64* %PC.i626
  %3348 = bitcast i8* %3345 to double*
  %3349 = load double, double* %3348, align 1
  %3350 = inttoptr i64 %3344 to double*
  store double %3349, double* %3350
  store %struct.Memory* %loadMem_4b00a5, %struct.Memory** %MEMORY
  %loadMem_4b00ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 33
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 1
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RAX.i624 = bitcast %union.anon* %3356 to i64*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 15
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %3359 to i64*
  %3360 = load i64, i64* %RBP.i625
  %3361 = sub i64 %3360, 932
  %3362 = load i64, i64* %PC.i623
  %3363 = add i64 %3362, 7
  store i64 %3363, i64* %PC.i623
  %3364 = inttoptr i64 %3361 to i32*
  %3365 = load i32, i32* %3364
  %3366 = sext i32 %3365 to i64
  store i64 %3366, i64* %RAX.i624, align 8
  store %struct.Memory* %loadMem_4b00ae, %struct.Memory** %MEMORY
  %loadMem_4b00b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 33
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %3369 to i64*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 1
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %3372 to i64*
  %3373 = load i64, i64* %RAX.i622
  %3374 = mul i64 %3373, 8
  %3375 = add i64 %3374, 7482144
  %3376 = load i64, i64* %PC.i621
  %3377 = add i64 %3376, 8
  store i64 %3377, i64* %PC.i621
  %3378 = inttoptr i64 %3375 to i64*
  %3379 = load i64, i64* %3378
  store i64 %3379, i64* %RAX.i622, align 8
  store %struct.Memory* %loadMem_4b00b5, %struct.Memory** %MEMORY
  %loadMem_4b00bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 33
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %3382 to i64*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 5
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %RCX.i619 = bitcast %union.anon* %3385 to i64*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 15
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %RBP.i620 = bitcast %union.anon* %3388 to i64*
  %3389 = load i64, i64* %RBP.i620
  %3390 = sub i64 %3389, 16
  %3391 = load i64, i64* %PC.i618
  %3392 = add i64 %3391, 4
  store i64 %3392, i64* %PC.i618
  %3393 = inttoptr i64 %3390 to i32*
  %3394 = load i32, i32* %3393
  %3395 = sext i32 %3394 to i64
  store i64 %3395, i64* %RCX.i619, align 8
  store %struct.Memory* %loadMem_4b00bd, %struct.Memory** %MEMORY
  %loadMem_4b00c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 33
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %3398 to i64*
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 1
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %3401 to i64*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 5
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %3404 to i64*
  %3405 = load i64, i64* %RAX.i616
  %3406 = load i64, i64* %RCX.i617
  %3407 = mul i64 %3406, 8
  %3408 = add i64 %3407, %3405
  %3409 = load i64, i64* %PC.i615
  %3410 = add i64 %3409, 4
  store i64 %3410, i64* %PC.i615
  %3411 = inttoptr i64 %3408 to i64*
  %3412 = load i64, i64* %3411
  store i64 %3412, i64* %RAX.i616, align 8
  store %struct.Memory* %loadMem_4b00c1, %struct.Memory** %MEMORY
  %loadMem_4b00c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 33
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3415 to i64*
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 1
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %3418 to i64*
  %3419 = load i64, i64* %RAX.i614
  %3420 = add i64 %3419, 6432
  %3421 = load i64, i64* %PC.i613
  %3422 = add i64 %3421, 7
  store i64 %3422, i64* %PC.i613
  %3423 = inttoptr i64 %3420 to i64*
  %3424 = load i64, i64* %3423
  store i64 %3424, i64* %RAX.i614, align 8
  store %struct.Memory* %loadMem_4b00c5, %struct.Memory** %MEMORY
  %loadMem_4b00cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 33
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3427 to i64*
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 1
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %3430 to i64*
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 15
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %3433 to i64*
  %3434 = load i64, i64* %RBP.i612
  %3435 = sub i64 %3434, 168
  %3436 = load i64, i64* %RAX.i611
  %3437 = load i64, i64* %PC.i610
  %3438 = add i64 %3437, 7
  store i64 %3438, i64* %PC.i610
  %3439 = inttoptr i64 %3435 to i64*
  store i64 %3436, i64* %3439
  store %struct.Memory* %loadMem_4b00cc, %struct.Memory** %MEMORY
  %loadMem_4b00d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 33
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 1
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %RAX.i608 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 15
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %3448 to i64*
  %3449 = load i64, i64* %RBP.i609
  %3450 = sub i64 %3449, 932
  %3451 = load i64, i64* %PC.i607
  %3452 = add i64 %3451, 7
  store i64 %3452, i64* %PC.i607
  %3453 = inttoptr i64 %3450 to i32*
  %3454 = load i32, i32* %3453
  %3455 = sext i32 %3454 to i64
  store i64 %3455, i64* %RAX.i608, align 8
  store %struct.Memory* %loadMem_4b00d3, %struct.Memory** %MEMORY
  %loadMem_4b00da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 33
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 1
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RAX.i606 = bitcast %union.anon* %3461 to i64*
  %3462 = load i64, i64* %RAX.i606
  %3463 = mul i64 %3462, 8
  %3464 = add i64 %3463, 7482144
  %3465 = load i64, i64* %PC.i605
  %3466 = add i64 %3465, 8
  store i64 %3466, i64* %PC.i605
  %3467 = inttoptr i64 %3464 to i64*
  %3468 = load i64, i64* %3467
  store i64 %3468, i64* %RAX.i606, align 8
  store %struct.Memory* %loadMem_4b00da, %struct.Memory** %MEMORY
  %loadMem_4b00e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 33
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 5
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %3474 to i64*
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 15
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %RBP.i604 = bitcast %union.anon* %3477 to i64*
  %3478 = load i64, i64* %RBP.i604
  %3479 = sub i64 %3478, 16
  %3480 = load i64, i64* %PC.i602
  %3481 = add i64 %3480, 4
  store i64 %3481, i64* %PC.i602
  %3482 = inttoptr i64 %3479 to i32*
  %3483 = load i32, i32* %3482
  %3484 = sext i32 %3483 to i64
  store i64 %3484, i64* %RCX.i603, align 8
  store %struct.Memory* %loadMem_4b00e2, %struct.Memory** %MEMORY
  %loadMem_4b00e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 33
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 1
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %RAX.i600 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 5
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %RCX.i601 = bitcast %union.anon* %3493 to i64*
  %3494 = load i64, i64* %RAX.i600
  %3495 = load i64, i64* %RCX.i601
  %3496 = mul i64 %3495, 8
  %3497 = add i64 %3496, %3494
  %3498 = load i64, i64* %PC.i599
  %3499 = add i64 %3498, 4
  store i64 %3499, i64* %PC.i599
  %3500 = inttoptr i64 %3497 to i64*
  %3501 = load i64, i64* %3500
  store i64 %3501, i64* %RAX.i600, align 8
  store %struct.Memory* %loadMem_4b00e6, %struct.Memory** %MEMORY
  %loadMem_4b00ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 33
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %3504 to i64*
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 1
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %RAX.i598 = bitcast %union.anon* %3507 to i64*
  %3508 = load i64, i64* %RAX.i598
  %3509 = add i64 %3508, 6440
  %3510 = load i64, i64* %PC.i597
  %3511 = add i64 %3510, 7
  store i64 %3511, i64* %PC.i597
  %3512 = inttoptr i64 %3509 to i64*
  %3513 = load i64, i64* %3512
  store i64 %3513, i64* %RAX.i598, align 8
  store %struct.Memory* %loadMem_4b00ea, %struct.Memory** %MEMORY
  %loadMem_4b00f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 33
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %3516 to i64*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 1
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %3519 to i64*
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 15
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %3522 to i64*
  %3523 = load i64, i64* %RBP.i596
  %3524 = sub i64 %3523, 176
  %3525 = load i64, i64* %RAX.i595
  %3526 = load i64, i64* %PC.i594
  %3527 = add i64 %3526, 7
  store i64 %3527, i64* %PC.i594
  %3528 = inttoptr i64 %3524 to i64*
  store i64 %3525, i64* %3528
  store %struct.Memory* %loadMem_4b00f1, %struct.Memory** %MEMORY
  %loadMem_4b00f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 33
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %3531 to i64*
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 15
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %RBP.i593 = bitcast %union.anon* %3534 to i64*
  %3535 = load i64, i64* %RBP.i593
  %3536 = sub i64 %3535, 8
  %3537 = load i64, i64* %PC.i592
  %3538 = add i64 %3537, 7
  store i64 %3538, i64* %PC.i592
  %3539 = inttoptr i64 %3536 to i32*
  store i32 0, i32* %3539
  store %struct.Memory* %loadMem_4b00f8, %struct.Memory** %MEMORY
  br label %block_.L_4b00ff

block_.L_4b00ff:                                  ; preds = %block_4b0121, %block_4b009e
  %loadMem_4b00ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 33
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %3542 to i64*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 1
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %3545 to i64*
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 15
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %3548 to i64*
  %3549 = load i64, i64* %RBP.i591
  %3550 = sub i64 %3549, 8
  %3551 = load i64, i64* %PC.i589
  %3552 = add i64 %3551, 3
  store i64 %3552, i64* %PC.i589
  %3553 = inttoptr i64 %3550 to i32*
  %3554 = load i32, i32* %3553
  %3555 = zext i32 %3554 to i64
  store i64 %3555, i64* %RAX.i590, align 8
  store %struct.Memory* %loadMem_4b00ff, %struct.Memory** %MEMORY
  %loadMem_4b0102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 33
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %3558 to i64*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 5
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %RCX.i588 = bitcast %union.anon* %3561 to i64*
  %3562 = load i64, i64* %PC.i587
  %3563 = add i64 %3562, 8
  store i64 %3563, i64* %PC.i587
  %3564 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3564, i64* %RCX.i588, align 8
  store %struct.Memory* %loadMem_4b0102, %struct.Memory** %MEMORY
  %loadMem_4b010a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 5
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %RCX.i585 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 7
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RDX.i586 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %RCX.i585
  %3575 = add i64 %3574, 60
  %3576 = load i64, i64* %PC.i584
  %3577 = add i64 %3576, 3
  store i64 %3577, i64* %PC.i584
  %3578 = inttoptr i64 %3575 to i32*
  %3579 = load i32, i32* %3578
  %3580 = zext i32 %3579 to i64
  store i64 %3580, i64* %RDX.i586, align 8
  store %struct.Memory* %loadMem_4b010a, %struct.Memory** %MEMORY
  %loadMem_4b010d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 33
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 5
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %RCX.i583 = bitcast %union.anon* %3586 to i64*
  %3587 = load i64, i64* %PC.i582
  %3588 = add i64 %3587, 8
  store i64 %3588, i64* %PC.i582
  %3589 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3589, i64* %RCX.i583, align 8
  store %struct.Memory* %loadMem_4b010d, %struct.Memory** %MEMORY
  %loadMem_4b0115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 33
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 5
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RCX.i580 = bitcast %union.anon* %3595 to i64*
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3597 = getelementptr inbounds %struct.GPR, %struct.GPR* %3596, i32 0, i32 7
  %3598 = getelementptr inbounds %struct.Reg, %struct.Reg* %3597, i32 0, i32 0
  %RDX.i581 = bitcast %union.anon* %3598 to i64*
  %3599 = load i64, i64* %RDX.i581
  %3600 = load i64, i64* %RCX.i580
  %3601 = add i64 %3600, 52
  %3602 = load i64, i64* %PC.i579
  %3603 = add i64 %3602, 4
  store i64 %3603, i64* %PC.i579
  %3604 = inttoptr i64 %3601 to i32*
  %3605 = load i32, i32* %3604
  %3606 = shl i64 %3599, 32
  %3607 = ashr exact i64 %3606, 32
  %3608 = sext i32 %3605 to i64
  %3609 = mul i64 %3608, %3607
  %3610 = trunc i64 %3609 to i32
  %3611 = and i64 %3609, 4294967295
  store i64 %3611, i64* %RDX.i581, align 8
  %3612 = shl i64 %3609, 32
  %3613 = ashr exact i64 %3612, 32
  %3614 = icmp ne i64 %3613, %3609
  %3615 = zext i1 %3614 to i8
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3615, i8* %3616, align 1
  %3617 = and i32 %3610, 255
  %3618 = call i32 @llvm.ctpop.i32(i32 %3617)
  %3619 = trunc i32 %3618 to i8
  %3620 = and i8 %3619, 1
  %3621 = xor i8 %3620, 1
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3621, i8* %3622, align 1
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3623, align 1
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3624, align 1
  %3625 = lshr i32 %3610, 31
  %3626 = trunc i32 %3625 to i8
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3626, i8* %3627, align 1
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3615, i8* %3628, align 1
  store %struct.Memory* %loadMem_4b0115, %struct.Memory** %MEMORY
  %loadMem_4b0119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 33
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %3631 to i64*
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 1
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %EAX.i577 = bitcast %union.anon* %3634 to i32*
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3636 = getelementptr inbounds %struct.GPR, %struct.GPR* %3635, i32 0, i32 7
  %3637 = getelementptr inbounds %struct.Reg, %struct.Reg* %3636, i32 0, i32 0
  %EDX.i578 = bitcast %union.anon* %3637 to i32*
  %3638 = load i32, i32* %EAX.i577
  %3639 = zext i32 %3638 to i64
  %3640 = load i32, i32* %EDX.i578
  %3641 = zext i32 %3640 to i64
  %3642 = load i64, i64* %PC.i576
  %3643 = add i64 %3642, 2
  store i64 %3643, i64* %PC.i576
  %3644 = sub i32 %3638, %3640
  %3645 = icmp ult i32 %3638, %3640
  %3646 = zext i1 %3645 to i8
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3646, i8* %3647, align 1
  %3648 = and i32 %3644, 255
  %3649 = call i32 @llvm.ctpop.i32(i32 %3648)
  %3650 = trunc i32 %3649 to i8
  %3651 = and i8 %3650, 1
  %3652 = xor i8 %3651, 1
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3652, i8* %3653, align 1
  %3654 = xor i64 %3641, %3639
  %3655 = trunc i64 %3654 to i32
  %3656 = xor i32 %3655, %3644
  %3657 = lshr i32 %3656, 4
  %3658 = trunc i32 %3657 to i8
  %3659 = and i8 %3658, 1
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3659, i8* %3660, align 1
  %3661 = icmp eq i32 %3644, 0
  %3662 = zext i1 %3661 to i8
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3662, i8* %3663, align 1
  %3664 = lshr i32 %3644, 31
  %3665 = trunc i32 %3664 to i8
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3665, i8* %3666, align 1
  %3667 = lshr i32 %3638, 31
  %3668 = lshr i32 %3640, 31
  %3669 = xor i32 %3668, %3667
  %3670 = xor i32 %3664, %3667
  %3671 = add i32 %3670, %3669
  %3672 = icmp eq i32 %3671, 2
  %3673 = zext i1 %3672 to i8
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3673, i8* %3674, align 1
  store %struct.Memory* %loadMem_4b0119, %struct.Memory** %MEMORY
  %loadMem_4b011b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 33
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %3677 to i64*
  %3678 = load i64, i64* %PC.i575
  %3679 = add i64 %3678, 61
  %3680 = load i64, i64* %PC.i575
  %3681 = add i64 %3680, 6
  %3682 = load i64, i64* %PC.i575
  %3683 = add i64 %3682, 6
  store i64 %3683, i64* %PC.i575
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3685 = load i8, i8* %3684, align 1
  %3686 = icmp ne i8 %3685, 0
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3688 = load i8, i8* %3687, align 1
  %3689 = icmp ne i8 %3688, 0
  %3690 = xor i1 %3686, %3689
  %3691 = xor i1 %3690, true
  %3692 = zext i1 %3691 to i8
  store i8 %3692, i8* %BRANCH_TAKEN, align 1
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3694 = select i1 %3690, i64 %3681, i64 %3679
  store i64 %3694, i64* %3693, align 8
  store %struct.Memory* %loadMem_4b011b, %struct.Memory** %MEMORY
  %loadBr_4b011b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b011b = icmp eq i8 %loadBr_4b011b, 1
  br i1 %cmpBr_4b011b, label %block_.L_4b0158, label %block_4b0121

block_4b0121:                                     ; preds = %block_.L_4b00ff
  %loadMem_4b0121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3696 = getelementptr inbounds %struct.GPR, %struct.GPR* %3695, i32 0, i32 33
  %3697 = getelementptr inbounds %struct.Reg, %struct.Reg* %3696, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3697 to i64*
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3699 = getelementptr inbounds %struct.GPR, %struct.GPR* %3698, i32 0, i32 1
  %3700 = getelementptr inbounds %struct.Reg, %struct.Reg* %3699, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %3700 to i64*
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3702 = getelementptr inbounds %struct.GPR, %struct.GPR* %3701, i32 0, i32 15
  %3703 = getelementptr inbounds %struct.Reg, %struct.Reg* %3702, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %3703 to i64*
  %3704 = load i64, i64* %RBP.i574
  %3705 = sub i64 %3704, 168
  %3706 = load i64, i64* %PC.i572
  %3707 = add i64 %3706, 7
  store i64 %3707, i64* %PC.i572
  %3708 = inttoptr i64 %3705 to i64*
  %3709 = load i64, i64* %3708
  store i64 %3709, i64* %RAX.i573, align 8
  store %struct.Memory* %loadMem_4b0121, %struct.Memory** %MEMORY
  %loadMem_4b0128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 33
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %3712 to i64*
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 5
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %3715 to i64*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 15
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %3718 to i64*
  %3719 = load i64, i64* %RBP.i571
  %3720 = sub i64 %3719, 8
  %3721 = load i64, i64* %PC.i569
  %3722 = add i64 %3721, 4
  store i64 %3722, i64* %PC.i569
  %3723 = inttoptr i64 %3720 to i32*
  %3724 = load i32, i32* %3723
  %3725 = sext i32 %3724 to i64
  store i64 %3725, i64* %RCX.i570, align 8
  store %struct.Memory* %loadMem_4b0128, %struct.Memory** %MEMORY
  %loadMem_4b012c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 33
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %3728 to i64*
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 1
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %3731 to i64*
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3733 = getelementptr inbounds %struct.GPR, %struct.GPR* %3732, i32 0, i32 5
  %3734 = getelementptr inbounds %struct.Reg, %struct.Reg* %3733, i32 0, i32 0
  %RCX.i567 = bitcast %union.anon* %3734 to i64*
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 7
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %RDX.i568 = bitcast %union.anon* %3737 to i64*
  %3738 = load i64, i64* %RAX.i566
  %3739 = load i64, i64* %RCX.i567
  %3740 = mul i64 %3739, 2
  %3741 = add i64 %3740, %3738
  %3742 = load i64, i64* %PC.i565
  %3743 = add i64 %3742, 4
  store i64 %3743, i64* %PC.i565
  %3744 = inttoptr i64 %3741 to i16*
  %3745 = load i16, i16* %3744
  %3746 = zext i16 %3745 to i64
  store i64 %3746, i64* %RDX.i568, align 8
  store %struct.Memory* %loadMem_4b012c, %struct.Memory** %MEMORY
  %loadMem_4b0130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3748 = getelementptr inbounds %struct.GPR, %struct.GPR* %3747, i32 0, i32 33
  %3749 = getelementptr inbounds %struct.Reg, %struct.Reg* %3748, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %3749 to i64*
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3751 = getelementptr inbounds %struct.GPR, %struct.GPR* %3750, i32 0, i32 7
  %3752 = getelementptr inbounds %struct.Reg, %struct.Reg* %3751, i32 0, i32 0
  %EDX.i563 = bitcast %union.anon* %3752 to i32*
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3754 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3753, i64 0, i64 0
  %YMM0.i564 = bitcast %union.VectorReg* %3754 to %"class.std::bitset"*
  %3755 = bitcast %"class.std::bitset"* %YMM0.i564 to i8*
  %3756 = load i32, i32* %EDX.i563
  %3757 = zext i32 %3756 to i64
  %3758 = load i64, i64* %PC.i562
  %3759 = add i64 %3758, 4
  store i64 %3759, i64* %PC.i562
  %3760 = sitofp i32 %3756 to double
  %3761 = bitcast i8* %3755 to double*
  store double %3760, double* %3761, align 1
  store %struct.Memory* %loadMem_4b0130, %struct.Memory** %MEMORY
  %loadMem_4b0134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 33
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %3764 to i64*
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 1
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %RAX.i560 = bitcast %union.anon* %3767 to i64*
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 15
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %3770 to i64*
  %3771 = load i64, i64* %RBP.i561
  %3772 = sub i64 %3771, 16
  %3773 = load i64, i64* %PC.i559
  %3774 = add i64 %3773, 4
  store i64 %3774, i64* %PC.i559
  %3775 = inttoptr i64 %3772 to i32*
  %3776 = load i32, i32* %3775
  %3777 = sext i32 %3776 to i64
  store i64 %3777, i64* %RAX.i560, align 8
  store %struct.Memory* %loadMem_4b0134, %struct.Memory** %MEMORY
  %loadMem_4b0138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 33
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %3780 to i64*
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 1
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %RAX.i556 = bitcast %union.anon* %3783 to i64*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 15
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %3786 to i64*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3788 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3787, i64 0, i64 0
  %YMM0.i558 = bitcast %union.VectorReg* %3788 to %"class.std::bitset"*
  %3789 = bitcast %"class.std::bitset"* %YMM0.i558 to i8*
  %3790 = bitcast %"class.std::bitset"* %YMM0.i558 to i8*
  %3791 = load i64, i64* %RBP.i557
  %3792 = load i64, i64* %RAX.i556
  %3793 = mul i64 %3792, 8
  %3794 = add i64 %3791, -160
  %3795 = add i64 %3794, %3793
  %3796 = load i64, i64* %PC.i555
  %3797 = add i64 %3796, 9
  store i64 %3797, i64* %PC.i555
  %3798 = bitcast i8* %3790 to double*
  %3799 = load double, double* %3798, align 1
  %3800 = getelementptr inbounds i8, i8* %3790, i64 8
  %3801 = bitcast i8* %3800 to i64*
  %3802 = load i64, i64* %3801, align 1
  %3803 = inttoptr i64 %3795 to double*
  %3804 = load double, double* %3803
  %3805 = fadd double %3799, %3804
  %3806 = bitcast i8* %3789 to double*
  store double %3805, double* %3806, align 1
  %3807 = getelementptr inbounds i8, i8* %3789, i64 8
  %3808 = bitcast i8* %3807 to i64*
  store i64 %3802, i64* %3808, align 1
  store %struct.Memory* %loadMem_4b0138, %struct.Memory** %MEMORY
  %loadMem_4b0141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 33
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3811 to i64*
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 1
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %RAX.i552 = bitcast %union.anon* %3814 to i64*
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 15
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %3817 to i64*
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3819 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3818, i64 0, i64 0
  %XMM0.i554 = bitcast %union.VectorReg* %3819 to %union.vec128_t*
  %3820 = load i64, i64* %RBP.i553
  %3821 = load i64, i64* %RAX.i552
  %3822 = mul i64 %3821, 8
  %3823 = add i64 %3820, -160
  %3824 = add i64 %3823, %3822
  %3825 = bitcast %union.vec128_t* %XMM0.i554 to i8*
  %3826 = load i64, i64* %PC.i551
  %3827 = add i64 %3826, 9
  store i64 %3827, i64* %PC.i551
  %3828 = bitcast i8* %3825 to double*
  %3829 = load double, double* %3828, align 1
  %3830 = inttoptr i64 %3824 to double*
  store double %3829, double* %3830
  store %struct.Memory* %loadMem_4b0141, %struct.Memory** %MEMORY
  %loadMem_4b014a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 33
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3833 to i64*
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 1
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %3836 to i64*
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 15
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %3839 to i64*
  %3840 = load i64, i64* %RBP.i550
  %3841 = sub i64 %3840, 8
  %3842 = load i64, i64* %PC.i548
  %3843 = add i64 %3842, 3
  store i64 %3843, i64* %PC.i548
  %3844 = inttoptr i64 %3841 to i32*
  %3845 = load i32, i32* %3844
  %3846 = zext i32 %3845 to i64
  store i64 %3846, i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_4b014a, %struct.Memory** %MEMORY
  %loadMem_4b014d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 33
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3849 to i64*
  %3850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3851 = getelementptr inbounds %struct.GPR, %struct.GPR* %3850, i32 0, i32 1
  %3852 = getelementptr inbounds %struct.Reg, %struct.Reg* %3851, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %3852 to i64*
  %3853 = load i64, i64* %RAX.i547
  %3854 = load i64, i64* %PC.i546
  %3855 = add i64 %3854, 3
  store i64 %3855, i64* %PC.i546
  %3856 = trunc i64 %3853 to i32
  %3857 = add i32 1, %3856
  %3858 = zext i32 %3857 to i64
  store i64 %3858, i64* %RAX.i547, align 8
  %3859 = icmp ult i32 %3857, %3856
  %3860 = icmp ult i32 %3857, 1
  %3861 = or i1 %3859, %3860
  %3862 = zext i1 %3861 to i8
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3862, i8* %3863, align 1
  %3864 = and i32 %3857, 255
  %3865 = call i32 @llvm.ctpop.i32(i32 %3864)
  %3866 = trunc i32 %3865 to i8
  %3867 = and i8 %3866, 1
  %3868 = xor i8 %3867, 1
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3868, i8* %3869, align 1
  %3870 = xor i64 1, %3853
  %3871 = trunc i64 %3870 to i32
  %3872 = xor i32 %3871, %3857
  %3873 = lshr i32 %3872, 4
  %3874 = trunc i32 %3873 to i8
  %3875 = and i8 %3874, 1
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3875, i8* %3876, align 1
  %3877 = icmp eq i32 %3857, 0
  %3878 = zext i1 %3877 to i8
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3878, i8* %3879, align 1
  %3880 = lshr i32 %3857, 31
  %3881 = trunc i32 %3880 to i8
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3881, i8* %3882, align 1
  %3883 = lshr i32 %3856, 31
  %3884 = xor i32 %3880, %3883
  %3885 = add i32 %3884, %3880
  %3886 = icmp eq i32 %3885, 2
  %3887 = zext i1 %3886 to i8
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3887, i8* %3888, align 1
  store %struct.Memory* %loadMem_4b014d, %struct.Memory** %MEMORY
  %loadMem_4b0150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 33
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %3891 to i64*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 1
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %EAX.i544 = bitcast %union.anon* %3894 to i32*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 15
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %3897 to i64*
  %3898 = load i64, i64* %RBP.i545
  %3899 = sub i64 %3898, 8
  %3900 = load i32, i32* %EAX.i544
  %3901 = zext i32 %3900 to i64
  %3902 = load i64, i64* %PC.i543
  %3903 = add i64 %3902, 3
  store i64 %3903, i64* %PC.i543
  %3904 = inttoptr i64 %3899 to i32*
  store i32 %3900, i32* %3904
  store %struct.Memory* %loadMem_4b0150, %struct.Memory** %MEMORY
  %loadMem_4b0153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 33
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3907 to i64*
  %3908 = load i64, i64* %PC.i542
  %3909 = add i64 %3908, -84
  %3910 = load i64, i64* %PC.i542
  %3911 = add i64 %3910, 5
  store i64 %3911, i64* %PC.i542
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3909, i64* %3912, align 8
  store %struct.Memory* %loadMem_4b0153, %struct.Memory** %MEMORY
  br label %block_.L_4b00ff

block_.L_4b0158:                                  ; preds = %block_.L_4b00ff
  %loadMem_4b0158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 33
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3915 to i64*
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3917 = getelementptr inbounds %struct.GPR, %struct.GPR* %3916, i32 0, i32 15
  %3918 = getelementptr inbounds %struct.Reg, %struct.Reg* %3917, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %3918 to i64*
  %3919 = load i64, i64* %RBP.i541
  %3920 = sub i64 %3919, 4
  %3921 = load i64, i64* %PC.i540
  %3922 = add i64 %3921, 4
  store i64 %3922, i64* %PC.i540
  %3923 = inttoptr i64 %3920 to i32*
  %3924 = load i32, i32* %3923
  %3925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3925, align 1
  %3926 = and i32 %3924, 255
  %3927 = call i32 @llvm.ctpop.i32(i32 %3926)
  %3928 = trunc i32 %3927 to i8
  %3929 = and i8 %3928, 1
  %3930 = xor i8 %3929, 1
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3930, i8* %3931, align 1
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3932, align 1
  %3933 = icmp eq i32 %3924, 0
  %3934 = zext i1 %3933 to i8
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3934, i8* %3935, align 1
  %3936 = lshr i32 %3924, 31
  %3937 = trunc i32 %3936 to i8
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3937, i8* %3938, align 1
  %3939 = lshr i32 %3924, 31
  %3940 = xor i32 %3936, %3939
  %3941 = add i32 %3940, %3939
  %3942 = icmp eq i32 %3941, 2
  %3943 = zext i1 %3942 to i8
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3943, i8* %3944, align 1
  store %struct.Memory* %loadMem_4b0158, %struct.Memory** %MEMORY
  %loadMem_4b015c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 33
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3947 to i64*
  %3948 = load i64, i64* %PC.i539
  %3949 = add i64 %3948, 304
  %3950 = load i64, i64* %PC.i539
  %3951 = add i64 %3950, 6
  %3952 = load i64, i64* %PC.i539
  %3953 = add i64 %3952, 6
  store i64 %3953, i64* %PC.i539
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3955 = load i8, i8* %3954, align 1
  %3956 = icmp eq i8 %3955, 0
  %3957 = zext i1 %3956 to i8
  store i8 %3957, i8* %BRANCH_TAKEN, align 1
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3959 = select i1 %3956, i64 %3949, i64 %3951
  store i64 %3959, i64* %3958, align 8
  store %struct.Memory* %loadMem_4b015c, %struct.Memory** %MEMORY
  %loadBr_4b015c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b015c = icmp eq i8 %loadBr_4b015c, 1
  br i1 %cmpBr_4b015c, label %block_.L_4b028c, label %block_4b0162

block_4b0162:                                     ; preds = %block_.L_4b0158
  %loadMem_4b0162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 33
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3962 to i64*
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3964 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3963, i64 0, i64 0
  %YMM0.i537 = bitcast %union.VectorReg* %3964 to %"class.std::bitset"*
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3966 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3965, i64 0, i64 0
  %XMM0.i538 = bitcast %union.VectorReg* %3966 to %union.vec128_t*
  %3967 = bitcast %"class.std::bitset"* %YMM0.i537 to i8*
  %3968 = bitcast %"class.std::bitset"* %YMM0.i537 to i8*
  %3969 = bitcast %union.vec128_t* %XMM0.i538 to i8*
  %3970 = load i64, i64* %PC.i536
  %3971 = add i64 %3970, 3
  store i64 %3971, i64* %PC.i536
  %3972 = bitcast i8* %3968 to i64*
  %3973 = load i64, i64* %3972, align 1
  %3974 = getelementptr inbounds i8, i8* %3968, i64 8
  %3975 = bitcast i8* %3974 to i64*
  %3976 = load i64, i64* %3975, align 1
  %3977 = bitcast i8* %3969 to i64*
  %3978 = load i64, i64* %3977, align 1
  %3979 = getelementptr inbounds i8, i8* %3969, i64 8
  %3980 = bitcast i8* %3979 to i64*
  %3981 = load i64, i64* %3980, align 1
  %3982 = xor i64 %3978, %3973
  %3983 = xor i64 %3981, %3976
  %3984 = trunc i64 %3982 to i32
  %3985 = lshr i64 %3982, 32
  %3986 = trunc i64 %3985 to i32
  %3987 = bitcast i8* %3967 to i32*
  store i32 %3984, i32* %3987, align 1
  %3988 = getelementptr inbounds i8, i8* %3967, i64 4
  %3989 = bitcast i8* %3988 to i32*
  store i32 %3986, i32* %3989, align 1
  %3990 = trunc i64 %3983 to i32
  %3991 = getelementptr inbounds i8, i8* %3967, i64 8
  %3992 = bitcast i8* %3991 to i32*
  store i32 %3990, i32* %3992, align 1
  %3993 = lshr i64 %3983, 32
  %3994 = trunc i64 %3993 to i32
  %3995 = getelementptr inbounds i8, i8* %3967, i64 12
  %3996 = bitcast i8* %3995 to i32*
  store i32 %3994, i32* %3996, align 1
  store %struct.Memory* %loadMem_4b0162, %struct.Memory** %MEMORY
  %loadMem_4b0165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 33
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %3999 to i64*
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4001 = getelementptr inbounds %struct.GPR, %struct.GPR* %4000, i32 0, i32 1
  %4002 = getelementptr inbounds %struct.Reg, %struct.Reg* %4001, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %4002 to i64*
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 15
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %4005 to i64*
  %4006 = load i64, i64* %RBP.i535
  %4007 = sub i64 %4006, 16
  %4008 = load i64, i64* %PC.i533
  %4009 = add i64 %4008, 4
  store i64 %4009, i64* %PC.i533
  %4010 = inttoptr i64 %4007 to i32*
  %4011 = load i32, i32* %4010
  %4012 = sext i32 %4011 to i64
  store i64 %4012, i64* %RAX.i534, align 8
  store %struct.Memory* %loadMem_4b0165, %struct.Memory** %MEMORY
  %loadMem_4b0169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4014 = getelementptr inbounds %struct.GPR, %struct.GPR* %4013, i32 0, i32 33
  %4015 = getelementptr inbounds %struct.Reg, %struct.Reg* %4014, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %4015 to i64*
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4017 = getelementptr inbounds %struct.GPR, %struct.GPR* %4016, i32 0, i32 1
  %4018 = getelementptr inbounds %struct.Reg, %struct.Reg* %4017, i32 0, i32 0
  %RAX.i530 = bitcast %union.anon* %4018 to i64*
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4020 = getelementptr inbounds %struct.GPR, %struct.GPR* %4019, i32 0, i32 15
  %4021 = getelementptr inbounds %struct.Reg, %struct.Reg* %4020, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %4021 to i64*
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4023 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4022, i64 0, i64 1
  %YMM1.i532 = bitcast %union.VectorReg* %4023 to %"class.std::bitset"*
  %4024 = bitcast %"class.std::bitset"* %YMM1.i532 to i8*
  %4025 = load i64, i64* %RBP.i531
  %4026 = load i64, i64* %RAX.i530
  %4027 = mul i64 %4026, 8
  %4028 = add i64 %4025, -160
  %4029 = add i64 %4028, %4027
  %4030 = load i64, i64* %PC.i529
  %4031 = add i64 %4030, 9
  store i64 %4031, i64* %PC.i529
  %4032 = inttoptr i64 %4029 to double*
  %4033 = load double, double* %4032
  %4034 = bitcast i8* %4024 to double*
  store double %4033, double* %4034, align 1
  %4035 = getelementptr inbounds i8, i8* %4024, i64 8
  %4036 = bitcast i8* %4035 to double*
  store double 0.000000e+00, double* %4036, align 1
  store %struct.Memory* %loadMem_4b0169, %struct.Memory** %MEMORY
  %loadMem_4b0172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 33
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %4039 to i64*
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4041 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4040, i64 0, i64 0
  %XMM0.i524 = bitcast %union.VectorReg* %4041 to %union.vec128_t*
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4043 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4042, i64 0, i64 1
  %XMM1.i525 = bitcast %union.VectorReg* %4043 to %union.vec128_t*
  %4044 = bitcast %union.vec128_t* %XMM1.i525 to i8*
  %4045 = bitcast %union.vec128_t* %XMM0.i524 to i8*
  %4046 = load i64, i64* %PC.i523
  %4047 = add i64 %4046, 4
  store i64 %4047, i64* %PC.i523
  %4048 = bitcast i8* %4044 to double*
  %4049 = load double, double* %4048, align 1
  %4050 = bitcast i8* %4045 to double*
  %4051 = load double, double* %4050, align 1
  %4052 = fcmp uno double %4049, %4051
  br i1 %4052, label %4053, label %4065

; <label>:4053:                                   ; preds = %block_4b0162
  %4054 = fadd double %4049, %4051
  %4055 = bitcast double %4054 to i64
  %4056 = and i64 %4055, 9221120237041090560
  %4057 = icmp eq i64 %4056, 9218868437227405312
  %4058 = and i64 %4055, 2251799813685247
  %4059 = icmp ne i64 %4058, 0
  %4060 = and i1 %4057, %4059
  br i1 %4060, label %4061, label %4071

; <label>:4061:                                   ; preds = %4053
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4063 = load i64, i64* %4062, align 8
  %4064 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4063, %struct.Memory* %loadMem_4b0172)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:4065:                                   ; preds = %block_4b0162
  %4066 = fcmp ogt double %4049, %4051
  br i1 %4066, label %4071, label %4067

; <label>:4067:                                   ; preds = %4065
  %4068 = fcmp olt double %4049, %4051
  br i1 %4068, label %4071, label %4069

; <label>:4069:                                   ; preds = %4067
  %4070 = fcmp oeq double %4049, %4051
  br i1 %4070, label %4071, label %4078

; <label>:4071:                                   ; preds = %4069, %4067, %4065, %4053
  %4072 = phi i8 [ 0, %4065 ], [ 0, %4067 ], [ 1, %4069 ], [ 1, %4053 ]
  %4073 = phi i8 [ 0, %4065 ], [ 0, %4067 ], [ 0, %4069 ], [ 1, %4053 ]
  %4074 = phi i8 [ 0, %4065 ], [ 1, %4067 ], [ 0, %4069 ], [ 1, %4053 ]
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4072, i8* %4075, align 1
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4073, i8* %4076, align 1
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4074, i8* %4077, align 1
  br label %4078

; <label>:4078:                                   ; preds = %4071, %4069
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4079, align 1
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4080, align 1
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4081, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %4061, %4078
  %4082 = phi %struct.Memory* [ %4064, %4061 ], [ %loadMem_4b0172, %4078 ]
  store %struct.Memory* %4082, %struct.Memory** %MEMORY
  %loadMem_4b0176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 33
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %4085 to i64*
  %4086 = load i64, i64* %PC.i522
  %4087 = add i64 %4086, 17
  %4088 = load i64, i64* %PC.i522
  %4089 = add i64 %4088, 6
  %4090 = load i64, i64* %PC.i522
  %4091 = add i64 %4090, 6
  store i64 %4091, i64* %PC.i522
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4093 = load i8, i8* %4092, align 1
  %4094 = icmp eq i8 %4093, 0
  %4095 = zext i1 %4094 to i8
  store i8 %4095, i8* %BRANCH_TAKEN, align 1
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4097 = select i1 %4094, i64 %4087, i64 %4089
  store i64 %4097, i64* %4096, align 8
  store %struct.Memory* %loadMem_4b0176, %struct.Memory** %MEMORY
  %loadBr_4b0176 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0176 = icmp eq i8 %loadBr_4b0176, 1
  br i1 %cmpBr_4b0176, label %block_.L_4b0187, label %block_4b017c

block_4b017c:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_4b017c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 33
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %4100 to i64*
  %4101 = load i64, i64* %PC.i521
  %4102 = add i64 %4101, 11
  %4103 = load i64, i64* %PC.i521
  %4104 = add i64 %4103, 6
  %4105 = load i64, i64* %PC.i521
  %4106 = add i64 %4105, 6
  store i64 %4106, i64* %PC.i521
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4108 = load i8, i8* %4107, align 1
  store i8 %4108, i8* %BRANCH_TAKEN, align 1
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4110 = icmp ne i8 %4108, 0
  %4111 = select i1 %4110, i64 %4102, i64 %4104
  store i64 %4111, i64* %4109, align 8
  store %struct.Memory* %loadMem_4b017c, %struct.Memory** %MEMORY
  %loadBr_4b017c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b017c = icmp eq i8 %loadBr_4b017c, 1
  br i1 %cmpBr_4b017c, label %block_.L_4b0187, label %block_4b0182

block_4b0182:                                     ; preds = %block_4b017c
  %loadMem_4b0182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 33
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %4114 to i64*
  %4115 = load i64, i64* %PC.i520
  %4116 = add i64 %4115, 89
  %4117 = load i64, i64* %PC.i520
  %4118 = add i64 %4117, 5
  store i64 %4118, i64* %PC.i520
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4116, i64* %4119, align 8
  store %struct.Memory* %loadMem_4b0182, %struct.Memory** %MEMORY
  br label %block_.L_4b01db

block_.L_4b0187:                                  ; preds = %block_4b017c, %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_4b0187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 33
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %4122 to i64*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 1
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %4125 to i64*
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 15
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %4128 to i64*
  %4129 = load i64, i64* %RBP.i519
  %4130 = sub i64 %4129, 560
  %4131 = load i64, i64* %PC.i517
  %4132 = add i64 %4131, 7
  store i64 %4132, i64* %PC.i517
  store i64 %4130, i64* %RAX.i518, align 8
  store %struct.Memory* %loadMem_4b0187, %struct.Memory** %MEMORY
  %loadMem_4b018e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4137 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4136, i64 0, i64 0
  %YMM0.i516 = bitcast %union.VectorReg* %4137 to %"class.std::bitset"*
  %4138 = bitcast %"class.std::bitset"* %YMM0.i516 to i8*
  %4139 = load i64, i64* %PC.i515
  %4140 = add i64 %4139, ptrtoint (%G_0x16f2__rip__type* @G_0x16f2__rip_ to i64)
  %4141 = load i64, i64* %PC.i515
  %4142 = add i64 %4141, 8
  store i64 %4142, i64* %PC.i515
  %4143 = inttoptr i64 %4140 to double*
  %4144 = load double, double* %4143
  %4145 = bitcast i8* %4138 to double*
  store double %4144, double* %4145, align 1
  %4146 = getelementptr inbounds i8, i8* %4138, i64 8
  %4147 = bitcast i8* %4146 to double*
  store double 0.000000e+00, double* %4147, align 1
  store %struct.Memory* %loadMem_4b018e, %struct.Memory** %MEMORY
  %loadMem_4b0196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 33
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %4150 to i64*
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 15
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %4153 to i64*
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4155 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4154, i64 0, i64 1
  %YMM1.i514 = bitcast %union.VectorReg* %4155 to %"class.std::bitset"*
  %4156 = bitcast %"class.std::bitset"* %YMM1.i514 to i8*
  %4157 = load i64, i64* %RBP.i513
  %4158 = sub i64 %4157, 180
  %4159 = load i64, i64* %PC.i512
  %4160 = add i64 %4159, 8
  store i64 %4160, i64* %PC.i512
  %4161 = inttoptr i64 %4158 to i32*
  %4162 = load i32, i32* %4161
  %4163 = sitofp i32 %4162 to double
  %4164 = bitcast i8* %4156 to double*
  store double %4163, double* %4164, align 1
  store %struct.Memory* %loadMem_4b0196, %struct.Memory** %MEMORY
  %loadMem_4b019e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4166 = getelementptr inbounds %struct.GPR, %struct.GPR* %4165, i32 0, i32 33
  %4167 = getelementptr inbounds %struct.Reg, %struct.Reg* %4166, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %4167 to i64*
  %4168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4169 = getelementptr inbounds %struct.GPR, %struct.GPR* %4168, i32 0, i32 15
  %4170 = getelementptr inbounds %struct.Reg, %struct.Reg* %4169, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %4170 to i64*
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4172 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4171, i64 0, i64 1
  %YMM1.i511 = bitcast %union.VectorReg* %4172 to %"class.std::bitset"*
  %4173 = bitcast %"class.std::bitset"* %YMM1.i511 to i8*
  %4174 = bitcast %"class.std::bitset"* %YMM1.i511 to i8*
  %4175 = load i64, i64* %RBP.i510
  %4176 = sub i64 %4175, 24
  %4177 = load i64, i64* %PC.i509
  %4178 = add i64 %4177, 5
  store i64 %4178, i64* %PC.i509
  %4179 = bitcast i8* %4174 to double*
  %4180 = load double, double* %4179, align 1
  %4181 = getelementptr inbounds i8, i8* %4174, i64 8
  %4182 = bitcast i8* %4181 to i64*
  %4183 = load i64, i64* %4182, align 1
  %4184 = inttoptr i64 %4176 to double*
  %4185 = load double, double* %4184
  %4186 = fmul double %4180, %4185
  %4187 = bitcast i8* %4173 to double*
  store double %4186, double* %4187, align 1
  %4188 = getelementptr inbounds i8, i8* %4173, i64 8
  %4189 = bitcast i8* %4188 to i64*
  store i64 %4183, i64* %4189, align 1
  store %struct.Memory* %loadMem_4b019e, %struct.Memory** %MEMORY
  %loadMem_4b01a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 33
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %4192 to i64*
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4194 = getelementptr inbounds %struct.GPR, %struct.GPR* %4193, i32 0, i32 5
  %4195 = getelementptr inbounds %struct.Reg, %struct.Reg* %4194, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %4195 to i64*
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 15
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %4198 to i64*
  %4199 = load i64, i64* %RBP.i508
  %4200 = sub i64 %4199, 16
  %4201 = load i64, i64* %PC.i506
  %4202 = add i64 %4201, 4
  store i64 %4202, i64* %PC.i506
  %4203 = inttoptr i64 %4200 to i32*
  %4204 = load i32, i32* %4203
  %4205 = sext i32 %4204 to i64
  store i64 %4205, i64* %RCX.i507, align 8
  store %struct.Memory* %loadMem_4b01a3, %struct.Memory** %MEMORY
  %loadMem_4b01a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 33
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %4208 to i64*
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 5
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %4211 to i64*
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 15
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %RBP.i504 = bitcast %union.anon* %4214 to i64*
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4216 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4215, i64 0, i64 1
  %YMM1.i505 = bitcast %union.VectorReg* %4216 to %"class.std::bitset"*
  %4217 = bitcast %"class.std::bitset"* %YMM1.i505 to i8*
  %4218 = bitcast %"class.std::bitset"* %YMM1.i505 to i8*
  %4219 = load i64, i64* %RBP.i504
  %4220 = load i64, i64* %RCX.i503
  %4221 = mul i64 %4220, 8
  %4222 = add i64 %4219, -160
  %4223 = add i64 %4222, %4221
  %4224 = load i64, i64* %PC.i502
  %4225 = add i64 %4224, 9
  store i64 %4225, i64* %PC.i502
  %4226 = bitcast i8* %4218 to double*
  %4227 = load double, double* %4226, align 1
  %4228 = getelementptr inbounds i8, i8* %4218, i64 8
  %4229 = bitcast i8* %4228 to i64*
  %4230 = load i64, i64* %4229, align 1
  %4231 = inttoptr i64 %4223 to double*
  %4232 = load double, double* %4231
  %4233 = fdiv double %4227, %4232
  %4234 = bitcast i8* %4217 to double*
  store double %4233, double* %4234, align 1
  %4235 = getelementptr inbounds i8, i8* %4217, i64 8
  %4236 = bitcast i8* %4235 to i64*
  store i64 %4230, i64* %4236, align 1
  store %struct.Memory* %loadMem_4b01a7, %struct.Memory** %MEMORY
  %loadMem_4b01b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 33
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %4239 to i64*
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4241 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4240, i64 0, i64 1
  %YMM1.i500 = bitcast %union.VectorReg* %4241 to %"class.std::bitset"*
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4243 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4242, i64 0, i64 0
  %XMM0.i501 = bitcast %union.VectorReg* %4243 to %union.vec128_t*
  %4244 = bitcast %"class.std::bitset"* %YMM1.i500 to i8*
  %4245 = bitcast %"class.std::bitset"* %YMM1.i500 to i8*
  %4246 = bitcast %union.vec128_t* %XMM0.i501 to i8*
  %4247 = load i64, i64* %PC.i499
  %4248 = add i64 %4247, 4
  store i64 %4248, i64* %PC.i499
  %4249 = bitcast i8* %4245 to double*
  %4250 = load double, double* %4249, align 1
  %4251 = getelementptr inbounds i8, i8* %4245, i64 8
  %4252 = bitcast i8* %4251 to i64*
  %4253 = load i64, i64* %4252, align 1
  %4254 = bitcast i8* %4246 to double*
  %4255 = load double, double* %4254, align 1
  %4256 = fadd double %4250, %4255
  %4257 = bitcast i8* %4244 to double*
  store double %4256, double* %4257, align 1
  %4258 = getelementptr inbounds i8, i8* %4244, i64 8
  %4259 = bitcast i8* %4258 to i64*
  store i64 %4253, i64* %4259, align 1
  store %struct.Memory* %loadMem_4b01b0, %struct.Memory** %MEMORY
  %loadMem_4b01b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 33
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %4262 to i64*
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 7
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %RDX.i497 = bitcast %union.anon* %4265 to i64*
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4266, i64 0, i64 1
  %XMM1.i498 = bitcast %union.VectorReg* %4267 to %union.vec128_t*
  %4268 = bitcast %union.vec128_t* %XMM1.i498 to i8*
  %4269 = load i64, i64* %PC.i496
  %4270 = add i64 %4269, 4
  store i64 %4270, i64* %PC.i496
  %4271 = bitcast i8* %4268 to double*
  %4272 = load double, double* %4271, align 1
  %4273 = call double @llvm.trunc.f64(double %4272)
  %4274 = call double @llvm.fabs.f64(double %4273)
  %4275 = fcmp ogt double %4274, 0x41DFFFFFFFC00000
  %4276 = fptosi double %4273 to i32
  %4277 = zext i32 %4276 to i64
  %4278 = select i1 %4275, i64 2147483648, i64 %4277
  store i64 %4278, i64* %RDX.i497, align 8
  store %struct.Memory* %loadMem_4b01b4, %struct.Memory** %MEMORY
  %loadMem_4b01b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 33
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4281 to i64*
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 5
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %4284 to i64*
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 15
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %4287 to i64*
  %4288 = load i64, i64* %RBP.i495
  %4289 = sub i64 %4288, 932
  %4290 = load i64, i64* %PC.i493
  %4291 = add i64 %4290, 7
  store i64 %4291, i64* %PC.i493
  %4292 = inttoptr i64 %4289 to i32*
  %4293 = load i32, i32* %4292
  %4294 = sext i32 %4293 to i64
  store i64 %4294, i64* %RCX.i494, align 8
  store %struct.Memory* %loadMem_4b01b8, %struct.Memory** %MEMORY
  %loadMem_4b01bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 33
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %4297 to i64*
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4299 = getelementptr inbounds %struct.GPR, %struct.GPR* %4298, i32 0, i32 5
  %4300 = getelementptr inbounds %struct.Reg, %struct.Reg* %4299, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %4300 to i64*
  %4301 = load i64, i64* %RCX.i492
  %4302 = load i64, i64* %PC.i491
  %4303 = add i64 %4302, 7
  store i64 %4303, i64* %PC.i491
  %4304 = sext i64 %4301 to i128
  %4305 = and i128 %4304, -18446744073709551616
  %4306 = zext i64 %4301 to i128
  %4307 = or i128 %4305, %4306
  %4308 = mul i128 180, %4307
  %4309 = trunc i128 %4308 to i64
  store i64 %4309, i64* %RCX.i492, align 8
  %4310 = sext i64 %4309 to i128
  %4311 = icmp ne i128 %4310, %4308
  %4312 = zext i1 %4311 to i8
  %4313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4312, i8* %4313, align 1
  %4314 = trunc i128 %4308 to i32
  %4315 = and i32 %4314, 255
  %4316 = call i32 @llvm.ctpop.i32(i32 %4315)
  %4317 = trunc i32 %4316 to i8
  %4318 = and i8 %4317, 1
  %4319 = xor i8 %4318, 1
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4319, i8* %4320, align 1
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4321, align 1
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4322, align 1
  %4323 = lshr i64 %4309, 63
  %4324 = trunc i64 %4323 to i8
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4324, i8* %4325, align 1
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4312, i8* %4326, align 1
  store %struct.Memory* %loadMem_4b01bf, %struct.Memory** %MEMORY
  %loadMem_4b01c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 33
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %4329 to i64*
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 1
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %4332 to i64*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 5
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %RCX.i490 = bitcast %union.anon* %4335 to i64*
  %4336 = load i64, i64* %RAX.i489
  %4337 = load i64, i64* %RCX.i490
  %4338 = load i64, i64* %PC.i488
  %4339 = add i64 %4338, 3
  store i64 %4339, i64* %PC.i488
  %4340 = add i64 %4337, %4336
  store i64 %4340, i64* %RAX.i489, align 8
  %4341 = icmp ult i64 %4340, %4336
  %4342 = icmp ult i64 %4340, %4337
  %4343 = or i1 %4341, %4342
  %4344 = zext i1 %4343 to i8
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4344, i8* %4345, align 1
  %4346 = trunc i64 %4340 to i32
  %4347 = and i32 %4346, 255
  %4348 = call i32 @llvm.ctpop.i32(i32 %4347)
  %4349 = trunc i32 %4348 to i8
  %4350 = and i8 %4349, 1
  %4351 = xor i8 %4350, 1
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4351, i8* %4352, align 1
  %4353 = xor i64 %4337, %4336
  %4354 = xor i64 %4353, %4340
  %4355 = lshr i64 %4354, 4
  %4356 = trunc i64 %4355 to i8
  %4357 = and i8 %4356, 1
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4357, i8* %4358, align 1
  %4359 = icmp eq i64 %4340, 0
  %4360 = zext i1 %4359 to i8
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4360, i8* %4361, align 1
  %4362 = lshr i64 %4340, 63
  %4363 = trunc i64 %4362 to i8
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4363, i8* %4364, align 1
  %4365 = lshr i64 %4336, 63
  %4366 = lshr i64 %4337, 63
  %4367 = xor i64 %4362, %4365
  %4368 = xor i64 %4362, %4366
  %4369 = add i64 %4367, %4368
  %4370 = icmp eq i64 %4369, 2
  %4371 = zext i1 %4370 to i8
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4371, i8* %4372, align 1
  store %struct.Memory* %loadMem_4b01c6, %struct.Memory** %MEMORY
  %loadMem_4b01c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4374 = getelementptr inbounds %struct.GPR, %struct.GPR* %4373, i32 0, i32 33
  %4375 = getelementptr inbounds %struct.Reg, %struct.Reg* %4374, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %4375 to i64*
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4377 = getelementptr inbounds %struct.GPR, %struct.GPR* %4376, i32 0, i32 5
  %4378 = getelementptr inbounds %struct.Reg, %struct.Reg* %4377, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %4378 to i64*
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4380 = getelementptr inbounds %struct.GPR, %struct.GPR* %4379, i32 0, i32 15
  %4381 = getelementptr inbounds %struct.Reg, %struct.Reg* %4380, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %4381 to i64*
  %4382 = load i64, i64* %RBP.i487
  %4383 = sub i64 %4382, 16
  %4384 = load i64, i64* %PC.i485
  %4385 = add i64 %4384, 4
  store i64 %4385, i64* %PC.i485
  %4386 = inttoptr i64 %4383 to i32*
  %4387 = load i32, i32* %4386
  %4388 = sext i32 %4387 to i64
  store i64 %4388, i64* %RCX.i486, align 8
  store %struct.Memory* %loadMem_4b01c9, %struct.Memory** %MEMORY
  %loadMem_4b01cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 33
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %4391 to i64*
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4393 = getelementptr inbounds %struct.GPR, %struct.GPR* %4392, i32 0, i32 5
  %4394 = getelementptr inbounds %struct.Reg, %struct.Reg* %4393, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %4394 to i64*
  %4395 = load i64, i64* %RCX.i484
  %4396 = load i64, i64* %PC.i483
  %4397 = add i64 %4396, 4
  store i64 %4397, i64* %PC.i483
  %4398 = sext i64 %4395 to i128
  %4399 = and i128 %4398, -18446744073709551616
  %4400 = zext i64 %4395 to i128
  %4401 = or i128 %4399, %4400
  %4402 = mul i128 12, %4401
  %4403 = trunc i128 %4402 to i64
  store i64 %4403, i64* %RCX.i484, align 8
  %4404 = sext i64 %4403 to i128
  %4405 = icmp ne i128 %4404, %4402
  %4406 = zext i1 %4405 to i8
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4406, i8* %4407, align 1
  %4408 = trunc i128 %4402 to i32
  %4409 = and i32 %4408, 255
  %4410 = call i32 @llvm.ctpop.i32(i32 %4409)
  %4411 = trunc i32 %4410 to i8
  %4412 = and i8 %4411, 1
  %4413 = xor i8 %4412, 1
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4413, i8* %4414, align 1
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4415, align 1
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4416, align 1
  %4417 = lshr i64 %4403, 63
  %4418 = trunc i64 %4417 to i8
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4418, i8* %4419, align 1
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4406, i8* %4420, align 1
  store %struct.Memory* %loadMem_4b01cd, %struct.Memory** %MEMORY
  %loadMem_4b01d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 33
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %4423 to i64*
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 1
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %4426 to i64*
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 5
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %4429 to i64*
  %4430 = load i64, i64* %RAX.i481
  %4431 = load i64, i64* %RCX.i482
  %4432 = load i64, i64* %PC.i480
  %4433 = add i64 %4432, 3
  store i64 %4433, i64* %PC.i480
  %4434 = add i64 %4431, %4430
  store i64 %4434, i64* %RAX.i481, align 8
  %4435 = icmp ult i64 %4434, %4430
  %4436 = icmp ult i64 %4434, %4431
  %4437 = or i1 %4435, %4436
  %4438 = zext i1 %4437 to i8
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4438, i8* %4439, align 1
  %4440 = trunc i64 %4434 to i32
  %4441 = and i32 %4440, 255
  %4442 = call i32 @llvm.ctpop.i32(i32 %4441)
  %4443 = trunc i32 %4442 to i8
  %4444 = and i8 %4443, 1
  %4445 = xor i8 %4444, 1
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4445, i8* %4446, align 1
  %4447 = xor i64 %4431, %4430
  %4448 = xor i64 %4447, %4434
  %4449 = lshr i64 %4448, 4
  %4450 = trunc i64 %4449 to i8
  %4451 = and i8 %4450, 1
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4451, i8* %4452, align 1
  %4453 = icmp eq i64 %4434, 0
  %4454 = zext i1 %4453 to i8
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4454, i8* %4455, align 1
  %4456 = lshr i64 %4434, 63
  %4457 = trunc i64 %4456 to i8
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4457, i8* %4458, align 1
  %4459 = lshr i64 %4430, 63
  %4460 = lshr i64 %4431, 63
  %4461 = xor i64 %4456, %4459
  %4462 = xor i64 %4456, %4460
  %4463 = add i64 %4461, %4462
  %4464 = icmp eq i64 %4463, 2
  %4465 = zext i1 %4464 to i8
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4465, i8* %4466, align 1
  store %struct.Memory* %loadMem_4b01d1, %struct.Memory** %MEMORY
  %loadMem_4b01d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 33
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %4469 to i64*
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 7
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %EDX.i478 = bitcast %union.anon* %4472 to i32*
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 1
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %4475 to i64*
  %4476 = load i64, i64* %RAX.i479
  %4477 = load i32, i32* %EDX.i478
  %4478 = zext i32 %4477 to i64
  %4479 = load i64, i64* %PC.i477
  %4480 = add i64 %4479, 2
  store i64 %4480, i64* %PC.i477
  %4481 = inttoptr i64 %4476 to i32*
  store i32 %4477, i32* %4481
  store %struct.Memory* %loadMem_4b01d4, %struct.Memory** %MEMORY
  %loadMem_4b01d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 33
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %4484 to i64*
  %4485 = load i64, i64* %PC.i476
  %4486 = add i64 %4485, 48
  %4487 = load i64, i64* %PC.i476
  %4488 = add i64 %4487, 5
  store i64 %4488, i64* %PC.i476
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4486, i64* %4489, align 8
  store %struct.Memory* %loadMem_4b01d6, %struct.Memory** %MEMORY
  br label %block_.L_4b0206

block_.L_4b01db:                                  ; preds = %block_4b0182
  %loadMem_4b01db = load %struct.Memory*, %struct.Memory** %MEMORY
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 33
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 1
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %4495 to i64*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 15
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %4498 to i64*
  %4499 = load i64, i64* %RBP.i475
  %4500 = sub i64 %4499, 560
  %4501 = load i64, i64* %PC.i473
  %4502 = add i64 %4501, 7
  store i64 %4502, i64* %PC.i473
  store i64 %4500, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_4b01db, %struct.Memory** %MEMORY
  %loadMem_4b01e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 33
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %4505 to i64*
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 5
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %RCX.i471 = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 15
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %4511 to i64*
  %4512 = load i64, i64* %RBP.i472
  %4513 = sub i64 %4512, 180
  %4514 = load i64, i64* %PC.i470
  %4515 = add i64 %4514, 6
  store i64 %4515, i64* %PC.i470
  %4516 = inttoptr i64 %4513 to i32*
  %4517 = load i32, i32* %4516
  %4518 = zext i32 %4517 to i64
  store i64 %4518, i64* %RCX.i471, align 8
  store %struct.Memory* %loadMem_4b01e2, %struct.Memory** %MEMORY
  %loadMem_4b01e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4520 = getelementptr inbounds %struct.GPR, %struct.GPR* %4519, i32 0, i32 33
  %4521 = getelementptr inbounds %struct.Reg, %struct.Reg* %4520, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4521 to i64*
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 7
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %RDX.i468 = bitcast %union.anon* %4524 to i64*
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 15
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %4527 to i64*
  %4528 = load i64, i64* %RBP.i469
  %4529 = sub i64 %4528, 932
  %4530 = load i64, i64* %PC.i467
  %4531 = add i64 %4530, 7
  store i64 %4531, i64* %PC.i467
  %4532 = inttoptr i64 %4529 to i32*
  %4533 = load i32, i32* %4532
  %4534 = sext i32 %4533 to i64
  store i64 %4534, i64* %RDX.i468, align 8
  store %struct.Memory* %loadMem_4b01e8, %struct.Memory** %MEMORY
  %loadMem_4b01ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 33
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4537 to i64*
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 7
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %RDX.i466 = bitcast %union.anon* %4540 to i64*
  %4541 = load i64, i64* %RDX.i466
  %4542 = load i64, i64* %PC.i465
  %4543 = add i64 %4542, 7
  store i64 %4543, i64* %PC.i465
  %4544 = sext i64 %4541 to i128
  %4545 = and i128 %4544, -18446744073709551616
  %4546 = zext i64 %4541 to i128
  %4547 = or i128 %4545, %4546
  %4548 = mul i128 180, %4547
  %4549 = trunc i128 %4548 to i64
  store i64 %4549, i64* %RDX.i466, align 8
  %4550 = sext i64 %4549 to i128
  %4551 = icmp ne i128 %4550, %4548
  %4552 = zext i1 %4551 to i8
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4552, i8* %4553, align 1
  %4554 = trunc i128 %4548 to i32
  %4555 = and i32 %4554, 255
  %4556 = call i32 @llvm.ctpop.i32(i32 %4555)
  %4557 = trunc i32 %4556 to i8
  %4558 = and i8 %4557, 1
  %4559 = xor i8 %4558, 1
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4559, i8* %4560, align 1
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4561, align 1
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4562, align 1
  %4563 = lshr i64 %4549, 63
  %4564 = trunc i64 %4563 to i8
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4564, i8* %4565, align 1
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4552, i8* %4566, align 1
  store %struct.Memory* %loadMem_4b01ef, %struct.Memory** %MEMORY
  %loadMem_4b01f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4568 = getelementptr inbounds %struct.GPR, %struct.GPR* %4567, i32 0, i32 33
  %4569 = getelementptr inbounds %struct.Reg, %struct.Reg* %4568, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %4569 to i64*
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4571 = getelementptr inbounds %struct.GPR, %struct.GPR* %4570, i32 0, i32 1
  %4572 = getelementptr inbounds %struct.Reg, %struct.Reg* %4571, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %4572 to i64*
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4574 = getelementptr inbounds %struct.GPR, %struct.GPR* %4573, i32 0, i32 7
  %4575 = getelementptr inbounds %struct.Reg, %struct.Reg* %4574, i32 0, i32 0
  %RDX.i464 = bitcast %union.anon* %4575 to i64*
  %4576 = load i64, i64* %RAX.i463
  %4577 = load i64, i64* %RDX.i464
  %4578 = load i64, i64* %PC.i462
  %4579 = add i64 %4578, 3
  store i64 %4579, i64* %PC.i462
  %4580 = add i64 %4577, %4576
  store i64 %4580, i64* %RAX.i463, align 8
  %4581 = icmp ult i64 %4580, %4576
  %4582 = icmp ult i64 %4580, %4577
  %4583 = or i1 %4581, %4582
  %4584 = zext i1 %4583 to i8
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4584, i8* %4585, align 1
  %4586 = trunc i64 %4580 to i32
  %4587 = and i32 %4586, 255
  %4588 = call i32 @llvm.ctpop.i32(i32 %4587)
  %4589 = trunc i32 %4588 to i8
  %4590 = and i8 %4589, 1
  %4591 = xor i8 %4590, 1
  %4592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4591, i8* %4592, align 1
  %4593 = xor i64 %4577, %4576
  %4594 = xor i64 %4593, %4580
  %4595 = lshr i64 %4594, 4
  %4596 = trunc i64 %4595 to i8
  %4597 = and i8 %4596, 1
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4597, i8* %4598, align 1
  %4599 = icmp eq i64 %4580, 0
  %4600 = zext i1 %4599 to i8
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4600, i8* %4601, align 1
  %4602 = lshr i64 %4580, 63
  %4603 = trunc i64 %4602 to i8
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4603, i8* %4604, align 1
  %4605 = lshr i64 %4576, 63
  %4606 = lshr i64 %4577, 63
  %4607 = xor i64 %4602, %4605
  %4608 = xor i64 %4602, %4606
  %4609 = add i64 %4607, %4608
  %4610 = icmp eq i64 %4609, 2
  %4611 = zext i1 %4610 to i8
  %4612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4611, i8* %4612, align 1
  store %struct.Memory* %loadMem_4b01f6, %struct.Memory** %MEMORY
  %loadMem_4b01f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4614 = getelementptr inbounds %struct.GPR, %struct.GPR* %4613, i32 0, i32 33
  %4615 = getelementptr inbounds %struct.Reg, %struct.Reg* %4614, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %4615 to i64*
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4617 = getelementptr inbounds %struct.GPR, %struct.GPR* %4616, i32 0, i32 7
  %4618 = getelementptr inbounds %struct.Reg, %struct.Reg* %4617, i32 0, i32 0
  %RDX.i460 = bitcast %union.anon* %4618 to i64*
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 15
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %4621 to i64*
  %4622 = load i64, i64* %RBP.i461
  %4623 = sub i64 %4622, 16
  %4624 = load i64, i64* %PC.i459
  %4625 = add i64 %4624, 4
  store i64 %4625, i64* %PC.i459
  %4626 = inttoptr i64 %4623 to i32*
  %4627 = load i32, i32* %4626
  %4628 = sext i32 %4627 to i64
  store i64 %4628, i64* %RDX.i460, align 8
  store %struct.Memory* %loadMem_4b01f9, %struct.Memory** %MEMORY
  %loadMem_4b01fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 33
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %4631 to i64*
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 7
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %RDX.i458 = bitcast %union.anon* %4634 to i64*
  %4635 = load i64, i64* %RDX.i458
  %4636 = load i64, i64* %PC.i457
  %4637 = add i64 %4636, 4
  store i64 %4637, i64* %PC.i457
  %4638 = sext i64 %4635 to i128
  %4639 = and i128 %4638, -18446744073709551616
  %4640 = zext i64 %4635 to i128
  %4641 = or i128 %4639, %4640
  %4642 = mul i128 12, %4641
  %4643 = trunc i128 %4642 to i64
  store i64 %4643, i64* %RDX.i458, align 8
  %4644 = sext i64 %4643 to i128
  %4645 = icmp ne i128 %4644, %4642
  %4646 = zext i1 %4645 to i8
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4646, i8* %4647, align 1
  %4648 = trunc i128 %4642 to i32
  %4649 = and i32 %4648, 255
  %4650 = call i32 @llvm.ctpop.i32(i32 %4649)
  %4651 = trunc i32 %4650 to i8
  %4652 = and i8 %4651, 1
  %4653 = xor i8 %4652, 1
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4653, i8* %4654, align 1
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4655, align 1
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4656, align 1
  %4657 = lshr i64 %4643, 63
  %4658 = trunc i64 %4657 to i8
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4658, i8* %4659, align 1
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4646, i8* %4660, align 1
  store %struct.Memory* %loadMem_4b01fd, %struct.Memory** %MEMORY
  %loadMem_4b0201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 33
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %4663 to i64*
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 1
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %4666 to i64*
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4668 = getelementptr inbounds %struct.GPR, %struct.GPR* %4667, i32 0, i32 7
  %4669 = getelementptr inbounds %struct.Reg, %struct.Reg* %4668, i32 0, i32 0
  %RDX.i456 = bitcast %union.anon* %4669 to i64*
  %4670 = load i64, i64* %RAX.i455
  %4671 = load i64, i64* %RDX.i456
  %4672 = load i64, i64* %PC.i454
  %4673 = add i64 %4672, 3
  store i64 %4673, i64* %PC.i454
  %4674 = add i64 %4671, %4670
  store i64 %4674, i64* %RAX.i455, align 8
  %4675 = icmp ult i64 %4674, %4670
  %4676 = icmp ult i64 %4674, %4671
  %4677 = or i1 %4675, %4676
  %4678 = zext i1 %4677 to i8
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4678, i8* %4679, align 1
  %4680 = trunc i64 %4674 to i32
  %4681 = and i32 %4680, 255
  %4682 = call i32 @llvm.ctpop.i32(i32 %4681)
  %4683 = trunc i32 %4682 to i8
  %4684 = and i8 %4683, 1
  %4685 = xor i8 %4684, 1
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4685, i8* %4686, align 1
  %4687 = xor i64 %4671, %4670
  %4688 = xor i64 %4687, %4674
  %4689 = lshr i64 %4688, 4
  %4690 = trunc i64 %4689 to i8
  %4691 = and i8 %4690, 1
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4691, i8* %4692, align 1
  %4693 = icmp eq i64 %4674, 0
  %4694 = zext i1 %4693 to i8
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4694, i8* %4695, align 1
  %4696 = lshr i64 %4674, 63
  %4697 = trunc i64 %4696 to i8
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4697, i8* %4698, align 1
  %4699 = lshr i64 %4670, 63
  %4700 = lshr i64 %4671, 63
  %4701 = xor i64 %4696, %4699
  %4702 = xor i64 %4696, %4700
  %4703 = add i64 %4701, %4702
  %4704 = icmp eq i64 %4703, 2
  %4705 = zext i1 %4704 to i8
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4705, i8* %4706, align 1
  store %struct.Memory* %loadMem_4b0201, %struct.Memory** %MEMORY
  %loadMem_4b0204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 33
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %4709 to i64*
  %4710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4711 = getelementptr inbounds %struct.GPR, %struct.GPR* %4710, i32 0, i32 5
  %4712 = getelementptr inbounds %struct.Reg, %struct.Reg* %4711, i32 0, i32 0
  %ECX.i452 = bitcast %union.anon* %4712 to i32*
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4714 = getelementptr inbounds %struct.GPR, %struct.GPR* %4713, i32 0, i32 1
  %4715 = getelementptr inbounds %struct.Reg, %struct.Reg* %4714, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %4715 to i64*
  %4716 = load i64, i64* %RAX.i453
  %4717 = load i32, i32* %ECX.i452
  %4718 = zext i32 %4717 to i64
  %4719 = load i64, i64* %PC.i451
  %4720 = add i64 %4719, 2
  store i64 %4720, i64* %PC.i451
  %4721 = inttoptr i64 %4716 to i32*
  store i32 %4717, i32* %4721
  store %struct.Memory* %loadMem_4b0204, %struct.Memory** %MEMORY
  br label %block_.L_4b0206

block_.L_4b0206:                                  ; preds = %block_.L_4b01db, %block_.L_4b0187
  %loadMem_4b0206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 33
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %4724 to i64*
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 1
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %4727 to i64*
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4729 = getelementptr inbounds %struct.GPR, %struct.GPR* %4728, i32 0, i32 15
  %4730 = getelementptr inbounds %struct.Reg, %struct.Reg* %4729, i32 0, i32 0
  %RBP.i450 = bitcast %union.anon* %4730 to i64*
  %4731 = load i64, i64* %RBP.i450
  %4732 = sub i64 %4731, 560
  %4733 = load i64, i64* %PC.i448
  %4734 = add i64 %4733, 7
  store i64 %4734, i64* %PC.i448
  store i64 %4732, i64* %RAX.i449, align 8
  store %struct.Memory* %loadMem_4b0206, %struct.Memory** %MEMORY
  %loadMem_4b020d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4736 = getelementptr inbounds %struct.GPR, %struct.GPR* %4735, i32 0, i32 33
  %4737 = getelementptr inbounds %struct.Reg, %struct.Reg* %4736, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4737 to i64*
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4739 = getelementptr inbounds %struct.GPR, %struct.GPR* %4738, i32 0, i32 5
  %4740 = getelementptr inbounds %struct.Reg, %struct.Reg* %4739, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %4740 to i64*
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4742 = getelementptr inbounds %struct.GPR, %struct.GPR* %4741, i32 0, i32 15
  %4743 = getelementptr inbounds %struct.Reg, %struct.Reg* %4742, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %4743 to i64*
  %4744 = load i64, i64* %RBP.i447
  %4745 = sub i64 %4744, 932
  %4746 = load i64, i64* %PC.i445
  %4747 = add i64 %4746, 7
  store i64 %4747, i64* %PC.i445
  %4748 = inttoptr i64 %4745 to i32*
  %4749 = load i32, i32* %4748
  %4750 = sext i32 %4749 to i64
  store i64 %4750, i64* %RCX.i446, align 8
  store %struct.Memory* %loadMem_4b020d, %struct.Memory** %MEMORY
  %loadMem_4b0214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 33
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %4753 to i64*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 5
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %4756 to i64*
  %4757 = load i64, i64* %RCX.i444
  %4758 = load i64, i64* %PC.i443
  %4759 = add i64 %4758, 7
  store i64 %4759, i64* %PC.i443
  %4760 = sext i64 %4757 to i128
  %4761 = and i128 %4760, -18446744073709551616
  %4762 = zext i64 %4757 to i128
  %4763 = or i128 %4761, %4762
  %4764 = mul i128 180, %4763
  %4765 = trunc i128 %4764 to i64
  store i64 %4765, i64* %RCX.i444, align 8
  %4766 = sext i64 %4765 to i128
  %4767 = icmp ne i128 %4766, %4764
  %4768 = zext i1 %4767 to i8
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4768, i8* %4769, align 1
  %4770 = trunc i128 %4764 to i32
  %4771 = and i32 %4770, 255
  %4772 = call i32 @llvm.ctpop.i32(i32 %4771)
  %4773 = trunc i32 %4772 to i8
  %4774 = and i8 %4773, 1
  %4775 = xor i8 %4774, 1
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4775, i8* %4776, align 1
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4777, align 1
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4778, align 1
  %4779 = lshr i64 %4765, 63
  %4780 = trunc i64 %4779 to i8
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4780, i8* %4781, align 1
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4768, i8* %4782, align 1
  store %struct.Memory* %loadMem_4b0214, %struct.Memory** %MEMORY
  %loadMem_4b021b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 33
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 1
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %4788 to i64*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 5
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %RCX.i442 = bitcast %union.anon* %4791 to i64*
  %4792 = load i64, i64* %RAX.i441
  %4793 = load i64, i64* %RCX.i442
  %4794 = load i64, i64* %PC.i440
  %4795 = add i64 %4794, 3
  store i64 %4795, i64* %PC.i440
  %4796 = add i64 %4793, %4792
  store i64 %4796, i64* %RAX.i441, align 8
  %4797 = icmp ult i64 %4796, %4792
  %4798 = icmp ult i64 %4796, %4793
  %4799 = or i1 %4797, %4798
  %4800 = zext i1 %4799 to i8
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4800, i8* %4801, align 1
  %4802 = trunc i64 %4796 to i32
  %4803 = and i32 %4802, 255
  %4804 = call i32 @llvm.ctpop.i32(i32 %4803)
  %4805 = trunc i32 %4804 to i8
  %4806 = and i8 %4805, 1
  %4807 = xor i8 %4806, 1
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4807, i8* %4808, align 1
  %4809 = xor i64 %4793, %4792
  %4810 = xor i64 %4809, %4796
  %4811 = lshr i64 %4810, 4
  %4812 = trunc i64 %4811 to i8
  %4813 = and i8 %4812, 1
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4813, i8* %4814, align 1
  %4815 = icmp eq i64 %4796, 0
  %4816 = zext i1 %4815 to i8
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4816, i8* %4817, align 1
  %4818 = lshr i64 %4796, 63
  %4819 = trunc i64 %4818 to i8
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4819, i8* %4820, align 1
  %4821 = lshr i64 %4792, 63
  %4822 = lshr i64 %4793, 63
  %4823 = xor i64 %4818, %4821
  %4824 = xor i64 %4818, %4822
  %4825 = add i64 %4823, %4824
  %4826 = icmp eq i64 %4825, 2
  %4827 = zext i1 %4826 to i8
  %4828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4827, i8* %4828, align 1
  store %struct.Memory* %loadMem_4b021b, %struct.Memory** %MEMORY
  %loadMem_4b021e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 33
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 5
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %4834 to i64*
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 15
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %4837 to i64*
  %4838 = load i64, i64* %RBP.i439
  %4839 = sub i64 %4838, 16
  %4840 = load i64, i64* %PC.i437
  %4841 = add i64 %4840, 4
  store i64 %4841, i64* %PC.i437
  %4842 = inttoptr i64 %4839 to i32*
  %4843 = load i32, i32* %4842
  %4844 = sext i32 %4843 to i64
  store i64 %4844, i64* %RCX.i438, align 8
  store %struct.Memory* %loadMem_4b021e, %struct.Memory** %MEMORY
  %loadMem_4b0222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 33
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 5
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RCX.i436 = bitcast %union.anon* %4850 to i64*
  %4851 = load i64, i64* %RCX.i436
  %4852 = load i64, i64* %PC.i435
  %4853 = add i64 %4852, 4
  store i64 %4853, i64* %PC.i435
  %4854 = sext i64 %4851 to i128
  %4855 = and i128 %4854, -18446744073709551616
  %4856 = zext i64 %4851 to i128
  %4857 = or i128 %4855, %4856
  %4858 = mul i128 12, %4857
  %4859 = trunc i128 %4858 to i64
  store i64 %4859, i64* %RCX.i436, align 8
  %4860 = sext i64 %4859 to i128
  %4861 = icmp ne i128 %4860, %4858
  %4862 = zext i1 %4861 to i8
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4862, i8* %4863, align 1
  %4864 = trunc i128 %4858 to i32
  %4865 = and i32 %4864, 255
  %4866 = call i32 @llvm.ctpop.i32(i32 %4865)
  %4867 = trunc i32 %4866 to i8
  %4868 = and i8 %4867, 1
  %4869 = xor i8 %4868, 1
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4869, i8* %4870, align 1
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4871, align 1
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4872, align 1
  %4873 = lshr i64 %4859, 63
  %4874 = trunc i64 %4873 to i8
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4874, i8* %4875, align 1
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4862, i8* %4876, align 1
  store %struct.Memory* %loadMem_4b0222, %struct.Memory** %MEMORY
  %loadMem_4b0226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 33
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %4879 to i64*
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4881 = getelementptr inbounds %struct.GPR, %struct.GPR* %4880, i32 0, i32 1
  %4882 = getelementptr inbounds %struct.Reg, %struct.Reg* %4881, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %4882 to i64*
  %4883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4884 = getelementptr inbounds %struct.GPR, %struct.GPR* %4883, i32 0, i32 5
  %4885 = getelementptr inbounds %struct.Reg, %struct.Reg* %4884, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %4885 to i64*
  %4886 = load i64, i64* %RAX.i433
  %4887 = load i64, i64* %RCX.i434
  %4888 = load i64, i64* %PC.i432
  %4889 = add i64 %4888, 3
  store i64 %4889, i64* %PC.i432
  %4890 = add i64 %4887, %4886
  store i64 %4890, i64* %RAX.i433, align 8
  %4891 = icmp ult i64 %4890, %4886
  %4892 = icmp ult i64 %4890, %4887
  %4893 = or i1 %4891, %4892
  %4894 = zext i1 %4893 to i8
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4894, i8* %4895, align 1
  %4896 = trunc i64 %4890 to i32
  %4897 = and i32 %4896, 255
  %4898 = call i32 @llvm.ctpop.i32(i32 %4897)
  %4899 = trunc i32 %4898 to i8
  %4900 = and i8 %4899, 1
  %4901 = xor i8 %4900, 1
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4901, i8* %4902, align 1
  %4903 = xor i64 %4887, %4886
  %4904 = xor i64 %4903, %4890
  %4905 = lshr i64 %4904, 4
  %4906 = trunc i64 %4905 to i8
  %4907 = and i8 %4906, 1
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4907, i8* %4908, align 1
  %4909 = icmp eq i64 %4890, 0
  %4910 = zext i1 %4909 to i8
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4910, i8* %4911, align 1
  %4912 = lshr i64 %4890, 63
  %4913 = trunc i64 %4912 to i8
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4913, i8* %4914, align 1
  %4915 = lshr i64 %4886, 63
  %4916 = lshr i64 %4887, 63
  %4917 = xor i64 %4912, %4915
  %4918 = xor i64 %4912, %4916
  %4919 = add i64 %4917, %4918
  %4920 = icmp eq i64 %4919, 2
  %4921 = zext i1 %4920 to i8
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4921, i8* %4922, align 1
  store %struct.Memory* %loadMem_4b0226, %struct.Memory** %MEMORY
  %loadMem_4b0229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 33
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %4925 to i64*
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4927 = getelementptr inbounds %struct.GPR, %struct.GPR* %4926, i32 0, i32 1
  %4928 = getelementptr inbounds %struct.Reg, %struct.Reg* %4927, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %4928 to i64*
  %4929 = load i64, i64* %RAX.i431
  %4930 = load i64, i64* %PC.i430
  %4931 = add i64 %4930, 3
  store i64 %4931, i64* %PC.i430
  %4932 = inttoptr i64 %4929 to i32*
  %4933 = load i32, i32* %4932
  %4934 = sub i32 %4933, -64
  %4935 = icmp ult i32 %4933, -64
  %4936 = zext i1 %4935 to i8
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4936, i8* %4937, align 1
  %4938 = and i32 %4934, 255
  %4939 = call i32 @llvm.ctpop.i32(i32 %4938)
  %4940 = trunc i32 %4939 to i8
  %4941 = and i8 %4940, 1
  %4942 = xor i8 %4941, 1
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4942, i8* %4943, align 1
  %4944 = xor i32 %4933, -64
  %4945 = xor i32 %4944, %4934
  %4946 = lshr i32 %4945, 4
  %4947 = trunc i32 %4946 to i8
  %4948 = and i8 %4947, 1
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4948, i8* %4949, align 1
  %4950 = icmp eq i32 %4934, 0
  %4951 = zext i1 %4950 to i8
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4951, i8* %4952, align 1
  %4953 = lshr i32 %4934, 31
  %4954 = trunc i32 %4953 to i8
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4954, i8* %4955, align 1
  %4956 = lshr i32 %4933, 31
  %4957 = xor i32 %4956, 1
  %4958 = xor i32 %4953, %4956
  %4959 = add i32 %4958, %4957
  %4960 = icmp eq i32 %4959, 2
  %4961 = zext i1 %4960 to i8
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4961, i8* %4962, align 1
  store %struct.Memory* %loadMem_4b0229, %struct.Memory** %MEMORY
  %loadMem_4b022c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 33
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4965 to i64*
  %4966 = load i64, i64* %PC.i429
  %4967 = add i64 %4966, 50
  %4968 = load i64, i64* %PC.i429
  %4969 = add i64 %4968, 6
  %4970 = load i64, i64* %PC.i429
  %4971 = add i64 %4970, 6
  store i64 %4971, i64* %PC.i429
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4973 = load i8, i8* %4972, align 1
  %4974 = icmp ne i8 %4973, 0
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4976 = load i8, i8* %4975, align 1
  %4977 = icmp ne i8 %4976, 0
  %4978 = xor i1 %4974, %4977
  %4979 = zext i1 %4978 to i8
  store i8 %4979, i8* %BRANCH_TAKEN, align 1
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4981 = select i1 %4978, i64 %4967, i64 %4969
  store i64 %4981, i64* %4980, align 8
  store %struct.Memory* %loadMem_4b022c, %struct.Memory** %MEMORY
  %loadBr_4b022c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b022c = icmp eq i8 %loadBr_4b022c, 1
  br i1 %cmpBr_4b022c, label %block_.L_4b025e, label %block_4b0232

block_4b0232:                                     ; preds = %block_.L_4b0206
  %loadMem_4b0232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4983 = getelementptr inbounds %struct.GPR, %struct.GPR* %4982, i32 0, i32 33
  %4984 = getelementptr inbounds %struct.Reg, %struct.Reg* %4983, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %4984 to i64*
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4986 = getelementptr inbounds %struct.GPR, %struct.GPR* %4985, i32 0, i32 1
  %4987 = getelementptr inbounds %struct.Reg, %struct.Reg* %4986, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %4987 to i64*
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 15
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %4990 to i64*
  %4991 = load i64, i64* %RBP.i428
  %4992 = sub i64 %4991, 560
  %4993 = load i64, i64* %PC.i426
  %4994 = add i64 %4993, 7
  store i64 %4994, i64* %PC.i426
  store i64 %4992, i64* %RAX.i427, align 8
  store %struct.Memory* %loadMem_4b0232, %struct.Memory** %MEMORY
  %loadMem_4b0239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 33
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %4997 to i64*
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4999 = getelementptr inbounds %struct.GPR, %struct.GPR* %4998, i32 0, i32 5
  %5000 = getelementptr inbounds %struct.Reg, %struct.Reg* %4999, i32 0, i32 0
  %RCX.i424 = bitcast %union.anon* %5000 to i64*
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5002 = getelementptr inbounds %struct.GPR, %struct.GPR* %5001, i32 0, i32 15
  %5003 = getelementptr inbounds %struct.Reg, %struct.Reg* %5002, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %5003 to i64*
  %5004 = load i64, i64* %RBP.i425
  %5005 = sub i64 %5004, 932
  %5006 = load i64, i64* %PC.i423
  %5007 = add i64 %5006, 7
  store i64 %5007, i64* %PC.i423
  %5008 = inttoptr i64 %5005 to i32*
  %5009 = load i32, i32* %5008
  %5010 = sext i32 %5009 to i64
  store i64 %5010, i64* %RCX.i424, align 8
  store %struct.Memory* %loadMem_4b0239, %struct.Memory** %MEMORY
  %loadMem_4b0240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 33
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %5013 to i64*
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5015 = getelementptr inbounds %struct.GPR, %struct.GPR* %5014, i32 0, i32 5
  %5016 = getelementptr inbounds %struct.Reg, %struct.Reg* %5015, i32 0, i32 0
  %RCX.i422 = bitcast %union.anon* %5016 to i64*
  %5017 = load i64, i64* %RCX.i422
  %5018 = load i64, i64* %PC.i421
  %5019 = add i64 %5018, 7
  store i64 %5019, i64* %PC.i421
  %5020 = sext i64 %5017 to i128
  %5021 = and i128 %5020, -18446744073709551616
  %5022 = zext i64 %5017 to i128
  %5023 = or i128 %5021, %5022
  %5024 = mul i128 180, %5023
  %5025 = trunc i128 %5024 to i64
  store i64 %5025, i64* %RCX.i422, align 8
  %5026 = sext i64 %5025 to i128
  %5027 = icmp ne i128 %5026, %5024
  %5028 = zext i1 %5027 to i8
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5028, i8* %5029, align 1
  %5030 = trunc i128 %5024 to i32
  %5031 = and i32 %5030, 255
  %5032 = call i32 @llvm.ctpop.i32(i32 %5031)
  %5033 = trunc i32 %5032 to i8
  %5034 = and i8 %5033, 1
  %5035 = xor i8 %5034, 1
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5035, i8* %5036, align 1
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5037, align 1
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5038, align 1
  %5039 = lshr i64 %5025, 63
  %5040 = trunc i64 %5039 to i8
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5040, i8* %5041, align 1
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5028, i8* %5042, align 1
  store %struct.Memory* %loadMem_4b0240, %struct.Memory** %MEMORY
  %loadMem_4b0247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 33
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %5045 to i64*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 1
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %5048 to i64*
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 5
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %5051 to i64*
  %5052 = load i64, i64* %RAX.i419
  %5053 = load i64, i64* %RCX.i420
  %5054 = load i64, i64* %PC.i418
  %5055 = add i64 %5054, 3
  store i64 %5055, i64* %PC.i418
  %5056 = add i64 %5053, %5052
  store i64 %5056, i64* %RAX.i419, align 8
  %5057 = icmp ult i64 %5056, %5052
  %5058 = icmp ult i64 %5056, %5053
  %5059 = or i1 %5057, %5058
  %5060 = zext i1 %5059 to i8
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5060, i8* %5061, align 1
  %5062 = trunc i64 %5056 to i32
  %5063 = and i32 %5062, 255
  %5064 = call i32 @llvm.ctpop.i32(i32 %5063)
  %5065 = trunc i32 %5064 to i8
  %5066 = and i8 %5065, 1
  %5067 = xor i8 %5066, 1
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5067, i8* %5068, align 1
  %5069 = xor i64 %5053, %5052
  %5070 = xor i64 %5069, %5056
  %5071 = lshr i64 %5070, 4
  %5072 = trunc i64 %5071 to i8
  %5073 = and i8 %5072, 1
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5073, i8* %5074, align 1
  %5075 = icmp eq i64 %5056, 0
  %5076 = zext i1 %5075 to i8
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5076, i8* %5077, align 1
  %5078 = lshr i64 %5056, 63
  %5079 = trunc i64 %5078 to i8
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5079, i8* %5080, align 1
  %5081 = lshr i64 %5052, 63
  %5082 = lshr i64 %5053, 63
  %5083 = xor i64 %5078, %5081
  %5084 = xor i64 %5078, %5082
  %5085 = add i64 %5083, %5084
  %5086 = icmp eq i64 %5085, 2
  %5087 = zext i1 %5086 to i8
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5087, i8* %5088, align 1
  store %struct.Memory* %loadMem_4b0247, %struct.Memory** %MEMORY
  %loadMem_4b024a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5090 = getelementptr inbounds %struct.GPR, %struct.GPR* %5089, i32 0, i32 33
  %5091 = getelementptr inbounds %struct.Reg, %struct.Reg* %5090, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %5091 to i64*
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5093 = getelementptr inbounds %struct.GPR, %struct.GPR* %5092, i32 0, i32 5
  %5094 = getelementptr inbounds %struct.Reg, %struct.Reg* %5093, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %5094 to i64*
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5096 = getelementptr inbounds %struct.GPR, %struct.GPR* %5095, i32 0, i32 15
  %5097 = getelementptr inbounds %struct.Reg, %struct.Reg* %5096, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %5097 to i64*
  %5098 = load i64, i64* %RBP.i417
  %5099 = sub i64 %5098, 16
  %5100 = load i64, i64* %PC.i415
  %5101 = add i64 %5100, 4
  store i64 %5101, i64* %PC.i415
  %5102 = inttoptr i64 %5099 to i32*
  %5103 = load i32, i32* %5102
  %5104 = sext i32 %5103 to i64
  store i64 %5104, i64* %RCX.i416, align 8
  store %struct.Memory* %loadMem_4b024a, %struct.Memory** %MEMORY
  %loadMem_4b024e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 33
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %5107 to i64*
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 5
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %5110 to i64*
  %5111 = load i64, i64* %RCX.i414
  %5112 = load i64, i64* %PC.i413
  %5113 = add i64 %5112, 4
  store i64 %5113, i64* %PC.i413
  %5114 = sext i64 %5111 to i128
  %5115 = and i128 %5114, -18446744073709551616
  %5116 = zext i64 %5111 to i128
  %5117 = or i128 %5115, %5116
  %5118 = mul i128 12, %5117
  %5119 = trunc i128 %5118 to i64
  store i64 %5119, i64* %RCX.i414, align 8
  %5120 = sext i64 %5119 to i128
  %5121 = icmp ne i128 %5120, %5118
  %5122 = zext i1 %5121 to i8
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5122, i8* %5123, align 1
  %5124 = trunc i128 %5118 to i32
  %5125 = and i32 %5124, 255
  %5126 = call i32 @llvm.ctpop.i32(i32 %5125)
  %5127 = trunc i32 %5126 to i8
  %5128 = and i8 %5127, 1
  %5129 = xor i8 %5128, 1
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5129, i8* %5130, align 1
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5131, align 1
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5132, align 1
  %5133 = lshr i64 %5119, 63
  %5134 = trunc i64 %5133 to i8
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5134, i8* %5135, align 1
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5122, i8* %5136, align 1
  store %struct.Memory* %loadMem_4b024e, %struct.Memory** %MEMORY
  %loadMem_4b0252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 33
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %5139 to i64*
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5141 = getelementptr inbounds %struct.GPR, %struct.GPR* %5140, i32 0, i32 1
  %5142 = getelementptr inbounds %struct.Reg, %struct.Reg* %5141, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %5142 to i64*
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5144 = getelementptr inbounds %struct.GPR, %struct.GPR* %5143, i32 0, i32 5
  %5145 = getelementptr inbounds %struct.Reg, %struct.Reg* %5144, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %5145 to i64*
  %5146 = load i64, i64* %RAX.i411
  %5147 = load i64, i64* %RCX.i412
  %5148 = load i64, i64* %PC.i410
  %5149 = add i64 %5148, 3
  store i64 %5149, i64* %PC.i410
  %5150 = add i64 %5147, %5146
  store i64 %5150, i64* %RAX.i411, align 8
  %5151 = icmp ult i64 %5150, %5146
  %5152 = icmp ult i64 %5150, %5147
  %5153 = or i1 %5151, %5152
  %5154 = zext i1 %5153 to i8
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5154, i8* %5155, align 1
  %5156 = trunc i64 %5150 to i32
  %5157 = and i32 %5156, 255
  %5158 = call i32 @llvm.ctpop.i32(i32 %5157)
  %5159 = trunc i32 %5158 to i8
  %5160 = and i8 %5159, 1
  %5161 = xor i8 %5160, 1
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5161, i8* %5162, align 1
  %5163 = xor i64 %5147, %5146
  %5164 = xor i64 %5163, %5150
  %5165 = lshr i64 %5164, 4
  %5166 = trunc i64 %5165 to i8
  %5167 = and i8 %5166, 1
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5167, i8* %5168, align 1
  %5169 = icmp eq i64 %5150, 0
  %5170 = zext i1 %5169 to i8
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5170, i8* %5171, align 1
  %5172 = lshr i64 %5150, 63
  %5173 = trunc i64 %5172 to i8
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5173, i8* %5174, align 1
  %5175 = lshr i64 %5146, 63
  %5176 = lshr i64 %5147, 63
  %5177 = xor i64 %5172, %5175
  %5178 = xor i64 %5172, %5176
  %5179 = add i64 %5177, %5178
  %5180 = icmp eq i64 %5179, 2
  %5181 = zext i1 %5180 to i8
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5181, i8* %5182, align 1
  store %struct.Memory* %loadMem_4b0252, %struct.Memory** %MEMORY
  %loadMem_4b0255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5184 = getelementptr inbounds %struct.GPR, %struct.GPR* %5183, i32 0, i32 33
  %5185 = getelementptr inbounds %struct.Reg, %struct.Reg* %5184, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %5185 to i64*
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5187 = getelementptr inbounds %struct.GPR, %struct.GPR* %5186, i32 0, i32 1
  %5188 = getelementptr inbounds %struct.Reg, %struct.Reg* %5187, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %5188 to i64*
  %5189 = load i64, i64* %RAX.i409
  %5190 = load i64, i64* %PC.i408
  %5191 = add i64 %5190, 3
  store i64 %5191, i64* %PC.i408
  %5192 = inttoptr i64 %5189 to i32*
  %5193 = load i32, i32* %5192
  %5194 = sub i32 %5193, 127
  %5195 = icmp ult i32 %5193, 127
  %5196 = zext i1 %5195 to i8
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5196, i8* %5197, align 1
  %5198 = and i32 %5194, 255
  %5199 = call i32 @llvm.ctpop.i32(i32 %5198)
  %5200 = trunc i32 %5199 to i8
  %5201 = and i8 %5200, 1
  %5202 = xor i8 %5201, 1
  %5203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5202, i8* %5203, align 1
  %5204 = xor i32 %5193, 127
  %5205 = xor i32 %5204, %5194
  %5206 = lshr i32 %5205, 4
  %5207 = trunc i32 %5206 to i8
  %5208 = and i8 %5207, 1
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5208, i8* %5209, align 1
  %5210 = icmp eq i32 %5194, 0
  %5211 = zext i1 %5210 to i8
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5211, i8* %5212, align 1
  %5213 = lshr i32 %5194, 31
  %5214 = trunc i32 %5213 to i8
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5214, i8* %5215, align 1
  %5216 = lshr i32 %5193, 31
  %5217 = xor i32 %5213, %5216
  %5218 = add i32 %5217, %5216
  %5219 = icmp eq i32 %5218, 2
  %5220 = zext i1 %5219 to i8
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5220, i8* %5221, align 1
  store %struct.Memory* %loadMem_4b0255, %struct.Memory** %MEMORY
  %loadMem_4b0258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 33
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %5224 to i64*
  %5225 = load i64, i64* %PC.i407
  %5226 = add i64 %5225, 47
  %5227 = load i64, i64* %PC.i407
  %5228 = add i64 %5227, 6
  %5229 = load i64, i64* %PC.i407
  %5230 = add i64 %5229, 6
  store i64 %5230, i64* %PC.i407
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5232 = load i8, i8* %5231, align 1
  %5233 = icmp ne i8 %5232, 0
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5235 = load i8, i8* %5234, align 1
  %5236 = icmp ne i8 %5235, 0
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5238 = load i8, i8* %5237, align 1
  %5239 = icmp ne i8 %5238, 0
  %5240 = xor i1 %5236, %5239
  %5241 = or i1 %5233, %5240
  %5242 = zext i1 %5241 to i8
  store i8 %5242, i8* %BRANCH_TAKEN, align 1
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5244 = select i1 %5241, i64 %5226, i64 %5228
  store i64 %5244, i64* %5243, align 8
  store %struct.Memory* %loadMem_4b0258, %struct.Memory** %MEMORY
  %loadBr_4b0258 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0258 = icmp eq i8 %loadBr_4b0258, 1
  br i1 %cmpBr_4b0258, label %block_.L_4b0287, label %block_.L_4b025e

block_.L_4b025e:                                  ; preds = %block_4b0232, %block_.L_4b0206
  %loadMem_4b025e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 33
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %5247 to i64*
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5249 = getelementptr inbounds %struct.GPR, %struct.GPR* %5248, i32 0, i32 1
  %5250 = getelementptr inbounds %struct.Reg, %struct.Reg* %5249, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %5250 to i64*
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5252 = getelementptr inbounds %struct.GPR, %struct.GPR* %5251, i32 0, i32 15
  %5253 = getelementptr inbounds %struct.Reg, %struct.Reg* %5252, i32 0, i32 0
  %RBP.i406 = bitcast %union.anon* %5253 to i64*
  %5254 = load i64, i64* %RBP.i406
  %5255 = sub i64 %5254, 560
  %5256 = load i64, i64* %PC.i404
  %5257 = add i64 %5256, 7
  store i64 %5257, i64* %PC.i404
  store i64 %5255, i64* %RAX.i405, align 8
  store %struct.Memory* %loadMem_4b025e, %struct.Memory** %MEMORY
  %loadMem_4b0265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 33
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %5260 to i64*
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 5
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %RCX.i402 = bitcast %union.anon* %5263 to i64*
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5265 = getelementptr inbounds %struct.GPR, %struct.GPR* %5264, i32 0, i32 15
  %5266 = getelementptr inbounds %struct.Reg, %struct.Reg* %5265, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %5266 to i64*
  %5267 = load i64, i64* %RBP.i403
  %5268 = sub i64 %5267, 932
  %5269 = load i64, i64* %PC.i401
  %5270 = add i64 %5269, 7
  store i64 %5270, i64* %PC.i401
  %5271 = inttoptr i64 %5268 to i32*
  %5272 = load i32, i32* %5271
  %5273 = sext i32 %5272 to i64
  store i64 %5273, i64* %RCX.i402, align 8
  store %struct.Memory* %loadMem_4b0265, %struct.Memory** %MEMORY
  %loadMem_4b026c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5275 = getelementptr inbounds %struct.GPR, %struct.GPR* %5274, i32 0, i32 33
  %5276 = getelementptr inbounds %struct.Reg, %struct.Reg* %5275, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %5276 to i64*
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5278 = getelementptr inbounds %struct.GPR, %struct.GPR* %5277, i32 0, i32 5
  %5279 = getelementptr inbounds %struct.Reg, %struct.Reg* %5278, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %5279 to i64*
  %5280 = load i64, i64* %RCX.i400
  %5281 = load i64, i64* %PC.i399
  %5282 = add i64 %5281, 7
  store i64 %5282, i64* %PC.i399
  %5283 = sext i64 %5280 to i128
  %5284 = and i128 %5283, -18446744073709551616
  %5285 = zext i64 %5280 to i128
  %5286 = or i128 %5284, %5285
  %5287 = mul i128 180, %5286
  %5288 = trunc i128 %5287 to i64
  store i64 %5288, i64* %RCX.i400, align 8
  %5289 = sext i64 %5288 to i128
  %5290 = icmp ne i128 %5289, %5287
  %5291 = zext i1 %5290 to i8
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5291, i8* %5292, align 1
  %5293 = trunc i128 %5287 to i32
  %5294 = and i32 %5293, 255
  %5295 = call i32 @llvm.ctpop.i32(i32 %5294)
  %5296 = trunc i32 %5295 to i8
  %5297 = and i8 %5296, 1
  %5298 = xor i8 %5297, 1
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5298, i8* %5299, align 1
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5300, align 1
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5301, align 1
  %5302 = lshr i64 %5288, 63
  %5303 = trunc i64 %5302 to i8
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5303, i8* %5304, align 1
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5291, i8* %5305, align 1
  store %struct.Memory* %loadMem_4b026c, %struct.Memory** %MEMORY
  %loadMem_4b0273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 33
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %5308 to i64*
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5310 = getelementptr inbounds %struct.GPR, %struct.GPR* %5309, i32 0, i32 1
  %5311 = getelementptr inbounds %struct.Reg, %struct.Reg* %5310, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %5311 to i64*
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 5
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %RCX.i398 = bitcast %union.anon* %5314 to i64*
  %5315 = load i64, i64* %RAX.i397
  %5316 = load i64, i64* %RCX.i398
  %5317 = load i64, i64* %PC.i396
  %5318 = add i64 %5317, 3
  store i64 %5318, i64* %PC.i396
  %5319 = add i64 %5316, %5315
  store i64 %5319, i64* %RAX.i397, align 8
  %5320 = icmp ult i64 %5319, %5315
  %5321 = icmp ult i64 %5319, %5316
  %5322 = or i1 %5320, %5321
  %5323 = zext i1 %5322 to i8
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5323, i8* %5324, align 1
  %5325 = trunc i64 %5319 to i32
  %5326 = and i32 %5325, 255
  %5327 = call i32 @llvm.ctpop.i32(i32 %5326)
  %5328 = trunc i32 %5327 to i8
  %5329 = and i8 %5328, 1
  %5330 = xor i8 %5329, 1
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5330, i8* %5331, align 1
  %5332 = xor i64 %5316, %5315
  %5333 = xor i64 %5332, %5319
  %5334 = lshr i64 %5333, 4
  %5335 = trunc i64 %5334 to i8
  %5336 = and i8 %5335, 1
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5336, i8* %5337, align 1
  %5338 = icmp eq i64 %5319, 0
  %5339 = zext i1 %5338 to i8
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5339, i8* %5340, align 1
  %5341 = lshr i64 %5319, 63
  %5342 = trunc i64 %5341 to i8
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5342, i8* %5343, align 1
  %5344 = lshr i64 %5315, 63
  %5345 = lshr i64 %5316, 63
  %5346 = xor i64 %5341, %5344
  %5347 = xor i64 %5341, %5345
  %5348 = add i64 %5346, %5347
  %5349 = icmp eq i64 %5348, 2
  %5350 = zext i1 %5349 to i8
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5350, i8* %5351, align 1
  store %struct.Memory* %loadMem_4b0273, %struct.Memory** %MEMORY
  %loadMem_4b0276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5353 = getelementptr inbounds %struct.GPR, %struct.GPR* %5352, i32 0, i32 33
  %5354 = getelementptr inbounds %struct.Reg, %struct.Reg* %5353, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %5354 to i64*
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 5
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %5357 to i64*
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5359 = getelementptr inbounds %struct.GPR, %struct.GPR* %5358, i32 0, i32 15
  %5360 = getelementptr inbounds %struct.Reg, %struct.Reg* %5359, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %5360 to i64*
  %5361 = load i64, i64* %RBP.i395
  %5362 = sub i64 %5361, 16
  %5363 = load i64, i64* %PC.i393
  %5364 = add i64 %5363, 4
  store i64 %5364, i64* %PC.i393
  %5365 = inttoptr i64 %5362 to i32*
  %5366 = load i32, i32* %5365
  %5367 = sext i32 %5366 to i64
  store i64 %5367, i64* %RCX.i394, align 8
  store %struct.Memory* %loadMem_4b0276, %struct.Memory** %MEMORY
  %loadMem_4b027a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5369 = getelementptr inbounds %struct.GPR, %struct.GPR* %5368, i32 0, i32 33
  %5370 = getelementptr inbounds %struct.Reg, %struct.Reg* %5369, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %5370 to i64*
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5372 = getelementptr inbounds %struct.GPR, %struct.GPR* %5371, i32 0, i32 5
  %5373 = getelementptr inbounds %struct.Reg, %struct.Reg* %5372, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %5373 to i64*
  %5374 = load i64, i64* %RCX.i392
  %5375 = load i64, i64* %PC.i391
  %5376 = add i64 %5375, 4
  store i64 %5376, i64* %PC.i391
  %5377 = sext i64 %5374 to i128
  %5378 = and i128 %5377, -18446744073709551616
  %5379 = zext i64 %5374 to i128
  %5380 = or i128 %5378, %5379
  %5381 = mul i128 12, %5380
  %5382 = trunc i128 %5381 to i64
  store i64 %5382, i64* %RCX.i392, align 8
  %5383 = sext i64 %5382 to i128
  %5384 = icmp ne i128 %5383, %5381
  %5385 = zext i1 %5384 to i8
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5385, i8* %5386, align 1
  %5387 = trunc i128 %5381 to i32
  %5388 = and i32 %5387, 255
  %5389 = call i32 @llvm.ctpop.i32(i32 %5388)
  %5390 = trunc i32 %5389 to i8
  %5391 = and i8 %5390, 1
  %5392 = xor i8 %5391, 1
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5392, i8* %5393, align 1
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5394, align 1
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5395, align 1
  %5396 = lshr i64 %5382, 63
  %5397 = trunc i64 %5396 to i8
  %5398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5397, i8* %5398, align 1
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5385, i8* %5399, align 1
  store %struct.Memory* %loadMem_4b027a, %struct.Memory** %MEMORY
  %loadMem_4b027e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 33
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %5402 to i64*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5404 = getelementptr inbounds %struct.GPR, %struct.GPR* %5403, i32 0, i32 1
  %5405 = getelementptr inbounds %struct.Reg, %struct.Reg* %5404, i32 0, i32 0
  %RAX.i389 = bitcast %union.anon* %5405 to i64*
  %5406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5407 = getelementptr inbounds %struct.GPR, %struct.GPR* %5406, i32 0, i32 5
  %5408 = getelementptr inbounds %struct.Reg, %struct.Reg* %5407, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %5408 to i64*
  %5409 = load i64, i64* %RAX.i389
  %5410 = load i64, i64* %RCX.i390
  %5411 = load i64, i64* %PC.i388
  %5412 = add i64 %5411, 3
  store i64 %5412, i64* %PC.i388
  %5413 = add i64 %5410, %5409
  store i64 %5413, i64* %RAX.i389, align 8
  %5414 = icmp ult i64 %5413, %5409
  %5415 = icmp ult i64 %5413, %5410
  %5416 = or i1 %5414, %5415
  %5417 = zext i1 %5416 to i8
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5417, i8* %5418, align 1
  %5419 = trunc i64 %5413 to i32
  %5420 = and i32 %5419, 255
  %5421 = call i32 @llvm.ctpop.i32(i32 %5420)
  %5422 = trunc i32 %5421 to i8
  %5423 = and i8 %5422, 1
  %5424 = xor i8 %5423, 1
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5424, i8* %5425, align 1
  %5426 = xor i64 %5410, %5409
  %5427 = xor i64 %5426, %5413
  %5428 = lshr i64 %5427, 4
  %5429 = trunc i64 %5428 to i8
  %5430 = and i8 %5429, 1
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5430, i8* %5431, align 1
  %5432 = icmp eq i64 %5413, 0
  %5433 = zext i1 %5432 to i8
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5433, i8* %5434, align 1
  %5435 = lshr i64 %5413, 63
  %5436 = trunc i64 %5435 to i8
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5436, i8* %5437, align 1
  %5438 = lshr i64 %5409, 63
  %5439 = lshr i64 %5410, 63
  %5440 = xor i64 %5435, %5438
  %5441 = xor i64 %5435, %5439
  %5442 = add i64 %5440, %5441
  %5443 = icmp eq i64 %5442, 2
  %5444 = zext i1 %5443 to i8
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5444, i8* %5445, align 1
  store %struct.Memory* %loadMem_4b027e, %struct.Memory** %MEMORY
  %loadMem_4b0281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5447 = getelementptr inbounds %struct.GPR, %struct.GPR* %5446, i32 0, i32 33
  %5448 = getelementptr inbounds %struct.Reg, %struct.Reg* %5447, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %5448 to i64*
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5450 = getelementptr inbounds %struct.GPR, %struct.GPR* %5449, i32 0, i32 1
  %5451 = getelementptr inbounds %struct.Reg, %struct.Reg* %5450, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %5451 to i64*
  %5452 = load i64, i64* %RAX.i387
  %5453 = load i64, i64* %PC.i386
  %5454 = add i64 %5453, 6
  store i64 %5454, i64* %PC.i386
  %5455 = inttoptr i64 %5452 to i32*
  store i32 32, i32* %5455
  store %struct.Memory* %loadMem_4b0281, %struct.Memory** %MEMORY
  br label %block_.L_4b0287

block_.L_4b0287:                                  ; preds = %block_.L_4b025e, %block_4b0232
  %loadMem_4b0287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5457 = getelementptr inbounds %struct.GPR, %struct.GPR* %5456, i32 0, i32 33
  %5458 = getelementptr inbounds %struct.Reg, %struct.Reg* %5457, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %5458 to i64*
  %5459 = load i64, i64* %PC.i385
  %5460 = add i64 %5459, 364
  %5461 = load i64, i64* %PC.i385
  %5462 = add i64 %5461, 5
  store i64 %5462, i64* %PC.i385
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5460, i64* %5463, align 8
  store %struct.Memory* %loadMem_4b0287, %struct.Memory** %MEMORY
  br label %block_.L_4b03f3

block_.L_4b028c:                                  ; preds = %block_.L_4b0158
  %loadMem_4b028c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5465 = getelementptr inbounds %struct.GPR, %struct.GPR* %5464, i32 0, i32 33
  %5466 = getelementptr inbounds %struct.Reg, %struct.Reg* %5465, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %5466 to i64*
  %5467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5468 = getelementptr inbounds %struct.GPR, %struct.GPR* %5467, i32 0, i32 1
  %5469 = getelementptr inbounds %struct.Reg, %struct.Reg* %5468, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %5469 to i64*
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5471 = getelementptr inbounds %struct.GPR, %struct.GPR* %5470, i32 0, i32 15
  %5472 = getelementptr inbounds %struct.Reg, %struct.Reg* %5471, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %5472 to i64*
  %5473 = load i64, i64* %RBP.i384
  %5474 = sub i64 %5473, 928
  %5475 = load i64, i64* %PC.i382
  %5476 = add i64 %5475, 7
  store i64 %5476, i64* %PC.i382
  store i64 %5474, i64* %RAX.i383, align 8
  store %struct.Memory* %loadMem_4b028c, %struct.Memory** %MEMORY
  %loadMem_4b0293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5478 = getelementptr inbounds %struct.GPR, %struct.GPR* %5477, i32 0, i32 33
  %5479 = getelementptr inbounds %struct.Reg, %struct.Reg* %5478, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %5479 to i64*
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5481 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5480, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5481 to %"class.std::bitset"*
  %5482 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5483 = load i64, i64* %PC.i381
  %5484 = add i64 %5483, ptrtoint (%G_0x15ed__rip__type* @G_0x15ed__rip_ to i64)
  %5485 = load i64, i64* %PC.i381
  %5486 = add i64 %5485, 8
  store i64 %5486, i64* %PC.i381
  %5487 = inttoptr i64 %5484 to double*
  %5488 = load double, double* %5487
  %5489 = bitcast i8* %5482 to double*
  store double %5488, double* %5489, align 1
  %5490 = getelementptr inbounds i8, i8* %5482, i64 8
  %5491 = bitcast i8* %5490 to double*
  store double 0.000000e+00, double* %5491, align 1
  store %struct.Memory* %loadMem_4b0293, %struct.Memory** %MEMORY
  %loadMem_4b029b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5493 = getelementptr inbounds %struct.GPR, %struct.GPR* %5492, i32 0, i32 33
  %5494 = getelementptr inbounds %struct.Reg, %struct.Reg* %5493, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %5494 to i64*
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5496 = getelementptr inbounds %struct.GPR, %struct.GPR* %5495, i32 0, i32 15
  %5497 = getelementptr inbounds %struct.Reg, %struct.Reg* %5496, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %5497 to i64*
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5499 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5498, i64 0, i64 1
  %YMM1.i380 = bitcast %union.VectorReg* %5499 to %"class.std::bitset"*
  %5500 = bitcast %"class.std::bitset"* %YMM1.i380 to i8*
  %5501 = load i64, i64* %RBP.i379
  %5502 = sub i64 %5501, 24
  %5503 = load i64, i64* %PC.i378
  %5504 = add i64 %5503, 5
  store i64 %5504, i64* %PC.i378
  %5505 = inttoptr i64 %5502 to double*
  %5506 = load double, double* %5505
  %5507 = bitcast i8* %5500 to double*
  store double %5506, double* %5507, align 1
  %5508 = getelementptr inbounds i8, i8* %5500, i64 8
  %5509 = bitcast i8* %5508 to double*
  store double 0.000000e+00, double* %5509, align 1
  store %struct.Memory* %loadMem_4b029b, %struct.Memory** %MEMORY
  %loadMem_4b02a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5511 = getelementptr inbounds %struct.GPR, %struct.GPR* %5510, i32 0, i32 33
  %5512 = getelementptr inbounds %struct.Reg, %struct.Reg* %5511, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %5512 to i64*
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5514 = getelementptr inbounds %struct.GPR, %struct.GPR* %5513, i32 0, i32 5
  %5515 = getelementptr inbounds %struct.Reg, %struct.Reg* %5514, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %5515 to i64*
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5517 = getelementptr inbounds %struct.GPR, %struct.GPR* %5516, i32 0, i32 15
  %5518 = getelementptr inbounds %struct.Reg, %struct.Reg* %5517, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %5518 to i64*
  %5519 = load i64, i64* %RBP.i377
  %5520 = sub i64 %5519, 16
  %5521 = load i64, i64* %PC.i375
  %5522 = add i64 %5521, 4
  store i64 %5522, i64* %PC.i375
  %5523 = inttoptr i64 %5520 to i32*
  %5524 = load i32, i32* %5523
  %5525 = sext i32 %5524 to i64
  store i64 %5525, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_4b02a0, %struct.Memory** %MEMORY
  %loadMem_4b02a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5527 = getelementptr inbounds %struct.GPR, %struct.GPR* %5526, i32 0, i32 33
  %5528 = getelementptr inbounds %struct.Reg, %struct.Reg* %5527, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %5528 to i64*
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5530 = getelementptr inbounds %struct.GPR, %struct.GPR* %5529, i32 0, i32 5
  %5531 = getelementptr inbounds %struct.Reg, %struct.Reg* %5530, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %5531 to i64*
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5533 = getelementptr inbounds %struct.GPR, %struct.GPR* %5532, i32 0, i32 15
  %5534 = getelementptr inbounds %struct.Reg, %struct.Reg* %5533, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %5534 to i64*
  %5535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5536 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5535, i64 0, i64 1
  %YMM1.i374 = bitcast %union.VectorReg* %5536 to %"class.std::bitset"*
  %5537 = bitcast %"class.std::bitset"* %YMM1.i374 to i8*
  %5538 = bitcast %"class.std::bitset"* %YMM1.i374 to i8*
  %5539 = load i64, i64* %RBP.i373
  %5540 = load i64, i64* %RCX.i372
  %5541 = mul i64 %5540, 8
  %5542 = add i64 %5539, -160
  %5543 = add i64 %5542, %5541
  %5544 = load i64, i64* %PC.i371
  %5545 = add i64 %5544, 9
  store i64 %5545, i64* %PC.i371
  %5546 = bitcast i8* %5538 to double*
  %5547 = load double, double* %5546, align 1
  %5548 = getelementptr inbounds i8, i8* %5538, i64 8
  %5549 = bitcast i8* %5548 to i64*
  %5550 = load i64, i64* %5549, align 1
  %5551 = inttoptr i64 %5543 to double*
  %5552 = load double, double* %5551
  %5553 = fsub double %5547, %5552
  %5554 = bitcast i8* %5537 to double*
  store double %5553, double* %5554, align 1
  %5555 = getelementptr inbounds i8, i8* %5537, i64 8
  %5556 = bitcast i8* %5555 to i64*
  store i64 %5550, i64* %5556, align 1
  store %struct.Memory* %loadMem_4b02a4, %struct.Memory** %MEMORY
  %loadMem_4b02ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5558 = getelementptr inbounds %struct.GPR, %struct.GPR* %5557, i32 0, i32 33
  %5559 = getelementptr inbounds %struct.Reg, %struct.Reg* %5558, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %5559 to i64*
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 5
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %5562 to i64*
  %5563 = load i64, i64* %PC.i369
  %5564 = add i64 %5563, 8
  store i64 %5564, i64* %PC.i369
  %5565 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5565, i64* %RCX.i370, align 8
  store %struct.Memory* %loadMem_4b02ad, %struct.Memory** %MEMORY
  %loadMem_4b02b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 33
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %5568 to i64*
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5570 = getelementptr inbounds %struct.GPR, %struct.GPR* %5569, i32 0, i32 5
  %5571 = getelementptr inbounds %struct.Reg, %struct.Reg* %5570, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %5571 to i64*
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5573 = getelementptr inbounds %struct.GPR, %struct.GPR* %5572, i32 0, i32 7
  %5574 = getelementptr inbounds %struct.Reg, %struct.Reg* %5573, i32 0, i32 0
  %RDX.i368 = bitcast %union.anon* %5574 to i64*
  %5575 = load i64, i64* %RCX.i367
  %5576 = add i64 %5575, 60
  %5577 = load i64, i64* %PC.i366
  %5578 = add i64 %5577, 3
  store i64 %5578, i64* %PC.i366
  %5579 = inttoptr i64 %5576 to i32*
  %5580 = load i32, i32* %5579
  %5581 = zext i32 %5580 to i64
  store i64 %5581, i64* %RDX.i368, align 8
  store %struct.Memory* %loadMem_4b02b5, %struct.Memory** %MEMORY
  %loadMem_4b02b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 33
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %5584 to i64*
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5586 = getelementptr inbounds %struct.GPR, %struct.GPR* %5585, i32 0, i32 5
  %5587 = getelementptr inbounds %struct.Reg, %struct.Reg* %5586, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %5587 to i64*
  %5588 = load i64, i64* %PC.i364
  %5589 = add i64 %5588, 8
  store i64 %5589, i64* %PC.i364
  %5590 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5590, i64* %RCX.i365, align 8
  store %struct.Memory* %loadMem_4b02b8, %struct.Memory** %MEMORY
  %loadMem_4b02c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5592 = getelementptr inbounds %struct.GPR, %struct.GPR* %5591, i32 0, i32 33
  %5593 = getelementptr inbounds %struct.Reg, %struct.Reg* %5592, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %5593 to i64*
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5595 = getelementptr inbounds %struct.GPR, %struct.GPR* %5594, i32 0, i32 5
  %5596 = getelementptr inbounds %struct.Reg, %struct.Reg* %5595, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %5596 to i64*
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 7
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %RDX.i363 = bitcast %union.anon* %5599 to i64*
  %5600 = load i64, i64* %RDX.i363
  %5601 = load i64, i64* %RCX.i362
  %5602 = add i64 %5601, 52
  %5603 = load i64, i64* %PC.i361
  %5604 = add i64 %5603, 4
  store i64 %5604, i64* %PC.i361
  %5605 = inttoptr i64 %5602 to i32*
  %5606 = load i32, i32* %5605
  %5607 = shl i64 %5600, 32
  %5608 = ashr exact i64 %5607, 32
  %5609 = sext i32 %5606 to i64
  %5610 = mul i64 %5609, %5608
  %5611 = trunc i64 %5610 to i32
  %5612 = and i64 %5610, 4294967295
  store i64 %5612, i64* %RDX.i363, align 8
  %5613 = shl i64 %5610, 32
  %5614 = ashr exact i64 %5613, 32
  %5615 = icmp ne i64 %5614, %5610
  %5616 = zext i1 %5615 to i8
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5616, i8* %5617, align 1
  %5618 = and i32 %5611, 255
  %5619 = call i32 @llvm.ctpop.i32(i32 %5618)
  %5620 = trunc i32 %5619 to i8
  %5621 = and i8 %5620, 1
  %5622 = xor i8 %5621, 1
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5622, i8* %5623, align 1
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5624, align 1
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5625, align 1
  %5626 = lshr i32 %5611, 31
  %5627 = trunc i32 %5626 to i8
  %5628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5627, i8* %5628, align 1
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5616, i8* %5629, align 1
  store %struct.Memory* %loadMem_4b02c0, %struct.Memory** %MEMORY
  %loadMem_4b02c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 33
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %5632 to i64*
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 7
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %EDX.i360 = bitcast %union.anon* %5635 to i32*
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5637 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5636, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %5637 to %"class.std::bitset"*
  %5638 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %5639 = load i32, i32* %EDX.i360
  %5640 = zext i32 %5639 to i64
  %5641 = load i64, i64* %PC.i359
  %5642 = add i64 %5641, 4
  store i64 %5642, i64* %PC.i359
  %5643 = sitofp i32 %5639 to double
  %5644 = bitcast i8* %5638 to double*
  store double %5643, double* %5644, align 1
  store %struct.Memory* %loadMem_4b02c4, %struct.Memory** %MEMORY
  %loadMem_4b02c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 33
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %5647 to i64*
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5649 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5648, i64 0, i64 1
  %YMM1.i358 = bitcast %union.VectorReg* %5649 to %"class.std::bitset"*
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5651 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5650, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %5651 to %union.vec128_t*
  %5652 = bitcast %"class.std::bitset"* %YMM1.i358 to i8*
  %5653 = bitcast %"class.std::bitset"* %YMM1.i358 to i8*
  %5654 = bitcast %union.vec128_t* %XMM2.i to i8*
  %5655 = load i64, i64* %PC.i357
  %5656 = add i64 %5655, 4
  store i64 %5656, i64* %PC.i357
  %5657 = bitcast i8* %5653 to double*
  %5658 = load double, double* %5657, align 1
  %5659 = getelementptr inbounds i8, i8* %5653, i64 8
  %5660 = bitcast i8* %5659 to i64*
  %5661 = load i64, i64* %5660, align 1
  %5662 = bitcast i8* %5654 to double*
  %5663 = load double, double* %5662, align 1
  %5664 = fdiv double %5658, %5663
  %5665 = bitcast i8* %5652 to double*
  store double %5664, double* %5665, align 1
  %5666 = getelementptr inbounds i8, i8* %5652, i64 8
  %5667 = bitcast i8* %5666 to i64*
  store i64 %5661, i64* %5667, align 1
  store %struct.Memory* %loadMem_4b02c8, %struct.Memory** %MEMORY
  %loadMem_4b02cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5669 = getelementptr inbounds %struct.GPR, %struct.GPR* %5668, i32 0, i32 33
  %5670 = getelementptr inbounds %struct.Reg, %struct.Reg* %5669, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %5670 to i64*
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5672 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5671, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %5672 to %"class.std::bitset"*
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5674 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5673, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5674 to %union.vec128_t*
  %5675 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5676 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5677 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5678 = load i64, i64* %PC.i356
  %5679 = add i64 %5678, 4
  store i64 %5679, i64* %PC.i356
  %5680 = bitcast i8* %5676 to double*
  %5681 = load double, double* %5680, align 1
  %5682 = getelementptr inbounds i8, i8* %5676, i64 8
  %5683 = bitcast i8* %5682 to i64*
  %5684 = load i64, i64* %5683, align 1
  %5685 = bitcast i8* %5677 to double*
  %5686 = load double, double* %5685, align 1
  %5687 = fadd double %5681, %5686
  %5688 = bitcast i8* %5675 to double*
  store double %5687, double* %5688, align 1
  %5689 = getelementptr inbounds i8, i8* %5675, i64 8
  %5690 = bitcast i8* %5689 to i64*
  store i64 %5684, i64* %5690, align 1
  store %struct.Memory* %loadMem_4b02cc, %struct.Memory** %MEMORY
  %loadMem_4b02d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 33
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %5693 to i64*
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5695 = getelementptr inbounds %struct.GPR, %struct.GPR* %5694, i32 0, i32 7
  %5696 = getelementptr inbounds %struct.Reg, %struct.Reg* %5695, i32 0, i32 0
  %RDX.i355 = bitcast %union.anon* %5696 to i64*
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5698 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5697, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %5698 to %union.vec128_t*
  %5699 = bitcast %union.vec128_t* %XMM1.i to i8*
  %5700 = load i64, i64* %PC.i354
  %5701 = add i64 %5700, 4
  store i64 %5701, i64* %PC.i354
  %5702 = bitcast i8* %5699 to double*
  %5703 = load double, double* %5702, align 1
  %5704 = call double @llvm.trunc.f64(double %5703)
  %5705 = call double @llvm.fabs.f64(double %5704)
  %5706 = fcmp ogt double %5705, 0x41DFFFFFFFC00000
  %5707 = fptosi double %5704 to i32
  %5708 = zext i32 %5707 to i64
  %5709 = select i1 %5706, i64 2147483648, i64 %5708
  store i64 %5709, i64* %RDX.i355, align 8
  store %struct.Memory* %loadMem_4b02d0, %struct.Memory** %MEMORY
  %loadMem_4b02d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5711 = getelementptr inbounds %struct.GPR, %struct.GPR* %5710, i32 0, i32 33
  %5712 = getelementptr inbounds %struct.Reg, %struct.Reg* %5711, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %5712 to i64*
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5714 = getelementptr inbounds %struct.GPR, %struct.GPR* %5713, i32 0, i32 5
  %5715 = getelementptr inbounds %struct.Reg, %struct.Reg* %5714, i32 0, i32 0
  %RCX.i352 = bitcast %union.anon* %5715 to i64*
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5717 = getelementptr inbounds %struct.GPR, %struct.GPR* %5716, i32 0, i32 15
  %5718 = getelementptr inbounds %struct.Reg, %struct.Reg* %5717, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %5718 to i64*
  %5719 = load i64, i64* %RBP.i353
  %5720 = sub i64 %5719, 932
  %5721 = load i64, i64* %PC.i351
  %5722 = add i64 %5721, 7
  store i64 %5722, i64* %PC.i351
  %5723 = inttoptr i64 %5720 to i32*
  %5724 = load i32, i32* %5723
  %5725 = sext i32 %5724 to i64
  store i64 %5725, i64* %RCX.i352, align 8
  store %struct.Memory* %loadMem_4b02d4, %struct.Memory** %MEMORY
  %loadMem_4b02db = load %struct.Memory*, %struct.Memory** %MEMORY
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5727 = getelementptr inbounds %struct.GPR, %struct.GPR* %5726, i32 0, i32 33
  %5728 = getelementptr inbounds %struct.Reg, %struct.Reg* %5727, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %5728 to i64*
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5730 = getelementptr inbounds %struct.GPR, %struct.GPR* %5729, i32 0, i32 5
  %5731 = getelementptr inbounds %struct.Reg, %struct.Reg* %5730, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %5731 to i64*
  %5732 = load i64, i64* %RCX.i350
  %5733 = load i64, i64* %PC.i349
  %5734 = add i64 %5733, 7
  store i64 %5734, i64* %PC.i349
  %5735 = sext i64 %5732 to i128
  %5736 = and i128 %5735, -18446744073709551616
  %5737 = zext i64 %5732 to i128
  %5738 = or i128 %5736, %5737
  %5739 = mul i128 180, %5738
  %5740 = trunc i128 %5739 to i64
  store i64 %5740, i64* %RCX.i350, align 8
  %5741 = sext i64 %5740 to i128
  %5742 = icmp ne i128 %5741, %5739
  %5743 = zext i1 %5742 to i8
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5743, i8* %5744, align 1
  %5745 = trunc i128 %5739 to i32
  %5746 = and i32 %5745, 255
  %5747 = call i32 @llvm.ctpop.i32(i32 %5746)
  %5748 = trunc i32 %5747 to i8
  %5749 = and i8 %5748, 1
  %5750 = xor i8 %5749, 1
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5750, i8* %5751, align 1
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5752, align 1
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5753, align 1
  %5754 = lshr i64 %5740, 63
  %5755 = trunc i64 %5754 to i8
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5755, i8* %5756, align 1
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5743, i8* %5757, align 1
  store %struct.Memory* %loadMem_4b02db, %struct.Memory** %MEMORY
  %loadMem_4b02e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5759 = getelementptr inbounds %struct.GPR, %struct.GPR* %5758, i32 0, i32 33
  %5760 = getelementptr inbounds %struct.Reg, %struct.Reg* %5759, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %5760 to i64*
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5762 = getelementptr inbounds %struct.GPR, %struct.GPR* %5761, i32 0, i32 1
  %5763 = getelementptr inbounds %struct.Reg, %struct.Reg* %5762, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %5763 to i64*
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5765 = getelementptr inbounds %struct.GPR, %struct.GPR* %5764, i32 0, i32 9
  %5766 = getelementptr inbounds %struct.Reg, %struct.Reg* %5765, i32 0, i32 0
  %RSI.i348 = bitcast %union.anon* %5766 to i64*
  %5767 = load i64, i64* %RAX.i347
  %5768 = load i64, i64* %PC.i346
  %5769 = add i64 %5768, 3
  store i64 %5769, i64* %PC.i346
  store i64 %5767, i64* %RSI.i348, align 8
  store %struct.Memory* %loadMem_4b02e2, %struct.Memory** %MEMORY
  %loadMem_4b02e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5771 = getelementptr inbounds %struct.GPR, %struct.GPR* %5770, i32 0, i32 33
  %5772 = getelementptr inbounds %struct.Reg, %struct.Reg* %5771, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %5772 to i64*
  %5773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5774 = getelementptr inbounds %struct.GPR, %struct.GPR* %5773, i32 0, i32 5
  %5775 = getelementptr inbounds %struct.Reg, %struct.Reg* %5774, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %5775 to i64*
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5777 = getelementptr inbounds %struct.GPR, %struct.GPR* %5776, i32 0, i32 9
  %5778 = getelementptr inbounds %struct.Reg, %struct.Reg* %5777, i32 0, i32 0
  %RSI.i345 = bitcast %union.anon* %5778 to i64*
  %5779 = load i64, i64* %RSI.i345
  %5780 = load i64, i64* %RCX.i344
  %5781 = load i64, i64* %PC.i343
  %5782 = add i64 %5781, 3
  store i64 %5782, i64* %PC.i343
  %5783 = add i64 %5780, %5779
  store i64 %5783, i64* %RSI.i345, align 8
  %5784 = icmp ult i64 %5783, %5779
  %5785 = icmp ult i64 %5783, %5780
  %5786 = or i1 %5784, %5785
  %5787 = zext i1 %5786 to i8
  %5788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5787, i8* %5788, align 1
  %5789 = trunc i64 %5783 to i32
  %5790 = and i32 %5789, 255
  %5791 = call i32 @llvm.ctpop.i32(i32 %5790)
  %5792 = trunc i32 %5791 to i8
  %5793 = and i8 %5792, 1
  %5794 = xor i8 %5793, 1
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5794, i8* %5795, align 1
  %5796 = xor i64 %5780, %5779
  %5797 = xor i64 %5796, %5783
  %5798 = lshr i64 %5797, 4
  %5799 = trunc i64 %5798 to i8
  %5800 = and i8 %5799, 1
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5800, i8* %5801, align 1
  %5802 = icmp eq i64 %5783, 0
  %5803 = zext i1 %5802 to i8
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5803, i8* %5804, align 1
  %5805 = lshr i64 %5783, 63
  %5806 = trunc i64 %5805 to i8
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5806, i8* %5807, align 1
  %5808 = lshr i64 %5779, 63
  %5809 = lshr i64 %5780, 63
  %5810 = xor i64 %5805, %5808
  %5811 = xor i64 %5805, %5809
  %5812 = add i64 %5810, %5811
  %5813 = icmp eq i64 %5812, 2
  %5814 = zext i1 %5813 to i8
  %5815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5814, i8* %5815, align 1
  store %struct.Memory* %loadMem_4b02e5, %struct.Memory** %MEMORY
  %loadMem_4b02e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 33
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5818 to i64*
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5820 = getelementptr inbounds %struct.GPR, %struct.GPR* %5819, i32 0, i32 5
  %5821 = getelementptr inbounds %struct.Reg, %struct.Reg* %5820, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %5821 to i64*
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5823 = getelementptr inbounds %struct.GPR, %struct.GPR* %5822, i32 0, i32 15
  %5824 = getelementptr inbounds %struct.Reg, %struct.Reg* %5823, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %5824 to i64*
  %5825 = load i64, i64* %RBP.i342
  %5826 = sub i64 %5825, 16
  %5827 = load i64, i64* %PC.i340
  %5828 = add i64 %5827, 4
  store i64 %5828, i64* %PC.i340
  %5829 = inttoptr i64 %5826 to i32*
  %5830 = load i32, i32* %5829
  %5831 = sext i32 %5830 to i64
  store i64 %5831, i64* %RCX.i341, align 8
  store %struct.Memory* %loadMem_4b02e8, %struct.Memory** %MEMORY
  %loadMem_4b02ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5833 = getelementptr inbounds %struct.GPR, %struct.GPR* %5832, i32 0, i32 33
  %5834 = getelementptr inbounds %struct.Reg, %struct.Reg* %5833, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5834 to i64*
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5836 = getelementptr inbounds %struct.GPR, %struct.GPR* %5835, i32 0, i32 5
  %5837 = getelementptr inbounds %struct.Reg, %struct.Reg* %5836, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %5837 to i64*
  %5838 = load i64, i64* %RCX.i339
  %5839 = load i64, i64* %PC.i338
  %5840 = add i64 %5839, 4
  store i64 %5840, i64* %PC.i338
  %5841 = sext i64 %5838 to i128
  %5842 = and i128 %5841, -18446744073709551616
  %5843 = zext i64 %5838 to i128
  %5844 = or i128 %5842, %5843
  %5845 = mul i128 12, %5844
  %5846 = trunc i128 %5845 to i64
  store i64 %5846, i64* %RCX.i339, align 8
  %5847 = sext i64 %5846 to i128
  %5848 = icmp ne i128 %5847, %5845
  %5849 = zext i1 %5848 to i8
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5849, i8* %5850, align 1
  %5851 = trunc i128 %5845 to i32
  %5852 = and i32 %5851, 255
  %5853 = call i32 @llvm.ctpop.i32(i32 %5852)
  %5854 = trunc i32 %5853 to i8
  %5855 = and i8 %5854, 1
  %5856 = xor i8 %5855, 1
  %5857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5856, i8* %5857, align 1
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5858, align 1
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5859, align 1
  %5860 = lshr i64 %5846, 63
  %5861 = trunc i64 %5860 to i8
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5861, i8* %5862, align 1
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5849, i8* %5863, align 1
  store %struct.Memory* %loadMem_4b02ec, %struct.Memory** %MEMORY
  %loadMem_4b02f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5865 = getelementptr inbounds %struct.GPR, %struct.GPR* %5864, i32 0, i32 33
  %5866 = getelementptr inbounds %struct.Reg, %struct.Reg* %5865, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %5866 to i64*
  %5867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5868 = getelementptr inbounds %struct.GPR, %struct.GPR* %5867, i32 0, i32 5
  %5869 = getelementptr inbounds %struct.Reg, %struct.Reg* %5868, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %5869 to i64*
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5871 = getelementptr inbounds %struct.GPR, %struct.GPR* %5870, i32 0, i32 9
  %5872 = getelementptr inbounds %struct.Reg, %struct.Reg* %5871, i32 0, i32 0
  %RSI.i337 = bitcast %union.anon* %5872 to i64*
  %5873 = load i64, i64* %RSI.i337
  %5874 = load i64, i64* %RCX.i336
  %5875 = load i64, i64* %PC.i335
  %5876 = add i64 %5875, 3
  store i64 %5876, i64* %PC.i335
  %5877 = add i64 %5874, %5873
  store i64 %5877, i64* %RSI.i337, align 8
  %5878 = icmp ult i64 %5877, %5873
  %5879 = icmp ult i64 %5877, %5874
  %5880 = or i1 %5878, %5879
  %5881 = zext i1 %5880 to i8
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5881, i8* %5882, align 1
  %5883 = trunc i64 %5877 to i32
  %5884 = and i32 %5883, 255
  %5885 = call i32 @llvm.ctpop.i32(i32 %5884)
  %5886 = trunc i32 %5885 to i8
  %5887 = and i8 %5886, 1
  %5888 = xor i8 %5887, 1
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5888, i8* %5889, align 1
  %5890 = xor i64 %5874, %5873
  %5891 = xor i64 %5890, %5877
  %5892 = lshr i64 %5891, 4
  %5893 = trunc i64 %5892 to i8
  %5894 = and i8 %5893, 1
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5894, i8* %5895, align 1
  %5896 = icmp eq i64 %5877, 0
  %5897 = zext i1 %5896 to i8
  %5898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5897, i8* %5898, align 1
  %5899 = lshr i64 %5877, 63
  %5900 = trunc i64 %5899 to i8
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5900, i8* %5901, align 1
  %5902 = lshr i64 %5873, 63
  %5903 = lshr i64 %5874, 63
  %5904 = xor i64 %5899, %5902
  %5905 = xor i64 %5899, %5903
  %5906 = add i64 %5904, %5905
  %5907 = icmp eq i64 %5906, 2
  %5908 = zext i1 %5907 to i8
  %5909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5908, i8* %5909, align 1
  store %struct.Memory* %loadMem_4b02f0, %struct.Memory** %MEMORY
  %loadMem_4b02f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 33
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %5912 to i64*
  %5913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5914 = getelementptr inbounds %struct.GPR, %struct.GPR* %5913, i32 0, i32 7
  %5915 = getelementptr inbounds %struct.Reg, %struct.Reg* %5914, i32 0, i32 0
  %EDX.i333 = bitcast %union.anon* %5915 to i32*
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5917 = getelementptr inbounds %struct.GPR, %struct.GPR* %5916, i32 0, i32 9
  %5918 = getelementptr inbounds %struct.Reg, %struct.Reg* %5917, i32 0, i32 0
  %RSI.i334 = bitcast %union.anon* %5918 to i64*
  %5919 = load i64, i64* %RSI.i334
  %5920 = load i32, i32* %EDX.i333
  %5921 = zext i32 %5920 to i64
  %5922 = load i64, i64* %PC.i332
  %5923 = add i64 %5922, 2
  store i64 %5923, i64* %PC.i332
  %5924 = inttoptr i64 %5919 to i32*
  store i32 %5920, i32* %5924
  store %struct.Memory* %loadMem_4b02f3, %struct.Memory** %MEMORY
  %loadMem_4b02f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5926 = getelementptr inbounds %struct.GPR, %struct.GPR* %5925, i32 0, i32 33
  %5927 = getelementptr inbounds %struct.Reg, %struct.Reg* %5926, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5927 to i64*
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 5
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %5930 to i64*
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5932 = getelementptr inbounds %struct.GPR, %struct.GPR* %5931, i32 0, i32 15
  %5933 = getelementptr inbounds %struct.Reg, %struct.Reg* %5932, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %5933 to i64*
  %5934 = load i64, i64* %RBP.i331
  %5935 = sub i64 %5934, 932
  %5936 = load i64, i64* %PC.i329
  %5937 = add i64 %5936, 7
  store i64 %5937, i64* %PC.i329
  %5938 = inttoptr i64 %5935 to i32*
  %5939 = load i32, i32* %5938
  %5940 = sext i32 %5939 to i64
  store i64 %5940, i64* %RCX.i330, align 8
  store %struct.Memory* %loadMem_4b02f5, %struct.Memory** %MEMORY
  %loadMem_4b02fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5942 = getelementptr inbounds %struct.GPR, %struct.GPR* %5941, i32 0, i32 33
  %5943 = getelementptr inbounds %struct.Reg, %struct.Reg* %5942, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %5943 to i64*
  %5944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5945 = getelementptr inbounds %struct.GPR, %struct.GPR* %5944, i32 0, i32 5
  %5946 = getelementptr inbounds %struct.Reg, %struct.Reg* %5945, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %5946 to i64*
  %5947 = load i64, i64* %RCX.i328
  %5948 = load i64, i64* %PC.i327
  %5949 = add i64 %5948, 7
  store i64 %5949, i64* %PC.i327
  %5950 = sext i64 %5947 to i128
  %5951 = and i128 %5950, -18446744073709551616
  %5952 = zext i64 %5947 to i128
  %5953 = or i128 %5951, %5952
  %5954 = mul i128 180, %5953
  %5955 = trunc i128 %5954 to i64
  store i64 %5955, i64* %RCX.i328, align 8
  %5956 = sext i64 %5955 to i128
  %5957 = icmp ne i128 %5956, %5954
  %5958 = zext i1 %5957 to i8
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5958, i8* %5959, align 1
  %5960 = trunc i128 %5954 to i32
  %5961 = and i32 %5960, 255
  %5962 = call i32 @llvm.ctpop.i32(i32 %5961)
  %5963 = trunc i32 %5962 to i8
  %5964 = and i8 %5963, 1
  %5965 = xor i8 %5964, 1
  %5966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5965, i8* %5966, align 1
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5967, align 1
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5968, align 1
  %5969 = lshr i64 %5955, 63
  %5970 = trunc i64 %5969 to i8
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5970, i8* %5971, align 1
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5958, i8* %5972, align 1
  store %struct.Memory* %loadMem_4b02fc, %struct.Memory** %MEMORY
  %loadMem_4b0303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5974 = getelementptr inbounds %struct.GPR, %struct.GPR* %5973, i32 0, i32 33
  %5975 = getelementptr inbounds %struct.Reg, %struct.Reg* %5974, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %5975 to i64*
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 1
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %5978 to i64*
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 5
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %5981 to i64*
  %5982 = load i64, i64* %RAX.i325
  %5983 = load i64, i64* %RCX.i326
  %5984 = load i64, i64* %PC.i324
  %5985 = add i64 %5984, 3
  store i64 %5985, i64* %PC.i324
  %5986 = add i64 %5983, %5982
  store i64 %5986, i64* %RAX.i325, align 8
  %5987 = icmp ult i64 %5986, %5982
  %5988 = icmp ult i64 %5986, %5983
  %5989 = or i1 %5987, %5988
  %5990 = zext i1 %5989 to i8
  %5991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5990, i8* %5991, align 1
  %5992 = trunc i64 %5986 to i32
  %5993 = and i32 %5992, 255
  %5994 = call i32 @llvm.ctpop.i32(i32 %5993)
  %5995 = trunc i32 %5994 to i8
  %5996 = and i8 %5995, 1
  %5997 = xor i8 %5996, 1
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5997, i8* %5998, align 1
  %5999 = xor i64 %5983, %5982
  %6000 = xor i64 %5999, %5986
  %6001 = lshr i64 %6000, 4
  %6002 = trunc i64 %6001 to i8
  %6003 = and i8 %6002, 1
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6003, i8* %6004, align 1
  %6005 = icmp eq i64 %5986, 0
  %6006 = zext i1 %6005 to i8
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6006, i8* %6007, align 1
  %6008 = lshr i64 %5986, 63
  %6009 = trunc i64 %6008 to i8
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6009, i8* %6010, align 1
  %6011 = lshr i64 %5982, 63
  %6012 = lshr i64 %5983, 63
  %6013 = xor i64 %6008, %6011
  %6014 = xor i64 %6008, %6012
  %6015 = add i64 %6013, %6014
  %6016 = icmp eq i64 %6015, 2
  %6017 = zext i1 %6016 to i8
  %6018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6017, i8* %6018, align 1
  store %struct.Memory* %loadMem_4b0303, %struct.Memory** %MEMORY
  %loadMem_4b0306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6020 = getelementptr inbounds %struct.GPR, %struct.GPR* %6019, i32 0, i32 33
  %6021 = getelementptr inbounds %struct.Reg, %struct.Reg* %6020, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %6021 to i64*
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6023 = getelementptr inbounds %struct.GPR, %struct.GPR* %6022, i32 0, i32 5
  %6024 = getelementptr inbounds %struct.Reg, %struct.Reg* %6023, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %6024 to i64*
  %6025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6026 = getelementptr inbounds %struct.GPR, %struct.GPR* %6025, i32 0, i32 15
  %6027 = getelementptr inbounds %struct.Reg, %struct.Reg* %6026, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %6027 to i64*
  %6028 = load i64, i64* %RBP.i323
  %6029 = sub i64 %6028, 16
  %6030 = load i64, i64* %PC.i321
  %6031 = add i64 %6030, 4
  store i64 %6031, i64* %PC.i321
  %6032 = inttoptr i64 %6029 to i32*
  %6033 = load i32, i32* %6032
  %6034 = sext i32 %6033 to i64
  store i64 %6034, i64* %RCX.i322, align 8
  store %struct.Memory* %loadMem_4b0306, %struct.Memory** %MEMORY
  %loadMem_4b030a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6036 = getelementptr inbounds %struct.GPR, %struct.GPR* %6035, i32 0, i32 33
  %6037 = getelementptr inbounds %struct.Reg, %struct.Reg* %6036, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %6037 to i64*
  %6038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6039 = getelementptr inbounds %struct.GPR, %struct.GPR* %6038, i32 0, i32 5
  %6040 = getelementptr inbounds %struct.Reg, %struct.Reg* %6039, i32 0, i32 0
  %RCX.i320 = bitcast %union.anon* %6040 to i64*
  %6041 = load i64, i64* %RCX.i320
  %6042 = load i64, i64* %PC.i319
  %6043 = add i64 %6042, 4
  store i64 %6043, i64* %PC.i319
  %6044 = sext i64 %6041 to i128
  %6045 = and i128 %6044, -18446744073709551616
  %6046 = zext i64 %6041 to i128
  %6047 = or i128 %6045, %6046
  %6048 = mul i128 12, %6047
  %6049 = trunc i128 %6048 to i64
  store i64 %6049, i64* %RCX.i320, align 8
  %6050 = sext i64 %6049 to i128
  %6051 = icmp ne i128 %6050, %6048
  %6052 = zext i1 %6051 to i8
  %6053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6052, i8* %6053, align 1
  %6054 = trunc i128 %6048 to i32
  %6055 = and i32 %6054, 255
  %6056 = call i32 @llvm.ctpop.i32(i32 %6055)
  %6057 = trunc i32 %6056 to i8
  %6058 = and i8 %6057, 1
  %6059 = xor i8 %6058, 1
  %6060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6059, i8* %6060, align 1
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6061, align 1
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6062, align 1
  %6063 = lshr i64 %6049, 63
  %6064 = trunc i64 %6063 to i8
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6064, i8* %6065, align 1
  %6066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6052, i8* %6066, align 1
  store %struct.Memory* %loadMem_4b030a, %struct.Memory** %MEMORY
  %loadMem_4b030e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6068 = getelementptr inbounds %struct.GPR, %struct.GPR* %6067, i32 0, i32 33
  %6069 = getelementptr inbounds %struct.Reg, %struct.Reg* %6068, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %6069 to i64*
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6071 = getelementptr inbounds %struct.GPR, %struct.GPR* %6070, i32 0, i32 1
  %6072 = getelementptr inbounds %struct.Reg, %struct.Reg* %6071, i32 0, i32 0
  %RAX.i317 = bitcast %union.anon* %6072 to i64*
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6074 = getelementptr inbounds %struct.GPR, %struct.GPR* %6073, i32 0, i32 5
  %6075 = getelementptr inbounds %struct.Reg, %struct.Reg* %6074, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %6075 to i64*
  %6076 = load i64, i64* %RAX.i317
  %6077 = load i64, i64* %RCX.i318
  %6078 = load i64, i64* %PC.i316
  %6079 = add i64 %6078, 3
  store i64 %6079, i64* %PC.i316
  %6080 = add i64 %6077, %6076
  store i64 %6080, i64* %RAX.i317, align 8
  %6081 = icmp ult i64 %6080, %6076
  %6082 = icmp ult i64 %6080, %6077
  %6083 = or i1 %6081, %6082
  %6084 = zext i1 %6083 to i8
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6084, i8* %6085, align 1
  %6086 = trunc i64 %6080 to i32
  %6087 = and i32 %6086, 255
  %6088 = call i32 @llvm.ctpop.i32(i32 %6087)
  %6089 = trunc i32 %6088 to i8
  %6090 = and i8 %6089, 1
  %6091 = xor i8 %6090, 1
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6091, i8* %6092, align 1
  %6093 = xor i64 %6077, %6076
  %6094 = xor i64 %6093, %6080
  %6095 = lshr i64 %6094, 4
  %6096 = trunc i64 %6095 to i8
  %6097 = and i8 %6096, 1
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6097, i8* %6098, align 1
  %6099 = icmp eq i64 %6080, 0
  %6100 = zext i1 %6099 to i8
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6100, i8* %6101, align 1
  %6102 = lshr i64 %6080, 63
  %6103 = trunc i64 %6102 to i8
  %6104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6103, i8* %6104, align 1
  %6105 = lshr i64 %6076, 63
  %6106 = lshr i64 %6077, 63
  %6107 = xor i64 %6102, %6105
  %6108 = xor i64 %6102, %6106
  %6109 = add i64 %6107, %6108
  %6110 = icmp eq i64 %6109, 2
  %6111 = zext i1 %6110 to i8
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6111, i8* %6112, align 1
  store %struct.Memory* %loadMem_4b030e, %struct.Memory** %MEMORY
  %loadMem_4b0311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6114 = getelementptr inbounds %struct.GPR, %struct.GPR* %6113, i32 0, i32 33
  %6115 = getelementptr inbounds %struct.Reg, %struct.Reg* %6114, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %6115 to i64*
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6117 = getelementptr inbounds %struct.GPR, %struct.GPR* %6116, i32 0, i32 1
  %6118 = getelementptr inbounds %struct.Reg, %struct.Reg* %6117, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %6118 to i64*
  %6119 = load i64, i64* %RAX.i315
  %6120 = load i64, i64* %PC.i314
  %6121 = add i64 %6120, 3
  store i64 %6121, i64* %PC.i314
  %6122 = inttoptr i64 %6119 to i32*
  %6123 = load i32, i32* %6122
  %6124 = sub i32 %6123, -128
  %6125 = icmp ult i32 %6123, -128
  %6126 = zext i1 %6125 to i8
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6126, i8* %6127, align 1
  %6128 = and i32 %6124, 255
  %6129 = call i32 @llvm.ctpop.i32(i32 %6128)
  %6130 = trunc i32 %6129 to i8
  %6131 = and i8 %6130, 1
  %6132 = xor i8 %6131, 1
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6132, i8* %6133, align 1
  %6134 = xor i32 %6123, -128
  %6135 = xor i32 %6134, %6124
  %6136 = lshr i32 %6135, 4
  %6137 = trunc i32 %6136 to i8
  %6138 = and i8 %6137, 1
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6138, i8* %6139, align 1
  %6140 = icmp eq i32 %6124, 0
  %6141 = zext i1 %6140 to i8
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6141, i8* %6142, align 1
  %6143 = lshr i32 %6124, 31
  %6144 = trunc i32 %6143 to i8
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6144, i8* %6145, align 1
  %6146 = lshr i32 %6123, 31
  %6147 = xor i32 %6146, 1
  %6148 = xor i32 %6143, %6146
  %6149 = add i32 %6148, %6147
  %6150 = icmp eq i32 %6149, 2
  %6151 = zext i1 %6150 to i8
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6151, i8* %6152, align 1
  store %struct.Memory* %loadMem_4b0311, %struct.Memory** %MEMORY
  %loadMem_4b0314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6154 = getelementptr inbounds %struct.GPR, %struct.GPR* %6153, i32 0, i32 33
  %6155 = getelementptr inbounds %struct.Reg, %struct.Reg* %6154, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %6155 to i64*
  %6156 = load i64, i64* %PC.i313
  %6157 = add i64 %6156, 22
  %6158 = load i64, i64* %PC.i313
  %6159 = add i64 %6158, 6
  %6160 = load i64, i64* %PC.i313
  %6161 = add i64 %6160, 6
  store i64 %6161, i64* %PC.i313
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6163 = load i8, i8* %6162, align 1
  %6164 = icmp ne i8 %6163, 0
  %6165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6166 = load i8, i8* %6165, align 1
  %6167 = icmp ne i8 %6166, 0
  %6168 = xor i1 %6164, %6167
  %6169 = xor i1 %6168, true
  %6170 = zext i1 %6169 to i8
  store i8 %6170, i8* %BRANCH_TAKEN, align 1
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6172 = select i1 %6168, i64 %6159, i64 %6157
  store i64 %6172, i64* %6171, align 8
  store %struct.Memory* %loadMem_4b0314, %struct.Memory** %MEMORY
  %loadBr_4b0314 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0314 = icmp eq i8 %loadBr_4b0314, 1
  br i1 %cmpBr_4b0314, label %block_.L_4b032a, label %block_4b031a

block_4b031a:                                     ; preds = %block_.L_4b028c
  %loadMem_4b031a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 33
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %6175 to i64*
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 1
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %6178 to i64*
  %6179 = load i64, i64* %PC.i311
  %6180 = add i64 %6179, 5
  store i64 %6180, i64* %PC.i311
  store i64 4294967168, i64* %RAX.i312, align 8
  store %struct.Memory* %loadMem_4b031a, %struct.Memory** %MEMORY
  %loadMem_4b031f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6182 = getelementptr inbounds %struct.GPR, %struct.GPR* %6181, i32 0, i32 33
  %6183 = getelementptr inbounds %struct.Reg, %struct.Reg* %6182, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %6183 to i64*
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6185 = getelementptr inbounds %struct.GPR, %struct.GPR* %6184, i32 0, i32 1
  %6186 = getelementptr inbounds %struct.Reg, %struct.Reg* %6185, i32 0, i32 0
  %EAX.i309 = bitcast %union.anon* %6186 to i32*
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6188 = getelementptr inbounds %struct.GPR, %struct.GPR* %6187, i32 0, i32 15
  %6189 = getelementptr inbounds %struct.Reg, %struct.Reg* %6188, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %6189 to i64*
  %6190 = load i64, i64* %RBP.i310
  %6191 = sub i64 %6190, 952
  %6192 = load i32, i32* %EAX.i309
  %6193 = zext i32 %6192 to i64
  %6194 = load i64, i64* %PC.i308
  %6195 = add i64 %6194, 6
  store i64 %6195, i64* %PC.i308
  %6196 = inttoptr i64 %6191 to i32*
  store i32 %6192, i32* %6196
  store %struct.Memory* %loadMem_4b031f, %struct.Memory** %MEMORY
  %loadMem_4b0325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6198 = getelementptr inbounds %struct.GPR, %struct.GPR* %6197, i32 0, i32 33
  %6199 = getelementptr inbounds %struct.Reg, %struct.Reg* %6198, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %6199 to i64*
  %6200 = load i64, i64* %PC.i307
  %6201 = add i64 %6200, 120
  %6202 = load i64, i64* %PC.i307
  %6203 = add i64 %6202, 5
  store i64 %6203, i64* %PC.i307
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6201, i64* %6204, align 8
  store %struct.Memory* %loadMem_4b0325, %struct.Memory** %MEMORY
  br label %block_.L_4b039d

block_.L_4b032a:                                  ; preds = %block_.L_4b028c
  %loadMem_4b032a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6206 = getelementptr inbounds %struct.GPR, %struct.GPR* %6205, i32 0, i32 33
  %6207 = getelementptr inbounds %struct.Reg, %struct.Reg* %6206, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %6207 to i64*
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 1
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %6210 to i64*
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6212 = getelementptr inbounds %struct.GPR, %struct.GPR* %6211, i32 0, i32 15
  %6213 = getelementptr inbounds %struct.Reg, %struct.Reg* %6212, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %6213 to i64*
  %6214 = load i64, i64* %RBP.i306
  %6215 = sub i64 %6214, 928
  %6216 = load i64, i64* %PC.i304
  %6217 = add i64 %6216, 7
  store i64 %6217, i64* %PC.i304
  store i64 %6215, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_4b032a, %struct.Memory** %MEMORY
  %loadMem_4b0331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 33
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %6220 to i64*
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 5
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %6223 to i64*
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6225 = getelementptr inbounds %struct.GPR, %struct.GPR* %6224, i32 0, i32 15
  %6226 = getelementptr inbounds %struct.Reg, %struct.Reg* %6225, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %6226 to i64*
  %6227 = load i64, i64* %RBP.i303
  %6228 = sub i64 %6227, 932
  %6229 = load i64, i64* %PC.i301
  %6230 = add i64 %6229, 7
  store i64 %6230, i64* %PC.i301
  %6231 = inttoptr i64 %6228 to i32*
  %6232 = load i32, i32* %6231
  %6233 = sext i32 %6232 to i64
  store i64 %6233, i64* %RCX.i302, align 8
  store %struct.Memory* %loadMem_4b0331, %struct.Memory** %MEMORY
  %loadMem_4b0338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6235 = getelementptr inbounds %struct.GPR, %struct.GPR* %6234, i32 0, i32 33
  %6236 = getelementptr inbounds %struct.Reg, %struct.Reg* %6235, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %6236 to i64*
  %6237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6238 = getelementptr inbounds %struct.GPR, %struct.GPR* %6237, i32 0, i32 5
  %6239 = getelementptr inbounds %struct.Reg, %struct.Reg* %6238, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %6239 to i64*
  %6240 = load i64, i64* %RCX.i300
  %6241 = load i64, i64* %PC.i299
  %6242 = add i64 %6241, 7
  store i64 %6242, i64* %PC.i299
  %6243 = sext i64 %6240 to i128
  %6244 = and i128 %6243, -18446744073709551616
  %6245 = zext i64 %6240 to i128
  %6246 = or i128 %6244, %6245
  %6247 = mul i128 180, %6246
  %6248 = trunc i128 %6247 to i64
  store i64 %6248, i64* %RCX.i300, align 8
  %6249 = sext i64 %6248 to i128
  %6250 = icmp ne i128 %6249, %6247
  %6251 = zext i1 %6250 to i8
  %6252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6251, i8* %6252, align 1
  %6253 = trunc i128 %6247 to i32
  %6254 = and i32 %6253, 255
  %6255 = call i32 @llvm.ctpop.i32(i32 %6254)
  %6256 = trunc i32 %6255 to i8
  %6257 = and i8 %6256, 1
  %6258 = xor i8 %6257, 1
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6258, i8* %6259, align 1
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6260, align 1
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6261, align 1
  %6262 = lshr i64 %6248, 63
  %6263 = trunc i64 %6262 to i8
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6263, i8* %6264, align 1
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6251, i8* %6265, align 1
  store %struct.Memory* %loadMem_4b0338, %struct.Memory** %MEMORY
  %loadMem_4b033f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6267 = getelementptr inbounds %struct.GPR, %struct.GPR* %6266, i32 0, i32 33
  %6268 = getelementptr inbounds %struct.Reg, %struct.Reg* %6267, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %6268 to i64*
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6270 = getelementptr inbounds %struct.GPR, %struct.GPR* %6269, i32 0, i32 1
  %6271 = getelementptr inbounds %struct.Reg, %struct.Reg* %6270, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %6271 to i64*
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6273 = getelementptr inbounds %struct.GPR, %struct.GPR* %6272, i32 0, i32 5
  %6274 = getelementptr inbounds %struct.Reg, %struct.Reg* %6273, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %6274 to i64*
  %6275 = load i64, i64* %RAX.i297
  %6276 = load i64, i64* %RCX.i298
  %6277 = load i64, i64* %PC.i296
  %6278 = add i64 %6277, 3
  store i64 %6278, i64* %PC.i296
  %6279 = add i64 %6276, %6275
  store i64 %6279, i64* %RAX.i297, align 8
  %6280 = icmp ult i64 %6279, %6275
  %6281 = icmp ult i64 %6279, %6276
  %6282 = or i1 %6280, %6281
  %6283 = zext i1 %6282 to i8
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6283, i8* %6284, align 1
  %6285 = trunc i64 %6279 to i32
  %6286 = and i32 %6285, 255
  %6287 = call i32 @llvm.ctpop.i32(i32 %6286)
  %6288 = trunc i32 %6287 to i8
  %6289 = and i8 %6288, 1
  %6290 = xor i8 %6289, 1
  %6291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6290, i8* %6291, align 1
  %6292 = xor i64 %6276, %6275
  %6293 = xor i64 %6292, %6279
  %6294 = lshr i64 %6293, 4
  %6295 = trunc i64 %6294 to i8
  %6296 = and i8 %6295, 1
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6296, i8* %6297, align 1
  %6298 = icmp eq i64 %6279, 0
  %6299 = zext i1 %6298 to i8
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6299, i8* %6300, align 1
  %6301 = lshr i64 %6279, 63
  %6302 = trunc i64 %6301 to i8
  %6303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6302, i8* %6303, align 1
  %6304 = lshr i64 %6275, 63
  %6305 = lshr i64 %6276, 63
  %6306 = xor i64 %6301, %6304
  %6307 = xor i64 %6301, %6305
  %6308 = add i64 %6306, %6307
  %6309 = icmp eq i64 %6308, 2
  %6310 = zext i1 %6309 to i8
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6310, i8* %6311, align 1
  store %struct.Memory* %loadMem_4b033f, %struct.Memory** %MEMORY
  %loadMem_4b0342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6313 = getelementptr inbounds %struct.GPR, %struct.GPR* %6312, i32 0, i32 33
  %6314 = getelementptr inbounds %struct.Reg, %struct.Reg* %6313, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %6314 to i64*
  %6315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6316 = getelementptr inbounds %struct.GPR, %struct.GPR* %6315, i32 0, i32 5
  %6317 = getelementptr inbounds %struct.Reg, %struct.Reg* %6316, i32 0, i32 0
  %RCX.i294 = bitcast %union.anon* %6317 to i64*
  %6318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6319 = getelementptr inbounds %struct.GPR, %struct.GPR* %6318, i32 0, i32 15
  %6320 = getelementptr inbounds %struct.Reg, %struct.Reg* %6319, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %6320 to i64*
  %6321 = load i64, i64* %RBP.i295
  %6322 = sub i64 %6321, 16
  %6323 = load i64, i64* %PC.i293
  %6324 = add i64 %6323, 4
  store i64 %6324, i64* %PC.i293
  %6325 = inttoptr i64 %6322 to i32*
  %6326 = load i32, i32* %6325
  %6327 = sext i32 %6326 to i64
  store i64 %6327, i64* %RCX.i294, align 8
  store %struct.Memory* %loadMem_4b0342, %struct.Memory** %MEMORY
  %loadMem_4b0346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6329 = getelementptr inbounds %struct.GPR, %struct.GPR* %6328, i32 0, i32 33
  %6330 = getelementptr inbounds %struct.Reg, %struct.Reg* %6329, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %6330 to i64*
  %6331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6332 = getelementptr inbounds %struct.GPR, %struct.GPR* %6331, i32 0, i32 5
  %6333 = getelementptr inbounds %struct.Reg, %struct.Reg* %6332, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %6333 to i64*
  %6334 = load i64, i64* %RCX.i292
  %6335 = load i64, i64* %PC.i291
  %6336 = add i64 %6335, 4
  store i64 %6336, i64* %PC.i291
  %6337 = sext i64 %6334 to i128
  %6338 = and i128 %6337, -18446744073709551616
  %6339 = zext i64 %6334 to i128
  %6340 = or i128 %6338, %6339
  %6341 = mul i128 12, %6340
  %6342 = trunc i128 %6341 to i64
  store i64 %6342, i64* %RCX.i292, align 8
  %6343 = sext i64 %6342 to i128
  %6344 = icmp ne i128 %6343, %6341
  %6345 = zext i1 %6344 to i8
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6345, i8* %6346, align 1
  %6347 = trunc i128 %6341 to i32
  %6348 = and i32 %6347, 255
  %6349 = call i32 @llvm.ctpop.i32(i32 %6348)
  %6350 = trunc i32 %6349 to i8
  %6351 = and i8 %6350, 1
  %6352 = xor i8 %6351, 1
  %6353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6352, i8* %6353, align 1
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6354, align 1
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6355, align 1
  %6356 = lshr i64 %6342, 63
  %6357 = trunc i64 %6356 to i8
  %6358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6357, i8* %6358, align 1
  %6359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6345, i8* %6359, align 1
  store %struct.Memory* %loadMem_4b0346, %struct.Memory** %MEMORY
  %loadMem_4b034a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6361 = getelementptr inbounds %struct.GPR, %struct.GPR* %6360, i32 0, i32 33
  %6362 = getelementptr inbounds %struct.Reg, %struct.Reg* %6361, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %6362 to i64*
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6364 = getelementptr inbounds %struct.GPR, %struct.GPR* %6363, i32 0, i32 1
  %6365 = getelementptr inbounds %struct.Reg, %struct.Reg* %6364, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %6365 to i64*
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6367 = getelementptr inbounds %struct.GPR, %struct.GPR* %6366, i32 0, i32 5
  %6368 = getelementptr inbounds %struct.Reg, %struct.Reg* %6367, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %6368 to i64*
  %6369 = load i64, i64* %RAX.i289
  %6370 = load i64, i64* %RCX.i290
  %6371 = load i64, i64* %PC.i288
  %6372 = add i64 %6371, 3
  store i64 %6372, i64* %PC.i288
  %6373 = add i64 %6370, %6369
  store i64 %6373, i64* %RAX.i289, align 8
  %6374 = icmp ult i64 %6373, %6369
  %6375 = icmp ult i64 %6373, %6370
  %6376 = or i1 %6374, %6375
  %6377 = zext i1 %6376 to i8
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6377, i8* %6378, align 1
  %6379 = trunc i64 %6373 to i32
  %6380 = and i32 %6379, 255
  %6381 = call i32 @llvm.ctpop.i32(i32 %6380)
  %6382 = trunc i32 %6381 to i8
  %6383 = and i8 %6382, 1
  %6384 = xor i8 %6383, 1
  %6385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6384, i8* %6385, align 1
  %6386 = xor i64 %6370, %6369
  %6387 = xor i64 %6386, %6373
  %6388 = lshr i64 %6387, 4
  %6389 = trunc i64 %6388 to i8
  %6390 = and i8 %6389, 1
  %6391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6390, i8* %6391, align 1
  %6392 = icmp eq i64 %6373, 0
  %6393 = zext i1 %6392 to i8
  %6394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6393, i8* %6394, align 1
  %6395 = lshr i64 %6373, 63
  %6396 = trunc i64 %6395 to i8
  %6397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6396, i8* %6397, align 1
  %6398 = lshr i64 %6369, 63
  %6399 = lshr i64 %6370, 63
  %6400 = xor i64 %6395, %6398
  %6401 = xor i64 %6395, %6399
  %6402 = add i64 %6400, %6401
  %6403 = icmp eq i64 %6402, 2
  %6404 = zext i1 %6403 to i8
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6404, i8* %6405, align 1
  store %struct.Memory* %loadMem_4b034a, %struct.Memory** %MEMORY
  %loadMem_4b034d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6407 = getelementptr inbounds %struct.GPR, %struct.GPR* %6406, i32 0, i32 33
  %6408 = getelementptr inbounds %struct.Reg, %struct.Reg* %6407, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %6408 to i64*
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6410 = getelementptr inbounds %struct.GPR, %struct.GPR* %6409, i32 0, i32 1
  %6411 = getelementptr inbounds %struct.Reg, %struct.Reg* %6410, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %6411 to i64*
  %6412 = load i64, i64* %RAX.i287
  %6413 = load i64, i64* %PC.i286
  %6414 = add i64 %6413, 3
  store i64 %6414, i64* %PC.i286
  %6415 = inttoptr i64 %6412 to i32*
  %6416 = load i32, i32* %6415
  %6417 = sub i32 %6416, 127
  %6418 = icmp ult i32 %6416, 127
  %6419 = zext i1 %6418 to i8
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6419, i8* %6420, align 1
  %6421 = and i32 %6417, 255
  %6422 = call i32 @llvm.ctpop.i32(i32 %6421)
  %6423 = trunc i32 %6422 to i8
  %6424 = and i8 %6423, 1
  %6425 = xor i8 %6424, 1
  %6426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6425, i8* %6426, align 1
  %6427 = xor i32 %6416, 127
  %6428 = xor i32 %6427, %6417
  %6429 = lshr i32 %6428, 4
  %6430 = trunc i32 %6429 to i8
  %6431 = and i8 %6430, 1
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6431, i8* %6432, align 1
  %6433 = icmp eq i32 %6417, 0
  %6434 = zext i1 %6433 to i8
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6434, i8* %6435, align 1
  %6436 = lshr i32 %6417, 31
  %6437 = trunc i32 %6436 to i8
  %6438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6437, i8* %6438, align 1
  %6439 = lshr i32 %6416, 31
  %6440 = xor i32 %6436, %6439
  %6441 = add i32 %6440, %6439
  %6442 = icmp eq i32 %6441, 2
  %6443 = zext i1 %6442 to i8
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6443, i8* %6444, align 1
  store %struct.Memory* %loadMem_4b034d, %struct.Memory** %MEMORY
  %loadMem_4b0350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6446 = getelementptr inbounds %struct.GPR, %struct.GPR* %6445, i32 0, i32 33
  %6447 = getelementptr inbounds %struct.Reg, %struct.Reg* %6446, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %6447 to i64*
  %6448 = load i64, i64* %PC.i285
  %6449 = add i64 %6448, 22
  %6450 = load i64, i64* %PC.i285
  %6451 = add i64 %6450, 6
  %6452 = load i64, i64* %PC.i285
  %6453 = add i64 %6452, 6
  store i64 %6453, i64* %PC.i285
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6455 = load i8, i8* %6454, align 1
  %6456 = icmp ne i8 %6455, 0
  %6457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6458 = load i8, i8* %6457, align 1
  %6459 = icmp ne i8 %6458, 0
  %6460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6461 = load i8, i8* %6460, align 1
  %6462 = icmp ne i8 %6461, 0
  %6463 = xor i1 %6459, %6462
  %6464 = or i1 %6456, %6463
  %6465 = zext i1 %6464 to i8
  store i8 %6465, i8* %BRANCH_TAKEN, align 1
  %6466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6467 = select i1 %6464, i64 %6449, i64 %6451
  store i64 %6467, i64* %6466, align 8
  store %struct.Memory* %loadMem_4b0350, %struct.Memory** %MEMORY
  %loadBr_4b0350 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0350 = icmp eq i8 %loadBr_4b0350, 1
  br i1 %cmpBr_4b0350, label %block_.L_4b0366, label %block_4b0356

block_4b0356:                                     ; preds = %block_.L_4b032a
  %loadMem_4b0356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6469 = getelementptr inbounds %struct.GPR, %struct.GPR* %6468, i32 0, i32 33
  %6470 = getelementptr inbounds %struct.Reg, %struct.Reg* %6469, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %6470 to i64*
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6472 = getelementptr inbounds %struct.GPR, %struct.GPR* %6471, i32 0, i32 1
  %6473 = getelementptr inbounds %struct.Reg, %struct.Reg* %6472, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %6473 to i64*
  %6474 = load i64, i64* %PC.i283
  %6475 = add i64 %6474, 5
  store i64 %6475, i64* %PC.i283
  store i64 127, i64* %RAX.i284, align 8
  store %struct.Memory* %loadMem_4b0356, %struct.Memory** %MEMORY
  %loadMem_4b035b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6477 = getelementptr inbounds %struct.GPR, %struct.GPR* %6476, i32 0, i32 33
  %6478 = getelementptr inbounds %struct.Reg, %struct.Reg* %6477, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %6478 to i64*
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6480 = getelementptr inbounds %struct.GPR, %struct.GPR* %6479, i32 0, i32 1
  %6481 = getelementptr inbounds %struct.Reg, %struct.Reg* %6480, i32 0, i32 0
  %EAX.i281 = bitcast %union.anon* %6481 to i32*
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6483 = getelementptr inbounds %struct.GPR, %struct.GPR* %6482, i32 0, i32 15
  %6484 = getelementptr inbounds %struct.Reg, %struct.Reg* %6483, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %6484 to i64*
  %6485 = load i64, i64* %RBP.i282
  %6486 = sub i64 %6485, 956
  %6487 = load i32, i32* %EAX.i281
  %6488 = zext i32 %6487 to i64
  %6489 = load i64, i64* %PC.i280
  %6490 = add i64 %6489, 6
  store i64 %6490, i64* %PC.i280
  %6491 = inttoptr i64 %6486 to i32*
  store i32 %6487, i32* %6491
  store %struct.Memory* %loadMem_4b035b, %struct.Memory** %MEMORY
  %loadMem_4b0361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6493 = getelementptr inbounds %struct.GPR, %struct.GPR* %6492, i32 0, i32 33
  %6494 = getelementptr inbounds %struct.Reg, %struct.Reg* %6493, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %6494 to i64*
  %6495 = load i64, i64* %PC.i279
  %6496 = add i64 %6495, 48
  %6497 = load i64, i64* %PC.i279
  %6498 = add i64 %6497, 5
  store i64 %6498, i64* %PC.i279
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6496, i64* %6499, align 8
  store %struct.Memory* %loadMem_4b0361, %struct.Memory** %MEMORY
  br label %block_.L_4b0391

block_.L_4b0366:                                  ; preds = %block_.L_4b032a
  %loadMem_4b0366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6501 = getelementptr inbounds %struct.GPR, %struct.GPR* %6500, i32 0, i32 33
  %6502 = getelementptr inbounds %struct.Reg, %struct.Reg* %6501, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %6502 to i64*
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6504 = getelementptr inbounds %struct.GPR, %struct.GPR* %6503, i32 0, i32 1
  %6505 = getelementptr inbounds %struct.Reg, %struct.Reg* %6504, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %6505 to i64*
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6507 = getelementptr inbounds %struct.GPR, %struct.GPR* %6506, i32 0, i32 15
  %6508 = getelementptr inbounds %struct.Reg, %struct.Reg* %6507, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %6508 to i64*
  %6509 = load i64, i64* %RBP.i278
  %6510 = sub i64 %6509, 928
  %6511 = load i64, i64* %PC.i276
  %6512 = add i64 %6511, 7
  store i64 %6512, i64* %PC.i276
  store i64 %6510, i64* %RAX.i277, align 8
  store %struct.Memory* %loadMem_4b0366, %struct.Memory** %MEMORY
  %loadMem_4b036d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6514 = getelementptr inbounds %struct.GPR, %struct.GPR* %6513, i32 0, i32 33
  %6515 = getelementptr inbounds %struct.Reg, %struct.Reg* %6514, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %6515 to i64*
  %6516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6517 = getelementptr inbounds %struct.GPR, %struct.GPR* %6516, i32 0, i32 5
  %6518 = getelementptr inbounds %struct.Reg, %struct.Reg* %6517, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %6518 to i64*
  %6519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6520 = getelementptr inbounds %struct.GPR, %struct.GPR* %6519, i32 0, i32 15
  %6521 = getelementptr inbounds %struct.Reg, %struct.Reg* %6520, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %6521 to i64*
  %6522 = load i64, i64* %RBP.i275
  %6523 = sub i64 %6522, 932
  %6524 = load i64, i64* %PC.i273
  %6525 = add i64 %6524, 7
  store i64 %6525, i64* %PC.i273
  %6526 = inttoptr i64 %6523 to i32*
  %6527 = load i32, i32* %6526
  %6528 = sext i32 %6527 to i64
  store i64 %6528, i64* %RCX.i274, align 8
  store %struct.Memory* %loadMem_4b036d, %struct.Memory** %MEMORY
  %loadMem_4b0374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6530 = getelementptr inbounds %struct.GPR, %struct.GPR* %6529, i32 0, i32 33
  %6531 = getelementptr inbounds %struct.Reg, %struct.Reg* %6530, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %6531 to i64*
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6533 = getelementptr inbounds %struct.GPR, %struct.GPR* %6532, i32 0, i32 5
  %6534 = getelementptr inbounds %struct.Reg, %struct.Reg* %6533, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %6534 to i64*
  %6535 = load i64, i64* %RCX.i272
  %6536 = load i64, i64* %PC.i271
  %6537 = add i64 %6536, 7
  store i64 %6537, i64* %PC.i271
  %6538 = sext i64 %6535 to i128
  %6539 = and i128 %6538, -18446744073709551616
  %6540 = zext i64 %6535 to i128
  %6541 = or i128 %6539, %6540
  %6542 = mul i128 180, %6541
  %6543 = trunc i128 %6542 to i64
  store i64 %6543, i64* %RCX.i272, align 8
  %6544 = sext i64 %6543 to i128
  %6545 = icmp ne i128 %6544, %6542
  %6546 = zext i1 %6545 to i8
  %6547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6546, i8* %6547, align 1
  %6548 = trunc i128 %6542 to i32
  %6549 = and i32 %6548, 255
  %6550 = call i32 @llvm.ctpop.i32(i32 %6549)
  %6551 = trunc i32 %6550 to i8
  %6552 = and i8 %6551, 1
  %6553 = xor i8 %6552, 1
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6553, i8* %6554, align 1
  %6555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6555, align 1
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6556, align 1
  %6557 = lshr i64 %6543, 63
  %6558 = trunc i64 %6557 to i8
  %6559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6558, i8* %6559, align 1
  %6560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6546, i8* %6560, align 1
  store %struct.Memory* %loadMem_4b0374, %struct.Memory** %MEMORY
  %loadMem_4b037b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6562 = getelementptr inbounds %struct.GPR, %struct.GPR* %6561, i32 0, i32 33
  %6563 = getelementptr inbounds %struct.Reg, %struct.Reg* %6562, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %6563 to i64*
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6565 = getelementptr inbounds %struct.GPR, %struct.GPR* %6564, i32 0, i32 1
  %6566 = getelementptr inbounds %struct.Reg, %struct.Reg* %6565, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %6566 to i64*
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6568 = getelementptr inbounds %struct.GPR, %struct.GPR* %6567, i32 0, i32 5
  %6569 = getelementptr inbounds %struct.Reg, %struct.Reg* %6568, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %6569 to i64*
  %6570 = load i64, i64* %RAX.i269
  %6571 = load i64, i64* %RCX.i270
  %6572 = load i64, i64* %PC.i268
  %6573 = add i64 %6572, 3
  store i64 %6573, i64* %PC.i268
  %6574 = add i64 %6571, %6570
  store i64 %6574, i64* %RAX.i269, align 8
  %6575 = icmp ult i64 %6574, %6570
  %6576 = icmp ult i64 %6574, %6571
  %6577 = or i1 %6575, %6576
  %6578 = zext i1 %6577 to i8
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6578, i8* %6579, align 1
  %6580 = trunc i64 %6574 to i32
  %6581 = and i32 %6580, 255
  %6582 = call i32 @llvm.ctpop.i32(i32 %6581)
  %6583 = trunc i32 %6582 to i8
  %6584 = and i8 %6583, 1
  %6585 = xor i8 %6584, 1
  %6586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6585, i8* %6586, align 1
  %6587 = xor i64 %6571, %6570
  %6588 = xor i64 %6587, %6574
  %6589 = lshr i64 %6588, 4
  %6590 = trunc i64 %6589 to i8
  %6591 = and i8 %6590, 1
  %6592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6591, i8* %6592, align 1
  %6593 = icmp eq i64 %6574, 0
  %6594 = zext i1 %6593 to i8
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6594, i8* %6595, align 1
  %6596 = lshr i64 %6574, 63
  %6597 = trunc i64 %6596 to i8
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6597, i8* %6598, align 1
  %6599 = lshr i64 %6570, 63
  %6600 = lshr i64 %6571, 63
  %6601 = xor i64 %6596, %6599
  %6602 = xor i64 %6596, %6600
  %6603 = add i64 %6601, %6602
  %6604 = icmp eq i64 %6603, 2
  %6605 = zext i1 %6604 to i8
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6605, i8* %6606, align 1
  store %struct.Memory* %loadMem_4b037b, %struct.Memory** %MEMORY
  %loadMem_4b037e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6608 = getelementptr inbounds %struct.GPR, %struct.GPR* %6607, i32 0, i32 33
  %6609 = getelementptr inbounds %struct.Reg, %struct.Reg* %6608, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %6609 to i64*
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6611 = getelementptr inbounds %struct.GPR, %struct.GPR* %6610, i32 0, i32 5
  %6612 = getelementptr inbounds %struct.Reg, %struct.Reg* %6611, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %6612 to i64*
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6614 = getelementptr inbounds %struct.GPR, %struct.GPR* %6613, i32 0, i32 15
  %6615 = getelementptr inbounds %struct.Reg, %struct.Reg* %6614, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %6615 to i64*
  %6616 = load i64, i64* %RBP.i267
  %6617 = sub i64 %6616, 16
  %6618 = load i64, i64* %PC.i265
  %6619 = add i64 %6618, 4
  store i64 %6619, i64* %PC.i265
  %6620 = inttoptr i64 %6617 to i32*
  %6621 = load i32, i32* %6620
  %6622 = sext i32 %6621 to i64
  store i64 %6622, i64* %RCX.i266, align 8
  store %struct.Memory* %loadMem_4b037e, %struct.Memory** %MEMORY
  %loadMem_4b0382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6624 = getelementptr inbounds %struct.GPR, %struct.GPR* %6623, i32 0, i32 33
  %6625 = getelementptr inbounds %struct.Reg, %struct.Reg* %6624, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %6625 to i64*
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6627 = getelementptr inbounds %struct.GPR, %struct.GPR* %6626, i32 0, i32 5
  %6628 = getelementptr inbounds %struct.Reg, %struct.Reg* %6627, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %6628 to i64*
  %6629 = load i64, i64* %RCX.i264
  %6630 = load i64, i64* %PC.i263
  %6631 = add i64 %6630, 4
  store i64 %6631, i64* %PC.i263
  %6632 = sext i64 %6629 to i128
  %6633 = and i128 %6632, -18446744073709551616
  %6634 = zext i64 %6629 to i128
  %6635 = or i128 %6633, %6634
  %6636 = mul i128 12, %6635
  %6637 = trunc i128 %6636 to i64
  store i64 %6637, i64* %RCX.i264, align 8
  %6638 = sext i64 %6637 to i128
  %6639 = icmp ne i128 %6638, %6636
  %6640 = zext i1 %6639 to i8
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6640, i8* %6641, align 1
  %6642 = trunc i128 %6636 to i32
  %6643 = and i32 %6642, 255
  %6644 = call i32 @llvm.ctpop.i32(i32 %6643)
  %6645 = trunc i32 %6644 to i8
  %6646 = and i8 %6645, 1
  %6647 = xor i8 %6646, 1
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6647, i8* %6648, align 1
  %6649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6649, align 1
  %6650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6650, align 1
  %6651 = lshr i64 %6637, 63
  %6652 = trunc i64 %6651 to i8
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6652, i8* %6653, align 1
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6640, i8* %6654, align 1
  store %struct.Memory* %loadMem_4b0382, %struct.Memory** %MEMORY
  %loadMem_4b0386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6656 = getelementptr inbounds %struct.GPR, %struct.GPR* %6655, i32 0, i32 33
  %6657 = getelementptr inbounds %struct.Reg, %struct.Reg* %6656, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %6657 to i64*
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 1
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %6660 to i64*
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 5
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %6663 to i64*
  %6664 = load i64, i64* %RAX.i261
  %6665 = load i64, i64* %RCX.i262
  %6666 = load i64, i64* %PC.i260
  %6667 = add i64 %6666, 3
  store i64 %6667, i64* %PC.i260
  %6668 = add i64 %6665, %6664
  store i64 %6668, i64* %RAX.i261, align 8
  %6669 = icmp ult i64 %6668, %6664
  %6670 = icmp ult i64 %6668, %6665
  %6671 = or i1 %6669, %6670
  %6672 = zext i1 %6671 to i8
  %6673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6672, i8* %6673, align 1
  %6674 = trunc i64 %6668 to i32
  %6675 = and i32 %6674, 255
  %6676 = call i32 @llvm.ctpop.i32(i32 %6675)
  %6677 = trunc i32 %6676 to i8
  %6678 = and i8 %6677, 1
  %6679 = xor i8 %6678, 1
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6679, i8* %6680, align 1
  %6681 = xor i64 %6665, %6664
  %6682 = xor i64 %6681, %6668
  %6683 = lshr i64 %6682, 4
  %6684 = trunc i64 %6683 to i8
  %6685 = and i8 %6684, 1
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6685, i8* %6686, align 1
  %6687 = icmp eq i64 %6668, 0
  %6688 = zext i1 %6687 to i8
  %6689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6688, i8* %6689, align 1
  %6690 = lshr i64 %6668, 63
  %6691 = trunc i64 %6690 to i8
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6691, i8* %6692, align 1
  %6693 = lshr i64 %6664, 63
  %6694 = lshr i64 %6665, 63
  %6695 = xor i64 %6690, %6693
  %6696 = xor i64 %6690, %6694
  %6697 = add i64 %6695, %6696
  %6698 = icmp eq i64 %6697, 2
  %6699 = zext i1 %6698 to i8
  %6700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6699, i8* %6700, align 1
  store %struct.Memory* %loadMem_4b0386, %struct.Memory** %MEMORY
  %loadMem_4b0389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6702 = getelementptr inbounds %struct.GPR, %struct.GPR* %6701, i32 0, i32 33
  %6703 = getelementptr inbounds %struct.Reg, %struct.Reg* %6702, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %6703 to i64*
  %6704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6705 = getelementptr inbounds %struct.GPR, %struct.GPR* %6704, i32 0, i32 1
  %6706 = getelementptr inbounds %struct.Reg, %struct.Reg* %6705, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %6706 to i64*
  %6707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6708 = getelementptr inbounds %struct.GPR, %struct.GPR* %6707, i32 0, i32 7
  %6709 = getelementptr inbounds %struct.Reg, %struct.Reg* %6708, i32 0, i32 0
  %RDX.i259 = bitcast %union.anon* %6709 to i64*
  %6710 = load i64, i64* %RAX.i258
  %6711 = load i64, i64* %PC.i257
  %6712 = add i64 %6711, 2
  store i64 %6712, i64* %PC.i257
  %6713 = inttoptr i64 %6710 to i32*
  %6714 = load i32, i32* %6713
  %6715 = zext i32 %6714 to i64
  store i64 %6715, i64* %RDX.i259, align 8
  store %struct.Memory* %loadMem_4b0389, %struct.Memory** %MEMORY
  %loadMem_4b038b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6717 = getelementptr inbounds %struct.GPR, %struct.GPR* %6716, i32 0, i32 33
  %6718 = getelementptr inbounds %struct.Reg, %struct.Reg* %6717, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %6718 to i64*
  %6719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6720 = getelementptr inbounds %struct.GPR, %struct.GPR* %6719, i32 0, i32 7
  %6721 = getelementptr inbounds %struct.Reg, %struct.Reg* %6720, i32 0, i32 0
  %EDX.i255 = bitcast %union.anon* %6721 to i32*
  %6722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6723 = getelementptr inbounds %struct.GPR, %struct.GPR* %6722, i32 0, i32 15
  %6724 = getelementptr inbounds %struct.Reg, %struct.Reg* %6723, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %6724 to i64*
  %6725 = load i64, i64* %RBP.i256
  %6726 = sub i64 %6725, 956
  %6727 = load i32, i32* %EDX.i255
  %6728 = zext i32 %6727 to i64
  %6729 = load i64, i64* %PC.i254
  %6730 = add i64 %6729, 6
  store i64 %6730, i64* %PC.i254
  %6731 = inttoptr i64 %6726 to i32*
  store i32 %6727, i32* %6731
  store %struct.Memory* %loadMem_4b038b, %struct.Memory** %MEMORY
  br label %block_.L_4b0391

block_.L_4b0391:                                  ; preds = %block_.L_4b0366, %block_4b0356
  %loadMem_4b0391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6733 = getelementptr inbounds %struct.GPR, %struct.GPR* %6732, i32 0, i32 33
  %6734 = getelementptr inbounds %struct.Reg, %struct.Reg* %6733, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %6734 to i64*
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6736 = getelementptr inbounds %struct.GPR, %struct.GPR* %6735, i32 0, i32 1
  %6737 = getelementptr inbounds %struct.Reg, %struct.Reg* %6736, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %6737 to i64*
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6739 = getelementptr inbounds %struct.GPR, %struct.GPR* %6738, i32 0, i32 15
  %6740 = getelementptr inbounds %struct.Reg, %struct.Reg* %6739, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %6740 to i64*
  %6741 = load i64, i64* %RBP.i253
  %6742 = sub i64 %6741, 956
  %6743 = load i64, i64* %PC.i251
  %6744 = add i64 %6743, 6
  store i64 %6744, i64* %PC.i251
  %6745 = inttoptr i64 %6742 to i32*
  %6746 = load i32, i32* %6745
  %6747 = zext i32 %6746 to i64
  store i64 %6747, i64* %RAX.i252, align 8
  store %struct.Memory* %loadMem_4b0391, %struct.Memory** %MEMORY
  %loadMem_4b0397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6749 = getelementptr inbounds %struct.GPR, %struct.GPR* %6748, i32 0, i32 33
  %6750 = getelementptr inbounds %struct.Reg, %struct.Reg* %6749, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %6750 to i64*
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6752 = getelementptr inbounds %struct.GPR, %struct.GPR* %6751, i32 0, i32 1
  %6753 = getelementptr inbounds %struct.Reg, %struct.Reg* %6752, i32 0, i32 0
  %EAX.i249 = bitcast %union.anon* %6753 to i32*
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 15
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %6756 to i64*
  %6757 = load i64, i64* %RBP.i250
  %6758 = sub i64 %6757, 952
  %6759 = load i32, i32* %EAX.i249
  %6760 = zext i32 %6759 to i64
  %6761 = load i64, i64* %PC.i248
  %6762 = add i64 %6761, 6
  store i64 %6762, i64* %PC.i248
  %6763 = inttoptr i64 %6758 to i32*
  store i32 %6759, i32* %6763
  store %struct.Memory* %loadMem_4b0397, %struct.Memory** %MEMORY
  br label %block_.L_4b039d

block_.L_4b039d:                                  ; preds = %block_.L_4b0391, %block_4b031a
  %loadMem_4b039d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6765 = getelementptr inbounds %struct.GPR, %struct.GPR* %6764, i32 0, i32 33
  %6766 = getelementptr inbounds %struct.Reg, %struct.Reg* %6765, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %6766 to i64*
  %6767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6768 = getelementptr inbounds %struct.GPR, %struct.GPR* %6767, i32 0, i32 1
  %6769 = getelementptr inbounds %struct.Reg, %struct.Reg* %6768, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %6769 to i64*
  %6770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6771 = getelementptr inbounds %struct.GPR, %struct.GPR* %6770, i32 0, i32 15
  %6772 = getelementptr inbounds %struct.Reg, %struct.Reg* %6771, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %6772 to i64*
  %6773 = load i64, i64* %RBP.i247
  %6774 = sub i64 %6773, 952
  %6775 = load i64, i64* %PC.i245
  %6776 = add i64 %6775, 6
  store i64 %6776, i64* %PC.i245
  %6777 = inttoptr i64 %6774 to i32*
  %6778 = load i32, i32* %6777
  %6779 = zext i32 %6778 to i64
  store i64 %6779, i64* %RAX.i246, align 8
  store %struct.Memory* %loadMem_4b039d, %struct.Memory** %MEMORY
  %loadMem_4b03a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6781 = getelementptr inbounds %struct.GPR, %struct.GPR* %6780, i32 0, i32 33
  %6782 = getelementptr inbounds %struct.Reg, %struct.Reg* %6781, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %6782 to i64*
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6784 = getelementptr inbounds %struct.GPR, %struct.GPR* %6783, i32 0, i32 5
  %6785 = getelementptr inbounds %struct.Reg, %struct.Reg* %6784, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %6785 to i64*
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6787 = getelementptr inbounds %struct.GPR, %struct.GPR* %6786, i32 0, i32 15
  %6788 = getelementptr inbounds %struct.Reg, %struct.Reg* %6787, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %6788 to i64*
  %6789 = load i64, i64* %RBP.i244
  %6790 = sub i64 %6789, 560
  %6791 = load i64, i64* %PC.i242
  %6792 = add i64 %6791, 7
  store i64 %6792, i64* %PC.i242
  store i64 %6790, i64* %RCX.i243, align 8
  store %struct.Memory* %loadMem_4b03a3, %struct.Memory** %MEMORY
  %loadMem_4b03aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6794 = getelementptr inbounds %struct.GPR, %struct.GPR* %6793, i32 0, i32 33
  %6795 = getelementptr inbounds %struct.Reg, %struct.Reg* %6794, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %6795 to i64*
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6797 = getelementptr inbounds %struct.GPR, %struct.GPR* %6796, i32 0, i32 7
  %6798 = getelementptr inbounds %struct.Reg, %struct.Reg* %6797, i32 0, i32 0
  %RDX.i240 = bitcast %union.anon* %6798 to i64*
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6800 = getelementptr inbounds %struct.GPR, %struct.GPR* %6799, i32 0, i32 15
  %6801 = getelementptr inbounds %struct.Reg, %struct.Reg* %6800, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %6801 to i64*
  %6802 = load i64, i64* %RBP.i241
  %6803 = sub i64 %6802, 928
  %6804 = load i64, i64* %PC.i239
  %6805 = add i64 %6804, 7
  store i64 %6805, i64* %PC.i239
  store i64 %6803, i64* %RDX.i240, align 8
  store %struct.Memory* %loadMem_4b03aa, %struct.Memory** %MEMORY
  %loadMem_4b03b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6807 = getelementptr inbounds %struct.GPR, %struct.GPR* %6806, i32 0, i32 33
  %6808 = getelementptr inbounds %struct.Reg, %struct.Reg* %6807, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %6808 to i64*
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6810 = getelementptr inbounds %struct.GPR, %struct.GPR* %6809, i32 0, i32 9
  %6811 = getelementptr inbounds %struct.Reg, %struct.Reg* %6810, i32 0, i32 0
  %RSI.i237 = bitcast %union.anon* %6811 to i64*
  %6812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6813 = getelementptr inbounds %struct.GPR, %struct.GPR* %6812, i32 0, i32 15
  %6814 = getelementptr inbounds %struct.Reg, %struct.Reg* %6813, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %6814 to i64*
  %6815 = load i64, i64* %RBP.i238
  %6816 = sub i64 %6815, 932
  %6817 = load i64, i64* %PC.i236
  %6818 = add i64 %6817, 7
  store i64 %6818, i64* %PC.i236
  %6819 = inttoptr i64 %6816 to i32*
  %6820 = load i32, i32* %6819
  %6821 = sext i32 %6820 to i64
  store i64 %6821, i64* %RSI.i237, align 8
  store %struct.Memory* %loadMem_4b03b1, %struct.Memory** %MEMORY
  %loadMem_4b03b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6823 = getelementptr inbounds %struct.GPR, %struct.GPR* %6822, i32 0, i32 33
  %6824 = getelementptr inbounds %struct.Reg, %struct.Reg* %6823, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %6824 to i64*
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6826 = getelementptr inbounds %struct.GPR, %struct.GPR* %6825, i32 0, i32 9
  %6827 = getelementptr inbounds %struct.Reg, %struct.Reg* %6826, i32 0, i32 0
  %RSI.i235 = bitcast %union.anon* %6827 to i64*
  %6828 = load i64, i64* %RSI.i235
  %6829 = load i64, i64* %PC.i234
  %6830 = add i64 %6829, 7
  store i64 %6830, i64* %PC.i234
  %6831 = sext i64 %6828 to i128
  %6832 = and i128 %6831, -18446744073709551616
  %6833 = zext i64 %6828 to i128
  %6834 = or i128 %6832, %6833
  %6835 = mul i128 180, %6834
  %6836 = trunc i128 %6835 to i64
  store i64 %6836, i64* %RSI.i235, align 8
  %6837 = sext i64 %6836 to i128
  %6838 = icmp ne i128 %6837, %6835
  %6839 = zext i1 %6838 to i8
  %6840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6839, i8* %6840, align 1
  %6841 = trunc i128 %6835 to i32
  %6842 = and i32 %6841, 255
  %6843 = call i32 @llvm.ctpop.i32(i32 %6842)
  %6844 = trunc i32 %6843 to i8
  %6845 = and i8 %6844, 1
  %6846 = xor i8 %6845, 1
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6846, i8* %6847, align 1
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6848, align 1
  %6849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6849, align 1
  %6850 = lshr i64 %6836, 63
  %6851 = trunc i64 %6850 to i8
  %6852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6851, i8* %6852, align 1
  %6853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6839, i8* %6853, align 1
  store %struct.Memory* %loadMem_4b03b8, %struct.Memory** %MEMORY
  %loadMem_4b03bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6855 = getelementptr inbounds %struct.GPR, %struct.GPR* %6854, i32 0, i32 33
  %6856 = getelementptr inbounds %struct.Reg, %struct.Reg* %6855, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %6856 to i64*
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6858 = getelementptr inbounds %struct.GPR, %struct.GPR* %6857, i32 0, i32 7
  %6859 = getelementptr inbounds %struct.Reg, %struct.Reg* %6858, i32 0, i32 0
  %RDX.i232 = bitcast %union.anon* %6859 to i64*
  %6860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6861 = getelementptr inbounds %struct.GPR, %struct.GPR* %6860, i32 0, i32 9
  %6862 = getelementptr inbounds %struct.Reg, %struct.Reg* %6861, i32 0, i32 0
  %RSI.i233 = bitcast %union.anon* %6862 to i64*
  %6863 = load i64, i64* %RDX.i232
  %6864 = load i64, i64* %RSI.i233
  %6865 = load i64, i64* %PC.i231
  %6866 = add i64 %6865, 3
  store i64 %6866, i64* %PC.i231
  %6867 = add i64 %6864, %6863
  store i64 %6867, i64* %RDX.i232, align 8
  %6868 = icmp ult i64 %6867, %6863
  %6869 = icmp ult i64 %6867, %6864
  %6870 = or i1 %6868, %6869
  %6871 = zext i1 %6870 to i8
  %6872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6871, i8* %6872, align 1
  %6873 = trunc i64 %6867 to i32
  %6874 = and i32 %6873, 255
  %6875 = call i32 @llvm.ctpop.i32(i32 %6874)
  %6876 = trunc i32 %6875 to i8
  %6877 = and i8 %6876, 1
  %6878 = xor i8 %6877, 1
  %6879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6878, i8* %6879, align 1
  %6880 = xor i64 %6864, %6863
  %6881 = xor i64 %6880, %6867
  %6882 = lshr i64 %6881, 4
  %6883 = trunc i64 %6882 to i8
  %6884 = and i8 %6883, 1
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6884, i8* %6885, align 1
  %6886 = icmp eq i64 %6867, 0
  %6887 = zext i1 %6886 to i8
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6887, i8* %6888, align 1
  %6889 = lshr i64 %6867, 63
  %6890 = trunc i64 %6889 to i8
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6890, i8* %6891, align 1
  %6892 = lshr i64 %6863, 63
  %6893 = lshr i64 %6864, 63
  %6894 = xor i64 %6889, %6892
  %6895 = xor i64 %6889, %6893
  %6896 = add i64 %6894, %6895
  %6897 = icmp eq i64 %6896, 2
  %6898 = zext i1 %6897 to i8
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6898, i8* %6899, align 1
  store %struct.Memory* %loadMem_4b03bf, %struct.Memory** %MEMORY
  %loadMem_4b03c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6901 = getelementptr inbounds %struct.GPR, %struct.GPR* %6900, i32 0, i32 33
  %6902 = getelementptr inbounds %struct.Reg, %struct.Reg* %6901, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %6902 to i64*
  %6903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6904 = getelementptr inbounds %struct.GPR, %struct.GPR* %6903, i32 0, i32 9
  %6905 = getelementptr inbounds %struct.Reg, %struct.Reg* %6904, i32 0, i32 0
  %RSI.i229 = bitcast %union.anon* %6905 to i64*
  %6906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6907 = getelementptr inbounds %struct.GPR, %struct.GPR* %6906, i32 0, i32 15
  %6908 = getelementptr inbounds %struct.Reg, %struct.Reg* %6907, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %6908 to i64*
  %6909 = load i64, i64* %RBP.i230
  %6910 = sub i64 %6909, 16
  %6911 = load i64, i64* %PC.i228
  %6912 = add i64 %6911, 4
  store i64 %6912, i64* %PC.i228
  %6913 = inttoptr i64 %6910 to i32*
  %6914 = load i32, i32* %6913
  %6915 = sext i32 %6914 to i64
  store i64 %6915, i64* %RSI.i229, align 8
  store %struct.Memory* %loadMem_4b03c2, %struct.Memory** %MEMORY
  %loadMem_4b03c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6917 = getelementptr inbounds %struct.GPR, %struct.GPR* %6916, i32 0, i32 33
  %6918 = getelementptr inbounds %struct.Reg, %struct.Reg* %6917, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %6918 to i64*
  %6919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6920 = getelementptr inbounds %struct.GPR, %struct.GPR* %6919, i32 0, i32 9
  %6921 = getelementptr inbounds %struct.Reg, %struct.Reg* %6920, i32 0, i32 0
  %RSI.i227 = bitcast %union.anon* %6921 to i64*
  %6922 = load i64, i64* %RSI.i227
  %6923 = load i64, i64* %PC.i226
  %6924 = add i64 %6923, 4
  store i64 %6924, i64* %PC.i226
  %6925 = sext i64 %6922 to i128
  %6926 = and i128 %6925, -18446744073709551616
  %6927 = zext i64 %6922 to i128
  %6928 = or i128 %6926, %6927
  %6929 = mul i128 12, %6928
  %6930 = trunc i128 %6929 to i64
  store i64 %6930, i64* %RSI.i227, align 8
  %6931 = sext i64 %6930 to i128
  %6932 = icmp ne i128 %6931, %6929
  %6933 = zext i1 %6932 to i8
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6933, i8* %6934, align 1
  %6935 = trunc i128 %6929 to i32
  %6936 = and i32 %6935, 255
  %6937 = call i32 @llvm.ctpop.i32(i32 %6936)
  %6938 = trunc i32 %6937 to i8
  %6939 = and i8 %6938, 1
  %6940 = xor i8 %6939, 1
  %6941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6940, i8* %6941, align 1
  %6942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6942, align 1
  %6943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6943, align 1
  %6944 = lshr i64 %6930, 63
  %6945 = trunc i64 %6944 to i8
  %6946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6945, i8* %6946, align 1
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6933, i8* %6947, align 1
  store %struct.Memory* %loadMem_4b03c6, %struct.Memory** %MEMORY
  %loadMem_4b03ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6949 = getelementptr inbounds %struct.GPR, %struct.GPR* %6948, i32 0, i32 33
  %6950 = getelementptr inbounds %struct.Reg, %struct.Reg* %6949, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %6950 to i64*
  %6951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6952 = getelementptr inbounds %struct.GPR, %struct.GPR* %6951, i32 0, i32 7
  %6953 = getelementptr inbounds %struct.Reg, %struct.Reg* %6952, i32 0, i32 0
  %RDX.i224 = bitcast %union.anon* %6953 to i64*
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6955 = getelementptr inbounds %struct.GPR, %struct.GPR* %6954, i32 0, i32 9
  %6956 = getelementptr inbounds %struct.Reg, %struct.Reg* %6955, i32 0, i32 0
  %RSI.i225 = bitcast %union.anon* %6956 to i64*
  %6957 = load i64, i64* %RDX.i224
  %6958 = load i64, i64* %RSI.i225
  %6959 = load i64, i64* %PC.i223
  %6960 = add i64 %6959, 3
  store i64 %6960, i64* %PC.i223
  %6961 = add i64 %6958, %6957
  store i64 %6961, i64* %RDX.i224, align 8
  %6962 = icmp ult i64 %6961, %6957
  %6963 = icmp ult i64 %6961, %6958
  %6964 = or i1 %6962, %6963
  %6965 = zext i1 %6964 to i8
  %6966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6965, i8* %6966, align 1
  %6967 = trunc i64 %6961 to i32
  %6968 = and i32 %6967, 255
  %6969 = call i32 @llvm.ctpop.i32(i32 %6968)
  %6970 = trunc i32 %6969 to i8
  %6971 = and i8 %6970, 1
  %6972 = xor i8 %6971, 1
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6972, i8* %6973, align 1
  %6974 = xor i64 %6958, %6957
  %6975 = xor i64 %6974, %6961
  %6976 = lshr i64 %6975, 4
  %6977 = trunc i64 %6976 to i8
  %6978 = and i8 %6977, 1
  %6979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6978, i8* %6979, align 1
  %6980 = icmp eq i64 %6961, 0
  %6981 = zext i1 %6980 to i8
  %6982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6981, i8* %6982, align 1
  %6983 = lshr i64 %6961, 63
  %6984 = trunc i64 %6983 to i8
  %6985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6984, i8* %6985, align 1
  %6986 = lshr i64 %6957, 63
  %6987 = lshr i64 %6958, 63
  %6988 = xor i64 %6983, %6986
  %6989 = xor i64 %6983, %6987
  %6990 = add i64 %6988, %6989
  %6991 = icmp eq i64 %6990, 2
  %6992 = zext i1 %6991 to i8
  %6993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6992, i8* %6993, align 1
  store %struct.Memory* %loadMem_4b03ca, %struct.Memory** %MEMORY
  %loadMem_4b03cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6995 = getelementptr inbounds %struct.GPR, %struct.GPR* %6994, i32 0, i32 33
  %6996 = getelementptr inbounds %struct.Reg, %struct.Reg* %6995, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %6996 to i64*
  %6997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6998 = getelementptr inbounds %struct.GPR, %struct.GPR* %6997, i32 0, i32 1
  %6999 = getelementptr inbounds %struct.Reg, %struct.Reg* %6998, i32 0, i32 0
  %EAX.i221 = bitcast %union.anon* %6999 to i32*
  %7000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7001 = getelementptr inbounds %struct.GPR, %struct.GPR* %7000, i32 0, i32 7
  %7002 = getelementptr inbounds %struct.Reg, %struct.Reg* %7001, i32 0, i32 0
  %RDX.i222 = bitcast %union.anon* %7002 to i64*
  %7003 = load i64, i64* %RDX.i222
  %7004 = load i32, i32* %EAX.i221
  %7005 = zext i32 %7004 to i64
  %7006 = load i64, i64* %PC.i220
  %7007 = add i64 %7006, 2
  store i64 %7007, i64* %PC.i220
  %7008 = inttoptr i64 %7003 to i32*
  store i32 %7004, i32* %7008
  store %struct.Memory* %loadMem_4b03cd, %struct.Memory** %MEMORY
  %loadMem_4b03cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7010 = getelementptr inbounds %struct.GPR, %struct.GPR* %7009, i32 0, i32 33
  %7011 = getelementptr inbounds %struct.Reg, %struct.Reg* %7010, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %7011 to i64*
  %7012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7013 = getelementptr inbounds %struct.GPR, %struct.GPR* %7012, i32 0, i32 1
  %7014 = getelementptr inbounds %struct.Reg, %struct.Reg* %7013, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %7014 to i64*
  %7015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7016 = getelementptr inbounds %struct.GPR, %struct.GPR* %7015, i32 0, i32 15
  %7017 = getelementptr inbounds %struct.Reg, %struct.Reg* %7016, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %7017 to i64*
  %7018 = load i64, i64* %RBP.i219
  %7019 = sub i64 %7018, 180
  %7020 = load i64, i64* %PC.i217
  %7021 = add i64 %7020, 6
  store i64 %7021, i64* %PC.i217
  %7022 = inttoptr i64 %7019 to i32*
  %7023 = load i32, i32* %7022
  %7024 = zext i32 %7023 to i64
  store i64 %7024, i64* %RAX.i218, align 8
  store %struct.Memory* %loadMem_4b03cf, %struct.Memory** %MEMORY
  %loadMem_4b03d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7026 = getelementptr inbounds %struct.GPR, %struct.GPR* %7025, i32 0, i32 33
  %7027 = getelementptr inbounds %struct.Reg, %struct.Reg* %7026, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %7027 to i64*
  %7028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7029 = getelementptr inbounds %struct.GPR, %struct.GPR* %7028, i32 0, i32 7
  %7030 = getelementptr inbounds %struct.Reg, %struct.Reg* %7029, i32 0, i32 0
  %RDX.i215 = bitcast %union.anon* %7030 to i64*
  %7031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7032 = getelementptr inbounds %struct.GPR, %struct.GPR* %7031, i32 0, i32 15
  %7033 = getelementptr inbounds %struct.Reg, %struct.Reg* %7032, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %7033 to i64*
  %7034 = load i64, i64* %RBP.i216
  %7035 = sub i64 %7034, 932
  %7036 = load i64, i64* %PC.i214
  %7037 = add i64 %7036, 7
  store i64 %7037, i64* %PC.i214
  %7038 = inttoptr i64 %7035 to i32*
  %7039 = load i32, i32* %7038
  %7040 = sext i32 %7039 to i64
  store i64 %7040, i64* %RDX.i215, align 8
  store %struct.Memory* %loadMem_4b03d5, %struct.Memory** %MEMORY
  %loadMem_4b03dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7042 = getelementptr inbounds %struct.GPR, %struct.GPR* %7041, i32 0, i32 33
  %7043 = getelementptr inbounds %struct.Reg, %struct.Reg* %7042, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %7043 to i64*
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7045 = getelementptr inbounds %struct.GPR, %struct.GPR* %7044, i32 0, i32 7
  %7046 = getelementptr inbounds %struct.Reg, %struct.Reg* %7045, i32 0, i32 0
  %RDX.i213 = bitcast %union.anon* %7046 to i64*
  %7047 = load i64, i64* %RDX.i213
  %7048 = load i64, i64* %PC.i212
  %7049 = add i64 %7048, 7
  store i64 %7049, i64* %PC.i212
  %7050 = sext i64 %7047 to i128
  %7051 = and i128 %7050, -18446744073709551616
  %7052 = zext i64 %7047 to i128
  %7053 = or i128 %7051, %7052
  %7054 = mul i128 180, %7053
  %7055 = trunc i128 %7054 to i64
  store i64 %7055, i64* %RDX.i213, align 8
  %7056 = sext i64 %7055 to i128
  %7057 = icmp ne i128 %7056, %7054
  %7058 = zext i1 %7057 to i8
  %7059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7058, i8* %7059, align 1
  %7060 = trunc i128 %7054 to i32
  %7061 = and i32 %7060, 255
  %7062 = call i32 @llvm.ctpop.i32(i32 %7061)
  %7063 = trunc i32 %7062 to i8
  %7064 = and i8 %7063, 1
  %7065 = xor i8 %7064, 1
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7065, i8* %7066, align 1
  %7067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7067, align 1
  %7068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7068, align 1
  %7069 = lshr i64 %7055, 63
  %7070 = trunc i64 %7069 to i8
  %7071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7070, i8* %7071, align 1
  %7072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7058, i8* %7072, align 1
  store %struct.Memory* %loadMem_4b03dc, %struct.Memory** %MEMORY
  %loadMem_4b03e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7074 = getelementptr inbounds %struct.GPR, %struct.GPR* %7073, i32 0, i32 33
  %7075 = getelementptr inbounds %struct.Reg, %struct.Reg* %7074, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %7075 to i64*
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7077 = getelementptr inbounds %struct.GPR, %struct.GPR* %7076, i32 0, i32 5
  %7078 = getelementptr inbounds %struct.Reg, %struct.Reg* %7077, i32 0, i32 0
  %RCX.i210 = bitcast %union.anon* %7078 to i64*
  %7079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7080 = getelementptr inbounds %struct.GPR, %struct.GPR* %7079, i32 0, i32 7
  %7081 = getelementptr inbounds %struct.Reg, %struct.Reg* %7080, i32 0, i32 0
  %RDX.i211 = bitcast %union.anon* %7081 to i64*
  %7082 = load i64, i64* %RCX.i210
  %7083 = load i64, i64* %RDX.i211
  %7084 = load i64, i64* %PC.i209
  %7085 = add i64 %7084, 3
  store i64 %7085, i64* %PC.i209
  %7086 = add i64 %7083, %7082
  store i64 %7086, i64* %RCX.i210, align 8
  %7087 = icmp ult i64 %7086, %7082
  %7088 = icmp ult i64 %7086, %7083
  %7089 = or i1 %7087, %7088
  %7090 = zext i1 %7089 to i8
  %7091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7090, i8* %7091, align 1
  %7092 = trunc i64 %7086 to i32
  %7093 = and i32 %7092, 255
  %7094 = call i32 @llvm.ctpop.i32(i32 %7093)
  %7095 = trunc i32 %7094 to i8
  %7096 = and i8 %7095, 1
  %7097 = xor i8 %7096, 1
  %7098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7097, i8* %7098, align 1
  %7099 = xor i64 %7083, %7082
  %7100 = xor i64 %7099, %7086
  %7101 = lshr i64 %7100, 4
  %7102 = trunc i64 %7101 to i8
  %7103 = and i8 %7102, 1
  %7104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7103, i8* %7104, align 1
  %7105 = icmp eq i64 %7086, 0
  %7106 = zext i1 %7105 to i8
  %7107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7106, i8* %7107, align 1
  %7108 = lshr i64 %7086, 63
  %7109 = trunc i64 %7108 to i8
  %7110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7109, i8* %7110, align 1
  %7111 = lshr i64 %7082, 63
  %7112 = lshr i64 %7083, 63
  %7113 = xor i64 %7108, %7111
  %7114 = xor i64 %7108, %7112
  %7115 = add i64 %7113, %7114
  %7116 = icmp eq i64 %7115, 2
  %7117 = zext i1 %7116 to i8
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7117, i8* %7118, align 1
  store %struct.Memory* %loadMem_4b03e3, %struct.Memory** %MEMORY
  %loadMem_4b03e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7120 = getelementptr inbounds %struct.GPR, %struct.GPR* %7119, i32 0, i32 33
  %7121 = getelementptr inbounds %struct.Reg, %struct.Reg* %7120, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %7121 to i64*
  %7122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7123 = getelementptr inbounds %struct.GPR, %struct.GPR* %7122, i32 0, i32 7
  %7124 = getelementptr inbounds %struct.Reg, %struct.Reg* %7123, i32 0, i32 0
  %RDX.i207 = bitcast %union.anon* %7124 to i64*
  %7125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7126 = getelementptr inbounds %struct.GPR, %struct.GPR* %7125, i32 0, i32 15
  %7127 = getelementptr inbounds %struct.Reg, %struct.Reg* %7126, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %7127 to i64*
  %7128 = load i64, i64* %RBP.i208
  %7129 = sub i64 %7128, 16
  %7130 = load i64, i64* %PC.i206
  %7131 = add i64 %7130, 4
  store i64 %7131, i64* %PC.i206
  %7132 = inttoptr i64 %7129 to i32*
  %7133 = load i32, i32* %7132
  %7134 = sext i32 %7133 to i64
  store i64 %7134, i64* %RDX.i207, align 8
  store %struct.Memory* %loadMem_4b03e6, %struct.Memory** %MEMORY
  %loadMem_4b03ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 33
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %7137 to i64*
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 7
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %RDX.i205 = bitcast %union.anon* %7140 to i64*
  %7141 = load i64, i64* %RDX.i205
  %7142 = load i64, i64* %PC.i204
  %7143 = add i64 %7142, 4
  store i64 %7143, i64* %PC.i204
  %7144 = sext i64 %7141 to i128
  %7145 = and i128 %7144, -18446744073709551616
  %7146 = zext i64 %7141 to i128
  %7147 = or i128 %7145, %7146
  %7148 = mul i128 12, %7147
  %7149 = trunc i128 %7148 to i64
  store i64 %7149, i64* %RDX.i205, align 8
  %7150 = sext i64 %7149 to i128
  %7151 = icmp ne i128 %7150, %7148
  %7152 = zext i1 %7151 to i8
  %7153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7152, i8* %7153, align 1
  %7154 = trunc i128 %7148 to i32
  %7155 = and i32 %7154, 255
  %7156 = call i32 @llvm.ctpop.i32(i32 %7155)
  %7157 = trunc i32 %7156 to i8
  %7158 = and i8 %7157, 1
  %7159 = xor i8 %7158, 1
  %7160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7159, i8* %7160, align 1
  %7161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7161, align 1
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7162, align 1
  %7163 = lshr i64 %7149, 63
  %7164 = trunc i64 %7163 to i8
  %7165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7164, i8* %7165, align 1
  %7166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7152, i8* %7166, align 1
  store %struct.Memory* %loadMem_4b03ea, %struct.Memory** %MEMORY
  %loadMem_4b03ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7168 = getelementptr inbounds %struct.GPR, %struct.GPR* %7167, i32 0, i32 33
  %7169 = getelementptr inbounds %struct.Reg, %struct.Reg* %7168, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %7169 to i64*
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7171 = getelementptr inbounds %struct.GPR, %struct.GPR* %7170, i32 0, i32 5
  %7172 = getelementptr inbounds %struct.Reg, %struct.Reg* %7171, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %7172 to i64*
  %7173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7174 = getelementptr inbounds %struct.GPR, %struct.GPR* %7173, i32 0, i32 7
  %7175 = getelementptr inbounds %struct.Reg, %struct.Reg* %7174, i32 0, i32 0
  %RDX.i203 = bitcast %union.anon* %7175 to i64*
  %7176 = load i64, i64* %RCX.i202
  %7177 = load i64, i64* %RDX.i203
  %7178 = load i64, i64* %PC.i201
  %7179 = add i64 %7178, 3
  store i64 %7179, i64* %PC.i201
  %7180 = add i64 %7177, %7176
  store i64 %7180, i64* %RCX.i202, align 8
  %7181 = icmp ult i64 %7180, %7176
  %7182 = icmp ult i64 %7180, %7177
  %7183 = or i1 %7181, %7182
  %7184 = zext i1 %7183 to i8
  %7185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7184, i8* %7185, align 1
  %7186 = trunc i64 %7180 to i32
  %7187 = and i32 %7186, 255
  %7188 = call i32 @llvm.ctpop.i32(i32 %7187)
  %7189 = trunc i32 %7188 to i8
  %7190 = and i8 %7189, 1
  %7191 = xor i8 %7190, 1
  %7192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7191, i8* %7192, align 1
  %7193 = xor i64 %7177, %7176
  %7194 = xor i64 %7193, %7180
  %7195 = lshr i64 %7194, 4
  %7196 = trunc i64 %7195 to i8
  %7197 = and i8 %7196, 1
  %7198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7197, i8* %7198, align 1
  %7199 = icmp eq i64 %7180, 0
  %7200 = zext i1 %7199 to i8
  %7201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7200, i8* %7201, align 1
  %7202 = lshr i64 %7180, 63
  %7203 = trunc i64 %7202 to i8
  %7204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7203, i8* %7204, align 1
  %7205 = lshr i64 %7176, 63
  %7206 = lshr i64 %7177, 63
  %7207 = xor i64 %7202, %7205
  %7208 = xor i64 %7202, %7206
  %7209 = add i64 %7207, %7208
  %7210 = icmp eq i64 %7209, 2
  %7211 = zext i1 %7210 to i8
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7211, i8* %7212, align 1
  store %struct.Memory* %loadMem_4b03ee, %struct.Memory** %MEMORY
  %loadMem_4b03f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7214 = getelementptr inbounds %struct.GPR, %struct.GPR* %7213, i32 0, i32 33
  %7215 = getelementptr inbounds %struct.Reg, %struct.Reg* %7214, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %7215 to i64*
  %7216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7217 = getelementptr inbounds %struct.GPR, %struct.GPR* %7216, i32 0, i32 1
  %7218 = getelementptr inbounds %struct.Reg, %struct.Reg* %7217, i32 0, i32 0
  %EAX.i199 = bitcast %union.anon* %7218 to i32*
  %7219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7220 = getelementptr inbounds %struct.GPR, %struct.GPR* %7219, i32 0, i32 5
  %7221 = getelementptr inbounds %struct.Reg, %struct.Reg* %7220, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %7221 to i64*
  %7222 = load i64, i64* %RCX.i200
  %7223 = load i32, i32* %EAX.i199
  %7224 = zext i32 %7223 to i64
  %7225 = load i64, i64* %PC.i198
  %7226 = add i64 %7225, 2
  store i64 %7226, i64* %PC.i198
  %7227 = inttoptr i64 %7222 to i32*
  store i32 %7223, i32* %7227
  store %struct.Memory* %loadMem_4b03f1, %struct.Memory** %MEMORY
  br label %block_.L_4b03f3

block_.L_4b03f3:                                  ; preds = %block_.L_4b039d, %block_.L_4b0287
  %loadMem_4b03f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7229 = getelementptr inbounds %struct.GPR, %struct.GPR* %7228, i32 0, i32 33
  %7230 = getelementptr inbounds %struct.Reg, %struct.Reg* %7229, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %7230 to i64*
  %7231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7232 = getelementptr inbounds %struct.GPR, %struct.GPR* %7231, i32 0, i32 1
  %7233 = getelementptr inbounds %struct.Reg, %struct.Reg* %7232, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %7233 to i64*
  %7234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7235 = getelementptr inbounds %struct.GPR, %struct.GPR* %7234, i32 0, i32 15
  %7236 = getelementptr inbounds %struct.Reg, %struct.Reg* %7235, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %7236 to i64*
  %7237 = load i64, i64* %RBP.i197
  %7238 = sub i64 %7237, 560
  %7239 = load i64, i64* %PC.i195
  %7240 = add i64 %7239, 7
  store i64 %7240, i64* %PC.i195
  store i64 %7238, i64* %RAX.i196, align 8
  store %struct.Memory* %loadMem_4b03f3, %struct.Memory** %MEMORY
  %loadMem_4b03fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7242 = getelementptr inbounds %struct.GPR, %struct.GPR* %7241, i32 0, i32 33
  %7243 = getelementptr inbounds %struct.Reg, %struct.Reg* %7242, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %7243 to i64*
  %7244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7245 = getelementptr inbounds %struct.GPR, %struct.GPR* %7244, i32 0, i32 5
  %7246 = getelementptr inbounds %struct.Reg, %struct.Reg* %7245, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %7246 to i64*
  %7247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7248 = getelementptr inbounds %struct.GPR, %struct.GPR* %7247, i32 0, i32 15
  %7249 = getelementptr inbounds %struct.Reg, %struct.Reg* %7248, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %7249 to i64*
  %7250 = load i64, i64* %RBP.i194
  %7251 = sub i64 %7250, 184
  %7252 = load i64, i64* %PC.i192
  %7253 = add i64 %7252, 6
  store i64 %7253, i64* %PC.i192
  %7254 = inttoptr i64 %7251 to i32*
  %7255 = load i32, i32* %7254
  %7256 = zext i32 %7255 to i64
  store i64 %7256, i64* %RCX.i193, align 8
  store %struct.Memory* %loadMem_4b03fa, %struct.Memory** %MEMORY
  %loadMem_4b0400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7258 = getelementptr inbounds %struct.GPR, %struct.GPR* %7257, i32 0, i32 33
  %7259 = getelementptr inbounds %struct.Reg, %struct.Reg* %7258, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %7259 to i64*
  %7260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7261 = getelementptr inbounds %struct.GPR, %struct.GPR* %7260, i32 0, i32 7
  %7262 = getelementptr inbounds %struct.Reg, %struct.Reg* %7261, i32 0, i32 0
  %RDX.i190 = bitcast %union.anon* %7262 to i64*
  %7263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7264 = getelementptr inbounds %struct.GPR, %struct.GPR* %7263, i32 0, i32 15
  %7265 = getelementptr inbounds %struct.Reg, %struct.Reg* %7264, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %7265 to i64*
  %7266 = load i64, i64* %RBP.i191
  %7267 = sub i64 %7266, 932
  %7268 = load i64, i64* %PC.i189
  %7269 = add i64 %7268, 7
  store i64 %7269, i64* %PC.i189
  %7270 = inttoptr i64 %7267 to i32*
  %7271 = load i32, i32* %7270
  %7272 = sext i32 %7271 to i64
  store i64 %7272, i64* %RDX.i190, align 8
  store %struct.Memory* %loadMem_4b0400, %struct.Memory** %MEMORY
  %loadMem_4b0407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7274 = getelementptr inbounds %struct.GPR, %struct.GPR* %7273, i32 0, i32 33
  %7275 = getelementptr inbounds %struct.Reg, %struct.Reg* %7274, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %7275 to i64*
  %7276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7277 = getelementptr inbounds %struct.GPR, %struct.GPR* %7276, i32 0, i32 7
  %7278 = getelementptr inbounds %struct.Reg, %struct.Reg* %7277, i32 0, i32 0
  %RDX.i188 = bitcast %union.anon* %7278 to i64*
  %7279 = load i64, i64* %RDX.i188
  %7280 = load i64, i64* %PC.i187
  %7281 = add i64 %7280, 7
  store i64 %7281, i64* %PC.i187
  %7282 = sext i64 %7279 to i128
  %7283 = and i128 %7282, -18446744073709551616
  %7284 = zext i64 %7279 to i128
  %7285 = or i128 %7283, %7284
  %7286 = mul i128 180, %7285
  %7287 = trunc i128 %7286 to i64
  store i64 %7287, i64* %RDX.i188, align 8
  %7288 = sext i64 %7287 to i128
  %7289 = icmp ne i128 %7288, %7286
  %7290 = zext i1 %7289 to i8
  %7291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7290, i8* %7291, align 1
  %7292 = trunc i128 %7286 to i32
  %7293 = and i32 %7292, 255
  %7294 = call i32 @llvm.ctpop.i32(i32 %7293)
  %7295 = trunc i32 %7294 to i8
  %7296 = and i8 %7295, 1
  %7297 = xor i8 %7296, 1
  %7298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7297, i8* %7298, align 1
  %7299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7299, align 1
  %7300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7300, align 1
  %7301 = lshr i64 %7287, 63
  %7302 = trunc i64 %7301 to i8
  %7303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7302, i8* %7303, align 1
  %7304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7290, i8* %7304, align 1
  store %struct.Memory* %loadMem_4b0407, %struct.Memory** %MEMORY
  %loadMem_4b040e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7306 = getelementptr inbounds %struct.GPR, %struct.GPR* %7305, i32 0, i32 33
  %7307 = getelementptr inbounds %struct.Reg, %struct.Reg* %7306, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %7307 to i64*
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7309 = getelementptr inbounds %struct.GPR, %struct.GPR* %7308, i32 0, i32 1
  %7310 = getelementptr inbounds %struct.Reg, %struct.Reg* %7309, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %7310 to i64*
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7312 = getelementptr inbounds %struct.GPR, %struct.GPR* %7311, i32 0, i32 9
  %7313 = getelementptr inbounds %struct.Reg, %struct.Reg* %7312, i32 0, i32 0
  %RSI.i186 = bitcast %union.anon* %7313 to i64*
  %7314 = load i64, i64* %RAX.i185
  %7315 = load i64, i64* %PC.i184
  %7316 = add i64 %7315, 3
  store i64 %7316, i64* %PC.i184
  store i64 %7314, i64* %RSI.i186, align 8
  store %struct.Memory* %loadMem_4b040e, %struct.Memory** %MEMORY
  %loadMem_4b0411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7318 = getelementptr inbounds %struct.GPR, %struct.GPR* %7317, i32 0, i32 33
  %7319 = getelementptr inbounds %struct.Reg, %struct.Reg* %7318, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %7319 to i64*
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7321 = getelementptr inbounds %struct.GPR, %struct.GPR* %7320, i32 0, i32 7
  %7322 = getelementptr inbounds %struct.Reg, %struct.Reg* %7321, i32 0, i32 0
  %RDX.i182 = bitcast %union.anon* %7322 to i64*
  %7323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7324 = getelementptr inbounds %struct.GPR, %struct.GPR* %7323, i32 0, i32 9
  %7325 = getelementptr inbounds %struct.Reg, %struct.Reg* %7324, i32 0, i32 0
  %RSI.i183 = bitcast %union.anon* %7325 to i64*
  %7326 = load i64, i64* %RSI.i183
  %7327 = load i64, i64* %RDX.i182
  %7328 = load i64, i64* %PC.i181
  %7329 = add i64 %7328, 3
  store i64 %7329, i64* %PC.i181
  %7330 = add i64 %7327, %7326
  store i64 %7330, i64* %RSI.i183, align 8
  %7331 = icmp ult i64 %7330, %7326
  %7332 = icmp ult i64 %7330, %7327
  %7333 = or i1 %7331, %7332
  %7334 = zext i1 %7333 to i8
  %7335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7334, i8* %7335, align 1
  %7336 = trunc i64 %7330 to i32
  %7337 = and i32 %7336, 255
  %7338 = call i32 @llvm.ctpop.i32(i32 %7337)
  %7339 = trunc i32 %7338 to i8
  %7340 = and i8 %7339, 1
  %7341 = xor i8 %7340, 1
  %7342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7341, i8* %7342, align 1
  %7343 = xor i64 %7327, %7326
  %7344 = xor i64 %7343, %7330
  %7345 = lshr i64 %7344, 4
  %7346 = trunc i64 %7345 to i8
  %7347 = and i8 %7346, 1
  %7348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7347, i8* %7348, align 1
  %7349 = icmp eq i64 %7330, 0
  %7350 = zext i1 %7349 to i8
  %7351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7350, i8* %7351, align 1
  %7352 = lshr i64 %7330, 63
  %7353 = trunc i64 %7352 to i8
  %7354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7353, i8* %7354, align 1
  %7355 = lshr i64 %7326, 63
  %7356 = lshr i64 %7327, 63
  %7357 = xor i64 %7352, %7355
  %7358 = xor i64 %7352, %7356
  %7359 = add i64 %7357, %7358
  %7360 = icmp eq i64 %7359, 2
  %7361 = zext i1 %7360 to i8
  %7362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7361, i8* %7362, align 1
  store %struct.Memory* %loadMem_4b0411, %struct.Memory** %MEMORY
  %loadMem_4b0414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7364 = getelementptr inbounds %struct.GPR, %struct.GPR* %7363, i32 0, i32 33
  %7365 = getelementptr inbounds %struct.Reg, %struct.Reg* %7364, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %7365 to i64*
  %7366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7367 = getelementptr inbounds %struct.GPR, %struct.GPR* %7366, i32 0, i32 7
  %7368 = getelementptr inbounds %struct.Reg, %struct.Reg* %7367, i32 0, i32 0
  %RDX.i179 = bitcast %union.anon* %7368 to i64*
  %7369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7370 = getelementptr inbounds %struct.GPR, %struct.GPR* %7369, i32 0, i32 15
  %7371 = getelementptr inbounds %struct.Reg, %struct.Reg* %7370, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %7371 to i64*
  %7372 = load i64, i64* %RBP.i180
  %7373 = sub i64 %7372, 16
  %7374 = load i64, i64* %PC.i178
  %7375 = add i64 %7374, 4
  store i64 %7375, i64* %PC.i178
  %7376 = inttoptr i64 %7373 to i32*
  %7377 = load i32, i32* %7376
  %7378 = sext i32 %7377 to i64
  store i64 %7378, i64* %RDX.i179, align 8
  store %struct.Memory* %loadMem_4b0414, %struct.Memory** %MEMORY
  %loadMem_4b0418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7380 = getelementptr inbounds %struct.GPR, %struct.GPR* %7379, i32 0, i32 33
  %7381 = getelementptr inbounds %struct.Reg, %struct.Reg* %7380, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %7381 to i64*
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7383 = getelementptr inbounds %struct.GPR, %struct.GPR* %7382, i32 0, i32 7
  %7384 = getelementptr inbounds %struct.Reg, %struct.Reg* %7383, i32 0, i32 0
  %RDX.i177 = bitcast %union.anon* %7384 to i64*
  %7385 = load i64, i64* %RDX.i177
  %7386 = load i64, i64* %PC.i176
  %7387 = add i64 %7386, 4
  store i64 %7387, i64* %PC.i176
  %7388 = sext i64 %7385 to i128
  %7389 = and i128 %7388, -18446744073709551616
  %7390 = zext i64 %7385 to i128
  %7391 = or i128 %7389, %7390
  %7392 = mul i128 12, %7391
  %7393 = trunc i128 %7392 to i64
  store i64 %7393, i64* %RDX.i177, align 8
  %7394 = sext i64 %7393 to i128
  %7395 = icmp ne i128 %7394, %7392
  %7396 = zext i1 %7395 to i8
  %7397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7396, i8* %7397, align 1
  %7398 = trunc i128 %7392 to i32
  %7399 = and i32 %7398, 255
  %7400 = call i32 @llvm.ctpop.i32(i32 %7399)
  %7401 = trunc i32 %7400 to i8
  %7402 = and i8 %7401, 1
  %7403 = xor i8 %7402, 1
  %7404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7403, i8* %7404, align 1
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7405, align 1
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7406, align 1
  %7407 = lshr i64 %7393, 63
  %7408 = trunc i64 %7407 to i8
  %7409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7408, i8* %7409, align 1
  %7410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7396, i8* %7410, align 1
  store %struct.Memory* %loadMem_4b0418, %struct.Memory** %MEMORY
  %loadMem_4b041c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7412 = getelementptr inbounds %struct.GPR, %struct.GPR* %7411, i32 0, i32 33
  %7413 = getelementptr inbounds %struct.Reg, %struct.Reg* %7412, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %7413 to i64*
  %7414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7415 = getelementptr inbounds %struct.GPR, %struct.GPR* %7414, i32 0, i32 7
  %7416 = getelementptr inbounds %struct.Reg, %struct.Reg* %7415, i32 0, i32 0
  %RDX.i174 = bitcast %union.anon* %7416 to i64*
  %7417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7418 = getelementptr inbounds %struct.GPR, %struct.GPR* %7417, i32 0, i32 9
  %7419 = getelementptr inbounds %struct.Reg, %struct.Reg* %7418, i32 0, i32 0
  %RSI.i175 = bitcast %union.anon* %7419 to i64*
  %7420 = load i64, i64* %RSI.i175
  %7421 = load i64, i64* %RDX.i174
  %7422 = load i64, i64* %PC.i173
  %7423 = add i64 %7422, 3
  store i64 %7423, i64* %PC.i173
  %7424 = add i64 %7421, %7420
  store i64 %7424, i64* %RSI.i175, align 8
  %7425 = icmp ult i64 %7424, %7420
  %7426 = icmp ult i64 %7424, %7421
  %7427 = or i1 %7425, %7426
  %7428 = zext i1 %7427 to i8
  %7429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7428, i8* %7429, align 1
  %7430 = trunc i64 %7424 to i32
  %7431 = and i32 %7430, 255
  %7432 = call i32 @llvm.ctpop.i32(i32 %7431)
  %7433 = trunc i32 %7432 to i8
  %7434 = and i8 %7433, 1
  %7435 = xor i8 %7434, 1
  %7436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7435, i8* %7436, align 1
  %7437 = xor i64 %7421, %7420
  %7438 = xor i64 %7437, %7424
  %7439 = lshr i64 %7438, 4
  %7440 = trunc i64 %7439 to i8
  %7441 = and i8 %7440, 1
  %7442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7441, i8* %7442, align 1
  %7443 = icmp eq i64 %7424, 0
  %7444 = zext i1 %7443 to i8
  %7445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7444, i8* %7445, align 1
  %7446 = lshr i64 %7424, 63
  %7447 = trunc i64 %7446 to i8
  %7448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7447, i8* %7448, align 1
  %7449 = lshr i64 %7420, 63
  %7450 = lshr i64 %7421, 63
  %7451 = xor i64 %7446, %7449
  %7452 = xor i64 %7446, %7450
  %7453 = add i64 %7451, %7452
  %7454 = icmp eq i64 %7453, 2
  %7455 = zext i1 %7454 to i8
  %7456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7455, i8* %7456, align 1
  store %struct.Memory* %loadMem_4b041c, %struct.Memory** %MEMORY
  %loadMem_4b041f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7458 = getelementptr inbounds %struct.GPR, %struct.GPR* %7457, i32 0, i32 33
  %7459 = getelementptr inbounds %struct.Reg, %struct.Reg* %7458, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %7459 to i64*
  %7460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7461 = getelementptr inbounds %struct.GPR, %struct.GPR* %7460, i32 0, i32 5
  %7462 = getelementptr inbounds %struct.Reg, %struct.Reg* %7461, i32 0, i32 0
  %ECX.i172 = bitcast %union.anon* %7462 to i32*
  %7463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7464 = getelementptr inbounds %struct.GPR, %struct.GPR* %7463, i32 0, i32 9
  %7465 = getelementptr inbounds %struct.Reg, %struct.Reg* %7464, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7465 to i64*
  %7466 = load i64, i64* %RSI.i
  %7467 = add i64 %7466, 4
  %7468 = load i32, i32* %ECX.i172
  %7469 = zext i32 %7468 to i64
  %7470 = load i64, i64* %PC.i171
  %7471 = add i64 %7470, 3
  store i64 %7471, i64* %PC.i171
  %7472 = inttoptr i64 %7467 to i32*
  store i32 %7468, i32* %7472
  store %struct.Memory* %loadMem_4b041f, %struct.Memory** %MEMORY
  %loadMem_4b0422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7474 = getelementptr inbounds %struct.GPR, %struct.GPR* %7473, i32 0, i32 33
  %7475 = getelementptr inbounds %struct.Reg, %struct.Reg* %7474, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %7475 to i64*
  %7476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7477 = getelementptr inbounds %struct.GPR, %struct.GPR* %7476, i32 0, i32 5
  %7478 = getelementptr inbounds %struct.Reg, %struct.Reg* %7477, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %7478 to i64*
  %7479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7480 = getelementptr inbounds %struct.GPR, %struct.GPR* %7479, i32 0, i32 15
  %7481 = getelementptr inbounds %struct.Reg, %struct.Reg* %7480, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %7481 to i64*
  %7482 = load i64, i64* %RBP.i170
  %7483 = sub i64 %7482, 184
  %7484 = load i64, i64* %PC.i168
  %7485 = add i64 %7484, 6
  store i64 %7485, i64* %PC.i168
  %7486 = inttoptr i64 %7483 to i32*
  %7487 = load i32, i32* %7486
  %7488 = zext i32 %7487 to i64
  store i64 %7488, i64* %RCX.i169, align 8
  store %struct.Memory* %loadMem_4b0422, %struct.Memory** %MEMORY
  %loadMem_4b0428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7490 = getelementptr inbounds %struct.GPR, %struct.GPR* %7489, i32 0, i32 33
  %7491 = getelementptr inbounds %struct.Reg, %struct.Reg* %7490, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %7491 to i64*
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7493 = getelementptr inbounds %struct.GPR, %struct.GPR* %7492, i32 0, i32 7
  %7494 = getelementptr inbounds %struct.Reg, %struct.Reg* %7493, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %7494 to i64*
  %7495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7496 = getelementptr inbounds %struct.GPR, %struct.GPR* %7495, i32 0, i32 15
  %7497 = getelementptr inbounds %struct.Reg, %struct.Reg* %7496, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %7497 to i64*
  %7498 = load i64, i64* %RBP.i167
  %7499 = sub i64 %7498, 932
  %7500 = load i64, i64* %PC.i165
  %7501 = add i64 %7500, 7
  store i64 %7501, i64* %PC.i165
  %7502 = inttoptr i64 %7499 to i32*
  %7503 = load i32, i32* %7502
  %7504 = sext i32 %7503 to i64
  store i64 %7504, i64* %RDX.i166, align 8
  store %struct.Memory* %loadMem_4b0428, %struct.Memory** %MEMORY
  %loadMem_4b042f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7506 = getelementptr inbounds %struct.GPR, %struct.GPR* %7505, i32 0, i32 33
  %7507 = getelementptr inbounds %struct.Reg, %struct.Reg* %7506, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %7507 to i64*
  %7508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7509 = getelementptr inbounds %struct.GPR, %struct.GPR* %7508, i32 0, i32 7
  %7510 = getelementptr inbounds %struct.Reg, %struct.Reg* %7509, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %7510 to i64*
  %7511 = load i64, i64* %RDX.i164
  %7512 = load i64, i64* %PC.i163
  %7513 = add i64 %7512, 7
  store i64 %7513, i64* %PC.i163
  %7514 = sext i64 %7511 to i128
  %7515 = and i128 %7514, -18446744073709551616
  %7516 = zext i64 %7511 to i128
  %7517 = or i128 %7515, %7516
  %7518 = mul i128 180, %7517
  %7519 = trunc i128 %7518 to i64
  store i64 %7519, i64* %RDX.i164, align 8
  %7520 = sext i64 %7519 to i128
  %7521 = icmp ne i128 %7520, %7518
  %7522 = zext i1 %7521 to i8
  %7523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7522, i8* %7523, align 1
  %7524 = trunc i128 %7518 to i32
  %7525 = and i32 %7524, 255
  %7526 = call i32 @llvm.ctpop.i32(i32 %7525)
  %7527 = trunc i32 %7526 to i8
  %7528 = and i8 %7527, 1
  %7529 = xor i8 %7528, 1
  %7530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7529, i8* %7530, align 1
  %7531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7531, align 1
  %7532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7532, align 1
  %7533 = lshr i64 %7519, 63
  %7534 = trunc i64 %7533 to i8
  %7535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7534, i8* %7535, align 1
  %7536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7522, i8* %7536, align 1
  store %struct.Memory* %loadMem_4b042f, %struct.Memory** %MEMORY
  %loadMem_4b0436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7538 = getelementptr inbounds %struct.GPR, %struct.GPR* %7537, i32 0, i32 33
  %7539 = getelementptr inbounds %struct.Reg, %struct.Reg* %7538, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %7539 to i64*
  %7540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7541 = getelementptr inbounds %struct.GPR, %struct.GPR* %7540, i32 0, i32 1
  %7542 = getelementptr inbounds %struct.Reg, %struct.Reg* %7541, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %7542 to i64*
  %7543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7544 = getelementptr inbounds %struct.GPR, %struct.GPR* %7543, i32 0, i32 7
  %7545 = getelementptr inbounds %struct.Reg, %struct.Reg* %7544, i32 0, i32 0
  %RDX.i162 = bitcast %union.anon* %7545 to i64*
  %7546 = load i64, i64* %RAX.i161
  %7547 = load i64, i64* %RDX.i162
  %7548 = load i64, i64* %PC.i160
  %7549 = add i64 %7548, 3
  store i64 %7549, i64* %PC.i160
  %7550 = add i64 %7547, %7546
  store i64 %7550, i64* %RAX.i161, align 8
  %7551 = icmp ult i64 %7550, %7546
  %7552 = icmp ult i64 %7550, %7547
  %7553 = or i1 %7551, %7552
  %7554 = zext i1 %7553 to i8
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7554, i8* %7555, align 1
  %7556 = trunc i64 %7550 to i32
  %7557 = and i32 %7556, 255
  %7558 = call i32 @llvm.ctpop.i32(i32 %7557)
  %7559 = trunc i32 %7558 to i8
  %7560 = and i8 %7559, 1
  %7561 = xor i8 %7560, 1
  %7562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7561, i8* %7562, align 1
  %7563 = xor i64 %7547, %7546
  %7564 = xor i64 %7563, %7550
  %7565 = lshr i64 %7564, 4
  %7566 = trunc i64 %7565 to i8
  %7567 = and i8 %7566, 1
  %7568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7567, i8* %7568, align 1
  %7569 = icmp eq i64 %7550, 0
  %7570 = zext i1 %7569 to i8
  %7571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7570, i8* %7571, align 1
  %7572 = lshr i64 %7550, 63
  %7573 = trunc i64 %7572 to i8
  %7574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7573, i8* %7574, align 1
  %7575 = lshr i64 %7546, 63
  %7576 = lshr i64 %7547, 63
  %7577 = xor i64 %7572, %7575
  %7578 = xor i64 %7572, %7576
  %7579 = add i64 %7577, %7578
  %7580 = icmp eq i64 %7579, 2
  %7581 = zext i1 %7580 to i8
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7581, i8* %7582, align 1
  store %struct.Memory* %loadMem_4b0436, %struct.Memory** %MEMORY
  %loadMem_4b0439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7584 = getelementptr inbounds %struct.GPR, %struct.GPR* %7583, i32 0, i32 33
  %7585 = getelementptr inbounds %struct.Reg, %struct.Reg* %7584, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %7585 to i64*
  %7586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7587 = getelementptr inbounds %struct.GPR, %struct.GPR* %7586, i32 0, i32 7
  %7588 = getelementptr inbounds %struct.Reg, %struct.Reg* %7587, i32 0, i32 0
  %RDX.i158 = bitcast %union.anon* %7588 to i64*
  %7589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7590 = getelementptr inbounds %struct.GPR, %struct.GPR* %7589, i32 0, i32 15
  %7591 = getelementptr inbounds %struct.Reg, %struct.Reg* %7590, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %7591 to i64*
  %7592 = load i64, i64* %RBP.i159
  %7593 = sub i64 %7592, 16
  %7594 = load i64, i64* %PC.i157
  %7595 = add i64 %7594, 4
  store i64 %7595, i64* %PC.i157
  %7596 = inttoptr i64 %7593 to i32*
  %7597 = load i32, i32* %7596
  %7598 = sext i32 %7597 to i64
  store i64 %7598, i64* %RDX.i158, align 8
  store %struct.Memory* %loadMem_4b0439, %struct.Memory** %MEMORY
  %loadMem_4b043d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7600 = getelementptr inbounds %struct.GPR, %struct.GPR* %7599, i32 0, i32 33
  %7601 = getelementptr inbounds %struct.Reg, %struct.Reg* %7600, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %7601 to i64*
  %7602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7603 = getelementptr inbounds %struct.GPR, %struct.GPR* %7602, i32 0, i32 7
  %7604 = getelementptr inbounds %struct.Reg, %struct.Reg* %7603, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %7604 to i64*
  %7605 = load i64, i64* %RDX.i156
  %7606 = load i64, i64* %PC.i155
  %7607 = add i64 %7606, 4
  store i64 %7607, i64* %PC.i155
  %7608 = sext i64 %7605 to i128
  %7609 = and i128 %7608, -18446744073709551616
  %7610 = zext i64 %7605 to i128
  %7611 = or i128 %7609, %7610
  %7612 = mul i128 12, %7611
  %7613 = trunc i128 %7612 to i64
  store i64 %7613, i64* %RDX.i156, align 8
  %7614 = sext i64 %7613 to i128
  %7615 = icmp ne i128 %7614, %7612
  %7616 = zext i1 %7615 to i8
  %7617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7616, i8* %7617, align 1
  %7618 = trunc i128 %7612 to i32
  %7619 = and i32 %7618, 255
  %7620 = call i32 @llvm.ctpop.i32(i32 %7619)
  %7621 = trunc i32 %7620 to i8
  %7622 = and i8 %7621, 1
  %7623 = xor i8 %7622, 1
  %7624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7623, i8* %7624, align 1
  %7625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7625, align 1
  %7626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7626, align 1
  %7627 = lshr i64 %7613, 63
  %7628 = trunc i64 %7627 to i8
  %7629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7628, i8* %7629, align 1
  %7630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7616, i8* %7630, align 1
  store %struct.Memory* %loadMem_4b043d, %struct.Memory** %MEMORY
  %loadMem_4b0441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7632 = getelementptr inbounds %struct.GPR, %struct.GPR* %7631, i32 0, i32 33
  %7633 = getelementptr inbounds %struct.Reg, %struct.Reg* %7632, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %7633 to i64*
  %7634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7635 = getelementptr inbounds %struct.GPR, %struct.GPR* %7634, i32 0, i32 1
  %7636 = getelementptr inbounds %struct.Reg, %struct.Reg* %7635, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %7636 to i64*
  %7637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7638 = getelementptr inbounds %struct.GPR, %struct.GPR* %7637, i32 0, i32 7
  %7639 = getelementptr inbounds %struct.Reg, %struct.Reg* %7638, i32 0, i32 0
  %RDX.i154 = bitcast %union.anon* %7639 to i64*
  %7640 = load i64, i64* %RAX.i153
  %7641 = load i64, i64* %RDX.i154
  %7642 = load i64, i64* %PC.i152
  %7643 = add i64 %7642, 3
  store i64 %7643, i64* %PC.i152
  %7644 = add i64 %7641, %7640
  store i64 %7644, i64* %RAX.i153, align 8
  %7645 = icmp ult i64 %7644, %7640
  %7646 = icmp ult i64 %7644, %7641
  %7647 = or i1 %7645, %7646
  %7648 = zext i1 %7647 to i8
  %7649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7648, i8* %7649, align 1
  %7650 = trunc i64 %7644 to i32
  %7651 = and i32 %7650, 255
  %7652 = call i32 @llvm.ctpop.i32(i32 %7651)
  %7653 = trunc i32 %7652 to i8
  %7654 = and i8 %7653, 1
  %7655 = xor i8 %7654, 1
  %7656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7655, i8* %7656, align 1
  %7657 = xor i64 %7641, %7640
  %7658 = xor i64 %7657, %7644
  %7659 = lshr i64 %7658, 4
  %7660 = trunc i64 %7659 to i8
  %7661 = and i8 %7660, 1
  %7662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7661, i8* %7662, align 1
  %7663 = icmp eq i64 %7644, 0
  %7664 = zext i1 %7663 to i8
  %7665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7664, i8* %7665, align 1
  %7666 = lshr i64 %7644, 63
  %7667 = trunc i64 %7666 to i8
  %7668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7667, i8* %7668, align 1
  %7669 = lshr i64 %7640, 63
  %7670 = lshr i64 %7641, 63
  %7671 = xor i64 %7666, %7669
  %7672 = xor i64 %7666, %7670
  %7673 = add i64 %7671, %7672
  %7674 = icmp eq i64 %7673, 2
  %7675 = zext i1 %7674 to i8
  %7676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7675, i8* %7676, align 1
  store %struct.Memory* %loadMem_4b0441, %struct.Memory** %MEMORY
  %loadMem_4b0444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7678 = getelementptr inbounds %struct.GPR, %struct.GPR* %7677, i32 0, i32 33
  %7679 = getelementptr inbounds %struct.Reg, %struct.Reg* %7678, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %7679 to i64*
  %7680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7681 = getelementptr inbounds %struct.GPR, %struct.GPR* %7680, i32 0, i32 5
  %7682 = getelementptr inbounds %struct.Reg, %struct.Reg* %7681, i32 0, i32 0
  %ECX.i150 = bitcast %union.anon* %7682 to i32*
  %7683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7684 = getelementptr inbounds %struct.GPR, %struct.GPR* %7683, i32 0, i32 1
  %7685 = getelementptr inbounds %struct.Reg, %struct.Reg* %7684, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %7685 to i64*
  %7686 = load i64, i64* %RAX.i151
  %7687 = add i64 %7686, 8
  %7688 = load i32, i32* %ECX.i150
  %7689 = zext i32 %7688 to i64
  %7690 = load i64, i64* %PC.i149
  %7691 = add i64 %7690, 3
  store i64 %7691, i64* %PC.i149
  %7692 = inttoptr i64 %7687 to i32*
  store i32 %7688, i32* %7692
  store %struct.Memory* %loadMem_4b0444, %struct.Memory** %MEMORY
  %loadMem_4b0447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7694 = getelementptr inbounds %struct.GPR, %struct.GPR* %7693, i32 0, i32 33
  %7695 = getelementptr inbounds %struct.Reg, %struct.Reg* %7694, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %7695 to i64*
  %7696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7697 = getelementptr inbounds %struct.GPR, %struct.GPR* %7696, i32 0, i32 1
  %7698 = getelementptr inbounds %struct.Reg, %struct.Reg* %7697, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %7698 to i64*
  %7699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7700 = getelementptr inbounds %struct.GPR, %struct.GPR* %7699, i32 0, i32 15
  %7701 = getelementptr inbounds %struct.Reg, %struct.Reg* %7700, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %7701 to i64*
  %7702 = load i64, i64* %RBP.i148
  %7703 = sub i64 %7702, 16
  %7704 = load i64, i64* %PC.i146
  %7705 = add i64 %7704, 3
  store i64 %7705, i64* %PC.i146
  %7706 = inttoptr i64 %7703 to i32*
  %7707 = load i32, i32* %7706
  %7708 = zext i32 %7707 to i64
  store i64 %7708, i64* %RAX.i147, align 8
  store %struct.Memory* %loadMem_4b0447, %struct.Memory** %MEMORY
  %loadMem_4b044a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7710 = getelementptr inbounds %struct.GPR, %struct.GPR* %7709, i32 0, i32 33
  %7711 = getelementptr inbounds %struct.Reg, %struct.Reg* %7710, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %7711 to i64*
  %7712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7713 = getelementptr inbounds %struct.GPR, %struct.GPR* %7712, i32 0, i32 1
  %7714 = getelementptr inbounds %struct.Reg, %struct.Reg* %7713, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %7714 to i64*
  %7715 = load i64, i64* %RAX.i145
  %7716 = load i64, i64* %PC.i144
  %7717 = add i64 %7716, 3
  store i64 %7717, i64* %PC.i144
  %7718 = trunc i64 %7715 to i32
  %7719 = add i32 1, %7718
  %7720 = zext i32 %7719 to i64
  store i64 %7720, i64* %RAX.i145, align 8
  %7721 = icmp ult i32 %7719, %7718
  %7722 = icmp ult i32 %7719, 1
  %7723 = or i1 %7721, %7722
  %7724 = zext i1 %7723 to i8
  %7725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7724, i8* %7725, align 1
  %7726 = and i32 %7719, 255
  %7727 = call i32 @llvm.ctpop.i32(i32 %7726)
  %7728 = trunc i32 %7727 to i8
  %7729 = and i8 %7728, 1
  %7730 = xor i8 %7729, 1
  %7731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7730, i8* %7731, align 1
  %7732 = xor i64 1, %7715
  %7733 = trunc i64 %7732 to i32
  %7734 = xor i32 %7733, %7719
  %7735 = lshr i32 %7734, 4
  %7736 = trunc i32 %7735 to i8
  %7737 = and i8 %7736, 1
  %7738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7737, i8* %7738, align 1
  %7739 = icmp eq i32 %7719, 0
  %7740 = zext i1 %7739 to i8
  %7741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7740, i8* %7741, align 1
  %7742 = lshr i32 %7719, 31
  %7743 = trunc i32 %7742 to i8
  %7744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7743, i8* %7744, align 1
  %7745 = lshr i32 %7718, 31
  %7746 = xor i32 %7742, %7745
  %7747 = add i32 %7746, %7742
  %7748 = icmp eq i32 %7747, 2
  %7749 = zext i1 %7748 to i8
  %7750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7749, i8* %7750, align 1
  store %struct.Memory* %loadMem_4b044a, %struct.Memory** %MEMORY
  %loadMem_4b044d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7752 = getelementptr inbounds %struct.GPR, %struct.GPR* %7751, i32 0, i32 33
  %7753 = getelementptr inbounds %struct.Reg, %struct.Reg* %7752, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %7753 to i64*
  %7754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7755 = getelementptr inbounds %struct.GPR, %struct.GPR* %7754, i32 0, i32 1
  %7756 = getelementptr inbounds %struct.Reg, %struct.Reg* %7755, i32 0, i32 0
  %EAX.i142 = bitcast %union.anon* %7756 to i32*
  %7757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7758 = getelementptr inbounds %struct.GPR, %struct.GPR* %7757, i32 0, i32 15
  %7759 = getelementptr inbounds %struct.Reg, %struct.Reg* %7758, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %7759 to i64*
  %7760 = load i64, i64* %RBP.i143
  %7761 = sub i64 %7760, 16
  %7762 = load i32, i32* %EAX.i142
  %7763 = zext i32 %7762 to i64
  %7764 = load i64, i64* %PC.i141
  %7765 = add i64 %7764, 3
  store i64 %7765, i64* %PC.i141
  %7766 = inttoptr i64 %7761 to i32*
  store i32 %7762, i32* %7766
  store %struct.Memory* %loadMem_4b044d, %struct.Memory** %MEMORY
  %loadMem_4b0450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7768 = getelementptr inbounds %struct.GPR, %struct.GPR* %7767, i32 0, i32 33
  %7769 = getelementptr inbounds %struct.Reg, %struct.Reg* %7768, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %7769 to i64*
  %7770 = load i64, i64* %PC.i140
  %7771 = add i64 %7770, -969
  %7772 = load i64, i64* %PC.i140
  %7773 = add i64 %7772, 5
  store i64 %7773, i64* %PC.i140
  %7774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7771, i64* %7774, align 8
  store %struct.Memory* %loadMem_4b0450, %struct.Memory** %MEMORY
  br label %block_.L_4b0087

block_.L_4b0455:                                  ; preds = %block_.L_4b0087
  %loadMem_4b0455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7776 = getelementptr inbounds %struct.GPR, %struct.GPR* %7775, i32 0, i32 33
  %7777 = getelementptr inbounds %struct.Reg, %struct.Reg* %7776, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %7777 to i64*
  %7778 = load i64, i64* %PC.i139
  %7779 = add i64 %7778, 5
  %7780 = load i64, i64* %PC.i139
  %7781 = add i64 %7780, 5
  store i64 %7781, i64* %PC.i139
  %7782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7779, i64* %7782, align 8
  store %struct.Memory* %loadMem_4b0455, %struct.Memory** %MEMORY
  br label %block_.L_4b045a

block_.L_4b045a:                                  ; preds = %block_.L_4b0455
  %loadMem_4b045a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7784 = getelementptr inbounds %struct.GPR, %struct.GPR* %7783, i32 0, i32 33
  %7785 = getelementptr inbounds %struct.Reg, %struct.Reg* %7784, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %7785 to i64*
  %7786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7787 = getelementptr inbounds %struct.GPR, %struct.GPR* %7786, i32 0, i32 1
  %7788 = getelementptr inbounds %struct.Reg, %struct.Reg* %7787, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %7788 to i64*
  %7789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7790 = getelementptr inbounds %struct.GPR, %struct.GPR* %7789, i32 0, i32 15
  %7791 = getelementptr inbounds %struct.Reg, %struct.Reg* %7790, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %7791 to i64*
  %7792 = load i64, i64* %RBP.i138
  %7793 = sub i64 %7792, 932
  %7794 = load i64, i64* %PC.i136
  %7795 = add i64 %7794, 6
  store i64 %7795, i64* %PC.i136
  %7796 = inttoptr i64 %7793 to i32*
  %7797 = load i32, i32* %7796
  %7798 = zext i32 %7797 to i64
  store i64 %7798, i64* %RAX.i137, align 8
  store %struct.Memory* %loadMem_4b045a, %struct.Memory** %MEMORY
  %loadMem_4b0460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7800 = getelementptr inbounds %struct.GPR, %struct.GPR* %7799, i32 0, i32 33
  %7801 = getelementptr inbounds %struct.Reg, %struct.Reg* %7800, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %7801 to i64*
  %7802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7803 = getelementptr inbounds %struct.GPR, %struct.GPR* %7802, i32 0, i32 1
  %7804 = getelementptr inbounds %struct.Reg, %struct.Reg* %7803, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %7804 to i64*
  %7805 = load i64, i64* %RAX.i135
  %7806 = load i64, i64* %PC.i134
  %7807 = add i64 %7806, 3
  store i64 %7807, i64* %PC.i134
  %7808 = trunc i64 %7805 to i32
  %7809 = add i32 1, %7808
  %7810 = zext i32 %7809 to i64
  store i64 %7810, i64* %RAX.i135, align 8
  %7811 = icmp ult i32 %7809, %7808
  %7812 = icmp ult i32 %7809, 1
  %7813 = or i1 %7811, %7812
  %7814 = zext i1 %7813 to i8
  %7815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7814, i8* %7815, align 1
  %7816 = and i32 %7809, 255
  %7817 = call i32 @llvm.ctpop.i32(i32 %7816)
  %7818 = trunc i32 %7817 to i8
  %7819 = and i8 %7818, 1
  %7820 = xor i8 %7819, 1
  %7821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7820, i8* %7821, align 1
  %7822 = xor i64 1, %7805
  %7823 = trunc i64 %7822 to i32
  %7824 = xor i32 %7823, %7809
  %7825 = lshr i32 %7824, 4
  %7826 = trunc i32 %7825 to i8
  %7827 = and i8 %7826, 1
  %7828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7827, i8* %7828, align 1
  %7829 = icmp eq i32 %7809, 0
  %7830 = zext i1 %7829 to i8
  %7831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7830, i8* %7831, align 1
  %7832 = lshr i32 %7809, 31
  %7833 = trunc i32 %7832 to i8
  %7834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7833, i8* %7834, align 1
  %7835 = lshr i32 %7808, 31
  %7836 = xor i32 %7832, %7835
  %7837 = add i32 %7836, %7832
  %7838 = icmp eq i32 %7837, 2
  %7839 = zext i1 %7838 to i8
  %7840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7839, i8* %7840, align 1
  store %struct.Memory* %loadMem_4b0460, %struct.Memory** %MEMORY
  %loadMem_4b0463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7842 = getelementptr inbounds %struct.GPR, %struct.GPR* %7841, i32 0, i32 33
  %7843 = getelementptr inbounds %struct.Reg, %struct.Reg* %7842, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %7843 to i64*
  %7844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7845 = getelementptr inbounds %struct.GPR, %struct.GPR* %7844, i32 0, i32 1
  %7846 = getelementptr inbounds %struct.Reg, %struct.Reg* %7845, i32 0, i32 0
  %EAX.i132 = bitcast %union.anon* %7846 to i32*
  %7847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7848 = getelementptr inbounds %struct.GPR, %struct.GPR* %7847, i32 0, i32 15
  %7849 = getelementptr inbounds %struct.Reg, %struct.Reg* %7848, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %7849 to i64*
  %7850 = load i64, i64* %RBP.i133
  %7851 = sub i64 %7850, 932
  %7852 = load i32, i32* %EAX.i132
  %7853 = zext i32 %7852 to i64
  %7854 = load i64, i64* %PC.i131
  %7855 = add i64 %7854, 6
  store i64 %7855, i64* %PC.i131
  %7856 = inttoptr i64 %7851 to i32*
  store i32 %7852, i32* %7856
  store %struct.Memory* %loadMem_4b0463, %struct.Memory** %MEMORY
  %loadMem_4b0469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7858 = getelementptr inbounds %struct.GPR, %struct.GPR* %7857, i32 0, i32 33
  %7859 = getelementptr inbounds %struct.Reg, %struct.Reg* %7858, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %7859 to i64*
  %7860 = load i64, i64* %PC.i130
  %7861 = add i64 %7860, -1024
  %7862 = load i64, i64* %PC.i130
  %7863 = add i64 %7862, 5
  store i64 %7863, i64* %PC.i130
  %7864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7861, i64* %7864, align 8
  store %struct.Memory* %loadMem_4b0469, %struct.Memory** %MEMORY
  br label %block_.L_4b0069

block_.L_4b046e:                                  ; preds = %block_.L_4b0069
  %loadMem_4b046e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7866 = getelementptr inbounds %struct.GPR, %struct.GPR* %7865, i32 0, i32 33
  %7867 = getelementptr inbounds %struct.Reg, %struct.Reg* %7866, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %7867 to i64*
  %7868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7869 = getelementptr inbounds %struct.GPR, %struct.GPR* %7868, i32 0, i32 15
  %7870 = getelementptr inbounds %struct.Reg, %struct.Reg* %7869, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %7870 to i64*
  %7871 = load i64, i64* %RBP.i129
  %7872 = sub i64 %7871, 932
  %7873 = load i64, i64* %PC.i128
  %7874 = add i64 %7873, 10
  store i64 %7874, i64* %PC.i128
  %7875 = inttoptr i64 %7872 to i32*
  store i32 0, i32* %7875
  store %struct.Memory* %loadMem_4b046e, %struct.Memory** %MEMORY
  br label %block_.L_4b0478

block_.L_4b0478:                                  ; preds = %block_.L_4b0583, %block_.L_4b046e
  %loadMem_4b0478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7877 = getelementptr inbounds %struct.GPR, %struct.GPR* %7876, i32 0, i32 33
  %7878 = getelementptr inbounds %struct.Reg, %struct.Reg* %7877, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %7878 to i64*
  %7879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7880 = getelementptr inbounds %struct.GPR, %struct.GPR* %7879, i32 0, i32 1
  %7881 = getelementptr inbounds %struct.Reg, %struct.Reg* %7880, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %7881 to i64*
  %7882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7883 = getelementptr inbounds %struct.GPR, %struct.GPR* %7882, i32 0, i32 15
  %7884 = getelementptr inbounds %struct.Reg, %struct.Reg* %7883, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %7884 to i64*
  %7885 = load i64, i64* %RBP.i127
  %7886 = sub i64 %7885, 932
  %7887 = load i64, i64* %PC.i125
  %7888 = add i64 %7887, 6
  store i64 %7888, i64* %PC.i125
  %7889 = inttoptr i64 %7886 to i32*
  %7890 = load i32, i32* %7889
  %7891 = zext i32 %7890 to i64
  store i64 %7891, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_4b0478, %struct.Memory** %MEMORY
  %loadMem_4b047e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7893 = getelementptr inbounds %struct.GPR, %struct.GPR* %7892, i32 0, i32 33
  %7894 = getelementptr inbounds %struct.Reg, %struct.Reg* %7893, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %7894 to i64*
  %7895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7896 = getelementptr inbounds %struct.GPR, %struct.GPR* %7895, i32 0, i32 5
  %7897 = getelementptr inbounds %struct.Reg, %struct.Reg* %7896, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %7897 to i64*
  %7898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7899 = getelementptr inbounds %struct.GPR, %struct.GPR* %7898, i32 0, i32 15
  %7900 = getelementptr inbounds %struct.Reg, %struct.Reg* %7899, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %7900 to i64*
  %7901 = load i64, i64* %RBP.i124
  %7902 = sub i64 %7901, 188
  %7903 = load i64, i64* %PC.i122
  %7904 = add i64 %7903, 6
  store i64 %7904, i64* %PC.i122
  %7905 = inttoptr i64 %7902 to i32*
  %7906 = load i32, i32* %7905
  %7907 = zext i32 %7906 to i64
  store i64 %7907, i64* %RCX.i123, align 8
  store %struct.Memory* %loadMem_4b047e, %struct.Memory** %MEMORY
  %loadMem_4b0484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7909 = getelementptr inbounds %struct.GPR, %struct.GPR* %7908, i32 0, i32 33
  %7910 = getelementptr inbounds %struct.Reg, %struct.Reg* %7909, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %7910 to i64*
  %7911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7912 = getelementptr inbounds %struct.GPR, %struct.GPR* %7911, i32 0, i32 5
  %7913 = getelementptr inbounds %struct.Reg, %struct.Reg* %7912, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %7913 to i64*
  %7914 = load i64, i64* %RCX.i121
  %7915 = load i64, i64* %PC.i120
  %7916 = add i64 %7915, 3
  store i64 %7916, i64* %PC.i120
  %7917 = trunc i64 %7914 to i32
  %7918 = add i32 2, %7917
  %7919 = zext i32 %7918 to i64
  store i64 %7919, i64* %RCX.i121, align 8
  %7920 = icmp ult i32 %7918, %7917
  %7921 = icmp ult i32 %7918, 2
  %7922 = or i1 %7920, %7921
  %7923 = zext i1 %7922 to i8
  %7924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7923, i8* %7924, align 1
  %7925 = and i32 %7918, 255
  %7926 = call i32 @llvm.ctpop.i32(i32 %7925)
  %7927 = trunc i32 %7926 to i8
  %7928 = and i8 %7927, 1
  %7929 = xor i8 %7928, 1
  %7930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7929, i8* %7930, align 1
  %7931 = xor i64 2, %7914
  %7932 = trunc i64 %7931 to i32
  %7933 = xor i32 %7932, %7918
  %7934 = lshr i32 %7933, 4
  %7935 = trunc i32 %7934 to i8
  %7936 = and i8 %7935, 1
  %7937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7936, i8* %7937, align 1
  %7938 = icmp eq i32 %7918, 0
  %7939 = zext i1 %7938 to i8
  %7940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7939, i8* %7940, align 1
  %7941 = lshr i32 %7918, 31
  %7942 = trunc i32 %7941 to i8
  %7943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7942, i8* %7943, align 1
  %7944 = lshr i32 %7917, 31
  %7945 = xor i32 %7941, %7944
  %7946 = add i32 %7945, %7941
  %7947 = icmp eq i32 %7946, 2
  %7948 = zext i1 %7947 to i8
  %7949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7948, i8* %7949, align 1
  store %struct.Memory* %loadMem_4b0484, %struct.Memory** %MEMORY
  %loadMem_4b0487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7951 = getelementptr inbounds %struct.GPR, %struct.GPR* %7950, i32 0, i32 33
  %7952 = getelementptr inbounds %struct.Reg, %struct.Reg* %7951, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %7952 to i64*
  %7953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7954 = getelementptr inbounds %struct.GPR, %struct.GPR* %7953, i32 0, i32 1
  %7955 = getelementptr inbounds %struct.Reg, %struct.Reg* %7954, i32 0, i32 0
  %EAX.i119 = bitcast %union.anon* %7955 to i32*
  %7956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7957 = getelementptr inbounds %struct.GPR, %struct.GPR* %7956, i32 0, i32 5
  %7958 = getelementptr inbounds %struct.Reg, %struct.Reg* %7957, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %7958 to i32*
  %7959 = load i32, i32* %EAX.i119
  %7960 = zext i32 %7959 to i64
  %7961 = load i32, i32* %ECX.i
  %7962 = zext i32 %7961 to i64
  %7963 = load i64, i64* %PC.i118
  %7964 = add i64 %7963, 2
  store i64 %7964, i64* %PC.i118
  %7965 = sub i32 %7959, %7961
  %7966 = icmp ult i32 %7959, %7961
  %7967 = zext i1 %7966 to i8
  %7968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7967, i8* %7968, align 1
  %7969 = and i32 %7965, 255
  %7970 = call i32 @llvm.ctpop.i32(i32 %7969)
  %7971 = trunc i32 %7970 to i8
  %7972 = and i8 %7971, 1
  %7973 = xor i8 %7972, 1
  %7974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7973, i8* %7974, align 1
  %7975 = xor i64 %7962, %7960
  %7976 = trunc i64 %7975 to i32
  %7977 = xor i32 %7976, %7965
  %7978 = lshr i32 %7977, 4
  %7979 = trunc i32 %7978 to i8
  %7980 = and i8 %7979, 1
  %7981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7980, i8* %7981, align 1
  %7982 = icmp eq i32 %7965, 0
  %7983 = zext i1 %7982 to i8
  %7984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7983, i8* %7984, align 1
  %7985 = lshr i32 %7965, 31
  %7986 = trunc i32 %7985 to i8
  %7987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7986, i8* %7987, align 1
  %7988 = lshr i32 %7959, 31
  %7989 = lshr i32 %7961, 31
  %7990 = xor i32 %7989, %7988
  %7991 = xor i32 %7985, %7988
  %7992 = add i32 %7991, %7990
  %7993 = icmp eq i32 %7992, 2
  %7994 = zext i1 %7993 to i8
  %7995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7994, i8* %7995, align 1
  store %struct.Memory* %loadMem_4b0487, %struct.Memory** %MEMORY
  %loadMem_4b0489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7997 = getelementptr inbounds %struct.GPR, %struct.GPR* %7996, i32 0, i32 33
  %7998 = getelementptr inbounds %struct.Reg, %struct.Reg* %7997, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %7998 to i64*
  %7999 = load i64, i64* %PC.i117
  %8000 = add i64 %7999, 270
  %8001 = load i64, i64* %PC.i117
  %8002 = add i64 %8001, 6
  %8003 = load i64, i64* %PC.i117
  %8004 = add i64 %8003, 6
  store i64 %8004, i64* %PC.i117
  %8005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8006 = load i8, i8* %8005, align 1
  %8007 = icmp ne i8 %8006, 0
  %8008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8009 = load i8, i8* %8008, align 1
  %8010 = icmp ne i8 %8009, 0
  %8011 = xor i1 %8007, %8010
  %8012 = xor i1 %8011, true
  %8013 = zext i1 %8012 to i8
  store i8 %8013, i8* %BRANCH_TAKEN, align 1
  %8014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8015 = select i1 %8011, i64 %8002, i64 %8000
  store i64 %8015, i64* %8014, align 8
  store %struct.Memory* %loadMem_4b0489, %struct.Memory** %MEMORY
  %loadBr_4b0489 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0489 = icmp eq i8 %loadBr_4b0489, 1
  br i1 %cmpBr_4b0489, label %block_.L_4b0597, label %block_4b048f

block_4b048f:                                     ; preds = %block_.L_4b0478
  %loadMem_4b048f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8017 = getelementptr inbounds %struct.GPR, %struct.GPR* %8016, i32 0, i32 33
  %8018 = getelementptr inbounds %struct.Reg, %struct.Reg* %8017, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %8018 to i64*
  %8019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8020 = getelementptr inbounds %struct.GPR, %struct.GPR* %8019, i32 0, i32 15
  %8021 = getelementptr inbounds %struct.Reg, %struct.Reg* %8020, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %8021 to i64*
  %8022 = load i64, i64* %RBP.i116
  %8023 = sub i64 %8022, 28
  %8024 = load i64, i64* %PC.i115
  %8025 = add i64 %8024, 7
  store i64 %8025, i64* %PC.i115
  %8026 = inttoptr i64 %8023 to i32*
  store i32 0, i32* %8026
  store %struct.Memory* %loadMem_4b048f, %struct.Memory** %MEMORY
  br label %block_.L_4b0496

block_.L_4b0496:                                  ; preds = %block_.L_4b055e, %block_4b048f
  %loadMem_4b0496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8028 = getelementptr inbounds %struct.GPR, %struct.GPR* %8027, i32 0, i32 33
  %8029 = getelementptr inbounds %struct.Reg, %struct.Reg* %8028, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %8029 to i64*
  %8030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8031 = getelementptr inbounds %struct.GPR, %struct.GPR* %8030, i32 0, i32 1
  %8032 = getelementptr inbounds %struct.Reg, %struct.Reg* %8031, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %8032 to i64*
  %8033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8034 = getelementptr inbounds %struct.GPR, %struct.GPR* %8033, i32 0, i32 15
  %8035 = getelementptr inbounds %struct.Reg, %struct.Reg* %8034, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %8035 to i64*
  %8036 = load i64, i64* %RBP.i114
  %8037 = sub i64 %8036, 28
  %8038 = load i64, i64* %PC.i112
  %8039 = add i64 %8038, 3
  store i64 %8039, i64* %PC.i112
  %8040 = inttoptr i64 %8037 to i32*
  %8041 = load i32, i32* %8040
  %8042 = zext i32 %8041 to i64
  store i64 %8042, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_4b0496, %struct.Memory** %MEMORY
  %loadMem_4b0499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8044 = getelementptr inbounds %struct.GPR, %struct.GPR* %8043, i32 0, i32 33
  %8045 = getelementptr inbounds %struct.Reg, %struct.Reg* %8044, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %8045 to i64*
  %8046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8047 = getelementptr inbounds %struct.GPR, %struct.GPR* %8046, i32 0, i32 5
  %8048 = getelementptr inbounds %struct.Reg, %struct.Reg* %8047, i32 0, i32 0
  %RCX.i110 = bitcast %union.anon* %8048 to i64*
  %8049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8050 = getelementptr inbounds %struct.GPR, %struct.GPR* %8049, i32 0, i32 15
  %8051 = getelementptr inbounds %struct.Reg, %struct.Reg* %8050, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %8051 to i64*
  %8052 = load i64, i64* %RBP.i111
  %8053 = sub i64 %8052, 932
  %8054 = load i64, i64* %PC.i109
  %8055 = add i64 %8054, 7
  store i64 %8055, i64* %PC.i109
  %8056 = inttoptr i64 %8053 to i32*
  %8057 = load i32, i32* %8056
  %8058 = sext i32 %8057 to i64
  store i64 %8058, i64* %RCX.i110, align 8
  store %struct.Memory* %loadMem_4b0499, %struct.Memory** %MEMORY
  %loadMem_4b04a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8060 = getelementptr inbounds %struct.GPR, %struct.GPR* %8059, i32 0, i32 33
  %8061 = getelementptr inbounds %struct.Reg, %struct.Reg* %8060, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %8061 to i64*
  %8062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8063 = getelementptr inbounds %struct.GPR, %struct.GPR* %8062, i32 0, i32 1
  %8064 = getelementptr inbounds %struct.Reg, %struct.Reg* %8063, i32 0, i32 0
  %EAX.i107 = bitcast %union.anon* %8064 to i32*
  %8065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8066 = getelementptr inbounds %struct.GPR, %struct.GPR* %8065, i32 0, i32 5
  %8067 = getelementptr inbounds %struct.Reg, %struct.Reg* %8066, i32 0, i32 0
  %RCX.i108 = bitcast %union.anon* %8067 to i64*
  %8068 = load i32, i32* %EAX.i107
  %8069 = zext i32 %8068 to i64
  %8070 = load i64, i64* %RCX.i108
  %8071 = mul i64 %8070, 4
  %8072 = add i64 %8071, 7489456
  %8073 = load i64, i64* %PC.i106
  %8074 = add i64 %8073, 7
  store i64 %8074, i64* %PC.i106
  %8075 = inttoptr i64 %8072 to i32*
  %8076 = load i32, i32* %8075
  %8077 = sub i32 %8068, %8076
  %8078 = icmp ult i32 %8068, %8076
  %8079 = zext i1 %8078 to i8
  %8080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8079, i8* %8080, align 1
  %8081 = and i32 %8077, 255
  %8082 = call i32 @llvm.ctpop.i32(i32 %8081)
  %8083 = trunc i32 %8082 to i8
  %8084 = and i8 %8083, 1
  %8085 = xor i8 %8084, 1
  %8086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8085, i8* %8086, align 1
  %8087 = xor i32 %8076, %8068
  %8088 = xor i32 %8087, %8077
  %8089 = lshr i32 %8088, 4
  %8090 = trunc i32 %8089 to i8
  %8091 = and i8 %8090, 1
  %8092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8091, i8* %8092, align 1
  %8093 = icmp eq i32 %8077, 0
  %8094 = zext i1 %8093 to i8
  %8095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8094, i8* %8095, align 1
  %8096 = lshr i32 %8077, 31
  %8097 = trunc i32 %8096 to i8
  %8098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8097, i8* %8098, align 1
  %8099 = lshr i32 %8068, 31
  %8100 = lshr i32 %8076, 31
  %8101 = xor i32 %8100, %8099
  %8102 = xor i32 %8096, %8099
  %8103 = add i32 %8102, %8101
  %8104 = icmp eq i32 %8103, 2
  %8105 = zext i1 %8104 to i8
  %8106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8105, i8* %8106, align 1
  store %struct.Memory* %loadMem_4b04a0, %struct.Memory** %MEMORY
  %loadMem_4b04a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8108 = getelementptr inbounds %struct.GPR, %struct.GPR* %8107, i32 0, i32 33
  %8109 = getelementptr inbounds %struct.Reg, %struct.Reg* %8108, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %8109 to i64*
  %8110 = load i64, i64* %PC.i105
  %8111 = add i64 %8110, 197
  %8112 = load i64, i64* %PC.i105
  %8113 = add i64 %8112, 6
  %8114 = load i64, i64* %PC.i105
  %8115 = add i64 %8114, 6
  store i64 %8115, i64* %PC.i105
  %8116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8117 = load i8, i8* %8116, align 1
  %8118 = icmp ne i8 %8117, 0
  %8119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8120 = load i8, i8* %8119, align 1
  %8121 = icmp ne i8 %8120, 0
  %8122 = xor i1 %8118, %8121
  %8123 = xor i1 %8122, true
  %8124 = zext i1 %8123 to i8
  store i8 %8124, i8* %BRANCH_TAKEN, align 1
  %8125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8126 = select i1 %8122, i64 %8113, i64 %8111
  store i64 %8126, i64* %8125, align 8
  store %struct.Memory* %loadMem_4b04a7, %struct.Memory** %MEMORY
  %loadBr_4b04a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b04a7 = icmp eq i8 %loadBr_4b04a7, 1
  br i1 %cmpBr_4b04a7, label %block_.L_4b056c, label %block_4b04ad

block_4b04ad:                                     ; preds = %block_.L_4b0496
  %loadMem_4b04ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %8127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8128 = getelementptr inbounds %struct.GPR, %struct.GPR* %8127, i32 0, i32 33
  %8129 = getelementptr inbounds %struct.Reg, %struct.Reg* %8128, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %8129 to i64*
  %8130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8131 = getelementptr inbounds %struct.GPR, %struct.GPR* %8130, i32 0, i32 15
  %8132 = getelementptr inbounds %struct.Reg, %struct.Reg* %8131, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %8132 to i64*
  %8133 = load i64, i64* %RBP.i104
  %8134 = sub i64 %8133, 32
  %8135 = load i64, i64* %PC.i103
  %8136 = add i64 %8135, 7
  store i64 %8136, i64* %PC.i103
  %8137 = inttoptr i64 %8134 to i32*
  store i32 0, i32* %8137
  store %struct.Memory* %loadMem_4b04ad, %struct.Memory** %MEMORY
  br label %block_.L_4b04b4

block_.L_4b04b4:                                  ; preds = %block_.L_4b0539, %block_4b04ad
  %loadMem_4b04b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8139 = getelementptr inbounds %struct.GPR, %struct.GPR* %8138, i32 0, i32 33
  %8140 = getelementptr inbounds %struct.Reg, %struct.Reg* %8139, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %8140 to i64*
  %8141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8142 = getelementptr inbounds %struct.GPR, %struct.GPR* %8141, i32 0, i32 15
  %8143 = getelementptr inbounds %struct.Reg, %struct.Reg* %8142, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %8143 to i64*
  %8144 = load i64, i64* %RBP.i102
  %8145 = sub i64 %8144, 32
  %8146 = load i64, i64* %PC.i101
  %8147 = add i64 %8146, 4
  store i64 %8147, i64* %PC.i101
  %8148 = inttoptr i64 %8145 to i32*
  %8149 = load i32, i32* %8148
  %8150 = sub i32 %8149, 3
  %8151 = icmp ult i32 %8149, 3
  %8152 = zext i1 %8151 to i8
  %8153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8152, i8* %8153, align 1
  %8154 = and i32 %8150, 255
  %8155 = call i32 @llvm.ctpop.i32(i32 %8154)
  %8156 = trunc i32 %8155 to i8
  %8157 = and i8 %8156, 1
  %8158 = xor i8 %8157, 1
  %8159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8158, i8* %8159, align 1
  %8160 = xor i32 %8149, 3
  %8161 = xor i32 %8160, %8150
  %8162 = lshr i32 %8161, 4
  %8163 = trunc i32 %8162 to i8
  %8164 = and i8 %8163, 1
  %8165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8164, i8* %8165, align 1
  %8166 = icmp eq i32 %8150, 0
  %8167 = zext i1 %8166 to i8
  %8168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8167, i8* %8168, align 1
  %8169 = lshr i32 %8150, 31
  %8170 = trunc i32 %8169 to i8
  %8171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8170, i8* %8171, align 1
  %8172 = lshr i32 %8149, 31
  %8173 = xor i32 %8169, %8172
  %8174 = add i32 %8173, %8172
  %8175 = icmp eq i32 %8174, 2
  %8176 = zext i1 %8175 to i8
  %8177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8176, i8* %8177, align 1
  store %struct.Memory* %loadMem_4b04b4, %struct.Memory** %MEMORY
  %loadMem_4b04b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8179 = getelementptr inbounds %struct.GPR, %struct.GPR* %8178, i32 0, i32 33
  %8180 = getelementptr inbounds %struct.Reg, %struct.Reg* %8179, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %8180 to i64*
  %8181 = load i64, i64* %PC.i100
  %8182 = add i64 %8181, 143
  %8183 = load i64, i64* %PC.i100
  %8184 = add i64 %8183, 6
  %8185 = load i64, i64* %PC.i100
  %8186 = add i64 %8185, 6
  store i64 %8186, i64* %PC.i100
  %8187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8188 = load i8, i8* %8187, align 1
  %8189 = icmp ne i8 %8188, 0
  %8190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8191 = load i8, i8* %8190, align 1
  %8192 = icmp ne i8 %8191, 0
  %8193 = xor i1 %8189, %8192
  %8194 = xor i1 %8193, true
  %8195 = zext i1 %8194 to i8
  store i8 %8195, i8* %BRANCH_TAKEN, align 1
  %8196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8197 = select i1 %8193, i64 %8184, i64 %8182
  store i64 %8197, i64* %8196, align 8
  store %struct.Memory* %loadMem_4b04b8, %struct.Memory** %MEMORY
  %loadBr_4b04b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b04b8 = icmp eq i8 %loadBr_4b04b8, 1
  br i1 %cmpBr_4b04b8, label %block_.L_4b0547, label %block_4b04be

block_4b04be:                                     ; preds = %block_.L_4b04b4
  %loadMem_4b04be = load %struct.Memory*, %struct.Memory** %MEMORY
  %8198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8199 = getelementptr inbounds %struct.GPR, %struct.GPR* %8198, i32 0, i32 33
  %8200 = getelementptr inbounds %struct.Reg, %struct.Reg* %8199, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %8200 to i64*
  %8201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8202 = getelementptr inbounds %struct.GPR, %struct.GPR* %8201, i32 0, i32 1
  %8203 = getelementptr inbounds %struct.Reg, %struct.Reg* %8202, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %8203 to i64*
  %8204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8205 = getelementptr inbounds %struct.GPR, %struct.GPR* %8204, i32 0, i32 15
  %8206 = getelementptr inbounds %struct.Reg, %struct.Reg* %8205, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %8206 to i64*
  %8207 = load i64, i64* %RBP.i99
  %8208 = sub i64 %8207, 560
  %8209 = load i64, i64* %PC.i97
  %8210 = add i64 %8209, 7
  store i64 %8210, i64* %PC.i97
  store i64 %8208, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_4b04be, %struct.Memory** %MEMORY
  %loadMem_4b04c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8212 = getelementptr inbounds %struct.GPR, %struct.GPR* %8211, i32 0, i32 33
  %8213 = getelementptr inbounds %struct.Reg, %struct.Reg* %8212, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %8213 to i64*
  %8214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8215 = getelementptr inbounds %struct.GPR, %struct.GPR* %8214, i32 0, i32 5
  %8216 = getelementptr inbounds %struct.Reg, %struct.Reg* %8215, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %8216 to i64*
  %8217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8218 = getelementptr inbounds %struct.GPR, %struct.GPR* %8217, i32 0, i32 15
  %8219 = getelementptr inbounds %struct.Reg, %struct.Reg* %8218, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %8219 to i64*
  %8220 = load i64, i64* %RBP.i96
  %8221 = sub i64 %8220, 932
  %8222 = load i64, i64* %PC.i94
  %8223 = add i64 %8222, 7
  store i64 %8223, i64* %PC.i94
  %8224 = inttoptr i64 %8221 to i32*
  %8225 = load i32, i32* %8224
  %8226 = sext i32 %8225 to i64
  store i64 %8226, i64* %RCX.i95, align 8
  store %struct.Memory* %loadMem_4b04c5, %struct.Memory** %MEMORY
  %loadMem_4b04cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %8227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8228 = getelementptr inbounds %struct.GPR, %struct.GPR* %8227, i32 0, i32 33
  %8229 = getelementptr inbounds %struct.Reg, %struct.Reg* %8228, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %8229 to i64*
  %8230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8231 = getelementptr inbounds %struct.GPR, %struct.GPR* %8230, i32 0, i32 5
  %8232 = getelementptr inbounds %struct.Reg, %struct.Reg* %8231, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %8232 to i64*
  %8233 = load i64, i64* %RCX.i93
  %8234 = load i64, i64* %PC.i92
  %8235 = add i64 %8234, 7
  store i64 %8235, i64* %PC.i92
  %8236 = sext i64 %8233 to i128
  %8237 = and i128 %8236, -18446744073709551616
  %8238 = zext i64 %8233 to i128
  %8239 = or i128 %8237, %8238
  %8240 = mul i128 180, %8239
  %8241 = trunc i128 %8240 to i64
  store i64 %8241, i64* %RCX.i93, align 8
  %8242 = sext i64 %8241 to i128
  %8243 = icmp ne i128 %8242, %8240
  %8244 = zext i1 %8243 to i8
  %8245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8244, i8* %8245, align 1
  %8246 = trunc i128 %8240 to i32
  %8247 = and i32 %8246, 255
  %8248 = call i32 @llvm.ctpop.i32(i32 %8247)
  %8249 = trunc i32 %8248 to i8
  %8250 = and i8 %8249, 1
  %8251 = xor i8 %8250, 1
  %8252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8251, i8* %8252, align 1
  %8253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8253, align 1
  %8254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8254, align 1
  %8255 = lshr i64 %8241, 63
  %8256 = trunc i64 %8255 to i8
  %8257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8256, i8* %8257, align 1
  %8258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8244, i8* %8258, align 1
  store %struct.Memory* %loadMem_4b04cc, %struct.Memory** %MEMORY
  %loadMem_4b04d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8260 = getelementptr inbounds %struct.GPR, %struct.GPR* %8259, i32 0, i32 33
  %8261 = getelementptr inbounds %struct.Reg, %struct.Reg* %8260, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %8261 to i64*
  %8262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8263 = getelementptr inbounds %struct.GPR, %struct.GPR* %8262, i32 0, i32 1
  %8264 = getelementptr inbounds %struct.Reg, %struct.Reg* %8263, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %8264 to i64*
  %8265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8266 = getelementptr inbounds %struct.GPR, %struct.GPR* %8265, i32 0, i32 5
  %8267 = getelementptr inbounds %struct.Reg, %struct.Reg* %8266, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %8267 to i64*
  %8268 = load i64, i64* %RAX.i90
  %8269 = load i64, i64* %RCX.i91
  %8270 = load i64, i64* %PC.i89
  %8271 = add i64 %8270, 3
  store i64 %8271, i64* %PC.i89
  %8272 = add i64 %8269, %8268
  store i64 %8272, i64* %RAX.i90, align 8
  %8273 = icmp ult i64 %8272, %8268
  %8274 = icmp ult i64 %8272, %8269
  %8275 = or i1 %8273, %8274
  %8276 = zext i1 %8275 to i8
  %8277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8276, i8* %8277, align 1
  %8278 = trunc i64 %8272 to i32
  %8279 = and i32 %8278, 255
  %8280 = call i32 @llvm.ctpop.i32(i32 %8279)
  %8281 = trunc i32 %8280 to i8
  %8282 = and i8 %8281, 1
  %8283 = xor i8 %8282, 1
  %8284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8283, i8* %8284, align 1
  %8285 = xor i64 %8269, %8268
  %8286 = xor i64 %8285, %8272
  %8287 = lshr i64 %8286, 4
  %8288 = trunc i64 %8287 to i8
  %8289 = and i8 %8288, 1
  %8290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8289, i8* %8290, align 1
  %8291 = icmp eq i64 %8272, 0
  %8292 = zext i1 %8291 to i8
  %8293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8292, i8* %8293, align 1
  %8294 = lshr i64 %8272, 63
  %8295 = trunc i64 %8294 to i8
  %8296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8295, i8* %8296, align 1
  %8297 = lshr i64 %8268, 63
  %8298 = lshr i64 %8269, 63
  %8299 = xor i64 %8294, %8297
  %8300 = xor i64 %8294, %8298
  %8301 = add i64 %8299, %8300
  %8302 = icmp eq i64 %8301, 2
  %8303 = zext i1 %8302 to i8
  %8304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8303, i8* %8304, align 1
  store %struct.Memory* %loadMem_4b04d3, %struct.Memory** %MEMORY
  %loadMem_4b04d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8306 = getelementptr inbounds %struct.GPR, %struct.GPR* %8305, i32 0, i32 33
  %8307 = getelementptr inbounds %struct.Reg, %struct.Reg* %8306, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %8307 to i64*
  %8308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8309 = getelementptr inbounds %struct.GPR, %struct.GPR* %8308, i32 0, i32 5
  %8310 = getelementptr inbounds %struct.Reg, %struct.Reg* %8309, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %8310 to i64*
  %8311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8312 = getelementptr inbounds %struct.GPR, %struct.GPR* %8311, i32 0, i32 15
  %8313 = getelementptr inbounds %struct.Reg, %struct.Reg* %8312, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %8313 to i64*
  %8314 = load i64, i64* %RBP.i88
  %8315 = sub i64 %8314, 28
  %8316 = load i64, i64* %PC.i86
  %8317 = add i64 %8316, 4
  store i64 %8317, i64* %PC.i86
  %8318 = inttoptr i64 %8315 to i32*
  %8319 = load i32, i32* %8318
  %8320 = sext i32 %8319 to i64
  store i64 %8320, i64* %RCX.i87, align 8
  store %struct.Memory* %loadMem_4b04d6, %struct.Memory** %MEMORY
  %loadMem_4b04da = load %struct.Memory*, %struct.Memory** %MEMORY
  %8321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8322 = getelementptr inbounds %struct.GPR, %struct.GPR* %8321, i32 0, i32 33
  %8323 = getelementptr inbounds %struct.Reg, %struct.Reg* %8322, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %8323 to i64*
  %8324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8325 = getelementptr inbounds %struct.GPR, %struct.GPR* %8324, i32 0, i32 5
  %8326 = getelementptr inbounds %struct.Reg, %struct.Reg* %8325, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %8326 to i64*
  %8327 = load i64, i64* %RCX.i85
  %8328 = load i64, i64* %PC.i84
  %8329 = add i64 %8328, 4
  store i64 %8329, i64* %PC.i84
  %8330 = sext i64 %8327 to i128
  %8331 = and i128 %8330, -18446744073709551616
  %8332 = zext i64 %8327 to i128
  %8333 = or i128 %8331, %8332
  %8334 = mul i128 12, %8333
  %8335 = trunc i128 %8334 to i64
  store i64 %8335, i64* %RCX.i85, align 8
  %8336 = sext i64 %8335 to i128
  %8337 = icmp ne i128 %8336, %8334
  %8338 = zext i1 %8337 to i8
  %8339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8338, i8* %8339, align 1
  %8340 = trunc i128 %8334 to i32
  %8341 = and i32 %8340, 255
  %8342 = call i32 @llvm.ctpop.i32(i32 %8341)
  %8343 = trunc i32 %8342 to i8
  %8344 = and i8 %8343, 1
  %8345 = xor i8 %8344, 1
  %8346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8345, i8* %8346, align 1
  %8347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8347, align 1
  %8348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8348, align 1
  %8349 = lshr i64 %8335, 63
  %8350 = trunc i64 %8349 to i8
  %8351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8350, i8* %8351, align 1
  %8352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8338, i8* %8352, align 1
  store %struct.Memory* %loadMem_4b04da, %struct.Memory** %MEMORY
  %loadMem_4b04de = load %struct.Memory*, %struct.Memory** %MEMORY
  %8353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8354 = getelementptr inbounds %struct.GPR, %struct.GPR* %8353, i32 0, i32 33
  %8355 = getelementptr inbounds %struct.Reg, %struct.Reg* %8354, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %8355 to i64*
  %8356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8357 = getelementptr inbounds %struct.GPR, %struct.GPR* %8356, i32 0, i32 1
  %8358 = getelementptr inbounds %struct.Reg, %struct.Reg* %8357, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %8358 to i64*
  %8359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8360 = getelementptr inbounds %struct.GPR, %struct.GPR* %8359, i32 0, i32 5
  %8361 = getelementptr inbounds %struct.Reg, %struct.Reg* %8360, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %8361 to i64*
  %8362 = load i64, i64* %RAX.i82
  %8363 = load i64, i64* %RCX.i83
  %8364 = load i64, i64* %PC.i81
  %8365 = add i64 %8364, 3
  store i64 %8365, i64* %PC.i81
  %8366 = add i64 %8363, %8362
  store i64 %8366, i64* %RAX.i82, align 8
  %8367 = icmp ult i64 %8366, %8362
  %8368 = icmp ult i64 %8366, %8363
  %8369 = or i1 %8367, %8368
  %8370 = zext i1 %8369 to i8
  %8371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8370, i8* %8371, align 1
  %8372 = trunc i64 %8366 to i32
  %8373 = and i32 %8372, 255
  %8374 = call i32 @llvm.ctpop.i32(i32 %8373)
  %8375 = trunc i32 %8374 to i8
  %8376 = and i8 %8375, 1
  %8377 = xor i8 %8376, 1
  %8378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8377, i8* %8378, align 1
  %8379 = xor i64 %8363, %8362
  %8380 = xor i64 %8379, %8366
  %8381 = lshr i64 %8380, 4
  %8382 = trunc i64 %8381 to i8
  %8383 = and i8 %8382, 1
  %8384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8383, i8* %8384, align 1
  %8385 = icmp eq i64 %8366, 0
  %8386 = zext i1 %8385 to i8
  %8387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8386, i8* %8387, align 1
  %8388 = lshr i64 %8366, 63
  %8389 = trunc i64 %8388 to i8
  %8390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8389, i8* %8390, align 1
  %8391 = lshr i64 %8362, 63
  %8392 = lshr i64 %8363, 63
  %8393 = xor i64 %8388, %8391
  %8394 = xor i64 %8388, %8392
  %8395 = add i64 %8393, %8394
  %8396 = icmp eq i64 %8395, 2
  %8397 = zext i1 %8396 to i8
  %8398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8397, i8* %8398, align 1
  store %struct.Memory* %loadMem_4b04de, %struct.Memory** %MEMORY
  %loadMem_4b04e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8400 = getelementptr inbounds %struct.GPR, %struct.GPR* %8399, i32 0, i32 33
  %8401 = getelementptr inbounds %struct.Reg, %struct.Reg* %8400, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %8401 to i64*
  %8402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8403 = getelementptr inbounds %struct.GPR, %struct.GPR* %8402, i32 0, i32 5
  %8404 = getelementptr inbounds %struct.Reg, %struct.Reg* %8403, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %8404 to i64*
  %8405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8406 = getelementptr inbounds %struct.GPR, %struct.GPR* %8405, i32 0, i32 15
  %8407 = getelementptr inbounds %struct.Reg, %struct.Reg* %8406, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %8407 to i64*
  %8408 = load i64, i64* %RBP.i80
  %8409 = sub i64 %8408, 32
  %8410 = load i64, i64* %PC.i78
  %8411 = add i64 %8410, 4
  store i64 %8411, i64* %PC.i78
  %8412 = inttoptr i64 %8409 to i32*
  %8413 = load i32, i32* %8412
  %8414 = sext i32 %8413 to i64
  store i64 %8414, i64* %RCX.i79, align 8
  store %struct.Memory* %loadMem_4b04e1, %struct.Memory** %MEMORY
  %loadMem_4b04e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8416 = getelementptr inbounds %struct.GPR, %struct.GPR* %8415, i32 0, i32 33
  %8417 = getelementptr inbounds %struct.Reg, %struct.Reg* %8416, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %8417 to i64*
  %8418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8419 = getelementptr inbounds %struct.GPR, %struct.GPR* %8418, i32 0, i32 1
  %8420 = getelementptr inbounds %struct.Reg, %struct.Reg* %8419, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %8420 to i64*
  %8421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8422 = getelementptr inbounds %struct.GPR, %struct.GPR* %8421, i32 0, i32 5
  %8423 = getelementptr inbounds %struct.Reg, %struct.Reg* %8422, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %8423 to i64*
  %8424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8425 = getelementptr inbounds %struct.GPR, %struct.GPR* %8424, i32 0, i32 7
  %8426 = getelementptr inbounds %struct.Reg, %struct.Reg* %8425, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %8426 to i64*
  %8427 = load i64, i64* %RAX.i76
  %8428 = load i64, i64* %RCX.i77
  %8429 = mul i64 %8428, 4
  %8430 = add i64 %8429, %8427
  %8431 = load i64, i64* %PC.i75
  %8432 = add i64 %8431, 3
  store i64 %8432, i64* %PC.i75
  %8433 = inttoptr i64 %8430 to i32*
  %8434 = load i32, i32* %8433
  %8435 = zext i32 %8434 to i64
  store i64 %8435, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4b04e5, %struct.Memory** %MEMORY
  %loadMem_4b04e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8437 = getelementptr inbounds %struct.GPR, %struct.GPR* %8436, i32 0, i32 33
  %8438 = getelementptr inbounds %struct.Reg, %struct.Reg* %8437, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %8438 to i64*
  %8439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8440 = getelementptr inbounds %struct.GPR, %struct.GPR* %8439, i32 0, i32 7
  %8441 = getelementptr inbounds %struct.Reg, %struct.Reg* %8440, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %8441 to i32*
  %8442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8443 = getelementptr inbounds %struct.GPR, %struct.GPR* %8442, i32 0, i32 15
  %8444 = getelementptr inbounds %struct.Reg, %struct.Reg* %8443, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %8444 to i64*
  %8445 = load i32, i32* %EDX.i
  %8446 = zext i32 %8445 to i64
  %8447 = load i64, i64* %RBP.i74
  %8448 = sub i64 %8447, 180
  %8449 = load i64, i64* %PC.i73
  %8450 = add i64 %8449, 6
  store i64 %8450, i64* %PC.i73
  %8451 = inttoptr i64 %8448 to i32*
  %8452 = load i32, i32* %8451
  %8453 = sub i32 %8445, %8452
  %8454 = icmp ult i32 %8445, %8452
  %8455 = zext i1 %8454 to i8
  %8456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8455, i8* %8456, align 1
  %8457 = and i32 %8453, 255
  %8458 = call i32 @llvm.ctpop.i32(i32 %8457)
  %8459 = trunc i32 %8458 to i8
  %8460 = and i8 %8459, 1
  %8461 = xor i8 %8460, 1
  %8462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8461, i8* %8462, align 1
  %8463 = xor i32 %8452, %8445
  %8464 = xor i32 %8463, %8453
  %8465 = lshr i32 %8464, 4
  %8466 = trunc i32 %8465 to i8
  %8467 = and i8 %8466, 1
  %8468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8467, i8* %8468, align 1
  %8469 = icmp eq i32 %8453, 0
  %8470 = zext i1 %8469 to i8
  %8471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8470, i8* %8471, align 1
  %8472 = lshr i32 %8453, 31
  %8473 = trunc i32 %8472 to i8
  %8474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8473, i8* %8474, align 1
  %8475 = lshr i32 %8445, 31
  %8476 = lshr i32 %8452, 31
  %8477 = xor i32 %8476, %8475
  %8478 = xor i32 %8472, %8475
  %8479 = add i32 %8478, %8477
  %8480 = icmp eq i32 %8479, 2
  %8481 = zext i1 %8480 to i8
  %8482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8481, i8* %8482, align 1
  store %struct.Memory* %loadMem_4b04e8, %struct.Memory** %MEMORY
  %loadMem_4b04ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %8483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8484 = getelementptr inbounds %struct.GPR, %struct.GPR* %8483, i32 0, i32 33
  %8485 = getelementptr inbounds %struct.Reg, %struct.Reg* %8484, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %8485 to i64*
  %8486 = load i64, i64* %PC.i72
  %8487 = add i64 %8486, 55
  %8488 = load i64, i64* %PC.i72
  %8489 = add i64 %8488, 6
  %8490 = load i64, i64* %PC.i72
  %8491 = add i64 %8490, 6
  store i64 %8491, i64* %PC.i72
  %8492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8493 = load i8, i8* %8492, align 1
  %8494 = icmp eq i8 %8493, 0
  %8495 = zext i1 %8494 to i8
  store i8 %8495, i8* %BRANCH_TAKEN, align 1
  %8496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8497 = select i1 %8494, i64 %8487, i64 %8489
  store i64 %8497, i64* %8496, align 8
  store %struct.Memory* %loadMem_4b04ee, %struct.Memory** %MEMORY
  %loadBr_4b04ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b04ee = icmp eq i8 %loadBr_4b04ee, 1
  br i1 %cmpBr_4b04ee, label %block_.L_4b0525, label %block_4b04f4

block_4b04f4:                                     ; preds = %block_4b04be
  %loadMem_4b04f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8499 = getelementptr inbounds %struct.GPR, %struct.GPR* %8498, i32 0, i32 33
  %8500 = getelementptr inbounds %struct.Reg, %struct.Reg* %8499, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %8500 to i64*
  %8501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8502 = getelementptr inbounds %struct.GPR, %struct.GPR* %8501, i32 0, i32 1
  %8503 = getelementptr inbounds %struct.Reg, %struct.Reg* %8502, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %8503 to i64*
  %8504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8505 = getelementptr inbounds %struct.GPR, %struct.GPR* %8504, i32 0, i32 15
  %8506 = getelementptr inbounds %struct.Reg, %struct.Reg* %8505, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %8506 to i64*
  %8507 = load i64, i64* %RBP.i71
  %8508 = sub i64 %8507, 928
  %8509 = load i64, i64* %PC.i69
  %8510 = add i64 %8509, 7
  store i64 %8510, i64* %PC.i69
  store i64 %8508, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_4b04f4, %struct.Memory** %MEMORY
  %loadMem_4b04fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8512 = getelementptr inbounds %struct.GPR, %struct.GPR* %8511, i32 0, i32 33
  %8513 = getelementptr inbounds %struct.Reg, %struct.Reg* %8512, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %8513 to i64*
  %8514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8515 = getelementptr inbounds %struct.GPR, %struct.GPR* %8514, i32 0, i32 5
  %8516 = getelementptr inbounds %struct.Reg, %struct.Reg* %8515, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %8516 to i64*
  %8517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8518 = getelementptr inbounds %struct.GPR, %struct.GPR* %8517, i32 0, i32 15
  %8519 = getelementptr inbounds %struct.Reg, %struct.Reg* %8518, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %8519 to i64*
  %8520 = load i64, i64* %RBP.i68
  %8521 = sub i64 %8520, 932
  %8522 = load i64, i64* %PC.i66
  %8523 = add i64 %8522, 7
  store i64 %8523, i64* %PC.i66
  %8524 = inttoptr i64 %8521 to i32*
  %8525 = load i32, i32* %8524
  %8526 = sext i32 %8525 to i64
  store i64 %8526, i64* %RCX.i67, align 8
  store %struct.Memory* %loadMem_4b04fb, %struct.Memory** %MEMORY
  %loadMem_4b0502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8528 = getelementptr inbounds %struct.GPR, %struct.GPR* %8527, i32 0, i32 33
  %8529 = getelementptr inbounds %struct.Reg, %struct.Reg* %8528, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %8529 to i64*
  %8530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8531 = getelementptr inbounds %struct.GPR, %struct.GPR* %8530, i32 0, i32 5
  %8532 = getelementptr inbounds %struct.Reg, %struct.Reg* %8531, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %8532 to i64*
  %8533 = load i64, i64* %RCX.i65
  %8534 = load i64, i64* %PC.i64
  %8535 = add i64 %8534, 7
  store i64 %8535, i64* %PC.i64
  %8536 = sext i64 %8533 to i128
  %8537 = and i128 %8536, -18446744073709551616
  %8538 = zext i64 %8533 to i128
  %8539 = or i128 %8537, %8538
  %8540 = mul i128 180, %8539
  %8541 = trunc i128 %8540 to i64
  store i64 %8541, i64* %RCX.i65, align 8
  %8542 = sext i64 %8541 to i128
  %8543 = icmp ne i128 %8542, %8540
  %8544 = zext i1 %8543 to i8
  %8545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8544, i8* %8545, align 1
  %8546 = trunc i128 %8540 to i32
  %8547 = and i32 %8546, 255
  %8548 = call i32 @llvm.ctpop.i32(i32 %8547)
  %8549 = trunc i32 %8548 to i8
  %8550 = and i8 %8549, 1
  %8551 = xor i8 %8550, 1
  %8552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8551, i8* %8552, align 1
  %8553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8553, align 1
  %8554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8554, align 1
  %8555 = lshr i64 %8541, 63
  %8556 = trunc i64 %8555 to i8
  %8557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8556, i8* %8557, align 1
  %8558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8544, i8* %8558, align 1
  store %struct.Memory* %loadMem_4b0502, %struct.Memory** %MEMORY
  %loadMem_4b0509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8560 = getelementptr inbounds %struct.GPR, %struct.GPR* %8559, i32 0, i32 33
  %8561 = getelementptr inbounds %struct.Reg, %struct.Reg* %8560, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %8561 to i64*
  %8562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8563 = getelementptr inbounds %struct.GPR, %struct.GPR* %8562, i32 0, i32 1
  %8564 = getelementptr inbounds %struct.Reg, %struct.Reg* %8563, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %8564 to i64*
  %8565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8566 = getelementptr inbounds %struct.GPR, %struct.GPR* %8565, i32 0, i32 5
  %8567 = getelementptr inbounds %struct.Reg, %struct.Reg* %8566, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %8567 to i64*
  %8568 = load i64, i64* %RAX.i62
  %8569 = load i64, i64* %RCX.i63
  %8570 = load i64, i64* %PC.i61
  %8571 = add i64 %8570, 3
  store i64 %8571, i64* %PC.i61
  %8572 = add i64 %8569, %8568
  store i64 %8572, i64* %RAX.i62, align 8
  %8573 = icmp ult i64 %8572, %8568
  %8574 = icmp ult i64 %8572, %8569
  %8575 = or i1 %8573, %8574
  %8576 = zext i1 %8575 to i8
  %8577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8576, i8* %8577, align 1
  %8578 = trunc i64 %8572 to i32
  %8579 = and i32 %8578, 255
  %8580 = call i32 @llvm.ctpop.i32(i32 %8579)
  %8581 = trunc i32 %8580 to i8
  %8582 = and i8 %8581, 1
  %8583 = xor i8 %8582, 1
  %8584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8583, i8* %8584, align 1
  %8585 = xor i64 %8569, %8568
  %8586 = xor i64 %8585, %8572
  %8587 = lshr i64 %8586, 4
  %8588 = trunc i64 %8587 to i8
  %8589 = and i8 %8588, 1
  %8590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8589, i8* %8590, align 1
  %8591 = icmp eq i64 %8572, 0
  %8592 = zext i1 %8591 to i8
  %8593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8592, i8* %8593, align 1
  %8594 = lshr i64 %8572, 63
  %8595 = trunc i64 %8594 to i8
  %8596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8595, i8* %8596, align 1
  %8597 = lshr i64 %8568, 63
  %8598 = lshr i64 %8569, 63
  %8599 = xor i64 %8594, %8597
  %8600 = xor i64 %8594, %8598
  %8601 = add i64 %8599, %8600
  %8602 = icmp eq i64 %8601, 2
  %8603 = zext i1 %8602 to i8
  %8604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8603, i8* %8604, align 1
  store %struct.Memory* %loadMem_4b0509, %struct.Memory** %MEMORY
  %loadMem_4b050c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8606 = getelementptr inbounds %struct.GPR, %struct.GPR* %8605, i32 0, i32 33
  %8607 = getelementptr inbounds %struct.Reg, %struct.Reg* %8606, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %8607 to i64*
  %8608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8609 = getelementptr inbounds %struct.GPR, %struct.GPR* %8608, i32 0, i32 5
  %8610 = getelementptr inbounds %struct.Reg, %struct.Reg* %8609, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %8610 to i64*
  %8611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8612 = getelementptr inbounds %struct.GPR, %struct.GPR* %8611, i32 0, i32 15
  %8613 = getelementptr inbounds %struct.Reg, %struct.Reg* %8612, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %8613 to i64*
  %8614 = load i64, i64* %RBP.i60
  %8615 = sub i64 %8614, 28
  %8616 = load i64, i64* %PC.i58
  %8617 = add i64 %8616, 4
  store i64 %8617, i64* %PC.i58
  %8618 = inttoptr i64 %8615 to i32*
  %8619 = load i32, i32* %8618
  %8620 = sext i32 %8619 to i64
  store i64 %8620, i64* %RCX.i59, align 8
  store %struct.Memory* %loadMem_4b050c, %struct.Memory** %MEMORY
  %loadMem_4b0510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8622 = getelementptr inbounds %struct.GPR, %struct.GPR* %8621, i32 0, i32 33
  %8623 = getelementptr inbounds %struct.Reg, %struct.Reg* %8622, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %8623 to i64*
  %8624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8625 = getelementptr inbounds %struct.GPR, %struct.GPR* %8624, i32 0, i32 5
  %8626 = getelementptr inbounds %struct.Reg, %struct.Reg* %8625, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %8626 to i64*
  %8627 = load i64, i64* %RCX.i57
  %8628 = load i64, i64* %PC.i56
  %8629 = add i64 %8628, 4
  store i64 %8629, i64* %PC.i56
  %8630 = sext i64 %8627 to i128
  %8631 = and i128 %8630, -18446744073709551616
  %8632 = zext i64 %8627 to i128
  %8633 = or i128 %8631, %8632
  %8634 = mul i128 12, %8633
  %8635 = trunc i128 %8634 to i64
  store i64 %8635, i64* %RCX.i57, align 8
  %8636 = sext i64 %8635 to i128
  %8637 = icmp ne i128 %8636, %8634
  %8638 = zext i1 %8637 to i8
  %8639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8638, i8* %8639, align 1
  %8640 = trunc i128 %8634 to i32
  %8641 = and i32 %8640, 255
  %8642 = call i32 @llvm.ctpop.i32(i32 %8641)
  %8643 = trunc i32 %8642 to i8
  %8644 = and i8 %8643, 1
  %8645 = xor i8 %8644, 1
  %8646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8645, i8* %8646, align 1
  %8647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8647, align 1
  %8648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8648, align 1
  %8649 = lshr i64 %8635, 63
  %8650 = trunc i64 %8649 to i8
  %8651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8650, i8* %8651, align 1
  %8652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8638, i8* %8652, align 1
  store %struct.Memory* %loadMem_4b0510, %struct.Memory** %MEMORY
  %loadMem_4b0514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8654 = getelementptr inbounds %struct.GPR, %struct.GPR* %8653, i32 0, i32 33
  %8655 = getelementptr inbounds %struct.Reg, %struct.Reg* %8654, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %8655 to i64*
  %8656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8657 = getelementptr inbounds %struct.GPR, %struct.GPR* %8656, i32 0, i32 1
  %8658 = getelementptr inbounds %struct.Reg, %struct.Reg* %8657, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %8658 to i64*
  %8659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8660 = getelementptr inbounds %struct.GPR, %struct.GPR* %8659, i32 0, i32 5
  %8661 = getelementptr inbounds %struct.Reg, %struct.Reg* %8660, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %8661 to i64*
  %8662 = load i64, i64* %RAX.i54
  %8663 = load i64, i64* %RCX.i55
  %8664 = load i64, i64* %PC.i53
  %8665 = add i64 %8664, 3
  store i64 %8665, i64* %PC.i53
  %8666 = add i64 %8663, %8662
  store i64 %8666, i64* %RAX.i54, align 8
  %8667 = icmp ult i64 %8666, %8662
  %8668 = icmp ult i64 %8666, %8663
  %8669 = or i1 %8667, %8668
  %8670 = zext i1 %8669 to i8
  %8671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8670, i8* %8671, align 1
  %8672 = trunc i64 %8666 to i32
  %8673 = and i32 %8672, 255
  %8674 = call i32 @llvm.ctpop.i32(i32 %8673)
  %8675 = trunc i32 %8674 to i8
  %8676 = and i8 %8675, 1
  %8677 = xor i8 %8676, 1
  %8678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8677, i8* %8678, align 1
  %8679 = xor i64 %8663, %8662
  %8680 = xor i64 %8679, %8666
  %8681 = lshr i64 %8680, 4
  %8682 = trunc i64 %8681 to i8
  %8683 = and i8 %8682, 1
  %8684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8683, i8* %8684, align 1
  %8685 = icmp eq i64 %8666, 0
  %8686 = zext i1 %8685 to i8
  %8687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8686, i8* %8687, align 1
  %8688 = lshr i64 %8666, 63
  %8689 = trunc i64 %8688 to i8
  %8690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8689, i8* %8690, align 1
  %8691 = lshr i64 %8662, 63
  %8692 = lshr i64 %8663, 63
  %8693 = xor i64 %8688, %8691
  %8694 = xor i64 %8688, %8692
  %8695 = add i64 %8693, %8694
  %8696 = icmp eq i64 %8695, 2
  %8697 = zext i1 %8696 to i8
  %8698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8697, i8* %8698, align 1
  store %struct.Memory* %loadMem_4b0514, %struct.Memory** %MEMORY
  %loadMem_4b0517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8700 = getelementptr inbounds %struct.GPR, %struct.GPR* %8699, i32 0, i32 33
  %8701 = getelementptr inbounds %struct.Reg, %struct.Reg* %8700, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %8701 to i64*
  %8702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8703 = getelementptr inbounds %struct.GPR, %struct.GPR* %8702, i32 0, i32 5
  %8704 = getelementptr inbounds %struct.Reg, %struct.Reg* %8703, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %8704 to i64*
  %8705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8706 = getelementptr inbounds %struct.GPR, %struct.GPR* %8705, i32 0, i32 15
  %8707 = getelementptr inbounds %struct.Reg, %struct.Reg* %8706, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %8707 to i64*
  %8708 = load i64, i64* %RBP.i52
  %8709 = sub i64 %8708, 32
  %8710 = load i64, i64* %PC.i50
  %8711 = add i64 %8710, 4
  store i64 %8711, i64* %PC.i50
  %8712 = inttoptr i64 %8709 to i32*
  %8713 = load i32, i32* %8712
  %8714 = sext i32 %8713 to i64
  store i64 %8714, i64* %RCX.i51, align 8
  store %struct.Memory* %loadMem_4b0517, %struct.Memory** %MEMORY
  %loadMem_4b051b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8716 = getelementptr inbounds %struct.GPR, %struct.GPR* %8715, i32 0, i32 33
  %8717 = getelementptr inbounds %struct.Reg, %struct.Reg* %8716, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %8717 to i64*
  %8718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8719 = getelementptr inbounds %struct.GPR, %struct.GPR* %8718, i32 0, i32 1
  %8720 = getelementptr inbounds %struct.Reg, %struct.Reg* %8719, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %8720 to i64*
  %8721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8722 = getelementptr inbounds %struct.GPR, %struct.GPR* %8721, i32 0, i32 5
  %8723 = getelementptr inbounds %struct.Reg, %struct.Reg* %8722, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8723 to i64*
  %8724 = load i64, i64* %RAX.i49
  %8725 = load i64, i64* %RCX.i
  %8726 = mul i64 %8725, 4
  %8727 = add i64 %8726, %8724
  %8728 = load i64, i64* %PC.i48
  %8729 = add i64 %8728, 4
  store i64 %8729, i64* %PC.i48
  %8730 = inttoptr i64 %8727 to i32*
  %8731 = load i32, i32* %8730
  %8732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8732, align 1
  %8733 = and i32 %8731, 255
  %8734 = call i32 @llvm.ctpop.i32(i32 %8733)
  %8735 = trunc i32 %8734 to i8
  %8736 = and i8 %8735, 1
  %8737 = xor i8 %8736, 1
  %8738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8737, i8* %8738, align 1
  %8739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8739, align 1
  %8740 = icmp eq i32 %8731, 0
  %8741 = zext i1 %8740 to i8
  %8742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8741, i8* %8742, align 1
  %8743 = lshr i32 %8731, 31
  %8744 = trunc i32 %8743 to i8
  %8745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8744, i8* %8745, align 1
  %8746 = lshr i32 %8731, 31
  %8747 = xor i32 %8743, %8746
  %8748 = add i32 %8747, %8746
  %8749 = icmp eq i32 %8748, 2
  %8750 = zext i1 %8749 to i8
  %8751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8750, i8* %8751, align 1
  store %struct.Memory* %loadMem_4b051b, %struct.Memory** %MEMORY
  %loadMem_4b051f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8753 = getelementptr inbounds %struct.GPR, %struct.GPR* %8752, i32 0, i32 33
  %8754 = getelementptr inbounds %struct.Reg, %struct.Reg* %8753, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %8754 to i64*
  %8755 = load i64, i64* %PC.i47
  %8756 = add i64 %8755, 21
  %8757 = load i64, i64* %PC.i47
  %8758 = add i64 %8757, 6
  %8759 = load i64, i64* %PC.i47
  %8760 = add i64 %8759, 6
  store i64 %8760, i64* %PC.i47
  %8761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8762 = load i8, i8* %8761, align 1
  store i8 %8762, i8* %BRANCH_TAKEN, align 1
  %8763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8764 = icmp ne i8 %8762, 0
  %8765 = select i1 %8764, i64 %8756, i64 %8758
  store i64 %8765, i64* %8763, align 8
  store %struct.Memory* %loadMem_4b051f, %struct.Memory** %MEMORY
  %loadBr_4b051f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b051f = icmp eq i8 %loadBr_4b051f, 1
  br i1 %cmpBr_4b051f, label %block_.L_4b0534, label %block_.L_4b0525

block_.L_4b0525:                                  ; preds = %block_4b04f4, %block_4b04be
  %loadMem_4b0525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8767 = getelementptr inbounds %struct.GPR, %struct.GPR* %8766, i32 0, i32 33
  %8768 = getelementptr inbounds %struct.Reg, %struct.Reg* %8767, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %8768 to i64*
  %8769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8770 = getelementptr inbounds %struct.GPR, %struct.GPR* %8769, i32 0, i32 15
  %8771 = getelementptr inbounds %struct.Reg, %struct.Reg* %8770, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %8771 to i64*
  %8772 = load i64, i64* %RBP.i46
  %8773 = sub i64 %8772, 936
  %8774 = load i64, i64* %PC.i45
  %8775 = add i64 %8774, 10
  store i64 %8775, i64* %PC.i45
  %8776 = inttoptr i64 %8773 to i32*
  store i32 1, i32* %8776
  store %struct.Memory* %loadMem_4b0525, %struct.Memory** %MEMORY
  %loadMem_4b052f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8778 = getelementptr inbounds %struct.GPR, %struct.GPR* %8777, i32 0, i32 33
  %8779 = getelementptr inbounds %struct.Reg, %struct.Reg* %8778, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %8779 to i64*
  %8780 = load i64, i64* %PC.i44
  %8781 = add i64 %8780, 24
  %8782 = load i64, i64* %PC.i44
  %8783 = add i64 %8782, 5
  store i64 %8783, i64* %PC.i44
  %8784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8781, i64* %8784, align 8
  store %struct.Memory* %loadMem_4b052f, %struct.Memory** %MEMORY
  br label %block_.L_4b0547

block_.L_4b0534:                                  ; preds = %block_4b04f4
  %loadMem_4b0534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8786 = getelementptr inbounds %struct.GPR, %struct.GPR* %8785, i32 0, i32 33
  %8787 = getelementptr inbounds %struct.Reg, %struct.Reg* %8786, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %8787 to i64*
  %8788 = load i64, i64* %PC.i43
  %8789 = add i64 %8788, 5
  %8790 = load i64, i64* %PC.i43
  %8791 = add i64 %8790, 5
  store i64 %8791, i64* %PC.i43
  %8792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8789, i64* %8792, align 8
  store %struct.Memory* %loadMem_4b0534, %struct.Memory** %MEMORY
  br label %block_.L_4b0539

block_.L_4b0539:                                  ; preds = %block_.L_4b0534
  %loadMem_4b0539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8794 = getelementptr inbounds %struct.GPR, %struct.GPR* %8793, i32 0, i32 33
  %8795 = getelementptr inbounds %struct.Reg, %struct.Reg* %8794, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %8795 to i64*
  %8796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8797 = getelementptr inbounds %struct.GPR, %struct.GPR* %8796, i32 0, i32 1
  %8798 = getelementptr inbounds %struct.Reg, %struct.Reg* %8797, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %8798 to i64*
  %8799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8800 = getelementptr inbounds %struct.GPR, %struct.GPR* %8799, i32 0, i32 15
  %8801 = getelementptr inbounds %struct.Reg, %struct.Reg* %8800, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %8801 to i64*
  %8802 = load i64, i64* %RBP.i42
  %8803 = sub i64 %8802, 32
  %8804 = load i64, i64* %PC.i40
  %8805 = add i64 %8804, 3
  store i64 %8805, i64* %PC.i40
  %8806 = inttoptr i64 %8803 to i32*
  %8807 = load i32, i32* %8806
  %8808 = zext i32 %8807 to i64
  store i64 %8808, i64* %RAX.i41, align 8
  store %struct.Memory* %loadMem_4b0539, %struct.Memory** %MEMORY
  %loadMem_4b053c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8810 = getelementptr inbounds %struct.GPR, %struct.GPR* %8809, i32 0, i32 33
  %8811 = getelementptr inbounds %struct.Reg, %struct.Reg* %8810, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %8811 to i64*
  %8812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8813 = getelementptr inbounds %struct.GPR, %struct.GPR* %8812, i32 0, i32 1
  %8814 = getelementptr inbounds %struct.Reg, %struct.Reg* %8813, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %8814 to i64*
  %8815 = load i64, i64* %RAX.i39
  %8816 = load i64, i64* %PC.i38
  %8817 = add i64 %8816, 3
  store i64 %8817, i64* %PC.i38
  %8818 = trunc i64 %8815 to i32
  %8819 = add i32 1, %8818
  %8820 = zext i32 %8819 to i64
  store i64 %8820, i64* %RAX.i39, align 8
  %8821 = icmp ult i32 %8819, %8818
  %8822 = icmp ult i32 %8819, 1
  %8823 = or i1 %8821, %8822
  %8824 = zext i1 %8823 to i8
  %8825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8824, i8* %8825, align 1
  %8826 = and i32 %8819, 255
  %8827 = call i32 @llvm.ctpop.i32(i32 %8826)
  %8828 = trunc i32 %8827 to i8
  %8829 = and i8 %8828, 1
  %8830 = xor i8 %8829, 1
  %8831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8830, i8* %8831, align 1
  %8832 = xor i64 1, %8815
  %8833 = trunc i64 %8832 to i32
  %8834 = xor i32 %8833, %8819
  %8835 = lshr i32 %8834, 4
  %8836 = trunc i32 %8835 to i8
  %8837 = and i8 %8836, 1
  %8838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8837, i8* %8838, align 1
  %8839 = icmp eq i32 %8819, 0
  %8840 = zext i1 %8839 to i8
  %8841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8840, i8* %8841, align 1
  %8842 = lshr i32 %8819, 31
  %8843 = trunc i32 %8842 to i8
  %8844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8843, i8* %8844, align 1
  %8845 = lshr i32 %8818, 31
  %8846 = xor i32 %8842, %8845
  %8847 = add i32 %8846, %8842
  %8848 = icmp eq i32 %8847, 2
  %8849 = zext i1 %8848 to i8
  %8850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8849, i8* %8850, align 1
  store %struct.Memory* %loadMem_4b053c, %struct.Memory** %MEMORY
  %loadMem_4b053f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8852 = getelementptr inbounds %struct.GPR, %struct.GPR* %8851, i32 0, i32 33
  %8853 = getelementptr inbounds %struct.Reg, %struct.Reg* %8852, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %8853 to i64*
  %8854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8855 = getelementptr inbounds %struct.GPR, %struct.GPR* %8854, i32 0, i32 1
  %8856 = getelementptr inbounds %struct.Reg, %struct.Reg* %8855, i32 0, i32 0
  %EAX.i36 = bitcast %union.anon* %8856 to i32*
  %8857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8858 = getelementptr inbounds %struct.GPR, %struct.GPR* %8857, i32 0, i32 15
  %8859 = getelementptr inbounds %struct.Reg, %struct.Reg* %8858, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %8859 to i64*
  %8860 = load i64, i64* %RBP.i37
  %8861 = sub i64 %8860, 32
  %8862 = load i32, i32* %EAX.i36
  %8863 = zext i32 %8862 to i64
  %8864 = load i64, i64* %PC.i35
  %8865 = add i64 %8864, 3
  store i64 %8865, i64* %PC.i35
  %8866 = inttoptr i64 %8861 to i32*
  store i32 %8862, i32* %8866
  store %struct.Memory* %loadMem_4b053f, %struct.Memory** %MEMORY
  %loadMem_4b0542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8868 = getelementptr inbounds %struct.GPR, %struct.GPR* %8867, i32 0, i32 33
  %8869 = getelementptr inbounds %struct.Reg, %struct.Reg* %8868, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %8869 to i64*
  %8870 = load i64, i64* %PC.i34
  %8871 = add i64 %8870, -142
  %8872 = load i64, i64* %PC.i34
  %8873 = add i64 %8872, 5
  store i64 %8873, i64* %PC.i34
  %8874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8871, i64* %8874, align 8
  store %struct.Memory* %loadMem_4b0542, %struct.Memory** %MEMORY
  br label %block_.L_4b04b4

block_.L_4b0547:                                  ; preds = %block_.L_4b0525, %block_.L_4b04b4
  %loadMem_4b0547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8876 = getelementptr inbounds %struct.GPR, %struct.GPR* %8875, i32 0, i32 33
  %8877 = getelementptr inbounds %struct.Reg, %struct.Reg* %8876, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %8877 to i64*
  %8878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8879 = getelementptr inbounds %struct.GPR, %struct.GPR* %8878, i32 0, i32 15
  %8880 = getelementptr inbounds %struct.Reg, %struct.Reg* %8879, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %8880 to i64*
  %8881 = load i64, i64* %RBP.i33
  %8882 = sub i64 %8881, 936
  %8883 = load i64, i64* %PC.i32
  %8884 = add i64 %8883, 7
  store i64 %8884, i64* %PC.i32
  %8885 = inttoptr i64 %8882 to i32*
  %8886 = load i32, i32* %8885
  %8887 = sub i32 %8886, 1
  %8888 = icmp ult i32 %8886, 1
  %8889 = zext i1 %8888 to i8
  %8890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8889, i8* %8890, align 1
  %8891 = and i32 %8887, 255
  %8892 = call i32 @llvm.ctpop.i32(i32 %8891)
  %8893 = trunc i32 %8892 to i8
  %8894 = and i8 %8893, 1
  %8895 = xor i8 %8894, 1
  %8896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8895, i8* %8896, align 1
  %8897 = xor i32 %8886, 1
  %8898 = xor i32 %8897, %8887
  %8899 = lshr i32 %8898, 4
  %8900 = trunc i32 %8899 to i8
  %8901 = and i8 %8900, 1
  %8902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8901, i8* %8902, align 1
  %8903 = icmp eq i32 %8887, 0
  %8904 = zext i1 %8903 to i8
  %8905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8904, i8* %8905, align 1
  %8906 = lshr i32 %8887, 31
  %8907 = trunc i32 %8906 to i8
  %8908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8907, i8* %8908, align 1
  %8909 = lshr i32 %8886, 31
  %8910 = xor i32 %8906, %8909
  %8911 = add i32 %8910, %8909
  %8912 = icmp eq i32 %8911, 2
  %8913 = zext i1 %8912 to i8
  %8914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8913, i8* %8914, align 1
  store %struct.Memory* %loadMem_4b0547, %struct.Memory** %MEMORY
  %loadMem_4b054e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8916 = getelementptr inbounds %struct.GPR, %struct.GPR* %8915, i32 0, i32 33
  %8917 = getelementptr inbounds %struct.Reg, %struct.Reg* %8916, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %8917 to i64*
  %8918 = load i64, i64* %PC.i31
  %8919 = add i64 %8918, 11
  %8920 = load i64, i64* %PC.i31
  %8921 = add i64 %8920, 6
  %8922 = load i64, i64* %PC.i31
  %8923 = add i64 %8922, 6
  store i64 %8923, i64* %PC.i31
  %8924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8925 = load i8, i8* %8924, align 1
  %8926 = icmp eq i8 %8925, 0
  %8927 = zext i1 %8926 to i8
  store i8 %8927, i8* %BRANCH_TAKEN, align 1
  %8928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8929 = select i1 %8926, i64 %8919, i64 %8921
  store i64 %8929, i64* %8928, align 8
  store %struct.Memory* %loadMem_4b054e, %struct.Memory** %MEMORY
  %loadBr_4b054e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b054e = icmp eq i8 %loadBr_4b054e, 1
  br i1 %cmpBr_4b054e, label %block_.L_4b0559, label %block_4b0554

block_4b0554:                                     ; preds = %block_.L_4b0547
  %loadMem_4b0554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8931 = getelementptr inbounds %struct.GPR, %struct.GPR* %8930, i32 0, i32 33
  %8932 = getelementptr inbounds %struct.Reg, %struct.Reg* %8931, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %8932 to i64*
  %8933 = load i64, i64* %PC.i30
  %8934 = add i64 %8933, 24
  %8935 = load i64, i64* %PC.i30
  %8936 = add i64 %8935, 5
  store i64 %8936, i64* %PC.i30
  %8937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8934, i64* %8937, align 8
  store %struct.Memory* %loadMem_4b0554, %struct.Memory** %MEMORY
  br label %block_.L_4b056c

block_.L_4b0559:                                  ; preds = %block_.L_4b0547
  %loadMem_4b0559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8939 = getelementptr inbounds %struct.GPR, %struct.GPR* %8938, i32 0, i32 33
  %8940 = getelementptr inbounds %struct.Reg, %struct.Reg* %8939, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %8940 to i64*
  %8941 = load i64, i64* %PC.i29
  %8942 = add i64 %8941, 5
  %8943 = load i64, i64* %PC.i29
  %8944 = add i64 %8943, 5
  store i64 %8944, i64* %PC.i29
  %8945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8942, i64* %8945, align 8
  store %struct.Memory* %loadMem_4b0559, %struct.Memory** %MEMORY
  br label %block_.L_4b055e

block_.L_4b055e:                                  ; preds = %block_.L_4b0559
  %loadMem_4b055e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8947 = getelementptr inbounds %struct.GPR, %struct.GPR* %8946, i32 0, i32 33
  %8948 = getelementptr inbounds %struct.Reg, %struct.Reg* %8947, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %8948 to i64*
  %8949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8950 = getelementptr inbounds %struct.GPR, %struct.GPR* %8949, i32 0, i32 1
  %8951 = getelementptr inbounds %struct.Reg, %struct.Reg* %8950, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %8951 to i64*
  %8952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8953 = getelementptr inbounds %struct.GPR, %struct.GPR* %8952, i32 0, i32 15
  %8954 = getelementptr inbounds %struct.Reg, %struct.Reg* %8953, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %8954 to i64*
  %8955 = load i64, i64* %RBP.i28
  %8956 = sub i64 %8955, 28
  %8957 = load i64, i64* %PC.i26
  %8958 = add i64 %8957, 3
  store i64 %8958, i64* %PC.i26
  %8959 = inttoptr i64 %8956 to i32*
  %8960 = load i32, i32* %8959
  %8961 = zext i32 %8960 to i64
  store i64 %8961, i64* %RAX.i27, align 8
  store %struct.Memory* %loadMem_4b055e, %struct.Memory** %MEMORY
  %loadMem_4b0561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8963 = getelementptr inbounds %struct.GPR, %struct.GPR* %8962, i32 0, i32 33
  %8964 = getelementptr inbounds %struct.Reg, %struct.Reg* %8963, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %8964 to i64*
  %8965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8966 = getelementptr inbounds %struct.GPR, %struct.GPR* %8965, i32 0, i32 1
  %8967 = getelementptr inbounds %struct.Reg, %struct.Reg* %8966, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %8967 to i64*
  %8968 = load i64, i64* %RAX.i25
  %8969 = load i64, i64* %PC.i24
  %8970 = add i64 %8969, 3
  store i64 %8970, i64* %PC.i24
  %8971 = trunc i64 %8968 to i32
  %8972 = add i32 1, %8971
  %8973 = zext i32 %8972 to i64
  store i64 %8973, i64* %RAX.i25, align 8
  %8974 = icmp ult i32 %8972, %8971
  %8975 = icmp ult i32 %8972, 1
  %8976 = or i1 %8974, %8975
  %8977 = zext i1 %8976 to i8
  %8978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8977, i8* %8978, align 1
  %8979 = and i32 %8972, 255
  %8980 = call i32 @llvm.ctpop.i32(i32 %8979)
  %8981 = trunc i32 %8980 to i8
  %8982 = and i8 %8981, 1
  %8983 = xor i8 %8982, 1
  %8984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8983, i8* %8984, align 1
  %8985 = xor i64 1, %8968
  %8986 = trunc i64 %8985 to i32
  %8987 = xor i32 %8986, %8972
  %8988 = lshr i32 %8987, 4
  %8989 = trunc i32 %8988 to i8
  %8990 = and i8 %8989, 1
  %8991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8990, i8* %8991, align 1
  %8992 = icmp eq i32 %8972, 0
  %8993 = zext i1 %8992 to i8
  %8994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8993, i8* %8994, align 1
  %8995 = lshr i32 %8972, 31
  %8996 = trunc i32 %8995 to i8
  %8997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8996, i8* %8997, align 1
  %8998 = lshr i32 %8971, 31
  %8999 = xor i32 %8995, %8998
  %9000 = add i32 %8999, %8995
  %9001 = icmp eq i32 %9000, 2
  %9002 = zext i1 %9001 to i8
  %9003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9002, i8* %9003, align 1
  store %struct.Memory* %loadMem_4b0561, %struct.Memory** %MEMORY
  %loadMem_4b0564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9005 = getelementptr inbounds %struct.GPR, %struct.GPR* %9004, i32 0, i32 33
  %9006 = getelementptr inbounds %struct.Reg, %struct.Reg* %9005, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %9006 to i64*
  %9007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9008 = getelementptr inbounds %struct.GPR, %struct.GPR* %9007, i32 0, i32 1
  %9009 = getelementptr inbounds %struct.Reg, %struct.Reg* %9008, i32 0, i32 0
  %EAX.i22 = bitcast %union.anon* %9009 to i32*
  %9010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9011 = getelementptr inbounds %struct.GPR, %struct.GPR* %9010, i32 0, i32 15
  %9012 = getelementptr inbounds %struct.Reg, %struct.Reg* %9011, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %9012 to i64*
  %9013 = load i64, i64* %RBP.i23
  %9014 = sub i64 %9013, 28
  %9015 = load i32, i32* %EAX.i22
  %9016 = zext i32 %9015 to i64
  %9017 = load i64, i64* %PC.i21
  %9018 = add i64 %9017, 3
  store i64 %9018, i64* %PC.i21
  %9019 = inttoptr i64 %9014 to i32*
  store i32 %9015, i32* %9019
  store %struct.Memory* %loadMem_4b0564, %struct.Memory** %MEMORY
  %loadMem_4b0567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9021 = getelementptr inbounds %struct.GPR, %struct.GPR* %9020, i32 0, i32 33
  %9022 = getelementptr inbounds %struct.Reg, %struct.Reg* %9021, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %9022 to i64*
  %9023 = load i64, i64* %PC.i20
  %9024 = add i64 %9023, -209
  %9025 = load i64, i64* %PC.i20
  %9026 = add i64 %9025, 5
  store i64 %9026, i64* %PC.i20
  %9027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9024, i64* %9027, align 8
  store %struct.Memory* %loadMem_4b0567, %struct.Memory** %MEMORY
  br label %block_.L_4b0496

block_.L_4b056c:                                  ; preds = %block_4b0554, %block_.L_4b0496
  %loadMem_4b056c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9029 = getelementptr inbounds %struct.GPR, %struct.GPR* %9028, i32 0, i32 33
  %9030 = getelementptr inbounds %struct.Reg, %struct.Reg* %9029, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %9030 to i64*
  %9031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9032 = getelementptr inbounds %struct.GPR, %struct.GPR* %9031, i32 0, i32 15
  %9033 = getelementptr inbounds %struct.Reg, %struct.Reg* %9032, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %9033 to i64*
  %9034 = load i64, i64* %RBP.i19
  %9035 = sub i64 %9034, 936
  %9036 = load i64, i64* %PC.i18
  %9037 = add i64 %9036, 7
  store i64 %9037, i64* %PC.i18
  %9038 = inttoptr i64 %9035 to i32*
  %9039 = load i32, i32* %9038
  %9040 = sub i32 %9039, 1
  %9041 = icmp ult i32 %9039, 1
  %9042 = zext i1 %9041 to i8
  %9043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9042, i8* %9043, align 1
  %9044 = and i32 %9040, 255
  %9045 = call i32 @llvm.ctpop.i32(i32 %9044)
  %9046 = trunc i32 %9045 to i8
  %9047 = and i8 %9046, 1
  %9048 = xor i8 %9047, 1
  %9049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9048, i8* %9049, align 1
  %9050 = xor i32 %9039, 1
  %9051 = xor i32 %9050, %9040
  %9052 = lshr i32 %9051, 4
  %9053 = trunc i32 %9052 to i8
  %9054 = and i8 %9053, 1
  %9055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9054, i8* %9055, align 1
  %9056 = icmp eq i32 %9040, 0
  %9057 = zext i1 %9056 to i8
  %9058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9057, i8* %9058, align 1
  %9059 = lshr i32 %9040, 31
  %9060 = trunc i32 %9059 to i8
  %9061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9060, i8* %9061, align 1
  %9062 = lshr i32 %9039, 31
  %9063 = xor i32 %9059, %9062
  %9064 = add i32 %9063, %9062
  %9065 = icmp eq i32 %9064, 2
  %9066 = zext i1 %9065 to i8
  %9067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9066, i8* %9067, align 1
  store %struct.Memory* %loadMem_4b056c, %struct.Memory** %MEMORY
  %loadMem_4b0573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9069 = getelementptr inbounds %struct.GPR, %struct.GPR* %9068, i32 0, i32 33
  %9070 = getelementptr inbounds %struct.Reg, %struct.Reg* %9069, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %9070 to i64*
  %9071 = load i64, i64* %PC.i17
  %9072 = add i64 %9071, 11
  %9073 = load i64, i64* %PC.i17
  %9074 = add i64 %9073, 6
  %9075 = load i64, i64* %PC.i17
  %9076 = add i64 %9075, 6
  store i64 %9076, i64* %PC.i17
  %9077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9078 = load i8, i8* %9077, align 1
  %9079 = icmp eq i8 %9078, 0
  %9080 = zext i1 %9079 to i8
  store i8 %9080, i8* %BRANCH_TAKEN, align 1
  %9081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9082 = select i1 %9079, i64 %9072, i64 %9074
  store i64 %9082, i64* %9081, align 8
  store %struct.Memory* %loadMem_4b0573, %struct.Memory** %MEMORY
  %loadBr_4b0573 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0573 = icmp eq i8 %loadBr_4b0573, 1
  br i1 %cmpBr_4b0573, label %block_.L_4b057e, label %block_4b0579

block_4b0579:                                     ; preds = %block_.L_4b056c
  %loadMem_4b0579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9084 = getelementptr inbounds %struct.GPR, %struct.GPR* %9083, i32 0, i32 33
  %9085 = getelementptr inbounds %struct.Reg, %struct.Reg* %9084, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %9085 to i64*
  %9086 = load i64, i64* %PC.i16
  %9087 = add i64 %9086, 30
  %9088 = load i64, i64* %PC.i16
  %9089 = add i64 %9088, 5
  store i64 %9089, i64* %PC.i16
  %9090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9087, i64* %9090, align 8
  store %struct.Memory* %loadMem_4b0579, %struct.Memory** %MEMORY
  br label %block_.L_4b0597

block_.L_4b057e:                                  ; preds = %block_.L_4b056c
  %loadMem_4b057e = load %struct.Memory*, %struct.Memory** %MEMORY
  %9091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9092 = getelementptr inbounds %struct.GPR, %struct.GPR* %9091, i32 0, i32 33
  %9093 = getelementptr inbounds %struct.Reg, %struct.Reg* %9092, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %9093 to i64*
  %9094 = load i64, i64* %PC.i15
  %9095 = add i64 %9094, 5
  %9096 = load i64, i64* %PC.i15
  %9097 = add i64 %9096, 5
  store i64 %9097, i64* %PC.i15
  %9098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9095, i64* %9098, align 8
  store %struct.Memory* %loadMem_4b057e, %struct.Memory** %MEMORY
  br label %block_.L_4b0583

block_.L_4b0583:                                  ; preds = %block_.L_4b057e
  %loadMem_4b0583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9100 = getelementptr inbounds %struct.GPR, %struct.GPR* %9099, i32 0, i32 33
  %9101 = getelementptr inbounds %struct.Reg, %struct.Reg* %9100, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %9101 to i64*
  %9102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9103 = getelementptr inbounds %struct.GPR, %struct.GPR* %9102, i32 0, i32 1
  %9104 = getelementptr inbounds %struct.Reg, %struct.Reg* %9103, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %9104 to i64*
  %9105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9106 = getelementptr inbounds %struct.GPR, %struct.GPR* %9105, i32 0, i32 15
  %9107 = getelementptr inbounds %struct.Reg, %struct.Reg* %9106, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %9107 to i64*
  %9108 = load i64, i64* %RBP.i14
  %9109 = sub i64 %9108, 932
  %9110 = load i64, i64* %PC.i12
  %9111 = add i64 %9110, 6
  store i64 %9111, i64* %PC.i12
  %9112 = inttoptr i64 %9109 to i32*
  %9113 = load i32, i32* %9112
  %9114 = zext i32 %9113 to i64
  store i64 %9114, i64* %RAX.i13, align 8
  store %struct.Memory* %loadMem_4b0583, %struct.Memory** %MEMORY
  %loadMem_4b0589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9116 = getelementptr inbounds %struct.GPR, %struct.GPR* %9115, i32 0, i32 33
  %9117 = getelementptr inbounds %struct.Reg, %struct.Reg* %9116, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %9117 to i64*
  %9118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9119 = getelementptr inbounds %struct.GPR, %struct.GPR* %9118, i32 0, i32 1
  %9120 = getelementptr inbounds %struct.Reg, %struct.Reg* %9119, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %9120 to i64*
  %9121 = load i64, i64* %RAX.i11
  %9122 = load i64, i64* %PC.i10
  %9123 = add i64 %9122, 3
  store i64 %9123, i64* %PC.i10
  %9124 = trunc i64 %9121 to i32
  %9125 = add i32 1, %9124
  %9126 = zext i32 %9125 to i64
  store i64 %9126, i64* %RAX.i11, align 8
  %9127 = icmp ult i32 %9125, %9124
  %9128 = icmp ult i32 %9125, 1
  %9129 = or i1 %9127, %9128
  %9130 = zext i1 %9129 to i8
  %9131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9130, i8* %9131, align 1
  %9132 = and i32 %9125, 255
  %9133 = call i32 @llvm.ctpop.i32(i32 %9132)
  %9134 = trunc i32 %9133 to i8
  %9135 = and i8 %9134, 1
  %9136 = xor i8 %9135, 1
  %9137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9136, i8* %9137, align 1
  %9138 = xor i64 1, %9121
  %9139 = trunc i64 %9138 to i32
  %9140 = xor i32 %9139, %9125
  %9141 = lshr i32 %9140, 4
  %9142 = trunc i32 %9141 to i8
  %9143 = and i8 %9142, 1
  %9144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9143, i8* %9144, align 1
  %9145 = icmp eq i32 %9125, 0
  %9146 = zext i1 %9145 to i8
  %9147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9146, i8* %9147, align 1
  %9148 = lshr i32 %9125, 31
  %9149 = trunc i32 %9148 to i8
  %9150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9149, i8* %9150, align 1
  %9151 = lshr i32 %9124, 31
  %9152 = xor i32 %9148, %9151
  %9153 = add i32 %9152, %9148
  %9154 = icmp eq i32 %9153, 2
  %9155 = zext i1 %9154 to i8
  %9156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9155, i8* %9156, align 1
  store %struct.Memory* %loadMem_4b0589, %struct.Memory** %MEMORY
  %loadMem_4b058c = load %struct.Memory*, %struct.Memory** %MEMORY
  %9157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9158 = getelementptr inbounds %struct.GPR, %struct.GPR* %9157, i32 0, i32 33
  %9159 = getelementptr inbounds %struct.Reg, %struct.Reg* %9158, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %9159 to i64*
  %9160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9161 = getelementptr inbounds %struct.GPR, %struct.GPR* %9160, i32 0, i32 1
  %9162 = getelementptr inbounds %struct.Reg, %struct.Reg* %9161, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %9162 to i32*
  %9163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9164 = getelementptr inbounds %struct.GPR, %struct.GPR* %9163, i32 0, i32 15
  %9165 = getelementptr inbounds %struct.Reg, %struct.Reg* %9164, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %9165 to i64*
  %9166 = load i64, i64* %RBP.i9
  %9167 = sub i64 %9166, 932
  %9168 = load i32, i32* %EAX.i
  %9169 = zext i32 %9168 to i64
  %9170 = load i64, i64* %PC.i8
  %9171 = add i64 %9170, 6
  store i64 %9171, i64* %PC.i8
  %9172 = inttoptr i64 %9167 to i32*
  store i32 %9168, i32* %9172
  store %struct.Memory* %loadMem_4b058c, %struct.Memory** %MEMORY
  %loadMem_4b0592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9174 = getelementptr inbounds %struct.GPR, %struct.GPR* %9173, i32 0, i32 33
  %9175 = getelementptr inbounds %struct.Reg, %struct.Reg* %9174, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %9175 to i64*
  %9176 = load i64, i64* %PC.i7
  %9177 = add i64 %9176, -282
  %9178 = load i64, i64* %PC.i7
  %9179 = add i64 %9178, 5
  store i64 %9179, i64* %PC.i7
  %9180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9177, i64* %9180, align 8
  store %struct.Memory* %loadMem_4b0592, %struct.Memory** %MEMORY
  br label %block_.L_4b0478

block_.L_4b0597:                                  ; preds = %block_4b0579, %block_.L_4b0478
  %loadMem_4b0597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9182 = getelementptr inbounds %struct.GPR, %struct.GPR* %9181, i32 0, i32 33
  %9183 = getelementptr inbounds %struct.Reg, %struct.Reg* %9182, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %9183 to i64*
  %9184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9185 = getelementptr inbounds %struct.GPR, %struct.GPR* %9184, i32 0, i32 1
  %9186 = getelementptr inbounds %struct.Reg, %struct.Reg* %9185, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %9186 to i64*
  %9187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9188 = getelementptr inbounds %struct.GPR, %struct.GPR* %9187, i32 0, i32 15
  %9189 = getelementptr inbounds %struct.Reg, %struct.Reg* %9188, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %9189 to i64*
  %9190 = load i64, i64* %RBP.i6
  %9191 = sub i64 %9190, 936
  %9192 = load i64, i64* %PC.i5
  %9193 = add i64 %9192, 6
  store i64 %9193, i64* %PC.i5
  %9194 = inttoptr i64 %9191 to i32*
  %9195 = load i32, i32* %9194
  %9196 = zext i32 %9195 to i64
  store i64 %9196, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4b0597, %struct.Memory** %MEMORY
  %loadMem_4b059d = load %struct.Memory*, %struct.Memory** %MEMORY
  %9197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9198 = getelementptr inbounds %struct.GPR, %struct.GPR* %9197, i32 0, i32 33
  %9199 = getelementptr inbounds %struct.Reg, %struct.Reg* %9198, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %9199 to i64*
  %9200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9201 = getelementptr inbounds %struct.GPR, %struct.GPR* %9200, i32 0, i32 13
  %9202 = getelementptr inbounds %struct.Reg, %struct.Reg* %9201, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %9202 to i64*
  %9203 = load i64, i64* %RSP.i
  %9204 = load i64, i64* %PC.i4
  %9205 = add i64 %9204, 7
  store i64 %9205, i64* %PC.i4
  %9206 = add i64 832, %9203
  store i64 %9206, i64* %RSP.i, align 8
  %9207 = icmp ult i64 %9206, %9203
  %9208 = icmp ult i64 %9206, 832
  %9209 = or i1 %9207, %9208
  %9210 = zext i1 %9209 to i8
  %9211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9210, i8* %9211, align 1
  %9212 = trunc i64 %9206 to i32
  %9213 = and i32 %9212, 255
  %9214 = call i32 @llvm.ctpop.i32(i32 %9213)
  %9215 = trunc i32 %9214 to i8
  %9216 = and i8 %9215, 1
  %9217 = xor i8 %9216, 1
  %9218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9217, i8* %9218, align 1
  %9219 = xor i64 832, %9203
  %9220 = xor i64 %9219, %9206
  %9221 = lshr i64 %9220, 4
  %9222 = trunc i64 %9221 to i8
  %9223 = and i8 %9222, 1
  %9224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9223, i8* %9224, align 1
  %9225 = icmp eq i64 %9206, 0
  %9226 = zext i1 %9225 to i8
  %9227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9226, i8* %9227, align 1
  %9228 = lshr i64 %9206, 63
  %9229 = trunc i64 %9228 to i8
  %9230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9229, i8* %9230, align 1
  %9231 = lshr i64 %9203, 63
  %9232 = xor i64 %9228, %9231
  %9233 = add i64 %9232, %9228
  %9234 = icmp eq i64 %9233, 2
  %9235 = zext i1 %9234 to i8
  %9236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9235, i8* %9236, align 1
  store %struct.Memory* %loadMem_4b059d, %struct.Memory** %MEMORY
  %loadMem_4b05a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9238 = getelementptr inbounds %struct.GPR, %struct.GPR* %9237, i32 0, i32 33
  %9239 = getelementptr inbounds %struct.Reg, %struct.Reg* %9238, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %9239 to i64*
  %9240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9241 = getelementptr inbounds %struct.GPR, %struct.GPR* %9240, i32 0, i32 15
  %9242 = getelementptr inbounds %struct.Reg, %struct.Reg* %9241, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %9242 to i64*
  %9243 = load i64, i64* %PC.i2
  %9244 = add i64 %9243, 1
  store i64 %9244, i64* %PC.i2
  %9245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9246 = load i64, i64* %9245, align 8
  %9247 = add i64 %9246, 8
  %9248 = inttoptr i64 %9246 to i64*
  %9249 = load i64, i64* %9248
  store i64 %9249, i64* %RBP.i3, align 8
  store i64 %9247, i64* %9245, align 8
  store %struct.Memory* %loadMem_4b05a4, %struct.Memory** %MEMORY
  %loadMem_4b05a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9251 = getelementptr inbounds %struct.GPR, %struct.GPR* %9250, i32 0, i32 33
  %9252 = getelementptr inbounds %struct.Reg, %struct.Reg* %9251, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %9252 to i64*
  %9253 = load i64, i64* %PC.i1
  %9254 = add i64 %9253, 1
  store i64 %9254, i64* %PC.i1
  %9255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9257 = load i64, i64* %9256, align 8
  %9258 = inttoptr i64 %9257 to i64*
  %9259 = load i64, i64* %9258
  store i64 %9259, i64* %9255, align 8
  %9260 = add i64 %9257, 8
  store i64 %9260, i64* %9256, align 8
  store %struct.Memory* %loadMem_4b05a5, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4b05a5
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

define %struct.Memory* @routine_subq__0x340___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 832
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 832
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
  %23 = xor i64 832, %9
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
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

define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72400
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

define %struct.Memory* @routine_je_.L_4afe24(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 532
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

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3ac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 940
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movl_MINUS0x3ac__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 940
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp eq i8 %17, 0
  %19 = load i64, i64* %RSI, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x3b0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 944
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4afe31(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3b0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 944
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3b0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 944
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x3a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 936
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x5__0x70f6d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 5, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x5__0x7242a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  store i32 5, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x70f6d0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x3b4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 948
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3b4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 948
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__0x7107a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x7107a0_type* @G_0x7107a0 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7242a0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x710790(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x710790_type* @G_0x710790 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x70f6d0_type* @G_0x70f6d0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i32, i32* bitcast (%G_0x7242a0_type* @G_0x7242a0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 2
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
  %26 = xor i64 2, %9
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jge_.L_4affe3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 7489456
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %12, %20
  %22 = icmp ult i32 %12, %20
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %23, i8* %24, align 1
  %25 = and i32 %21, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %29, i8* %30, align 1
  %31 = xor i32 %20, %12
  %32 = xor i32 %31, %21
  %33 = lshr i32 %32, 4
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %35, i8* %36, align 1
  %37 = icmp eq i32 %21, 0
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %21, 31
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %12, 31
  %44 = lshr i32 %20, 31
  %45 = xor i32 %44, %43
  %46 = xor i32 %40, %43
  %47 = add i32 %46, %45
  %48 = icmp eq i32 %47, 2
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %49, i8* %50, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4affd0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_4affbd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 928
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xb4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 180, %15
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

define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 12, %15
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx____rcx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6d4740_type* @G_0x6d4740 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6f9728_type* @G_0x6f9728 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____rcx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 0, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 180, %15
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

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 12, %15
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %18
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

define %struct.Memory* @routine_jmpq_.L_4aff05(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4affc2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4afeea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4affd5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4afecf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_0x3c__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 60
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

define %struct.Memory* @routine_jge_.L_4b005f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x34__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 52
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

define %struct.Memory* @routine_jge_.L_4b004c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x2763f8__rip____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2763f8__rip__type* @G_0x2763f8__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i16*
  %22 = load i16, i16* %21
  %23 = zext i16 %22 to i64
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__edx___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
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

define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fadd double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4b0005(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4b0051(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4affea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x3a4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 932
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3a4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 932
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4b046e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 932
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4b0455(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp__rax_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %RAX
  %16 = mul i64 %15, 8
  %17 = add i64 %14, -160
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM0 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = bitcast i8* %19 to double*
  %23 = load double, double* %22, align 1
  %24 = inttoptr i64 %18 to double*
  store double %23, double* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 932
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x722b20___rax_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 7482144
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x1920__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6432
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x1928__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6440
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_0x34__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 52
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

define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
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

define %struct.Memory* @routine_jge_.L_4b0158(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0xa0__rbp__rax_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 8
  %19 = add i64 %16, -160
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to double*
  %24 = load double, double* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to i64*
  %27 = load i64, i64* %26, align 1
  %28 = inttoptr i64 %20 to double*
  %29 = load double, double* %28
  %30 = fadd double %24, %29
  %31 = bitcast i8* %14 to double*
  store double %30, double* %31, align 1
  %32 = getelementptr inbounds i8, i8* %14, i64 8
  %33 = bitcast i8* %32 to i64*
  store i64 %27, i64* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4b00ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4b028c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp__rax_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, -160
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to double*
  %23 = load double, double* %22
  %24 = bitcast i8* %14 to double*
  store double %23, double* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 8
  %26 = bitcast i8* %25 to double*
  store double 0.000000e+00, double* %26, align 1
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

define %struct.Memory* @routine_jne_.L_4b0187(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jp_.L_4b0187(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4b01db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x16f2__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x16f2__rip__type* @G_0x16f2__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0xb4__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
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

define %struct.Memory* @routine_mulsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_divsd_MINUS0xa0__rbp__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %16, -160
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to double*
  %24 = load double, double* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to i64*
  %27 = load i64, i64* %26, align 1
  %28 = inttoptr i64 %20 to double*
  %29 = load double, double* %28
  %30 = fdiv double %24, %29
  %31 = bitcast i8* %14 to double*
  store double %30, double* %31, align 1
  %32 = getelementptr inbounds i8, i8* %14, i64 8
  %33 = bitcast i8* %32 to i64*
  store i64 %27, i64* %33, align 1
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

define %struct.Memory* @routine_cvttsd2si__xmm1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %21, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4b0206(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0xb4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 932
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 180, %15
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

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 12, %15
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

define %struct.Memory* @routine_cmpl__0xffffffc0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, -64
  %15 = icmp ult i32 %13, -64
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
  %24 = xor i32 %13, -64
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %36, 1
  %38 = xor i32 %33, %36
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_4b025e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x7f____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 127
  %15 = icmp ult i32 %13, 127
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
  %24 = xor i32 %13, 127
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_4b0287(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x20____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 32, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4b03f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x15ed__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x15ed__rip__type* @G_0x15ed__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0xa0__rbp__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %16, -160
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to double*
  %24 = load double, double* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to i64*
  %27 = load i64, i64* %26, align 1
  %28 = inttoptr i64 %20 to double*
  %29 = load double, double* %28
  %30 = fsub double %24, %29
  %31 = bitcast i8* %14 to double*
  store double %30, double* %31, align 1
  %32 = getelementptr inbounds i8, i8* %14, i64 8
  %33 = bitcast i8* %32 to i64*
  store i64 %27, i64* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__edx___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_movq__rax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rcx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__edx____rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffff80____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, -128
  %15 = icmp ult i32 %13, -128
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
  %24 = xor i32 %13, -128
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %36, 1
  %38 = xor i32 %33, %36
  %39 = add i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4b032a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xffffff80___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967168, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3b8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 952
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4b039d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jle_.L_4b0366(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x7f___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 127, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3bc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 956
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4b0391(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x3bc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 956
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3bc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 956
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3b8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 952
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x3a0__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 928
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3a4__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 932
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movl__eax____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xb4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0xb8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__ecx__0x4__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4b0087(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4b045a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3a4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 932
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4b0069(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4b0597(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_4b056c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_4b0547(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0xb4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 180
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

define %struct.Memory* @routine_jne_.L_4b0525(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = and i32 %19, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = icmp eq i32 %19, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %19, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = xor i32 %31, %34
  %36 = add i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4b0534(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x3a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 936
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4b0547(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4b0539(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4b04b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x3a8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 936
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

define %struct.Memory* @routine_jne_.L_4b0559(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4b056c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4b055e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4b0496(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4b057e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4b0597(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4b0583(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4b0478(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x3a8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 936
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x340___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 832, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 832
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
  %25 = xor i64 832, %9
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
