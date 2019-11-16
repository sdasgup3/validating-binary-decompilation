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
%G_0x2c664__rip__type = type <{ [8 x i8] }>
%G_0x2c6e8__rip__type = type <{ [8 x i8] }>
%G_0x2c7cb__rip__type = type <{ [8 x i8] }>
%G_0x2c84f__rip__type = type <{ [8 x i8] }>
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
@G_0x2c664__rip_ = global %G_0x2c664__rip__type zeroinitializer
@G_0x2c6e8__rip_ = global %G_0x2c6e8__rip__type zeroinitializer
@G_0x2c7cb__rip_ = global %G_0x2c7cb__rip__type zeroinitializer
@G_0x2c84f__rip_ = global %G_0x2c84f__rip__type zeroinitializer

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
define %struct.Memory* @LogSum(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_428080 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_428080, %struct.Memory** %MEMORY
  %loadMem_428081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i23 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i23
  %27 = load i64, i64* %PC.i22
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i22
  store i64 %26, i64* %RBP.i24, align 8
  store %struct.Memory* %loadMem_428081, %struct.Memory** %MEMORY
  %loadMem_428084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i35 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i35
  %36 = load i64, i64* %PC.i34
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i34
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i35, align 8
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
  store %struct.Memory* %loadMem_428084, %struct.Memory** %MEMORY
  %loadMem_428088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 15
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %74 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %73, i64 0, i64 0
  %XMM0.i68 = bitcast %union.VectorReg* %74 to %union.vec128_t*
  %75 = load i64, i64* %RBP.i67
  %76 = sub i64 %75, 8
  %77 = bitcast %union.vec128_t* %XMM0.i68 to i8*
  %78 = load i64, i64* %PC.i66
  %79 = add i64 %78, 5
  store i64 %79, i64* %PC.i66
  %80 = bitcast i8* %77 to <2 x float>*
  %81 = load <2 x float>, <2 x float>* %80, align 1
  %82 = extractelement <2 x float> %81, i32 0
  %83 = inttoptr i64 %76 to float*
  store float %82, float* %83
  store %struct.Memory* %loadMem_428088, %struct.Memory** %MEMORY
  %loadMem_42808d = load %struct.Memory*, %struct.Memory** %MEMORY
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 33
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %86 to i64*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 15
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %89 to i64*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %91 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %90, i64 0, i64 1
  %XMM1.i101 = bitcast %union.VectorReg* %91 to %union.vec128_t*
  %92 = load i64, i64* %RBP.i100
  %93 = sub i64 %92, 12
  %94 = bitcast %union.vec128_t* %XMM1.i101 to i8*
  %95 = load i64, i64* %PC.i99
  %96 = add i64 %95, 5
  store i64 %96, i64* %PC.i99
  %97 = bitcast i8* %94 to <2 x float>*
  %98 = load <2 x float>, <2 x float>* %97, align 1
  %99 = extractelement <2 x float> %98, i32 0
  %100 = inttoptr i64 %93 to float*
  store float %99, float* %100
  store %struct.Memory* %loadMem_42808d, %struct.Memory** %MEMORY
  %loadMem_428092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 33
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %107, i64 0, i64 0
  %YMM0.i113 = bitcast %union.VectorReg* %108 to %"class.std::bitset"*
  %109 = bitcast %"class.std::bitset"* %YMM0.i113 to i8*
  %110 = load i64, i64* %RBP.i112
  %111 = sub i64 %110, 8
  %112 = load i64, i64* %PC.i111
  %113 = add i64 %112, 5
  store i64 %113, i64* %PC.i111
  %114 = inttoptr i64 %111 to float*
  %115 = load float, float* %114
  %116 = bitcast i8* %109 to float*
  store float %115, float* %116, align 1
  %117 = getelementptr inbounds i8, i8* %109, i64 4
  %118 = bitcast i8* %117 to float*
  store float 0.000000e+00, float* %118, align 1
  %119 = getelementptr inbounds i8, i8* %109, i64 8
  %120 = bitcast i8* %119 to float*
  store float 0.000000e+00, float* %120, align 1
  %121 = getelementptr inbounds i8, i8* %109, i64 12
  %122 = bitcast i8* %121 to float*
  store float 0.000000e+00, float* %122, align 1
  store %struct.Memory* %loadMem_428092, %struct.Memory** %MEMORY
  %loadMem_428097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 15
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %130 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %129, i64 0, i64 0
  %XMM0.i147 = bitcast %union.VectorReg* %130 to %union.vec128_t*
  %131 = bitcast %union.vec128_t* %XMM0.i147 to i8*
  %132 = load i64, i64* %RBP.i146
  %133 = sub i64 %132, 12
  %134 = load i64, i64* %PC.i145
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC.i145
  %136 = bitcast i8* %131 to <2 x float>*
  %137 = load <2 x float>, <2 x float>* %136, align 1
  %138 = extractelement <2 x float> %137, i32 0
  %139 = inttoptr i64 %133 to float*
  %140 = load float, float* %139
  %141 = fcmp uno float %138, %140
  br i1 %141, label %142, label %154

; <label>:142:                                    ; preds = %entry
  %143 = fadd float %138, %140
  %144 = bitcast float %143 to i32
  %145 = and i32 %144, 2143289344
  %146 = icmp eq i32 %145, 2139095040
  %147 = and i32 %144, 4194303
  %148 = icmp ne i32 %147, 0
  %149 = and i1 %146, %148
  br i1 %149, label %150, label %160

; <label>:150:                                    ; preds = %142
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %152, %struct.Memory* %loadMem_428097)
  br label %routine_ucomiss_MINUS0xc__rbp____xmm0.exit

; <label>:154:                                    ; preds = %entry
  %155 = fcmp ogt float %138, %140
  br i1 %155, label %160, label %156

; <label>:156:                                    ; preds = %154
  %157 = fcmp olt float %138, %140
  br i1 %157, label %160, label %158

; <label>:158:                                    ; preds = %156
  %159 = fcmp oeq float %138, %140
  br i1 %159, label %160, label %167

; <label>:160:                                    ; preds = %158, %156, %154, %142
  %161 = phi i8 [ 0, %154 ], [ 0, %156 ], [ 1, %158 ], [ 1, %142 ]
  %162 = phi i8 [ 0, %154 ], [ 0, %156 ], [ 0, %158 ], [ 1, %142 ]
  %163 = phi i8 [ 0, %154 ], [ 1, %156 ], [ 0, %158 ], [ 1, %142 ]
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %161, i8* %164, align 1
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %162, i8* %165, align 1
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %163, i8* %166, align 1
  br label %167

; <label>:167:                                    ; preds = %160, %158
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %168, align 1
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %169, align 1
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %170, align 1
  br label %routine_ucomiss_MINUS0xc__rbp____xmm0.exit

routine_ucomiss_MINUS0xc__rbp____xmm0.exit:       ; preds = %150, %167
  %171 = phi %struct.Memory* [ %153, %150 ], [ %loadMem_428097, %167 ]
  store %struct.Memory* %171, %struct.Memory** %MEMORY
  %loadMem_42809b = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %174 to i64*
  %175 = load i64, i64* %PC.i148
  %176 = add i64 %175, 138
  %177 = load i64, i64* %PC.i148
  %178 = add i64 %177, 6
  %179 = load i64, i64* %PC.i148
  %180 = add i64 %179, 6
  store i64 %180, i64* %PC.i148
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %182 = load i8, i8* %181, align 1
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %184 = load i8, i8* %183, align 1
  %185 = or i8 %184, %182
  %186 = icmp ne i8 %185, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %BRANCH_TAKEN, align 1
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %189 = select i1 %186, i64 %176, i64 %178
  store i64 %189, i64* %188, align 8
  store %struct.Memory* %loadMem_42809b, %struct.Memory** %MEMORY
  %loadBr_42809b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42809b = icmp eq i8 %loadBr_42809b, 1
  br i1 %cmpBr_42809b, label %block_.L_428125, label %block_4280a1

block_4280a1:                                     ; preds = %routine_ucomiss_MINUS0xc__rbp____xmm0.exit
  %loadMem_4280a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %194 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %193, i64 0, i64 0
  %YMM0.i159 = bitcast %union.VectorReg* %194 to %"class.std::bitset"*
  %195 = bitcast %"class.std::bitset"* %YMM0.i159 to i8*
  %196 = load i64, i64* %PC.i158
  %197 = add i64 %196, ptrtoint (%G_0x2c84f__rip__type* @G_0x2c84f__rip_ to i64)
  %198 = load i64, i64* %PC.i158
  %199 = add i64 %198, 8
  store i64 %199, i64* %PC.i158
  %200 = inttoptr i64 %197 to double*
  %201 = load double, double* %200
  %202 = bitcast i8* %195 to double*
  store double %201, double* %202, align 1
  %203 = getelementptr inbounds i8, i8* %195, i64 8
  %204 = bitcast i8* %203 to double*
  store double 0.000000e+00, double* %204, align 1
  store %struct.Memory* %loadMem_4280a1, %struct.Memory** %MEMORY
  %loadMem_4280a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 33
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 15
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %210 to i64*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %211, i64 0, i64 1
  %YMM1.i157 = bitcast %union.VectorReg* %212 to %"class.std::bitset"*
  %213 = bitcast %"class.std::bitset"* %YMM1.i157 to i8*
  %214 = load i64, i64* %RBP.i156
  %215 = sub i64 %214, 8
  %216 = load i64, i64* %PC.i155
  %217 = add i64 %216, 5
  store i64 %217, i64* %PC.i155
  %218 = inttoptr i64 %215 to float*
  %219 = load float, float* %218
  %220 = bitcast i8* %213 to float*
  store float %219, float* %220, align 1
  %221 = getelementptr inbounds i8, i8* %213, i64 4
  %222 = bitcast i8* %221 to float*
  store float 0.000000e+00, float* %222, align 1
  %223 = getelementptr inbounds i8, i8* %213, i64 8
  %224 = bitcast i8* %223 to float*
  store float 0.000000e+00, float* %224, align 1
  %225 = getelementptr inbounds i8, i8* %213, i64 12
  %226 = bitcast i8* %225 to float*
  store float 0.000000e+00, float* %226, align 1
  store %struct.Memory* %loadMem_4280a9, %struct.Memory** %MEMORY
  %loadMem_4280ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 15
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %234 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %233, i64 0, i64 1
  %YMM1.i154 = bitcast %union.VectorReg* %234 to %"class.std::bitset"*
  %235 = bitcast %"class.std::bitset"* %YMM1.i154 to i8*
  %236 = bitcast %"class.std::bitset"* %YMM1.i154 to i8*
  %237 = load i64, i64* %RBP.i153
  %238 = sub i64 %237, 12
  %239 = load i64, i64* %PC.i152
  %240 = add i64 %239, 5
  store i64 %240, i64* %PC.i152
  %241 = bitcast i8* %236 to <2 x float>*
  %242 = load <2 x float>, <2 x float>* %241, align 1
  %243 = getelementptr inbounds i8, i8* %236, i64 8
  %244 = bitcast i8* %243 to <2 x i32>*
  %245 = load <2 x i32>, <2 x i32>* %244, align 1
  %246 = inttoptr i64 %238 to float*
  %247 = load float, float* %246
  %248 = extractelement <2 x float> %242, i32 0
  %249 = fsub float %248, %247
  %250 = bitcast i8* %235 to float*
  store float %249, float* %250, align 1
  %251 = bitcast <2 x float> %242 to <2 x i32>
  %252 = extractelement <2 x i32> %251, i32 1
  %253 = getelementptr inbounds i8, i8* %235, i64 4
  %254 = bitcast i8* %253 to i32*
  store i32 %252, i32* %254, align 1
  %255 = extractelement <2 x i32> %245, i32 0
  %256 = getelementptr inbounds i8, i8* %235, i64 8
  %257 = bitcast i8* %256 to i32*
  store i32 %255, i32* %257, align 1
  %258 = extractelement <2 x i32> %245, i32 1
  %259 = getelementptr inbounds i8, i8* %235, i64 12
  %260 = bitcast i8* %259 to i32*
  store i32 %258, i32* %260, align 1
  store %struct.Memory* %loadMem_4280ae, %struct.Memory** %MEMORY
  %loadMem_4280b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 33
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %265 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %264, i64 0, i64 1
  %YMM1.i150 = bitcast %union.VectorReg* %265 to %"class.std::bitset"*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %266, i64 0, i64 1
  %XMM1.i151 = bitcast %union.VectorReg* %267 to %union.vec128_t*
  %268 = bitcast %"class.std::bitset"* %YMM1.i150 to i8*
  %269 = bitcast %union.vec128_t* %XMM1.i151 to i8*
  %270 = load i64, i64* %PC.i149
  %271 = add i64 %270, 4
  store i64 %271, i64* %PC.i149
  %272 = bitcast i8* %269 to <2 x float>*
  %273 = load <2 x float>, <2 x float>* %272, align 1
  %274 = extractelement <2 x float> %273, i32 0
  %275 = fpext float %274 to double
  %276 = bitcast i8* %268 to double*
  store double %275, double* %276, align 1
  store %struct.Memory* %loadMem_4280b3, %struct.Memory** %MEMORY
  %loadMem_4280b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %280, i64 0, i64 0
  %XMM0.i142 = bitcast %union.VectorReg* %281 to %union.vec128_t*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 1
  %XMM1.i143 = bitcast %union.VectorReg* %283 to %union.vec128_t*
  %284 = bitcast %union.vec128_t* %XMM1.i143 to i8*
  %285 = bitcast %union.vec128_t* %XMM0.i142 to i8*
  %286 = load i64, i64* %PC.i141
  %287 = add i64 %286, 4
  store i64 %287, i64* %PC.i141
  %288 = bitcast i8* %284 to double*
  %289 = load double, double* %288, align 1
  %290 = bitcast i8* %285 to double*
  %291 = load double, double* %290, align 1
  %292 = fcmp uno double %289, %291
  br i1 %292, label %293, label %305

; <label>:293:                                    ; preds = %block_4280a1
  %294 = fadd double %289, %291
  %295 = bitcast double %294 to i64
  %296 = and i64 %295, 9221120237041090560
  %297 = icmp eq i64 %296, 9218868437227405312
  %298 = and i64 %295, 2251799813685247
  %299 = icmp ne i64 %298, 0
  %300 = and i1 %297, %299
  br i1 %300, label %301, label %311

; <label>:301:                                    ; preds = %293
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %303, %struct.Memory* %loadMem_4280b7)
  br label %routine_ucomisd__xmm0___xmm1.exit144

; <label>:305:                                    ; preds = %block_4280a1
  %306 = fcmp ogt double %289, %291
  br i1 %306, label %311, label %307

; <label>:307:                                    ; preds = %305
  %308 = fcmp olt double %289, %291
  br i1 %308, label %311, label %309

; <label>:309:                                    ; preds = %307
  %310 = fcmp oeq double %289, %291
  br i1 %310, label %311, label %318

; <label>:311:                                    ; preds = %309, %307, %305, %293
  %312 = phi i8 [ 0, %305 ], [ 0, %307 ], [ 1, %309 ], [ 1, %293 ]
  %313 = phi i8 [ 0, %305 ], [ 0, %307 ], [ 0, %309 ], [ 1, %293 ]
  %314 = phi i8 [ 0, %305 ], [ 1, %307 ], [ 0, %309 ], [ 1, %293 ]
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %312, i8* %315, align 1
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %313, i8* %316, align 1
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %314, i8* %317, align 1
  br label %318

; <label>:318:                                    ; preds = %311, %309
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %319, align 1
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %320, align 1
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %321, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit144

routine_ucomisd__xmm0___xmm1.exit144:             ; preds = %301, %318
  %322 = phi %struct.Memory* [ %304, %301 ], [ %loadMem_4280b7, %318 ]
  store %struct.Memory* %322, %struct.Memory** %MEMORY
  %loadMem_4280bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 33
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %325 to i64*
  %326 = load i64, i64* %PC.i140
  %327 = add i64 %326, 21
  %328 = load i64, i64* %PC.i140
  %329 = add i64 %328, 6
  %330 = load i64, i64* %PC.i140
  %331 = add i64 %330, 6
  store i64 %331, i64* %PC.i140
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %333 = load i8, i8* %332, align 1
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %335 = load i8, i8* %334, align 1
  %336 = or i8 %335, %333
  %337 = icmp ne i8 %336, 0
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %BRANCH_TAKEN, align 1
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %340 = select i1 %337, i64 %327, i64 %329
  store i64 %340, i64* %339, align 8
  store %struct.Memory* %loadMem_4280bb, %struct.Memory** %MEMORY
  %loadBr_4280bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4280bb = icmp eq i8 %loadBr_4280bb, 1
  br i1 %cmpBr_4280bb, label %block_.L_4280d0, label %block_4280c1

block_4280c1:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit144
  %loadMem_4280c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 33
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %343 to i64*
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 15
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %348 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %347, i64 0, i64 0
  %YMM0.i139 = bitcast %union.VectorReg* %348 to %"class.std::bitset"*
  %349 = bitcast %"class.std::bitset"* %YMM0.i139 to i8*
  %350 = load i64, i64* %RBP.i138
  %351 = sub i64 %350, 8
  %352 = load i64, i64* %PC.i137
  %353 = add i64 %352, 5
  store i64 %353, i64* %PC.i137
  %354 = inttoptr i64 %351 to float*
  %355 = load float, float* %354
  %356 = fpext float %355 to double
  %357 = bitcast i8* %349 to double*
  store double %356, double* %357, align 1
  store %struct.Memory* %loadMem_4280c1, %struct.Memory** %MEMORY
  %loadMem_4280c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 15
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %365 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %364, i64 0, i64 0
  %XMM0.i136 = bitcast %union.VectorReg* %365 to %union.vec128_t*
  %366 = load i64, i64* %RBP.i135
  %367 = sub i64 %366, 24
  %368 = bitcast %union.vec128_t* %XMM0.i136 to i8*
  %369 = load i64, i64* %PC.i134
  %370 = add i64 %369, 5
  store i64 %370, i64* %PC.i134
  %371 = bitcast i8* %368 to double*
  %372 = load double, double* %371, align 1
  %373 = inttoptr i64 %367 to double*
  store double %372, double* %373
  store %struct.Memory* %loadMem_4280c6, %struct.Memory** %MEMORY
  %loadMem_4280cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %PC.i133
  %378 = add i64 %377, 71
  %379 = load i64, i64* %PC.i133
  %380 = add i64 %379, 5
  store i64 %380, i64* %PC.i133
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %378, i64* %381, align 8
  store %struct.Memory* %loadMem_4280cb, %struct.Memory** %MEMORY
  br label %block_.L_428112

block_.L_4280d0:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit144
  %loadMem_4280d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 15
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %389 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %388, i64 0, i64 0
  %YMM0.i132 = bitcast %union.VectorReg* %389 to %"class.std::bitset"*
  %390 = bitcast %"class.std::bitset"* %YMM0.i132 to i8*
  %391 = load i64, i64* %RBP.i131
  %392 = sub i64 %391, 8
  %393 = load i64, i64* %PC.i130
  %394 = add i64 %393, 5
  store i64 %394, i64* %PC.i130
  %395 = inttoptr i64 %392 to float*
  %396 = load float, float* %395
  %397 = fpext float %396 to double
  %398 = bitcast i8* %390 to double*
  store double %397, double* %398, align 1
  store %struct.Memory* %loadMem_4280d0, %struct.Memory** %MEMORY
  %loadMem_4280d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 33
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 15
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %404 to i64*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %406 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %405, i64 0, i64 1
  %YMM1.i129 = bitcast %union.VectorReg* %406 to %"class.std::bitset"*
  %407 = bitcast %"class.std::bitset"* %YMM1.i129 to i8*
  %408 = load i64, i64* %RBP.i128
  %409 = sub i64 %408, 12
  %410 = load i64, i64* %PC.i127
  %411 = add i64 %410, 5
  store i64 %411, i64* %PC.i127
  %412 = inttoptr i64 %409 to float*
  %413 = load float, float* %412
  %414 = bitcast i8* %407 to float*
  store float %413, float* %414, align 1
  %415 = getelementptr inbounds i8, i8* %407, i64 4
  %416 = bitcast i8* %415 to float*
  store float 0.000000e+00, float* %416, align 1
  %417 = getelementptr inbounds i8, i8* %407, i64 8
  %418 = bitcast i8* %417 to float*
  store float 0.000000e+00, float* %418, align 1
  %419 = getelementptr inbounds i8, i8* %407, i64 12
  %420 = bitcast i8* %419 to float*
  store float 0.000000e+00, float* %420, align 1
  store %struct.Memory* %loadMem_4280d5, %struct.Memory** %MEMORY
  %loadMem_4280da = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %423 to i64*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 15
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %428 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %427, i64 0, i64 1
  %YMM1.i126 = bitcast %union.VectorReg* %428 to %"class.std::bitset"*
  %429 = bitcast %"class.std::bitset"* %YMM1.i126 to i8*
  %430 = bitcast %"class.std::bitset"* %YMM1.i126 to i8*
  %431 = load i64, i64* %RBP.i125
  %432 = sub i64 %431, 8
  %433 = load i64, i64* %PC.i124
  %434 = add i64 %433, 5
  store i64 %434, i64* %PC.i124
  %435 = bitcast i8* %430 to <2 x float>*
  %436 = load <2 x float>, <2 x float>* %435, align 1
  %437 = getelementptr inbounds i8, i8* %430, i64 8
  %438 = bitcast i8* %437 to <2 x i32>*
  %439 = load <2 x i32>, <2 x i32>* %438, align 1
  %440 = inttoptr i64 %432 to float*
  %441 = load float, float* %440
  %442 = extractelement <2 x float> %436, i32 0
  %443 = fsub float %442, %441
  %444 = bitcast i8* %429 to float*
  store float %443, float* %444, align 1
  %445 = bitcast <2 x float> %436 to <2 x i32>
  %446 = extractelement <2 x i32> %445, i32 1
  %447 = getelementptr inbounds i8, i8* %429, i64 4
  %448 = bitcast i8* %447 to i32*
  store i32 %446, i32* %448, align 1
  %449 = extractelement <2 x i32> %439, i32 0
  %450 = getelementptr inbounds i8, i8* %429, i64 8
  %451 = bitcast i8* %450 to i32*
  store i32 %449, i32* %451, align 1
  %452 = extractelement <2 x i32> %439, i32 1
  %453 = getelementptr inbounds i8, i8* %429, i64 12
  %454 = bitcast i8* %453 to i32*
  store i32 %452, i32* %454, align 1
  store %struct.Memory* %loadMem_4280da, %struct.Memory** %MEMORY
  %loadMem_4280df = load %struct.Memory*, %struct.Memory** %MEMORY
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 33
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %457 to i64*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %459 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %458, i64 0, i64 1
  %YMM1.i122 = bitcast %union.VectorReg* %459 to %"class.std::bitset"*
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %461 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %460, i64 0, i64 1
  %XMM1.i123 = bitcast %union.VectorReg* %461 to %union.vec128_t*
  %462 = bitcast %"class.std::bitset"* %YMM1.i122 to i8*
  %463 = bitcast %union.vec128_t* %XMM1.i123 to i8*
  %464 = load i64, i64* %PC.i121
  %465 = add i64 %464, 4
  store i64 %465, i64* %PC.i121
  %466 = bitcast i8* %463 to <2 x float>*
  %467 = load <2 x float>, <2 x float>* %466, align 1
  %468 = extractelement <2 x float> %467, i32 0
  %469 = fpext float %468 to double
  %470 = bitcast i8* %462 to double*
  store double %469, double* %470, align 1
  store %struct.Memory* %loadMem_4280df, %struct.Memory** %MEMORY
  %loadMem_4280e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 33
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %473 to i64*
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 15
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %476 to i64*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %478 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %477, i64 0, i64 0
  %XMM0.i120 = bitcast %union.VectorReg* %478 to %union.vec128_t*
  %479 = load i64, i64* %RBP.i119
  %480 = sub i64 %479, 32
  %481 = bitcast %union.vec128_t* %XMM0.i120 to i8*
  %482 = load i64, i64* %PC.i118
  %483 = add i64 %482, 5
  store i64 %483, i64* %PC.i118
  %484 = bitcast i8* %481 to double*
  %485 = load double, double* %484, align 1
  %486 = inttoptr i64 %480 to double*
  store double %485, double* %486
  store %struct.Memory* %loadMem_4280e3, %struct.Memory** %MEMORY
  %loadMem_4280e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 33
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %489 to i64*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %491 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %490, i64 0, i64 0
  %YMM0.i116 = bitcast %union.VectorReg* %491 to %"class.std::bitset"*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %493 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %492, i64 0, i64 1
  %XMM1.i117 = bitcast %union.VectorReg* %493 to %union.vec128_t*
  %494 = bitcast %"class.std::bitset"* %YMM0.i116 to i8*
  %495 = bitcast %union.vec128_t* %XMM1.i117 to i8*
  %496 = load i64, i64* %PC.i115
  %497 = add i64 %496, 3
  store i64 %497, i64* %PC.i115
  %498 = bitcast i8* %495 to <2 x i32>*
  %499 = load <2 x i32>, <2 x i32>* %498, align 1
  %500 = getelementptr inbounds i8, i8* %495, i64 8
  %501 = bitcast i8* %500 to <2 x i32>*
  %502 = load <2 x i32>, <2 x i32>* %501, align 1
  %503 = extractelement <2 x i32> %499, i32 0
  %504 = bitcast i8* %494 to i32*
  store i32 %503, i32* %504, align 1
  %505 = extractelement <2 x i32> %499, i32 1
  %506 = getelementptr inbounds i8, i8* %494, i64 4
  %507 = bitcast i8* %506 to i32*
  store i32 %505, i32* %507, align 1
  %508 = extractelement <2 x i32> %502, i32 0
  %509 = getelementptr inbounds i8, i8* %494, i64 8
  %510 = bitcast i8* %509 to i32*
  store i32 %508, i32* %510, align 1
  %511 = extractelement <2 x i32> %502, i32 1
  %512 = getelementptr inbounds i8, i8* %494, i64 12
  %513 = bitcast i8* %512 to i32*
  store i32 %511, i32* %513, align 1
  store %struct.Memory* %loadMem_4280e8, %struct.Memory** %MEMORY
  %loadMem1_4280eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 33
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %516 to i64*
  %517 = load i64, i64* %PC.i114
  %518 = add i64 %517, -158923
  %519 = load i64, i64* %PC.i114
  %520 = add i64 %519, 5
  %521 = load i64, i64* %PC.i114
  %522 = add i64 %521, 5
  store i64 %522, i64* %PC.i114
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = add i64 %524, -8
  %526 = inttoptr i64 %525 to i64*
  store i64 %520, i64* %526
  store i64 %525, i64* %523, align 8
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %518, i64* %527, align 8
  store %struct.Memory* %loadMem1_4280eb, %struct.Memory** %MEMORY
  %loadMem2_4280eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4280eb = load i64, i64* %3
  %528 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_4280eb)
  store %struct.Memory* %528, %struct.Memory** %MEMORY
  %loadMem_4280f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %533 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %532, i64 0, i64 1
  %YMM1.i110 = bitcast %union.VectorReg* %533 to %"class.std::bitset"*
  %534 = bitcast %"class.std::bitset"* %YMM1.i110 to i8*
  %535 = load i64, i64* %PC.i109
  %536 = add i64 %535, ptrtoint (%G_0x2c6e8__rip__type* @G_0x2c6e8__rip_ to i64)
  %537 = load i64, i64* %PC.i109
  %538 = add i64 %537, 8
  store i64 %538, i64* %PC.i109
  %539 = inttoptr i64 %536 to double*
  %540 = load double, double* %539
  %541 = bitcast i8* %534 to double*
  store double %540, double* %541, align 1
  %542 = getelementptr inbounds i8, i8* %534, i64 8
  %543 = bitcast i8* %542 to double*
  store double 0.000000e+00, double* %543, align 1
  store %struct.Memory* %loadMem_4280f0, %struct.Memory** %MEMORY
  %loadMem_4280f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 33
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %548 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %547, i64 0, i64 1
  %YMM1.i107 = bitcast %union.VectorReg* %548 to %"class.std::bitset"*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %550 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %549, i64 0, i64 0
  %XMM0.i108 = bitcast %union.VectorReg* %550 to %union.vec128_t*
  %551 = bitcast %"class.std::bitset"* %YMM1.i107 to i8*
  %552 = bitcast %"class.std::bitset"* %YMM1.i107 to i8*
  %553 = bitcast %union.vec128_t* %XMM0.i108 to i8*
  %554 = load i64, i64* %PC.i106
  %555 = add i64 %554, 4
  store i64 %555, i64* %PC.i106
  %556 = bitcast i8* %552 to double*
  %557 = load double, double* %556, align 1
  %558 = getelementptr inbounds i8, i8* %552, i64 8
  %559 = bitcast i8* %558 to i64*
  %560 = load i64, i64* %559, align 1
  %561 = bitcast i8* %553 to double*
  %562 = load double, double* %561, align 1
  %563 = fadd double %557, %562
  %564 = bitcast i8* %551 to double*
  store double %563, double* %564, align 1
  %565 = getelementptr inbounds i8, i8* %551, i64 8
  %566 = bitcast i8* %565 to i64*
  store i64 %560, i64* %566, align 1
  store %struct.Memory* %loadMem_4280f8, %struct.Memory** %MEMORY
  %loadMem_4280fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 33
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %569 to i64*
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %570, i64 0, i64 0
  %YMM0.i104 = bitcast %union.VectorReg* %571 to %"class.std::bitset"*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %572, i64 0, i64 1
  %XMM1.i105 = bitcast %union.VectorReg* %573 to %union.vec128_t*
  %574 = bitcast %"class.std::bitset"* %YMM0.i104 to i8*
  %575 = bitcast %union.vec128_t* %XMM1.i105 to i8*
  %576 = load i64, i64* %PC.i103
  %577 = add i64 %576, 3
  store i64 %577, i64* %PC.i103
  %578 = bitcast i8* %575 to <2 x i32>*
  %579 = load <2 x i32>, <2 x i32>* %578, align 1
  %580 = getelementptr inbounds i8, i8* %575, i64 8
  %581 = bitcast i8* %580 to <2 x i32>*
  %582 = load <2 x i32>, <2 x i32>* %581, align 1
  %583 = extractelement <2 x i32> %579, i32 0
  %584 = bitcast i8* %574 to i32*
  store i32 %583, i32* %584, align 1
  %585 = extractelement <2 x i32> %579, i32 1
  %586 = getelementptr inbounds i8, i8* %574, i64 4
  %587 = bitcast i8* %586 to i32*
  store i32 %585, i32* %587, align 1
  %588 = extractelement <2 x i32> %582, i32 0
  %589 = getelementptr inbounds i8, i8* %574, i64 8
  %590 = bitcast i8* %589 to i32*
  store i32 %588, i32* %590, align 1
  %591 = extractelement <2 x i32> %582, i32 1
  %592 = getelementptr inbounds i8, i8* %574, i64 12
  %593 = bitcast i8* %592 to i32*
  store i32 %591, i32* %593, align 1
  store %struct.Memory* %loadMem_4280fc, %struct.Memory** %MEMORY
  %loadMem1_4280ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 33
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %PC.i102
  %598 = add i64 %597, -158735
  %599 = load i64, i64* %PC.i102
  %600 = add i64 %599, 5
  %601 = load i64, i64* %PC.i102
  %602 = add i64 %601, 5
  store i64 %602, i64* %PC.i102
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %604 = load i64, i64* %603, align 8
  %605 = add i64 %604, -8
  %606 = inttoptr i64 %605 to i64*
  store i64 %600, i64* %606
  store i64 %605, i64* %603, align 8
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %598, i64* %607, align 8
  store %struct.Memory* %loadMem1_4280ff, %struct.Memory** %MEMORY
  %loadMem2_4280ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4280ff = load i64, i64* %3
  %608 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_4280ff)
  store %struct.Memory* %608, %struct.Memory** %MEMORY
  %loadMem_428104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 15
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %616 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %615, i64 0, i64 1
  %YMM1.i98 = bitcast %union.VectorReg* %616 to %"class.std::bitset"*
  %617 = bitcast %"class.std::bitset"* %YMM1.i98 to i8*
  %618 = load i64, i64* %RBP.i97
  %619 = sub i64 %618, 32
  %620 = load i64, i64* %PC.i96
  %621 = add i64 %620, 5
  store i64 %621, i64* %PC.i96
  %622 = inttoptr i64 %619 to double*
  %623 = load double, double* %622
  %624 = bitcast i8* %617 to double*
  store double %623, double* %624, align 1
  %625 = getelementptr inbounds i8, i8* %617, i64 8
  %626 = bitcast i8* %625 to double*
  store double 0.000000e+00, double* %626, align 1
  store %struct.Memory* %loadMem_428104, %struct.Memory** %MEMORY
  %loadMem_428109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 33
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %629 to i64*
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %631 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %630, i64 0, i64 1
  %YMM1.i94 = bitcast %union.VectorReg* %631 to %"class.std::bitset"*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %633 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %632, i64 0, i64 0
  %XMM0.i95 = bitcast %union.VectorReg* %633 to %union.vec128_t*
  %634 = bitcast %"class.std::bitset"* %YMM1.i94 to i8*
  %635 = bitcast %"class.std::bitset"* %YMM1.i94 to i8*
  %636 = bitcast %union.vec128_t* %XMM0.i95 to i8*
  %637 = load i64, i64* %PC.i93
  %638 = add i64 %637, 4
  store i64 %638, i64* %PC.i93
  %639 = bitcast i8* %635 to double*
  %640 = load double, double* %639, align 1
  %641 = getelementptr inbounds i8, i8* %635, i64 8
  %642 = bitcast i8* %641 to i64*
  %643 = load i64, i64* %642, align 1
  %644 = bitcast i8* %636 to double*
  %645 = load double, double* %644, align 1
  %646 = fadd double %640, %645
  %647 = bitcast i8* %634 to double*
  store double %646, double* %647, align 1
  %648 = getelementptr inbounds i8, i8* %634, i64 8
  %649 = bitcast i8* %648 to i64*
  store i64 %643, i64* %649, align 1
  store %struct.Memory* %loadMem_428109, %struct.Memory** %MEMORY
  %loadMem_42810d = load %struct.Memory*, %struct.Memory** %MEMORY
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 33
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 15
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %655 to i64*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %657 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %656, i64 0, i64 1
  %XMM1.i92 = bitcast %union.VectorReg* %657 to %union.vec128_t*
  %658 = load i64, i64* %RBP.i91
  %659 = sub i64 %658, 24
  %660 = bitcast %union.vec128_t* %XMM1.i92 to i8*
  %661 = load i64, i64* %PC.i90
  %662 = add i64 %661, 5
  store i64 %662, i64* %PC.i90
  %663 = bitcast i8* %660 to double*
  %664 = load double, double* %663, align 1
  %665 = inttoptr i64 %659 to double*
  store double %664, double* %665
  store %struct.Memory* %loadMem_42810d, %struct.Memory** %MEMORY
  br label %block_.L_428112

block_.L_428112:                                  ; preds = %block_.L_4280d0, %block_4280c1
  %loadMem_428112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 33
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 15
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %671 to i64*
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %673 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %672, i64 0, i64 0
  %YMM0.i89 = bitcast %union.VectorReg* %673 to %"class.std::bitset"*
  %674 = bitcast %"class.std::bitset"* %YMM0.i89 to i8*
  %675 = load i64, i64* %RBP.i88
  %676 = sub i64 %675, 24
  %677 = load i64, i64* %PC.i87
  %678 = add i64 %677, 5
  store i64 %678, i64* %PC.i87
  %679 = inttoptr i64 %676 to double*
  %680 = load double, double* %679
  %681 = bitcast i8* %674 to double*
  store double %680, double* %681, align 1
  %682 = getelementptr inbounds i8, i8* %674, i64 8
  %683 = bitcast i8* %682 to double*
  store double 0.000000e+00, double* %683, align 1
  store %struct.Memory* %loadMem_428112, %struct.Memory** %MEMORY
  %loadMem_428117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 33
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %686 to i64*
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %688 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %687, i64 0, i64 0
  %YMM0.i85 = bitcast %union.VectorReg* %688 to %"class.std::bitset"*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %690 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %689, i64 0, i64 0
  %XMM0.i86 = bitcast %union.VectorReg* %690 to %union.vec128_t*
  %691 = bitcast %"class.std::bitset"* %YMM0.i85 to i8*
  %692 = bitcast %union.vec128_t* %XMM0.i86 to i8*
  %693 = load i64, i64* %PC.i84
  %694 = add i64 %693, 4
  store i64 %694, i64* %PC.i84
  %695 = bitcast i8* %691 to <2 x i32>*
  %696 = load <2 x i32>, <2 x i32>* %695, align 1
  %697 = getelementptr inbounds i8, i8* %691, i64 8
  %698 = bitcast i8* %697 to <2 x i32>*
  %699 = load <2 x i32>, <2 x i32>* %698, align 1
  %700 = bitcast i8* %692 to double*
  %701 = load double, double* %700, align 1
  %702 = fptrunc double %701 to float
  %703 = bitcast i8* %691 to float*
  store float %702, float* %703, align 1
  %704 = extractelement <2 x i32> %696, i32 1
  %705 = getelementptr inbounds i8, i8* %691, i64 4
  %706 = bitcast i8* %705 to i32*
  store i32 %704, i32* %706, align 1
  %707 = extractelement <2 x i32> %699, i32 0
  %708 = bitcast i8* %697 to i32*
  store i32 %707, i32* %708, align 1
  %709 = extractelement <2 x i32> %699, i32 1
  %710 = getelementptr inbounds i8, i8* %691, i64 12
  %711 = bitcast i8* %710 to i32*
  store i32 %709, i32* %711, align 1
  store %struct.Memory* %loadMem_428117, %struct.Memory** %MEMORY
  %loadMem_42811b = load %struct.Memory*, %struct.Memory** %MEMORY
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 33
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 15
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %719 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %718, i64 0, i64 0
  %XMM0.i83 = bitcast %union.VectorReg* %719 to %union.vec128_t*
  %720 = load i64, i64* %RBP.i82
  %721 = sub i64 %720, 4
  %722 = bitcast %union.vec128_t* %XMM0.i83 to i8*
  %723 = load i64, i64* %PC.i81
  %724 = add i64 %723, 5
  store i64 %724, i64* %PC.i81
  %725 = bitcast i8* %722 to <2 x float>*
  %726 = load <2 x float>, <2 x float>* %725, align 1
  %727 = extractelement <2 x float> %726, i32 0
  %728 = inttoptr i64 %721 to float*
  store float %727, float* %728
  store %struct.Memory* %loadMem_42811b, %struct.Memory** %MEMORY
  %loadMem_428120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %731 to i64*
  %732 = load i64, i64* %PC.i80
  %733 = add i64 %732, 132
  %734 = load i64, i64* %PC.i80
  %735 = add i64 %734, 5
  store i64 %735, i64* %PC.i80
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %733, i64* %736, align 8
  store %struct.Memory* %loadMem_428120, %struct.Memory** %MEMORY
  br label %block_.L_4281a4

block_.L_428125:                                  ; preds = %routine_ucomiss_MINUS0xc__rbp____xmm0.exit
  %loadMem_428125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %738 = getelementptr inbounds %struct.GPR, %struct.GPR* %737, i32 0, i32 33
  %739 = getelementptr inbounds %struct.Reg, %struct.Reg* %738, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %739 to i64*
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %741 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %740, i64 0, i64 0
  %YMM0.i79 = bitcast %union.VectorReg* %741 to %"class.std::bitset"*
  %742 = bitcast %"class.std::bitset"* %YMM0.i79 to i8*
  %743 = load i64, i64* %PC.i78
  %744 = add i64 %743, ptrtoint (%G_0x2c7cb__rip__type* @G_0x2c7cb__rip_ to i64)
  %745 = load i64, i64* %PC.i78
  %746 = add i64 %745, 8
  store i64 %746, i64* %PC.i78
  %747 = inttoptr i64 %744 to double*
  %748 = load double, double* %747
  %749 = bitcast i8* %742 to double*
  store double %748, double* %749, align 1
  %750 = getelementptr inbounds i8, i8* %742, i64 8
  %751 = bitcast i8* %750 to double*
  store double 0.000000e+00, double* %751, align 1
  store %struct.Memory* %loadMem_428125, %struct.Memory** %MEMORY
  %loadMem_42812d = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 15
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %759 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %758, i64 0, i64 1
  %YMM1.i77 = bitcast %union.VectorReg* %759 to %"class.std::bitset"*
  %760 = bitcast %"class.std::bitset"* %YMM1.i77 to i8*
  %761 = load i64, i64* %RBP.i76
  %762 = sub i64 %761, 12
  %763 = load i64, i64* %PC.i75
  %764 = add i64 %763, 5
  store i64 %764, i64* %PC.i75
  %765 = inttoptr i64 %762 to float*
  %766 = load float, float* %765
  %767 = bitcast i8* %760 to float*
  store float %766, float* %767, align 1
  %768 = getelementptr inbounds i8, i8* %760, i64 4
  %769 = bitcast i8* %768 to float*
  store float 0.000000e+00, float* %769, align 1
  %770 = getelementptr inbounds i8, i8* %760, i64 8
  %771 = bitcast i8* %770 to float*
  store float 0.000000e+00, float* %771, align 1
  %772 = getelementptr inbounds i8, i8* %760, i64 12
  %773 = bitcast i8* %772 to float*
  store float 0.000000e+00, float* %773, align 1
  store %struct.Memory* %loadMem_42812d, %struct.Memory** %MEMORY
  %loadMem_428132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 15
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %781 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %780, i64 0, i64 1
  %YMM1.i74 = bitcast %union.VectorReg* %781 to %"class.std::bitset"*
  %782 = bitcast %"class.std::bitset"* %YMM1.i74 to i8*
  %783 = bitcast %"class.std::bitset"* %YMM1.i74 to i8*
  %784 = load i64, i64* %RBP.i73
  %785 = sub i64 %784, 8
  %786 = load i64, i64* %PC.i72
  %787 = add i64 %786, 5
  store i64 %787, i64* %PC.i72
  %788 = bitcast i8* %783 to <2 x float>*
  %789 = load <2 x float>, <2 x float>* %788, align 1
  %790 = getelementptr inbounds i8, i8* %783, i64 8
  %791 = bitcast i8* %790 to <2 x i32>*
  %792 = load <2 x i32>, <2 x i32>* %791, align 1
  %793 = inttoptr i64 %785 to float*
  %794 = load float, float* %793
  %795 = extractelement <2 x float> %789, i32 0
  %796 = fsub float %795, %794
  %797 = bitcast i8* %782 to float*
  store float %796, float* %797, align 1
  %798 = bitcast <2 x float> %789 to <2 x i32>
  %799 = extractelement <2 x i32> %798, i32 1
  %800 = getelementptr inbounds i8, i8* %782, i64 4
  %801 = bitcast i8* %800 to i32*
  store i32 %799, i32* %801, align 1
  %802 = extractelement <2 x i32> %792, i32 0
  %803 = getelementptr inbounds i8, i8* %782, i64 8
  %804 = bitcast i8* %803 to i32*
  store i32 %802, i32* %804, align 1
  %805 = extractelement <2 x i32> %792, i32 1
  %806 = getelementptr inbounds i8, i8* %782, i64 12
  %807 = bitcast i8* %806 to i32*
  store i32 %805, i32* %807, align 1
  store %struct.Memory* %loadMem_428132, %struct.Memory** %MEMORY
  %loadMem_428137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 33
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %812 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %811, i64 0, i64 1
  %YMM1.i70 = bitcast %union.VectorReg* %812 to %"class.std::bitset"*
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %814 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %813, i64 0, i64 1
  %XMM1.i71 = bitcast %union.VectorReg* %814 to %union.vec128_t*
  %815 = bitcast %"class.std::bitset"* %YMM1.i70 to i8*
  %816 = bitcast %union.vec128_t* %XMM1.i71 to i8*
  %817 = load i64, i64* %PC.i69
  %818 = add i64 %817, 4
  store i64 %818, i64* %PC.i69
  %819 = bitcast i8* %816 to <2 x float>*
  %820 = load <2 x float>, <2 x float>* %819, align 1
  %821 = extractelement <2 x float> %820, i32 0
  %822 = fpext float %821 to double
  %823 = bitcast i8* %815 to double*
  store double %822, double* %823, align 1
  store %struct.Memory* %loadMem_428137, %struct.Memory** %MEMORY
  %loadMem_42813b = load %struct.Memory*, %struct.Memory** %MEMORY
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 33
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %828 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %827, i64 0, i64 0
  %XMM0.i64 = bitcast %union.VectorReg* %828 to %union.vec128_t*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %830 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %829, i64 0, i64 1
  %XMM1.i65 = bitcast %union.VectorReg* %830 to %union.vec128_t*
  %831 = bitcast %union.vec128_t* %XMM1.i65 to i8*
  %832 = bitcast %union.vec128_t* %XMM0.i64 to i8*
  %833 = load i64, i64* %PC.i63
  %834 = add i64 %833, 4
  store i64 %834, i64* %PC.i63
  %835 = bitcast i8* %831 to double*
  %836 = load double, double* %835, align 1
  %837 = bitcast i8* %832 to double*
  %838 = load double, double* %837, align 1
  %839 = fcmp uno double %836, %838
  br i1 %839, label %840, label %852

; <label>:840:                                    ; preds = %block_.L_428125
  %841 = fadd double %836, %838
  %842 = bitcast double %841 to i64
  %843 = and i64 %842, 9221120237041090560
  %844 = icmp eq i64 %843, 9218868437227405312
  %845 = and i64 %842, 2251799813685247
  %846 = icmp ne i64 %845, 0
  %847 = and i1 %844, %846
  br i1 %847, label %848, label %858

; <label>:848:                                    ; preds = %840
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %850 = load i64, i64* %849, align 8
  %851 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %850, %struct.Memory* %loadMem_42813b)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:852:                                    ; preds = %block_.L_428125
  %853 = fcmp ogt double %836, %838
  br i1 %853, label %858, label %854

; <label>:854:                                    ; preds = %852
  %855 = fcmp olt double %836, %838
  br i1 %855, label %858, label %856

; <label>:856:                                    ; preds = %854
  %857 = fcmp oeq double %836, %838
  br i1 %857, label %858, label %865

; <label>:858:                                    ; preds = %856, %854, %852, %840
  %859 = phi i8 [ 0, %852 ], [ 0, %854 ], [ 1, %856 ], [ 1, %840 ]
  %860 = phi i8 [ 0, %852 ], [ 0, %854 ], [ 0, %856 ], [ 1, %840 ]
  %861 = phi i8 [ 0, %852 ], [ 1, %854 ], [ 0, %856 ], [ 1, %840 ]
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %859, i8* %862, align 1
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %860, i8* %863, align 1
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %861, i8* %864, align 1
  br label %865

; <label>:865:                                    ; preds = %858, %856
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %866, align 1
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %867, align 1
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %868, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %848, %865
  %869 = phi %struct.Memory* [ %851, %848 ], [ %loadMem_42813b, %865 ]
  store %struct.Memory* %869, %struct.Memory** %MEMORY
  %loadMem_42813f = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %872 to i64*
  %873 = load i64, i64* %PC.i62
  %874 = add i64 %873, 21
  %875 = load i64, i64* %PC.i62
  %876 = add i64 %875, 6
  %877 = load i64, i64* %PC.i62
  %878 = add i64 %877, 6
  store i64 %878, i64* %PC.i62
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %880 = load i8, i8* %879, align 1
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %882 = load i8, i8* %881, align 1
  %883 = or i8 %882, %880
  %884 = icmp ne i8 %883, 0
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %BRANCH_TAKEN, align 1
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %887 = select i1 %884, i64 %874, i64 %876
  store i64 %887, i64* %886, align 8
  store %struct.Memory* %loadMem_42813f, %struct.Memory** %MEMORY
  %loadBr_42813f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42813f = icmp eq i8 %loadBr_42813f, 1
  br i1 %cmpBr_42813f, label %block_.L_428154, label %block_428145

block_428145:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_428145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 15
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %895 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %894, i64 0, i64 0
  %YMM0.i61 = bitcast %union.VectorReg* %895 to %"class.std::bitset"*
  %896 = bitcast %"class.std::bitset"* %YMM0.i61 to i8*
  %897 = load i64, i64* %RBP.i60
  %898 = sub i64 %897, 12
  %899 = load i64, i64* %PC.i59
  %900 = add i64 %899, 5
  store i64 %900, i64* %PC.i59
  %901 = inttoptr i64 %898 to float*
  %902 = load float, float* %901
  %903 = fpext float %902 to double
  %904 = bitcast i8* %896 to double*
  store double %903, double* %904, align 1
  store %struct.Memory* %loadMem_428145, %struct.Memory** %MEMORY
  %loadMem_42814a = load %struct.Memory*, %struct.Memory** %MEMORY
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 33
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %907 to i64*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 15
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %910 to i64*
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %912 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %911, i64 0, i64 0
  %XMM0.i58 = bitcast %union.VectorReg* %912 to %union.vec128_t*
  %913 = load i64, i64* %RBP.i57
  %914 = sub i64 %913, 40
  %915 = bitcast %union.vec128_t* %XMM0.i58 to i8*
  %916 = load i64, i64* %PC.i56
  %917 = add i64 %916, 5
  store i64 %917, i64* %PC.i56
  %918 = bitcast i8* %915 to double*
  %919 = load double, double* %918, align 1
  %920 = inttoptr i64 %914 to double*
  store double %919, double* %920
  store %struct.Memory* %loadMem_42814a, %struct.Memory** %MEMORY
  %loadMem_42814f = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %923 to i64*
  %924 = load i64, i64* %PC.i55
  %925 = add i64 %924, 71
  %926 = load i64, i64* %PC.i55
  %927 = add i64 %926, 5
  store i64 %927, i64* %PC.i55
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %925, i64* %928, align 8
  store %struct.Memory* %loadMem_42814f, %struct.Memory** %MEMORY
  br label %block_.L_428196

block_.L_428154:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_428154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 33
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 15
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %934 to i64*
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %936 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %935, i64 0, i64 0
  %YMM0.i54 = bitcast %union.VectorReg* %936 to %"class.std::bitset"*
  %937 = bitcast %"class.std::bitset"* %YMM0.i54 to i8*
  %938 = load i64, i64* %RBP.i53
  %939 = sub i64 %938, 12
  %940 = load i64, i64* %PC.i52
  %941 = add i64 %940, 5
  store i64 %941, i64* %PC.i52
  %942 = inttoptr i64 %939 to float*
  %943 = load float, float* %942
  %944 = fpext float %943 to double
  %945 = bitcast i8* %937 to double*
  store double %944, double* %945, align 1
  store %struct.Memory* %loadMem_428154, %struct.Memory** %MEMORY
  %loadMem_428159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 15
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %951 to i64*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %953 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %952, i64 0, i64 1
  %YMM1.i51 = bitcast %union.VectorReg* %953 to %"class.std::bitset"*
  %954 = bitcast %"class.std::bitset"* %YMM1.i51 to i8*
  %955 = load i64, i64* %RBP.i50
  %956 = sub i64 %955, 8
  %957 = load i64, i64* %PC.i49
  %958 = add i64 %957, 5
  store i64 %958, i64* %PC.i49
  %959 = inttoptr i64 %956 to float*
  %960 = load float, float* %959
  %961 = bitcast i8* %954 to float*
  store float %960, float* %961, align 1
  %962 = getelementptr inbounds i8, i8* %954, i64 4
  %963 = bitcast i8* %962 to float*
  store float 0.000000e+00, float* %963, align 1
  %964 = getelementptr inbounds i8, i8* %954, i64 8
  %965 = bitcast i8* %964 to float*
  store float 0.000000e+00, float* %965, align 1
  %966 = getelementptr inbounds i8, i8* %954, i64 12
  %967 = bitcast i8* %966 to float*
  store float 0.000000e+00, float* %967, align 1
  store %struct.Memory* %loadMem_428159, %struct.Memory** %MEMORY
  %loadMem_42815e = load %struct.Memory*, %struct.Memory** %MEMORY
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 33
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 15
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %975 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %974, i64 0, i64 1
  %YMM1.i48 = bitcast %union.VectorReg* %975 to %"class.std::bitset"*
  %976 = bitcast %"class.std::bitset"* %YMM1.i48 to i8*
  %977 = bitcast %"class.std::bitset"* %YMM1.i48 to i8*
  %978 = load i64, i64* %RBP.i47
  %979 = sub i64 %978, 12
  %980 = load i64, i64* %PC.i46
  %981 = add i64 %980, 5
  store i64 %981, i64* %PC.i46
  %982 = bitcast i8* %977 to <2 x float>*
  %983 = load <2 x float>, <2 x float>* %982, align 1
  %984 = getelementptr inbounds i8, i8* %977, i64 8
  %985 = bitcast i8* %984 to <2 x i32>*
  %986 = load <2 x i32>, <2 x i32>* %985, align 1
  %987 = inttoptr i64 %979 to float*
  %988 = load float, float* %987
  %989 = extractelement <2 x float> %983, i32 0
  %990 = fsub float %989, %988
  %991 = bitcast i8* %976 to float*
  store float %990, float* %991, align 1
  %992 = bitcast <2 x float> %983 to <2 x i32>
  %993 = extractelement <2 x i32> %992, i32 1
  %994 = getelementptr inbounds i8, i8* %976, i64 4
  %995 = bitcast i8* %994 to i32*
  store i32 %993, i32* %995, align 1
  %996 = extractelement <2 x i32> %986, i32 0
  %997 = getelementptr inbounds i8, i8* %976, i64 8
  %998 = bitcast i8* %997 to i32*
  store i32 %996, i32* %998, align 1
  %999 = extractelement <2 x i32> %986, i32 1
  %1000 = getelementptr inbounds i8, i8* %976, i64 12
  %1001 = bitcast i8* %1000 to i32*
  store i32 %999, i32* %1001, align 1
  store %struct.Memory* %loadMem_42815e, %struct.Memory** %MEMORY
  %loadMem_428163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 33
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1006 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1005, i64 0, i64 1
  %YMM1.i44 = bitcast %union.VectorReg* %1006 to %"class.std::bitset"*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1008 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1007, i64 0, i64 1
  %XMM1.i45 = bitcast %union.VectorReg* %1008 to %union.vec128_t*
  %1009 = bitcast %"class.std::bitset"* %YMM1.i44 to i8*
  %1010 = bitcast %union.vec128_t* %XMM1.i45 to i8*
  %1011 = load i64, i64* %PC.i43
  %1012 = add i64 %1011, 4
  store i64 %1012, i64* %PC.i43
  %1013 = bitcast i8* %1010 to <2 x float>*
  %1014 = load <2 x float>, <2 x float>* %1013, align 1
  %1015 = extractelement <2 x float> %1014, i32 0
  %1016 = fpext float %1015 to double
  %1017 = bitcast i8* %1009 to double*
  store double %1016, double* %1017, align 1
  store %struct.Memory* %loadMem_428163, %struct.Memory** %MEMORY
  %loadMem_428167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 15
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1025 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1024, i64 0, i64 0
  %XMM0.i42 = bitcast %union.VectorReg* %1025 to %union.vec128_t*
  %1026 = load i64, i64* %RBP.i41
  %1027 = sub i64 %1026, 48
  %1028 = bitcast %union.vec128_t* %XMM0.i42 to i8*
  %1029 = load i64, i64* %PC.i40
  %1030 = add i64 %1029, 5
  store i64 %1030, i64* %PC.i40
  %1031 = bitcast i8* %1028 to double*
  %1032 = load double, double* %1031, align 1
  %1033 = inttoptr i64 %1027 to double*
  store double %1032, double* %1033
  store %struct.Memory* %loadMem_428167, %struct.Memory** %MEMORY
  %loadMem_42816c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 33
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1038 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1037, i64 0, i64 0
  %YMM0.i38 = bitcast %union.VectorReg* %1038 to %"class.std::bitset"*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1040 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1039, i64 0, i64 1
  %XMM1.i39 = bitcast %union.VectorReg* %1040 to %union.vec128_t*
  %1041 = bitcast %"class.std::bitset"* %YMM0.i38 to i8*
  %1042 = bitcast %union.vec128_t* %XMM1.i39 to i8*
  %1043 = load i64, i64* %PC.i37
  %1044 = add i64 %1043, 3
  store i64 %1044, i64* %PC.i37
  %1045 = bitcast i8* %1042 to <2 x i32>*
  %1046 = load <2 x i32>, <2 x i32>* %1045, align 1
  %1047 = getelementptr inbounds i8, i8* %1042, i64 8
  %1048 = bitcast i8* %1047 to <2 x i32>*
  %1049 = load <2 x i32>, <2 x i32>* %1048, align 1
  %1050 = extractelement <2 x i32> %1046, i32 0
  %1051 = bitcast i8* %1041 to i32*
  store i32 %1050, i32* %1051, align 1
  %1052 = extractelement <2 x i32> %1046, i32 1
  %1053 = getelementptr inbounds i8, i8* %1041, i64 4
  %1054 = bitcast i8* %1053 to i32*
  store i32 %1052, i32* %1054, align 1
  %1055 = extractelement <2 x i32> %1049, i32 0
  %1056 = getelementptr inbounds i8, i8* %1041, i64 8
  %1057 = bitcast i8* %1056 to i32*
  store i32 %1055, i32* %1057, align 1
  %1058 = extractelement <2 x i32> %1049, i32 1
  %1059 = getelementptr inbounds i8, i8* %1041, i64 12
  %1060 = bitcast i8* %1059 to i32*
  store i32 %1058, i32* %1060, align 1
  store %struct.Memory* %loadMem_42816c, %struct.Memory** %MEMORY
  %loadMem1_42816f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %1063 to i64*
  %1064 = load i64, i64* %PC.i36
  %1065 = add i64 %1064, -159055
  %1066 = load i64, i64* %PC.i36
  %1067 = add i64 %1066, 5
  %1068 = load i64, i64* %PC.i36
  %1069 = add i64 %1068, 5
  store i64 %1069, i64* %PC.i36
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1071 = load i64, i64* %1070, align 8
  %1072 = add i64 %1071, -8
  %1073 = inttoptr i64 %1072 to i64*
  store i64 %1067, i64* %1073
  store i64 %1072, i64* %1070, align 8
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1065, i64* %1074, align 8
  store %struct.Memory* %loadMem1_42816f, %struct.Memory** %MEMORY
  %loadMem2_42816f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42816f = load i64, i64* %3
  %1075 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_42816f)
  store %struct.Memory* %1075, %struct.Memory** %MEMORY
  %loadMem_428174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1080 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1079, i64 0, i64 1
  %YMM1.i33 = bitcast %union.VectorReg* %1080 to %"class.std::bitset"*
  %1081 = bitcast %"class.std::bitset"* %YMM1.i33 to i8*
  %1082 = load i64, i64* %PC.i32
  %1083 = add i64 %1082, ptrtoint (%G_0x2c664__rip__type* @G_0x2c664__rip_ to i64)
  %1084 = load i64, i64* %PC.i32
  %1085 = add i64 %1084, 8
  store i64 %1085, i64* %PC.i32
  %1086 = inttoptr i64 %1083 to double*
  %1087 = load double, double* %1086
  %1088 = bitcast i8* %1081 to double*
  store double %1087, double* %1088, align 1
  %1089 = getelementptr inbounds i8, i8* %1081, i64 8
  %1090 = bitcast i8* %1089 to double*
  store double 0.000000e+00, double* %1090, align 1
  store %struct.Memory* %loadMem_428174, %struct.Memory** %MEMORY
  %loadMem_42817c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 33
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1095 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1094, i64 0, i64 1
  %YMM1.i30 = bitcast %union.VectorReg* %1095 to %"class.std::bitset"*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1097 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1096, i64 0, i64 0
  %XMM0.i31 = bitcast %union.VectorReg* %1097 to %union.vec128_t*
  %1098 = bitcast %"class.std::bitset"* %YMM1.i30 to i8*
  %1099 = bitcast %"class.std::bitset"* %YMM1.i30 to i8*
  %1100 = bitcast %union.vec128_t* %XMM0.i31 to i8*
  %1101 = load i64, i64* %PC.i29
  %1102 = add i64 %1101, 4
  store i64 %1102, i64* %PC.i29
  %1103 = bitcast i8* %1099 to double*
  %1104 = load double, double* %1103, align 1
  %1105 = getelementptr inbounds i8, i8* %1099, i64 8
  %1106 = bitcast i8* %1105 to i64*
  %1107 = load i64, i64* %1106, align 1
  %1108 = bitcast i8* %1100 to double*
  %1109 = load double, double* %1108, align 1
  %1110 = fadd double %1104, %1109
  %1111 = bitcast i8* %1098 to double*
  store double %1110, double* %1111, align 1
  %1112 = getelementptr inbounds i8, i8* %1098, i64 8
  %1113 = bitcast i8* %1112 to i64*
  store i64 %1107, i64* %1113, align 1
  store %struct.Memory* %loadMem_42817c, %struct.Memory** %MEMORY
  %loadMem_428180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 33
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1118 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1117, i64 0, i64 0
  %YMM0.i27 = bitcast %union.VectorReg* %1118 to %"class.std::bitset"*
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1120 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1119, i64 0, i64 1
  %XMM1.i28 = bitcast %union.VectorReg* %1120 to %union.vec128_t*
  %1121 = bitcast %"class.std::bitset"* %YMM0.i27 to i8*
  %1122 = bitcast %union.vec128_t* %XMM1.i28 to i8*
  %1123 = load i64, i64* %PC.i26
  %1124 = add i64 %1123, 3
  store i64 %1124, i64* %PC.i26
  %1125 = bitcast i8* %1122 to <2 x i32>*
  %1126 = load <2 x i32>, <2 x i32>* %1125, align 1
  %1127 = getelementptr inbounds i8, i8* %1122, i64 8
  %1128 = bitcast i8* %1127 to <2 x i32>*
  %1129 = load <2 x i32>, <2 x i32>* %1128, align 1
  %1130 = extractelement <2 x i32> %1126, i32 0
  %1131 = bitcast i8* %1121 to i32*
  store i32 %1130, i32* %1131, align 1
  %1132 = extractelement <2 x i32> %1126, i32 1
  %1133 = getelementptr inbounds i8, i8* %1121, i64 4
  %1134 = bitcast i8* %1133 to i32*
  store i32 %1132, i32* %1134, align 1
  %1135 = extractelement <2 x i32> %1129, i32 0
  %1136 = getelementptr inbounds i8, i8* %1121, i64 8
  %1137 = bitcast i8* %1136 to i32*
  store i32 %1135, i32* %1137, align 1
  %1138 = extractelement <2 x i32> %1129, i32 1
  %1139 = getelementptr inbounds i8, i8* %1121, i64 12
  %1140 = bitcast i8* %1139 to i32*
  store i32 %1138, i32* %1140, align 1
  store %struct.Memory* %loadMem_428180, %struct.Memory** %MEMORY
  %loadMem1_428183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 33
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %1143 to i64*
  %1144 = load i64, i64* %PC.i25
  %1145 = add i64 %1144, -158867
  %1146 = load i64, i64* %PC.i25
  %1147 = add i64 %1146, 5
  %1148 = load i64, i64* %PC.i25
  %1149 = add i64 %1148, 5
  store i64 %1149, i64* %PC.i25
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1151 = load i64, i64* %1150, align 8
  %1152 = add i64 %1151, -8
  %1153 = inttoptr i64 %1152 to i64*
  store i64 %1147, i64* %1153
  store i64 %1152, i64* %1150, align 8
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1145, i64* %1154, align 8
  store %struct.Memory* %loadMem1_428183, %struct.Memory** %MEMORY
  %loadMem2_428183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_428183 = load i64, i64* %3
  %1155 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_428183)
  store %struct.Memory* %1155, %struct.Memory** %MEMORY
  %loadMem_428188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 15
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1163 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1162, i64 0, i64 1
  %YMM1.i21 = bitcast %union.VectorReg* %1163 to %"class.std::bitset"*
  %1164 = bitcast %"class.std::bitset"* %YMM1.i21 to i8*
  %1165 = load i64, i64* %RBP.i20
  %1166 = sub i64 %1165, 48
  %1167 = load i64, i64* %PC.i19
  %1168 = add i64 %1167, 5
  store i64 %1168, i64* %PC.i19
  %1169 = inttoptr i64 %1166 to double*
  %1170 = load double, double* %1169
  %1171 = bitcast i8* %1164 to double*
  store double %1170, double* %1171, align 1
  %1172 = getelementptr inbounds i8, i8* %1164, i64 8
  %1173 = bitcast i8* %1172 to double*
  store double 0.000000e+00, double* %1173, align 1
  store %struct.Memory* %loadMem_428188, %struct.Memory** %MEMORY
  %loadMem_42818d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 33
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %1176 to i64*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1178 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1177, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %1178 to %"class.std::bitset"*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1180 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1179, i64 0, i64 0
  %XMM0.i18 = bitcast %union.VectorReg* %1180 to %union.vec128_t*
  %1181 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1182 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1183 = bitcast %union.vec128_t* %XMM0.i18 to i8*
  %1184 = load i64, i64* %PC.i17
  %1185 = add i64 %1184, 4
  store i64 %1185, i64* %PC.i17
  %1186 = bitcast i8* %1182 to double*
  %1187 = load double, double* %1186, align 1
  %1188 = getelementptr inbounds i8, i8* %1182, i64 8
  %1189 = bitcast i8* %1188 to i64*
  %1190 = load i64, i64* %1189, align 1
  %1191 = bitcast i8* %1183 to double*
  %1192 = load double, double* %1191, align 1
  %1193 = fadd double %1187, %1192
  %1194 = bitcast i8* %1181 to double*
  store double %1193, double* %1194, align 1
  %1195 = getelementptr inbounds i8, i8* %1181, i64 8
  %1196 = bitcast i8* %1195 to i64*
  store i64 %1190, i64* %1196, align 1
  store %struct.Memory* %loadMem_42818d, %struct.Memory** %MEMORY
  %loadMem_428191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 33
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 15
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1204 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1203, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %1204 to %union.vec128_t*
  %1205 = load i64, i64* %RBP.i16
  %1206 = sub i64 %1205, 40
  %1207 = bitcast %union.vec128_t* %XMM1.i to i8*
  %1208 = load i64, i64* %PC.i15
  %1209 = add i64 %1208, 5
  store i64 %1209, i64* %PC.i15
  %1210 = bitcast i8* %1207 to double*
  %1211 = load double, double* %1210, align 1
  %1212 = inttoptr i64 %1206 to double*
  store double %1211, double* %1212
  store %struct.Memory* %loadMem_428191, %struct.Memory** %MEMORY
  br label %block_.L_428196

block_.L_428196:                                  ; preds = %block_.L_428154, %block_428145
  %loadMem_428196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 33
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %1215 to i64*
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 15
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %1218 to i64*
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1220 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1219, i64 0, i64 0
  %YMM0.i14 = bitcast %union.VectorReg* %1220 to %"class.std::bitset"*
  %1221 = bitcast %"class.std::bitset"* %YMM0.i14 to i8*
  %1222 = load i64, i64* %RBP.i13
  %1223 = sub i64 %1222, 40
  %1224 = load i64, i64* %PC.i12
  %1225 = add i64 %1224, 5
  store i64 %1225, i64* %PC.i12
  %1226 = inttoptr i64 %1223 to double*
  %1227 = load double, double* %1226
  %1228 = bitcast i8* %1221 to double*
  store double %1227, double* %1228, align 1
  %1229 = getelementptr inbounds i8, i8* %1221, i64 8
  %1230 = bitcast i8* %1229 to double*
  store double 0.000000e+00, double* %1230, align 1
  store %struct.Memory* %loadMem_428196, %struct.Memory** %MEMORY
  %loadMem_42819b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 33
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1234, i64 0, i64 0
  %YMM0.i10 = bitcast %union.VectorReg* %1235 to %"class.std::bitset"*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1237 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1236, i64 0, i64 0
  %XMM0.i11 = bitcast %union.VectorReg* %1237 to %union.vec128_t*
  %1238 = bitcast %"class.std::bitset"* %YMM0.i10 to i8*
  %1239 = bitcast %union.vec128_t* %XMM0.i11 to i8*
  %1240 = load i64, i64* %PC.i9
  %1241 = add i64 %1240, 4
  store i64 %1241, i64* %PC.i9
  %1242 = bitcast i8* %1238 to <2 x i32>*
  %1243 = load <2 x i32>, <2 x i32>* %1242, align 1
  %1244 = getelementptr inbounds i8, i8* %1238, i64 8
  %1245 = bitcast i8* %1244 to <2 x i32>*
  %1246 = load <2 x i32>, <2 x i32>* %1245, align 1
  %1247 = bitcast i8* %1239 to double*
  %1248 = load double, double* %1247, align 1
  %1249 = fptrunc double %1248 to float
  %1250 = bitcast i8* %1238 to float*
  store float %1249, float* %1250, align 1
  %1251 = extractelement <2 x i32> %1243, i32 1
  %1252 = getelementptr inbounds i8, i8* %1238, i64 4
  %1253 = bitcast i8* %1252 to i32*
  store i32 %1251, i32* %1253, align 1
  %1254 = extractelement <2 x i32> %1246, i32 0
  %1255 = bitcast i8* %1244 to i32*
  store i32 %1254, i32* %1255, align 1
  %1256 = extractelement <2 x i32> %1246, i32 1
  %1257 = getelementptr inbounds i8, i8* %1238, i64 12
  %1258 = bitcast i8* %1257 to i32*
  store i32 %1256, i32* %1258, align 1
  store %struct.Memory* %loadMem_42819b, %struct.Memory** %MEMORY
  %loadMem_42819f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 33
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 15
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %1264 to i64*
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1266 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1265, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %1266 to %union.vec128_t*
  %1267 = load i64, i64* %RBP.i8
  %1268 = sub i64 %1267, 4
  %1269 = bitcast %union.vec128_t* %XMM0.i to i8*
  %1270 = load i64, i64* %PC.i7
  %1271 = add i64 %1270, 5
  store i64 %1271, i64* %PC.i7
  %1272 = bitcast i8* %1269 to <2 x float>*
  %1273 = load <2 x float>, <2 x float>* %1272, align 1
  %1274 = extractelement <2 x float> %1273, i32 0
  %1275 = inttoptr i64 %1268 to float*
  store float %1274, float* %1275
  store %struct.Memory* %loadMem_42819f, %struct.Memory** %MEMORY
  br label %block_.L_4281a4

block_.L_4281a4:                                  ; preds = %block_.L_428196, %block_.L_428112
  %loadMem_4281a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 33
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1278 to i64*
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 15
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %1281 to i64*
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1283 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1282, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %1283 to %"class.std::bitset"*
  %1284 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %1285 = load i64, i64* %RBP.i6
  %1286 = sub i64 %1285, 4
  %1287 = load i64, i64* %PC.i5
  %1288 = add i64 %1287, 5
  store i64 %1288, i64* %PC.i5
  %1289 = inttoptr i64 %1286 to float*
  %1290 = load float, float* %1289
  %1291 = bitcast i8* %1284 to float*
  store float %1290, float* %1291, align 1
  %1292 = getelementptr inbounds i8, i8* %1284, i64 4
  %1293 = bitcast i8* %1292 to float*
  store float 0.000000e+00, float* %1293, align 1
  %1294 = getelementptr inbounds i8, i8* %1284, i64 8
  %1295 = bitcast i8* %1294 to float*
  store float 0.000000e+00, float* %1295, align 1
  %1296 = getelementptr inbounds i8, i8* %1284, i64 12
  %1297 = bitcast i8* %1296 to float*
  store float 0.000000e+00, float* %1297, align 1
  store %struct.Memory* %loadMem_4281a4, %struct.Memory** %MEMORY
  %loadMem_4281a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 33
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1300 to i64*
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 13
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %1303 to i64*
  %1304 = load i64, i64* %RSP.i
  %1305 = load i64, i64* %PC.i4
  %1306 = add i64 %1305, 4
  store i64 %1306, i64* %PC.i4
  %1307 = add i64 48, %1304
  store i64 %1307, i64* %RSP.i, align 8
  %1308 = icmp ult i64 %1307, %1304
  %1309 = icmp ult i64 %1307, 48
  %1310 = or i1 %1308, %1309
  %1311 = zext i1 %1310 to i8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1311, i8* %1312, align 1
  %1313 = trunc i64 %1307 to i32
  %1314 = and i32 %1313, 255
  %1315 = call i32 @llvm.ctpop.i32(i32 %1314)
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  %1318 = xor i8 %1317, 1
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1318, i8* %1319, align 1
  %1320 = xor i64 48, %1304
  %1321 = xor i64 %1320, %1307
  %1322 = lshr i64 %1321, 4
  %1323 = trunc i64 %1322 to i8
  %1324 = and i8 %1323, 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1324, i8* %1325, align 1
  %1326 = icmp eq i64 %1307, 0
  %1327 = zext i1 %1326 to i8
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1327, i8* %1328, align 1
  %1329 = lshr i64 %1307, 63
  %1330 = trunc i64 %1329 to i8
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1330, i8* %1331, align 1
  %1332 = lshr i64 %1304, 63
  %1333 = xor i64 %1329, %1332
  %1334 = add i64 %1333, %1329
  %1335 = icmp eq i64 %1334, 2
  %1336 = zext i1 %1335 to i8
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1336, i8* %1337, align 1
  store %struct.Memory* %loadMem_4281a9, %struct.Memory** %MEMORY
  %loadMem_4281ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 33
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1340 to i64*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 15
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1343 to i64*
  %1344 = load i64, i64* %PC.i2
  %1345 = add i64 %1344, 1
  store i64 %1345, i64* %PC.i2
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1347 = load i64, i64* %1346, align 8
  %1348 = add i64 %1347, 8
  %1349 = inttoptr i64 %1347 to i64*
  %1350 = load i64, i64* %1349
  store i64 %1350, i64* %RBP.i3, align 8
  store i64 %1348, i64* %1346, align 8
  store %struct.Memory* %loadMem_4281ad, %struct.Memory** %MEMORY
  %loadMem_4281ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 33
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1353 to i64*
  %1354 = load i64, i64* %PC.i1
  %1355 = add i64 %1354, 1
  store i64 %1355, i64* %PC.i1
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1358 = load i64, i64* %1357, align 8
  %1359 = inttoptr i64 %1358 to i64*
  %1360 = load i64, i64* %1359
  store i64 %1360, i64* %1356, align 8
  %1361 = add i64 %1358, 8
  store i64 %1361, i64* %1357, align 8
  store %struct.Memory* %loadMem_4281ae, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4281ae
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 8
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

define %struct.Memory* @routine_movss__xmm1__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 12
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

define %struct.Memory* @routine_movss_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_ucomiss_MINUS0xc__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %13 to float*
  %20 = load float, float* %19
  %21 = fcmp uno float %18, %20
  br i1 %21, label %22, label %34

; <label>:22:                                     ; preds = %block_400488
  %23 = fadd float %18, %20
  %24 = bitcast float %23 to i32
  %25 = and i32 %24, 2143289344
  %26 = icmp eq i32 %25, 2139095040
  %27 = and i32 %24, 4194303
  %28 = icmp ne i32 %27, 0
  %29 = and i1 %26, %28
  br i1 %29, label %30, label %40

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %32, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:34:                                     ; preds = %block_400488
  %35 = fcmp ogt float %18, %20
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %34
  %37 = fcmp olt float %18, %20
  br i1 %37, label %40, label %38

; <label>:38:                                     ; preds = %36
  %39 = fcmp oeq float %18, %20
  br i1 %39, label %40, label %47

; <label>:40:                                     ; preds = %38, %36, %34, %22
  %41 = phi i8 [ 0, %34 ], [ 0, %36 ], [ 1, %38 ], [ 1, %22 ]
  %42 = phi i8 [ 0, %34 ], [ 0, %36 ], [ 0, %38 ], [ 1, %22 ]
  %43 = phi i8 [ 0, %34 ], [ 1, %36 ], [ 0, %38 ], [ 1, %22 ]
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %42, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %43, i8* %46, align 1
  br label %47

; <label>:47:                                     ; preds = %40, %38
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %50, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %30, %47
  %51 = phi %struct.Memory* [ %33, %30 ], [ %2, %47 ]
  ret %struct.Memory* %51
}

define %struct.Memory* @routine_jbe_.L_428125(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x2c84f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2c84f__rip__type* @G_0x2c84f__rip_ to i64)
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

define %struct.Memory* @routine_movss_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_subss_MINUS0xc__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
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
  %25 = fsub float %24, %23
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

define %struct.Memory* @routine_jbe_.L_4280d0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
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

define %struct.Memory* @routine_jmpq_.L_428112(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0xc__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subss_MINUS0x8__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
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
  %25 = fsub float %24, %23
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd_0x2c6e8__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2c6e8__rip__type* @G_0x2c6e8__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 24
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

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 4
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

define %struct.Memory* @routine_jmpq_.L_4281a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x2c7cb__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2c7cb__rip__type* @G_0x2c7cb__rip_ to i64)
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

define %struct.Memory* @routine_jbe_.L_428154(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtss2sd_MINUS0xc__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 40
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

define %struct.Memory* @routine_jmpq_.L_428196(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x2c664__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x2c664__rip__type* @G_0x2c664__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 40
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

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
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

define %struct.Memory* @routine_movss_MINUS0x4__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
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
