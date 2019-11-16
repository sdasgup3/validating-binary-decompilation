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
%G_0x6d1f9c_type = type <{ [2 x i8] }>
%G_0x6d1f9e_type = type <{ [2 x i8] }>
%G_0x6d4690_type = type <{ [8 x i8] }>
%G_0x722cb0_type = type <{ [8 x i8] }>
%G__0x4b9750_type = type <{ [8 x i8] }>
%G__0x4b9d50_type = type <{ [8 x i8] }>
%G__0x6cfc70_type = type <{ [8 x i8] }>
%G__0x6d0bc0_type = type <{ [8 x i8] }>
%G__0x6d12c0_type = type <{ [8 x i8] }>
%G__0x70f6e0_type = type <{ [8 x i8] }>
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
@G_0x6d1f9c = global %G_0x6d1f9c_type zeroinitializer
@G_0x6d1f9e = global %G_0x6d1f9e_type zeroinitializer
@G_0x6d4690 = global %G_0x6d4690_type zeroinitializer
@G_0x722cb0 = global %G_0x722cb0_type zeroinitializer
@G__0x4b9750 = global %G__0x4b9750_type zeroinitializer
@G__0x4b9d50 = global %G__0x4b9d50_type zeroinitializer
@G__0x6cfc70 = global %G__0x6cfc70_type zeroinitializer
@G__0x6d0bc0 = global %G__0x6d0bc0_type zeroinitializer
@G__0x6d12c0 = global %G__0x6d12c0_type zeroinitializer
@G__0x70f6e0 = global %G__0x70f6e0_type zeroinitializer

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
define %struct.Memory* @CalculateQuant8Param(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_47a9a0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_47a9a0, %struct.Memory** %MEMORY
  %loadMem_47a9a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i116 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i116
  %27 = load i64, i64* %PC.i115
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i115
  store i64 %26, i64* %RBP.i117, align 8
  store %struct.Memory* %loadMem_47a9a1, %struct.Memory** %MEMORY
  %loadMem_47a9a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i255 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i255
  %36 = load i64, i64* %PC.i254
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i254
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i255, align 8
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
  store %struct.Memory* %loadMem_47a9a4, %struct.Memory** %MEMORY
  %loadMem_47a9a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 15
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %RBP.i401
  %74 = sub i64 %73, 28
  %75 = load i64, i64* %PC.i400
  %76 = add i64 %75, 7
  store i64 %76, i64* %PC.i400
  %77 = inttoptr i64 %74 to i32*
  store i32 0, i32* %77
  store %struct.Memory* %loadMem_47a9a8, %struct.Memory** %MEMORY
  %loadMem_47a9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 33
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %PC.i539
  %85 = add i64 %84, 8
  store i64 %85, i64* %PC.i539
  %86 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*)
  store i64 %86, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_47a9af, %struct.Memory** %MEMORY
  %loadMem_47a9b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 33
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %PC.i960 = bitcast %union.anon* %89 to i64*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %RAX.i961 = bitcast %union.anon* %92 to i64*
  %93 = load i64, i64* %RAX.i961
  %94 = add i64 %93, 36
  %95 = load i64, i64* %PC.i960
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC.i960
  %97 = inttoptr i64 %94 to i32*
  %98 = load i32, i32* %97
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %99, align 1
  %100 = and i32 %98, 255
  %101 = call i32 @llvm.ctpop.i32(i32 %100)
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %104, i8* %105, align 1
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %106, align 1
  %107 = icmp eq i32 %98, 0
  %108 = zext i1 %107 to i8
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %108, i8* %109, align 1
  %110 = lshr i32 %98, 31
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %111, i8* %112, align 1
  %113 = lshr i32 %98, 31
  %114 = xor i32 %110, %113
  %115 = add i32 %114, %113
  %116 = icmp eq i32 %115, 2
  %117 = zext i1 %116 to i8
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %117, i8* %118, align 1
  store %struct.Memory* %loadMem_47a9b7, %struct.Memory** %MEMORY
  %loadMem_47a9bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i984 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %PC.i984
  %123 = add i64 %122, 36
  %124 = load i64, i64* %PC.i984
  %125 = add i64 %124, 6
  %126 = load i64, i64* %PC.i984
  %127 = add i64 %126, 6
  store i64 %127, i64* %PC.i984
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %129 = load i8, i8* %128, align 1
  %130 = icmp eq i8 %129, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %BRANCH_TAKEN, align 1
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %133 = select i1 %130, i64 %123, i64 %125
  store i64 %133, i64* %132, align 8
  store %struct.Memory* %loadMem_47a9bb, %struct.Memory** %MEMORY
  %loadBr_47a9bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a9bb = icmp eq i8 %loadBr_47a9bb, 1
  br i1 %cmpBr_47a9bb, label %block_.L_47a9df, label %block_47a9c1

block_47a9c1:                                     ; preds = %entry
  %loadMem_47a9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i982 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RAX.i983 = bitcast %union.anon* %139 to i64*
  %140 = load i64, i64* %PC.i982
  %141 = add i64 %140, 8
  store i64 %141, i64* %PC.i982
  %142 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*)
  store i64 %142, i64* %RAX.i983, align 8
  store %struct.Memory* %loadMem_47a9c1, %struct.Memory** %MEMORY
  %loadMem_47a9c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 33
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %145 to i64*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RAX.i981 = bitcast %union.anon* %148 to i64*
  %149 = load i64, i64* %RAX.i981
  %150 = add i64 %149, 20
  %151 = load i64, i64* %PC.i980
  %152 = add i64 %151, 4
  store i64 %152, i64* %PC.i980
  %153 = inttoptr i64 %150 to i32*
  %154 = load i32, i32* %153
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %155, align 1
  %156 = and i32 %154, 255
  %157 = call i32 @llvm.ctpop.i32(i32 %156)
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %160, i8* %161, align 1
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %162, align 1
  %163 = icmp eq i32 %154, 0
  %164 = zext i1 %163 to i8
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %164, i8* %165, align 1
  %166 = lshr i32 %154, 31
  %167 = trunc i32 %166 to i8
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %167, i8* %168, align 1
  %169 = lshr i32 %154, 31
  %170 = xor i32 %166, %169
  %171 = add i32 %170, %169
  %172 = icmp eq i32 %171, 2
  %173 = zext i1 %172 to i8
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %173, i8* %174, align 1
  store %struct.Memory* %loadMem_47a9c9, %struct.Memory** %MEMORY
  %loadMem_47a9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 33
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %PC.i979 = bitcast %union.anon* %177 to i64*
  %178 = load i64, i64* %PC.i979
  %179 = add i64 %178, 18
  %180 = load i64, i64* %PC.i979
  %181 = add i64 %180, 6
  %182 = load i64, i64* %PC.i979
  %183 = add i64 %182, 6
  store i64 %183, i64* %PC.i979
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %185 = load i8, i8* %184, align 1
  %186 = icmp eq i8 %185, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %BRANCH_TAKEN, align 1
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %189 = select i1 %186, i64 %179, i64 %181
  store i64 %189, i64* %188, align 8
  store %struct.Memory* %loadMem_47a9cd, %struct.Memory** %MEMORY
  %loadBr_47a9cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a9cd = icmp eq i8 %loadBr_47a9cd, 1
  br i1 %cmpBr_47a9cd, label %block_.L_47a9df, label %block_47a9d3

block_47a9d3:                                     ; preds = %block_47a9c1
  %loadMem_47a9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i977 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 15
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RBP.i978 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %RBP.i978
  %197 = sub i64 %196, 28
  %198 = load i64, i64* %PC.i977
  %199 = add i64 %198, 7
  store i64 %199, i64* %PC.i977
  %200 = inttoptr i64 %197 to i32*
  store i32 1, i32* %200
  store %struct.Memory* %loadMem_47a9d3, %struct.Memory** %MEMORY
  %loadMem_47a9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 33
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %203 to i64*
  %204 = load i64, i64* %PC.i976
  %205 = add i64 %204, 201
  %206 = load i64, i64* %PC.i976
  %207 = add i64 %206, 5
  store i64 %207, i64* %PC.i976
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %205, i64* %208, align 8
  store %struct.Memory* %loadMem_47a9da, %struct.Memory** %MEMORY
  br label %block_.L_47aaa3

block_.L_47a9df:                                  ; preds = %block_47a9c1, %entry
  %loadMem_47a9df = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 9
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %214 to i32*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 9
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RSI.i975 = bitcast %union.anon* %217 to i64*
  %218 = load i64, i64* %RSI.i975
  %219 = load i32, i32* %ESI.i
  %220 = zext i32 %219 to i64
  %221 = load i64, i64* %PC.i974
  %222 = add i64 %221, 2
  store i64 %222, i64* %PC.i974
  %223 = xor i64 %220, %218
  %224 = trunc i64 %223 to i32
  %225 = and i64 %223, 4294967295
  store i64 %225, i64* %RSI.i975, align 8
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %226, align 1
  %227 = and i32 %224, 255
  %228 = call i32 @llvm.ctpop.i32(i32 %227)
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %231, i8* %232, align 1
  %233 = icmp eq i32 %224, 0
  %234 = zext i1 %233 to i8
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %234, i8* %235, align 1
  %236 = lshr i32 %224, 31
  %237 = trunc i32 %236 to i8
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %237, i8* %238, align 1
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %239, align 1
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %240, align 1
  store %struct.Memory* %loadMem_47a9df, %struct.Memory** %MEMORY
  %loadMem_47a9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 33
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %PC.i972 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %RAX.i973 = bitcast %union.anon* %246 to i64*
  %247 = load i64, i64* %PC.i972
  %248 = add i64 %247, 5
  store i64 %248, i64* %PC.i972
  store i64 8, i64* %RAX.i973, align 8
  store %struct.Memory* %loadMem_47a9e1, %struct.Memory** %MEMORY
  %loadMem_47a9e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 33
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %PC.i969 = bitcast %union.anon* %251 to i64*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %EAX.i970 = bitcast %union.anon* %254 to i32*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 7
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %RDX.i971 = bitcast %union.anon* %257 to i64*
  %258 = load i32, i32* %EAX.i970
  %259 = zext i32 %258 to i64
  %260 = load i64, i64* %PC.i969
  %261 = add i64 %260, 2
  store i64 %261, i64* %PC.i969
  %262 = and i64 %259, 4294967295
  store i64 %262, i64* %RDX.i971, align 8
  store %struct.Memory* %loadMem_47a9e6, %struct.Memory** %MEMORY
  %loadMem_47a9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i966 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %RCX.i967 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 15
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RBP.i968 = bitcast %union.anon* %271 to i64*
  %272 = load i64, i64* %RBP.i968
  %273 = sub i64 %272, 24
  %274 = load i64, i64* %PC.i966
  %275 = add i64 %274, 4
  store i64 %275, i64* %PC.i966
  store i64 %273, i64* %RCX.i967, align 8
  store %struct.Memory* %loadMem_47a9e8, %struct.Memory** %MEMORY
  %loadMem_47a9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 33
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %PC.i963 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RCX.i964 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 11
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %RDI.i965 = bitcast %union.anon* %284 to i64*
  %285 = load i64, i64* %RCX.i964
  %286 = load i64, i64* %PC.i963
  %287 = add i64 %286, 3
  store i64 %287, i64* %PC.i963
  store i64 %285, i64* %RDI.i965, align 8
  store %struct.Memory* %loadMem_47a9ec, %struct.Memory** %MEMORY
  %loadMem1_47a9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 33
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %PC.i962 = bitcast %union.anon* %290 to i64*
  %291 = load i64, i64* %PC.i962
  %292 = add i64 %291, -498047
  %293 = load i64, i64* %PC.i962
  %294 = add i64 %293, 5
  %295 = load i64, i64* %PC.i962
  %296 = add i64 %295, 5
  store i64 %296, i64* %PC.i962
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = add i64 %298, -8
  %300 = inttoptr i64 %299 to i64*
  store i64 %294, i64* %300
  store i64 %299, i64* %297, align 8
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %292, i64* %301, align 8
  store %struct.Memory* %loadMem1_47a9ef, %struct.Memory** %MEMORY
  %loadMem2_47a9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a9ef = load i64, i64* %3
  %302 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_47a9ef)
  store %struct.Memory* %302, %struct.Memory** %MEMORY
  %loadMem_47a9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %RCX.i959 = bitcast %union.anon* %308 to i64*
  %309 = load i64, i64* %PC.i958
  %310 = add i64 %309, 8
  store i64 %310, i64* %PC.i958
  %311 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*)
  store i64 %311, i64* %RCX.i959, align 8
  store %struct.Memory* %loadMem_47a9f4, %struct.Memory** %MEMORY
  %loadMem_47a9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i956 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 5
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RCX.i957 = bitcast %union.anon* %317 to i64*
  %318 = load i64, i64* %RCX.i957
  %319 = add i64 %318, 36
  %320 = load i64, i64* %PC.i956
  %321 = add i64 %320, 4
  store i64 %321, i64* %PC.i956
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
  store %struct.Memory* %loadMem_47a9fc, %struct.Memory** %MEMORY
  %loadMem_47aa00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %346 to i64*
  %347 = load i64, i64* %PC.i955
  %348 = add i64 %347, 71
  %349 = load i64, i64* %PC.i955
  %350 = add i64 %349, 6
  %351 = load i64, i64* %PC.i955
  %352 = add i64 %351, 6
  store i64 %352, i64* %PC.i955
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %354 = load i8, i8* %353, align 1
  store i8 %354, i8* %BRANCH_TAKEN, align 1
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %356 = icmp ne i8 %354, 0
  %357 = select i1 %356, i64 %348, i64 %350
  store i64 %357, i64* %355, align 8
  store %struct.Memory* %loadMem_47aa00, %struct.Memory** %MEMORY
  %loadBr_47aa00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aa00 = icmp eq i8 %loadBr_47aa00, 1
  br i1 %cmpBr_47aa00, label %block_.L_47aa47, label %block_47aa06

block_47aa06:                                     ; preds = %block_.L_47a9df
  %loadMem_47aa06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i953 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 15
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %RBP.i954 = bitcast %union.anon* %363 to i64*
  %364 = load i64, i64* %RBP.i954
  %365 = sub i64 %364, 4
  %366 = load i64, i64* %PC.i953
  %367 = add i64 %366, 7
  store i64 %367, i64* %PC.i953
  %368 = inttoptr i64 %365 to i32*
  store i32 0, i32* %368
  store %struct.Memory* %loadMem_47aa06, %struct.Memory** %MEMORY
  br label %block_.L_47aa0d

block_.L_47aa0d:                                  ; preds = %block_47aa17, %block_47aa06
  %loadMem_47aa0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 33
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %PC.i951 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 15
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %RBP.i952 = bitcast %union.anon* %374 to i64*
  %375 = load i64, i64* %RBP.i952
  %376 = sub i64 %375, 4
  %377 = load i64, i64* %PC.i951
  %378 = add i64 %377, 4
  store i64 %378, i64* %PC.i951
  %379 = inttoptr i64 %376 to i32*
  %380 = load i32, i32* %379
  %381 = sub i32 %380, 2
  %382 = icmp ult i32 %380, 2
  %383 = zext i1 %382 to i8
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %383, i8* %384, align 1
  %385 = and i32 %381, 255
  %386 = call i32 @llvm.ctpop.i32(i32 %385)
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %389, i8* %390, align 1
  %391 = xor i32 %380, 2
  %392 = xor i32 %391, %381
  %393 = lshr i32 %392, 4
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %395, i8* %396, align 1
  %397 = icmp eq i32 %381, 0
  %398 = zext i1 %397 to i8
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %398, i8* %399, align 1
  %400 = lshr i32 %381, 31
  %401 = trunc i32 %400 to i8
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %401, i8* %402, align 1
  %403 = lshr i32 %380, 31
  %404 = xor i32 %400, %403
  %405 = add i32 %404, %403
  %406 = icmp eq i32 %405, 2
  %407 = zext i1 %406 to i8
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %407, i8* %408, align 1
  store %struct.Memory* %loadMem_47aa0d, %struct.Memory** %MEMORY
  %loadMem_47aa11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i950 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %PC.i950
  %413 = add i64 %412, 49
  %414 = load i64, i64* %PC.i950
  %415 = add i64 %414, 6
  %416 = load i64, i64* %PC.i950
  %417 = add i64 %416, 6
  store i64 %417, i64* %PC.i950
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %419 = load i8, i8* %418, align 1
  %420 = icmp ne i8 %419, 0
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %422 = load i8, i8* %421, align 1
  %423 = icmp ne i8 %422, 0
  %424 = xor i1 %420, %423
  %425 = xor i1 %424, true
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %BRANCH_TAKEN, align 1
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %428 = select i1 %424, i64 %415, i64 %413
  store i64 %428, i64* %427, align 8
  store %struct.Memory* %loadMem_47aa11, %struct.Memory** %MEMORY
  %loadBr_47aa11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aa11 = icmp eq i8 %loadBr_47aa11, 1
  br i1 %cmpBr_47aa11, label %block_.L_47aa42, label %block_47aa17

block_47aa17:                                     ; preds = %block_.L_47aa0d
  %loadMem_47aa17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i948 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 1
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %RAX.i949 = bitcast %union.anon* %434 to i64*
  %435 = load i64, i64* %PC.i948
  %436 = add i64 %435, 8
  store i64 %436, i64* %PC.i948
  %437 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*)
  store i64 %437, i64* %RAX.i949, align 8
  store %struct.Memory* %loadMem_47aa17, %struct.Memory** %MEMORY
  %loadMem_47aa1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i945 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 5
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RCX.i946 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 15
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RBP.i947 = bitcast %union.anon* %446 to i64*
  %447 = load i64, i64* %RBP.i947
  %448 = sub i64 %447, 4
  %449 = load i64, i64* %PC.i945
  %450 = add i64 %449, 3
  store i64 %450, i64* %PC.i945
  %451 = inttoptr i64 %448 to i32*
  %452 = load i32, i32* %451
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %RCX.i946, align 8
  store %struct.Memory* %loadMem_47aa1f, %struct.Memory** %MEMORY
  %loadMem_47aa22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 33
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 5
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %RCX.i944 = bitcast %union.anon* %459 to i64*
  %460 = load i64, i64* %RCX.i944
  %461 = load i64, i64* %PC.i943
  %462 = add i64 %461, 3
  store i64 %462, i64* %PC.i943
  %463 = trunc i64 %460 to i32
  %464 = add i32 6, %463
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RCX.i944, align 8
  %466 = icmp ult i32 %464, %463
  %467 = icmp ult i32 %464, 6
  %468 = or i1 %466, %467
  %469 = zext i1 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %469, i8* %470, align 1
  %471 = and i32 %464, 255
  %472 = call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %475, i8* %476, align 1
  %477 = xor i64 6, %460
  %478 = trunc i64 %477 to i32
  %479 = xor i32 %478, %464
  %480 = lshr i32 %479, 4
  %481 = trunc i32 %480 to i8
  %482 = and i8 %481, 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %482, i8* %483, align 1
  %484 = icmp eq i32 %464, 0
  %485 = zext i1 %484 to i8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %485, i8* %486, align 1
  %487 = lshr i32 %464, 31
  %488 = trunc i32 %487 to i8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %488, i8* %489, align 1
  %490 = lshr i32 %463, 31
  %491 = xor i32 %487, %490
  %492 = add i32 %491, %487
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i8
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %494, i8* %495, align 1
  store %struct.Memory* %loadMem_47aa22, %struct.Memory** %MEMORY
  %loadMem_47aa25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 33
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %498 to i64*
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 5
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %ECX.i941 = bitcast %union.anon* %501 to i32*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 7
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RDX.i942 = bitcast %union.anon* %504 to i64*
  %505 = load i32, i32* %ECX.i941
  %506 = zext i32 %505 to i64
  %507 = load i64, i64* %PC.i940
  %508 = add i64 %507, 3
  store i64 %508, i64* %PC.i940
  %509 = shl i64 %506, 32
  %510 = ashr exact i64 %509, 32
  store i64 %510, i64* %RDX.i942, align 8
  store %struct.Memory* %loadMem_47aa25, %struct.Memory** %MEMORY
  %loadMem_47aa28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 33
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %PC.i936 = bitcast %union.anon* %513 to i64*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 1
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %RAX.i937 = bitcast %union.anon* %516 to i64*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 5
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %RCX.i938 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 7
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %RDX.i939 = bitcast %union.anon* %522 to i64*
  %523 = load i64, i64* %RAX.i937
  %524 = load i64, i64* %RDX.i939
  %525 = mul i64 %524, 4
  %526 = add i64 %523, 40
  %527 = add i64 %526, %525
  %528 = load i64, i64* %PC.i936
  %529 = add i64 %528, 4
  store i64 %529, i64* %PC.i936
  %530 = inttoptr i64 %527 to i32*
  %531 = load i32, i32* %530
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %RCX.i938, align 8
  store %struct.Memory* %loadMem_47aa28, %struct.Memory** %MEMORY
  %loadMem_47aa2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 33
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %PC.i933 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 1
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RAX.i934 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 15
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RBP.i935 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %RBP.i935
  %543 = sub i64 %542, 4
  %544 = load i64, i64* %PC.i933
  %545 = add i64 %544, 4
  store i64 %545, i64* %PC.i933
  %546 = inttoptr i64 %543 to i32*
  %547 = load i32, i32* %546
  %548 = sext i32 %547 to i64
  store i64 %548, i64* %RAX.i934, align 8
  store %struct.Memory* %loadMem_47aa2c, %struct.Memory** %MEMORY
  %loadMem_47aa30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 33
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 5
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %ECX.i930 = bitcast %union.anon* %554 to i32*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 1
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %RAX.i931 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 15
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RBP.i932 = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %RBP.i932
  %562 = load i64, i64* %RAX.i931
  %563 = mul i64 %562, 4
  %564 = add i64 %561, -24
  %565 = add i64 %564, %563
  %566 = load i32, i32* %ECX.i930
  %567 = zext i32 %566 to i64
  %568 = load i64, i64* %PC.i929
  %569 = add i64 %568, 4
  store i64 %569, i64* %PC.i929
  %570 = inttoptr i64 %565 to i32*
  store i32 %566, i32* %570
  store %struct.Memory* %loadMem_47aa30, %struct.Memory** %MEMORY
  %loadMem_47aa34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i926 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RAX.i927 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 15
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RBP.i928 = bitcast %union.anon* %579 to i64*
  %580 = load i64, i64* %RBP.i928
  %581 = sub i64 %580, 4
  %582 = load i64, i64* %PC.i926
  %583 = add i64 %582, 3
  store i64 %583, i64* %PC.i926
  %584 = inttoptr i64 %581 to i32*
  %585 = load i32, i32* %584
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RAX.i927, align 8
  store %struct.Memory* %loadMem_47aa34, %struct.Memory** %MEMORY
  %loadMem_47aa37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 33
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %589 to i64*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 1
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %RAX.i925 = bitcast %union.anon* %592 to i64*
  %593 = load i64, i64* %RAX.i925
  %594 = load i64, i64* %PC.i924
  %595 = add i64 %594, 3
  store i64 %595, i64* %PC.i924
  %596 = trunc i64 %593 to i32
  %597 = add i32 1, %596
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RAX.i925, align 8
  %599 = icmp ult i32 %597, %596
  %600 = icmp ult i32 %597, 1
  %601 = or i1 %599, %600
  %602 = zext i1 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %602, i8* %603, align 1
  %604 = and i32 %597, 255
  %605 = call i32 @llvm.ctpop.i32(i32 %604)
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = xor i8 %607, 1
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %608, i8* %609, align 1
  %610 = xor i64 1, %593
  %611 = trunc i64 %610 to i32
  %612 = xor i32 %611, %597
  %613 = lshr i32 %612, 4
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %615, i8* %616, align 1
  %617 = icmp eq i32 %597, 0
  %618 = zext i1 %617 to i8
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %618, i8* %619, align 1
  %620 = lshr i32 %597, 31
  %621 = trunc i32 %620 to i8
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %621, i8* %622, align 1
  %623 = lshr i32 %596, 31
  %624 = xor i32 %620, %623
  %625 = add i32 %624, %620
  %626 = icmp eq i32 %625, 2
  %627 = zext i1 %626 to i8
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %627, i8* %628, align 1
  store %struct.Memory* %loadMem_47aa37, %struct.Memory** %MEMORY
  %loadMem_47aa3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i921 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 1
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %EAX.i922 = bitcast %union.anon* %634 to i32*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 15
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %RBP.i923 = bitcast %union.anon* %637 to i64*
  %638 = load i64, i64* %RBP.i923
  %639 = sub i64 %638, 4
  %640 = load i32, i32* %EAX.i922
  %641 = zext i32 %640 to i64
  %642 = load i64, i64* %PC.i921
  %643 = add i64 %642, 3
  store i64 %643, i64* %PC.i921
  %644 = inttoptr i64 %639 to i32*
  store i32 %640, i32* %644
  store %struct.Memory* %loadMem_47aa3a, %struct.Memory** %MEMORY
  %loadMem_47aa3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i920 = bitcast %union.anon* %647 to i64*
  %648 = load i64, i64* %PC.i920
  %649 = add i64 %648, -48
  %650 = load i64, i64* %PC.i920
  %651 = add i64 %650, 5
  store i64 %651, i64* %PC.i920
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %649, i64* %652, align 8
  store %struct.Memory* %loadMem_47aa3d, %struct.Memory** %MEMORY
  br label %block_.L_47aa0d

block_.L_47aa42:                                  ; preds = %block_.L_47aa0d
  %loadMem_47aa42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 33
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %655 to i64*
  %656 = load i64, i64* %PC.i919
  %657 = add i64 %656, 5
  %658 = load i64, i64* %PC.i919
  %659 = add i64 %658, 5
  store i64 %659, i64* %PC.i919
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %657, i64* %660, align 8
  store %struct.Memory* %loadMem_47aa42, %struct.Memory** %MEMORY
  br label %block_.L_47aa47

block_.L_47aa47:                                  ; preds = %block_.L_47aa42, %block_.L_47a9df
  %loadMem_47aa47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 33
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %663 to i64*
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %665 = getelementptr inbounds %struct.GPR, %struct.GPR* %664, i32 0, i32 1
  %666 = getelementptr inbounds %struct.Reg, %struct.Reg* %665, i32 0, i32 0
  %RAX.i918 = bitcast %union.anon* %666 to i64*
  %667 = load i64, i64* %PC.i917
  %668 = add i64 %667, 8
  store i64 %668, i64* %PC.i917
  %669 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*)
  store i64 %669, i64* %RAX.i918, align 8
  store %struct.Memory* %loadMem_47aa47, %struct.Memory** %MEMORY
  %loadMem_47aa4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 1
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RAX.i916 = bitcast %union.anon* %675 to i64*
  %676 = load i64, i64* %RAX.i916
  %677 = add i64 %676, 20
  %678 = load i64, i64* %PC.i915
  %679 = add i64 %678, 4
  store i64 %679, i64* %PC.i915
  %680 = inttoptr i64 %677 to i32*
  %681 = load i32, i32* %680
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %682, align 1
  %683 = and i32 %681, 255
  %684 = call i32 @llvm.ctpop.i32(i32 %683)
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  %687 = xor i8 %686, 1
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %687, i8* %688, align 1
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %689, align 1
  %690 = icmp eq i32 %681, 0
  %691 = zext i1 %690 to i8
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %691, i8* %692, align 1
  %693 = lshr i32 %681, 31
  %694 = trunc i32 %693 to i8
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %694, i8* %695, align 1
  %696 = lshr i32 %681, 31
  %697 = xor i32 %693, %696
  %698 = add i32 %697, %696
  %699 = icmp eq i32 %698, 2
  %700 = zext i1 %699 to i8
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %700, i8* %701, align 1
  store %struct.Memory* %loadMem_47aa4f, %struct.Memory** %MEMORY
  %loadMem_47aa53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 33
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %704 to i64*
  %705 = load i64, i64* %PC.i914
  %706 = add i64 %705, 75
  %707 = load i64, i64* %PC.i914
  %708 = add i64 %707, 6
  %709 = load i64, i64* %PC.i914
  %710 = add i64 %709, 6
  store i64 %710, i64* %PC.i914
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %712 = load i8, i8* %711, align 1
  store i8 %712, i8* %BRANCH_TAKEN, align 1
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %714 = icmp ne i8 %712, 0
  %715 = select i1 %714, i64 %706, i64 %708
  store i64 %715, i64* %713, align 8
  store %struct.Memory* %loadMem_47aa53, %struct.Memory** %MEMORY
  %loadBr_47aa53 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aa53 = icmp eq i8 %loadBr_47aa53, 1
  br i1 %cmpBr_47aa53, label %block_.L_47aa9e, label %block_47aa59

block_47aa59:                                     ; preds = %block_.L_47aa47
  %loadMem_47aa59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 33
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %PC.i912 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 15
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RBP.i913 = bitcast %union.anon* %721 to i64*
  %722 = load i64, i64* %RBP.i913
  %723 = sub i64 %722, 4
  %724 = load i64, i64* %PC.i912
  %725 = add i64 %724, 7
  store i64 %725, i64* %PC.i912
  %726 = inttoptr i64 %723 to i32*
  store i32 0, i32* %726
  store %struct.Memory* %loadMem_47aa59, %struct.Memory** %MEMORY
  br label %block_.L_47aa60

block_.L_47aa60:                                  ; preds = %block_47aa6a, %block_47aa59
  %loadMem_47aa60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 33
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %729 to i64*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 15
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RBP.i911 = bitcast %union.anon* %732 to i64*
  %733 = load i64, i64* %RBP.i911
  %734 = sub i64 %733, 4
  %735 = load i64, i64* %PC.i910
  %736 = add i64 %735, 4
  store i64 %736, i64* %PC.i910
  %737 = inttoptr i64 %734 to i32*
  %738 = load i32, i32* %737
  %739 = sub i32 %738, 2
  %740 = icmp ult i32 %738, 2
  %741 = zext i1 %740 to i8
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %741, i8* %742, align 1
  %743 = and i32 %739, 255
  %744 = call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %747, i8* %748, align 1
  %749 = xor i32 %738, 2
  %750 = xor i32 %749, %739
  %751 = lshr i32 %750, 4
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %753, i8* %754, align 1
  %755 = icmp eq i32 %739, 0
  %756 = zext i1 %755 to i8
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %756, i8* %757, align 1
  %758 = lshr i32 %739, 31
  %759 = trunc i32 %758 to i8
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %759, i8* %760, align 1
  %761 = lshr i32 %738, 31
  %762 = xor i32 %758, %761
  %763 = add i32 %762, %761
  %764 = icmp eq i32 %763, 2
  %765 = zext i1 %764 to i8
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %765, i8* %766, align 1
  store %struct.Memory* %loadMem_47aa60, %struct.Memory** %MEMORY
  %loadMem_47aa64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 33
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %PC.i909 = bitcast %union.anon* %769 to i64*
  %770 = load i64, i64* %PC.i909
  %771 = add i64 %770, 53
  %772 = load i64, i64* %PC.i909
  %773 = add i64 %772, 6
  %774 = load i64, i64* %PC.i909
  %775 = add i64 %774, 6
  store i64 %775, i64* %PC.i909
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %777 = load i8, i8* %776, align 1
  %778 = icmp ne i8 %777, 0
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %780 = load i8, i8* %779, align 1
  %781 = icmp ne i8 %780, 0
  %782 = xor i1 %778, %781
  %783 = xor i1 %782, true
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %BRANCH_TAKEN, align 1
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %786 = select i1 %782, i64 %773, i64 %771
  store i64 %786, i64* %785, align 8
  store %struct.Memory* %loadMem_47aa64, %struct.Memory** %MEMORY
  %loadBr_47aa64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aa64 = icmp eq i8 %loadBr_47aa64, 1
  br i1 %cmpBr_47aa64, label %block_.L_47aa99, label %block_47aa6a

block_47aa6a:                                     ; preds = %block_.L_47aa60
  %loadMem_47aa6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 33
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 1
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RAX.i908 = bitcast %union.anon* %792 to i64*
  %793 = load i64, i64* %PC.i907
  %794 = add i64 %793, 8
  store i64 %794, i64* %PC.i907
  %795 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*)
  store i64 %795, i64* %RAX.i908, align 8
  store %struct.Memory* %loadMem_47aa6a, %struct.Memory** %MEMORY
  %loadMem_47aa72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 33
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 5
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %RCX.i905 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 15
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %RBP.i906 = bitcast %union.anon* %804 to i64*
  %805 = load i64, i64* %RBP.i906
  %806 = sub i64 %805, 4
  %807 = load i64, i64* %PC.i904
  %808 = add i64 %807, 3
  store i64 %808, i64* %PC.i904
  %809 = inttoptr i64 %806 to i32*
  %810 = load i32, i32* %809
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %RCX.i905, align 8
  store %struct.Memory* %loadMem_47aa72, %struct.Memory** %MEMORY
  %loadMem_47aa75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i902 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 5
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %RCX.i903 = bitcast %union.anon* %817 to i64*
  %818 = load i64, i64* %RCX.i903
  %819 = load i64, i64* %PC.i902
  %820 = add i64 %819, 3
  store i64 %820, i64* %PC.i902
  %821 = trunc i64 %818 to i32
  %822 = add i32 6, %821
  %823 = zext i32 %822 to i64
  store i64 %823, i64* %RCX.i903, align 8
  %824 = icmp ult i32 %822, %821
  %825 = icmp ult i32 %822, 6
  %826 = or i1 %824, %825
  %827 = zext i1 %826 to i8
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %827, i8* %828, align 1
  %829 = and i32 %822, 255
  %830 = call i32 @llvm.ctpop.i32(i32 %829)
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  %833 = xor i8 %832, 1
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %833, i8* %834, align 1
  %835 = xor i64 6, %818
  %836 = trunc i64 %835 to i32
  %837 = xor i32 %836, %822
  %838 = lshr i32 %837, 4
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %840, i8* %841, align 1
  %842 = icmp eq i32 %822, 0
  %843 = zext i1 %842 to i8
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %843, i8* %844, align 1
  %845 = lshr i32 %822, 31
  %846 = trunc i32 %845 to i8
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %846, i8* %847, align 1
  %848 = lshr i32 %821, 31
  %849 = xor i32 %845, %848
  %850 = add i32 %849, %845
  %851 = icmp eq i32 %850, 2
  %852 = zext i1 %851 to i8
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %852, i8* %853, align 1
  store %struct.Memory* %loadMem_47aa75, %struct.Memory** %MEMORY
  %loadMem_47aa78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 33
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %856 to i64*
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 5
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %ECX.i900 = bitcast %union.anon* %859 to i32*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 7
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %RDX.i901 = bitcast %union.anon* %862 to i64*
  %863 = load i32, i32* %ECX.i900
  %864 = zext i32 %863 to i64
  %865 = load i64, i64* %PC.i899
  %866 = add i64 %865, 3
  store i64 %866, i64* %PC.i899
  %867 = shl i64 %864, 32
  %868 = ashr exact i64 %867, 32
  store i64 %868, i64* %RDX.i901, align 8
  store %struct.Memory* %loadMem_47aa78, %struct.Memory** %MEMORY
  %loadMem_47aa7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 33
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %871 to i64*
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 1
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %RAX.i896 = bitcast %union.anon* %874 to i64*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 5
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RCX.i897 = bitcast %union.anon* %877 to i64*
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 7
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %RDX.i898 = bitcast %union.anon* %880 to i64*
  %881 = load i64, i64* %RAX.i896
  %882 = load i64, i64* %RDX.i898
  %883 = mul i64 %882, 4
  %884 = add i64 %881, 24
  %885 = add i64 %884, %883
  %886 = load i64, i64* %PC.i895
  %887 = add i64 %886, 4
  store i64 %887, i64* %PC.i895
  %888 = inttoptr i64 %885 to i32*
  %889 = load i32, i32* %888
  %890 = zext i32 %889 to i64
  store i64 %890, i64* %RCX.i897, align 8
  store %struct.Memory* %loadMem_47aa7b, %struct.Memory** %MEMORY
  %loadMem_47aa7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 33
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 1
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %RAX.i893 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 15
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RBP.i894 = bitcast %union.anon* %899 to i64*
  %900 = load i64, i64* %RBP.i894
  %901 = sub i64 %900, 4
  %902 = load i64, i64* %PC.i892
  %903 = add i64 %902, 4
  store i64 %903, i64* %PC.i892
  %904 = inttoptr i64 %901 to i32*
  %905 = load i32, i32* %904
  %906 = sext i32 %905 to i64
  store i64 %906, i64* %RAX.i893, align 8
  store %struct.Memory* %loadMem_47aa7f, %struct.Memory** %MEMORY
  %loadMem_47aa83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 33
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %PC.i888 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 1
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RAX.i889 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 5
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RCX.i890 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 15
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RBP.i891 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %RCX.i890
  %920 = load i64, i64* %RBP.i891
  %921 = load i64, i64* %RAX.i889
  %922 = mul i64 %921, 4
  %923 = add i64 %920, -24
  %924 = add i64 %923, %922
  %925 = load i64, i64* %PC.i888
  %926 = add i64 %925, 4
  store i64 %926, i64* %PC.i888
  %927 = trunc i64 %919 to i32
  %928 = inttoptr i64 %924 to i32*
  %929 = load i32, i32* %928
  %930 = or i32 %929, %927
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RCX.i890, align 8
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %932, align 1
  %933 = and i32 %930, 255
  %934 = call i32 @llvm.ctpop.i32(i32 %933)
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  %937 = xor i8 %936, 1
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %937, i8* %938, align 1
  %939 = icmp eq i32 %930, 0
  %940 = zext i1 %939 to i8
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %940, i8* %941, align 1
  %942 = lshr i32 %930, 31
  %943 = trunc i32 %942 to i8
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %943, i8* %944, align 1
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %945, align 1
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %946, align 1
  store %struct.Memory* %loadMem_47aa83, %struct.Memory** %MEMORY
  %loadMem_47aa87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 5
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %952 to i32*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 1
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RAX.i886 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 15
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %RBP.i887 = bitcast %union.anon* %958 to i64*
  %959 = load i64, i64* %RBP.i887
  %960 = load i64, i64* %RAX.i886
  %961 = mul i64 %960, 4
  %962 = add i64 %959, -24
  %963 = add i64 %962, %961
  %964 = load i32, i32* %ECX.i
  %965 = zext i32 %964 to i64
  %966 = load i64, i64* %PC.i885
  %967 = add i64 %966, 4
  store i64 %967, i64* %PC.i885
  %968 = inttoptr i64 %963 to i32*
  store i32 %964, i32* %968
  store %struct.Memory* %loadMem_47aa87, %struct.Memory** %MEMORY
  %loadMem_47aa8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 33
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 1
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %RAX.i883 = bitcast %union.anon* %974 to i64*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 15
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %RBP.i884 = bitcast %union.anon* %977 to i64*
  %978 = load i64, i64* %RBP.i884
  %979 = sub i64 %978, 4
  %980 = load i64, i64* %PC.i882
  %981 = add i64 %980, 3
  store i64 %981, i64* %PC.i882
  %982 = inttoptr i64 %979 to i32*
  %983 = load i32, i32* %982
  %984 = zext i32 %983 to i64
  store i64 %984, i64* %RAX.i883, align 8
  store %struct.Memory* %loadMem_47aa8b, %struct.Memory** %MEMORY
  %loadMem_47aa8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 33
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %987 to i64*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 1
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %RAX.i881 = bitcast %union.anon* %990 to i64*
  %991 = load i64, i64* %RAX.i881
  %992 = load i64, i64* %PC.i880
  %993 = add i64 %992, 3
  store i64 %993, i64* %PC.i880
  %994 = trunc i64 %991 to i32
  %995 = add i32 1, %994
  %996 = zext i32 %995 to i64
  store i64 %996, i64* %RAX.i881, align 8
  %997 = icmp ult i32 %995, %994
  %998 = icmp ult i32 %995, 1
  %999 = or i1 %997, %998
  %1000 = zext i1 %999 to i8
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1000, i8* %1001, align 1
  %1002 = and i32 %995, 255
  %1003 = call i32 @llvm.ctpop.i32(i32 %1002)
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1006, i8* %1007, align 1
  %1008 = xor i64 1, %991
  %1009 = trunc i64 %1008 to i32
  %1010 = xor i32 %1009, %995
  %1011 = lshr i32 %1010, 4
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1013, i8* %1014, align 1
  %1015 = icmp eq i32 %995, 0
  %1016 = zext i1 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1016, i8* %1017, align 1
  %1018 = lshr i32 %995, 31
  %1019 = trunc i32 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1019, i8* %1020, align 1
  %1021 = lshr i32 %994, 31
  %1022 = xor i32 %1018, %1021
  %1023 = add i32 %1022, %1018
  %1024 = icmp eq i32 %1023, 2
  %1025 = zext i1 %1024 to i8
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1025, i8* %1026, align 1
  store %struct.Memory* %loadMem_47aa8e, %struct.Memory** %MEMORY
  %loadMem_47aa91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 33
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %1029 to i64*
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1031 = getelementptr inbounds %struct.GPR, %struct.GPR* %1030, i32 0, i32 1
  %1032 = getelementptr inbounds %struct.Reg, %struct.Reg* %1031, i32 0, i32 0
  %EAX.i878 = bitcast %union.anon* %1032 to i32*
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 15
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %RBP.i879 = bitcast %union.anon* %1035 to i64*
  %1036 = load i64, i64* %RBP.i879
  %1037 = sub i64 %1036, 4
  %1038 = load i32, i32* %EAX.i878
  %1039 = zext i32 %1038 to i64
  %1040 = load i64, i64* %PC.i877
  %1041 = add i64 %1040, 3
  store i64 %1041, i64* %PC.i877
  %1042 = inttoptr i64 %1037 to i32*
  store i32 %1038, i32* %1042
  store %struct.Memory* %loadMem_47aa91, %struct.Memory** %MEMORY
  %loadMem_47aa94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 33
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %1045 to i64*
  %1046 = load i64, i64* %PC.i876
  %1047 = add i64 %1046, -52
  %1048 = load i64, i64* %PC.i876
  %1049 = add i64 %1048, 5
  store i64 %1049, i64* %PC.i876
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1047, i64* %1050, align 8
  store %struct.Memory* %loadMem_47aa94, %struct.Memory** %MEMORY
  br label %block_.L_47aa60

block_.L_47aa99:                                  ; preds = %block_.L_47aa60
  %loadMem_47aa99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 33
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %PC.i875
  %1055 = add i64 %1054, 5
  %1056 = load i64, i64* %PC.i875
  %1057 = add i64 %1056, 5
  store i64 %1057, i64* %PC.i875
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1055, i64* %1058, align 8
  store %struct.Memory* %loadMem_47aa99, %struct.Memory** %MEMORY
  br label %block_.L_47aa9e

block_.L_47aa9e:                                  ; preds = %block_.L_47aa99, %block_.L_47aa47
  %loadMem_47aa9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %1061 to i64*
  %1062 = load i64, i64* %PC.i874
  %1063 = add i64 %1062, 5
  %1064 = load i64, i64* %PC.i874
  %1065 = add i64 %1064, 5
  store i64 %1065, i64* %PC.i874
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1063, i64* %1066, align 8
  store %struct.Memory* %loadMem_47aa9e, %struct.Memory** %MEMORY
  br label %block_.L_47aaa3

block_.L_47aaa3:                                  ; preds = %block_.L_47aa9e, %block_47a9d3
  %loadMem_47aaa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 33
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 15
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %1072 to i64*
  %1073 = load i64, i64* %RBP.i873
  %1074 = sub i64 %1073, 28
  %1075 = load i64, i64* %PC.i872
  %1076 = add i64 %1075, 4
  store i64 %1076, i64* %PC.i872
  %1077 = inttoptr i64 %1074 to i32*
  %1078 = load i32, i32* %1077
  %1079 = sub i32 %1078, 1
  %1080 = icmp ult i32 %1078, 1
  %1081 = zext i1 %1080 to i8
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1081, i8* %1082, align 1
  %1083 = and i32 %1079, 255
  %1084 = call i32 @llvm.ctpop.i32(i32 %1083)
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  %1087 = xor i8 %1086, 1
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1087, i8* %1088, align 1
  %1089 = xor i32 %1078, 1
  %1090 = xor i32 %1089, %1079
  %1091 = lshr i32 %1090, 4
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1093, i8* %1094, align 1
  %1095 = icmp eq i32 %1079, 0
  %1096 = zext i1 %1095 to i8
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1096, i8* %1097, align 1
  %1098 = lshr i32 %1079, 31
  %1099 = trunc i32 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1099, i8* %1100, align 1
  %1101 = lshr i32 %1078, 31
  %1102 = xor i32 %1098, %1101
  %1103 = add i32 %1102, %1101
  %1104 = icmp eq i32 %1103, 2
  %1105 = zext i1 %1104 to i8
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1105, i8* %1106, align 1
  store %struct.Memory* %loadMem_47aaa3, %struct.Memory** %MEMORY
  %loadMem_47aaa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 33
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %1109 to i64*
  %1110 = load i64, i64* %PC.i871
  %1111 = add i64 %1110, 428
  %1112 = load i64, i64* %PC.i871
  %1113 = add i64 %1112, 6
  %1114 = load i64, i64* %PC.i871
  %1115 = add i64 %1114, 6
  store i64 %1115, i64* %PC.i871
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1117 = load i8, i8* %1116, align 1
  %1118 = icmp eq i8 %1117, 0
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %BRANCH_TAKEN, align 1
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1121 = select i1 %1118, i64 %1111, i64 %1113
  store i64 %1121, i64* %1120, align 8
  store %struct.Memory* %loadMem_47aaa7, %struct.Memory** %MEMORY
  %loadBr_47aaa7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aaa7 = icmp eq i8 %loadBr_47aaa7, 1
  br i1 %cmpBr_47aaa7, label %block_.L_47ac53, label %block_47aaad

block_47aaad:                                     ; preds = %block_.L_47aaa3
  %loadMem_47aaad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 33
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %1124 to i64*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 15
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %RBP.i870 = bitcast %union.anon* %1127 to i64*
  %1128 = load i64, i64* %RBP.i870
  %1129 = sub i64 %1128, 12
  %1130 = load i64, i64* %PC.i869
  %1131 = add i64 %1130, 7
  store i64 %1131, i64* %PC.i869
  %1132 = inttoptr i64 %1129 to i32*
  store i32 0, i32* %1132
  store %struct.Memory* %loadMem_47aaad, %struct.Memory** %MEMORY
  br label %block_.L_47aab4

block_.L_47aab4:                                  ; preds = %block_.L_47ac40, %block_47aaad
  %loadMem_47aab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 33
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 15
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %RBP.i868 = bitcast %union.anon* %1138 to i64*
  %1139 = load i64, i64* %RBP.i868
  %1140 = sub i64 %1139, 12
  %1141 = load i64, i64* %PC.i867
  %1142 = add i64 %1141, 4
  store i64 %1142, i64* %PC.i867
  %1143 = inttoptr i64 %1140 to i32*
  %1144 = load i32, i32* %1143
  %1145 = sub i32 %1144, 6
  %1146 = icmp ult i32 %1144, 6
  %1147 = zext i1 %1146 to i8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1147, i8* %1148, align 1
  %1149 = and i32 %1145, 255
  %1150 = call i32 @llvm.ctpop.i32(i32 %1149)
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = xor i8 %1152, 1
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1153, i8* %1154, align 1
  %1155 = xor i32 %1144, 6
  %1156 = xor i32 %1155, %1145
  %1157 = lshr i32 %1156, 4
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1159, i8* %1160, align 1
  %1161 = icmp eq i32 %1145, 0
  %1162 = zext i1 %1161 to i8
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1162, i8* %1163, align 1
  %1164 = lshr i32 %1145, 31
  %1165 = trunc i32 %1164 to i8
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1165, i8* %1166, align 1
  %1167 = lshr i32 %1144, 31
  %1168 = xor i32 %1164, %1167
  %1169 = add i32 %1168, %1167
  %1170 = icmp eq i32 %1169, 2
  %1171 = zext i1 %1170 to i8
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1171, i8* %1172, align 1
  store %struct.Memory* %loadMem_47aab4, %struct.Memory** %MEMORY
  %loadMem_47aab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 33
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %1175 to i64*
  %1176 = load i64, i64* %PC.i866
  %1177 = add i64 %1176, 406
  %1178 = load i64, i64* %PC.i866
  %1179 = add i64 %1178, 6
  %1180 = load i64, i64* %PC.i866
  %1181 = add i64 %1180, 6
  store i64 %1181, i64* %PC.i866
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1183 = load i8, i8* %1182, align 1
  %1184 = icmp ne i8 %1183, 0
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1186 = load i8, i8* %1185, align 1
  %1187 = icmp ne i8 %1186, 0
  %1188 = xor i1 %1184, %1187
  %1189 = xor i1 %1188, true
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %BRANCH_TAKEN, align 1
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1192 = select i1 %1188, i64 %1179, i64 %1177
  store i64 %1192, i64* %1191, align 8
  store %struct.Memory* %loadMem_47aab8, %struct.Memory** %MEMORY
  %loadBr_47aab8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aab8 = icmp eq i8 %loadBr_47aab8, 1
  br i1 %cmpBr_47aab8, label %block_.L_47ac4e, label %block_47aabe

block_47aabe:                                     ; preds = %block_.L_47aab4
  %loadMem_47aabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 15
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %RBP.i865 = bitcast %union.anon* %1198 to i64*
  %1199 = load i64, i64* %RBP.i865
  %1200 = sub i64 %1199, 8
  %1201 = load i64, i64* %PC.i864
  %1202 = add i64 %1201, 7
  store i64 %1202, i64* %PC.i864
  %1203 = inttoptr i64 %1200 to i32*
  store i32 0, i32* %1203
  store %struct.Memory* %loadMem_47aabe, %struct.Memory** %MEMORY
  br label %block_.L_47aac5

block_.L_47aac5:                                  ; preds = %block_.L_47ac2d, %block_47aabe
  %loadMem_47aac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 33
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 15
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RBP.i863 = bitcast %union.anon* %1209 to i64*
  %1210 = load i64, i64* %RBP.i863
  %1211 = sub i64 %1210, 8
  %1212 = load i64, i64* %PC.i862
  %1213 = add i64 %1212, 4
  store i64 %1213, i64* %PC.i862
  %1214 = inttoptr i64 %1211 to i32*
  %1215 = load i32, i32* %1214
  %1216 = sub i32 %1215, 8
  %1217 = icmp ult i32 %1215, 8
  %1218 = zext i1 %1217 to i8
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1218, i8* %1219, align 1
  %1220 = and i32 %1216, 255
  %1221 = call i32 @llvm.ctpop.i32(i32 %1220)
  %1222 = trunc i32 %1221 to i8
  %1223 = and i8 %1222, 1
  %1224 = xor i8 %1223, 1
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1224, i8* %1225, align 1
  %1226 = xor i32 %1215, 8
  %1227 = xor i32 %1226, %1216
  %1228 = lshr i32 %1227, 4
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1230, i8* %1231, align 1
  %1232 = icmp eq i32 %1216, 0
  %1233 = zext i1 %1232 to i8
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1233, i8* %1234, align 1
  %1235 = lshr i32 %1216, 31
  %1236 = trunc i32 %1235 to i8
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1236, i8* %1237, align 1
  %1238 = lshr i32 %1215, 31
  %1239 = xor i32 %1235, %1238
  %1240 = add i32 %1239, %1238
  %1241 = icmp eq i32 %1240, 2
  %1242 = zext i1 %1241 to i8
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1242, i8* %1243, align 1
  store %struct.Memory* %loadMem_47aac5, %struct.Memory** %MEMORY
  %loadMem_47aac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1245 = getelementptr inbounds %struct.GPR, %struct.GPR* %1244, i32 0, i32 33
  %1246 = getelementptr inbounds %struct.Reg, %struct.Reg* %1245, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %1246 to i64*
  %1247 = load i64, i64* %PC.i861
  %1248 = add i64 %1247, 370
  %1249 = load i64, i64* %PC.i861
  %1250 = add i64 %1249, 6
  %1251 = load i64, i64* %PC.i861
  %1252 = add i64 %1251, 6
  store i64 %1252, i64* %PC.i861
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1254 = load i8, i8* %1253, align 1
  %1255 = icmp ne i8 %1254, 0
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1257 = load i8, i8* %1256, align 1
  %1258 = icmp ne i8 %1257, 0
  %1259 = xor i1 %1255, %1258
  %1260 = xor i1 %1259, true
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %BRANCH_TAKEN, align 1
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1263 = select i1 %1259, i64 %1250, i64 %1248
  store i64 %1263, i64* %1262, align 8
  store %struct.Memory* %loadMem_47aac9, %struct.Memory** %MEMORY
  %loadBr_47aac9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aac9 = icmp eq i8 %loadBr_47aac9, 1
  br i1 %cmpBr_47aac9, label %block_.L_47ac3b, label %block_47aacf

block_47aacf:                                     ; preds = %block_.L_47aac5
  %loadMem_47aacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 15
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %1269 to i64*
  %1270 = load i64, i64* %RBP.i860
  %1271 = sub i64 %1270, 4
  %1272 = load i64, i64* %PC.i859
  %1273 = add i64 %1272, 7
  store i64 %1273, i64* %PC.i859
  %1274 = inttoptr i64 %1271 to i32*
  store i32 0, i32* %1274
  store %struct.Memory* %loadMem_47aacf, %struct.Memory** %MEMORY
  br label %block_.L_47aad6

block_.L_47aad6:                                  ; preds = %block_47aae0, %block_47aacf
  %loadMem_47aad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 33
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %1277 to i64*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 15
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %1280 to i64*
  %1281 = load i64, i64* %RBP.i858
  %1282 = sub i64 %1281, 4
  %1283 = load i64, i64* %PC.i857
  %1284 = add i64 %1283, 4
  store i64 %1284, i64* %PC.i857
  %1285 = inttoptr i64 %1282 to i32*
  %1286 = load i32, i32* %1285
  %1287 = sub i32 %1286, 8
  %1288 = icmp ult i32 %1286, 8
  %1289 = zext i1 %1288 to i8
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1289, i8* %1290, align 1
  %1291 = and i32 %1287, 255
  %1292 = call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1295, i8* %1296, align 1
  %1297 = xor i32 %1286, 8
  %1298 = xor i32 %1297, %1287
  %1299 = lshr i32 %1298, 4
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1301, i8* %1302, align 1
  %1303 = icmp eq i32 %1287, 0
  %1304 = zext i1 %1303 to i8
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1304, i8* %1305, align 1
  %1306 = lshr i32 %1287, 31
  %1307 = trunc i32 %1306 to i8
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1307, i8* %1308, align 1
  %1309 = lshr i32 %1286, 31
  %1310 = xor i32 %1306, %1309
  %1311 = add i32 %1310, %1309
  %1312 = icmp eq i32 %1311, 2
  %1313 = zext i1 %1312 to i8
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1313, i8* %1314, align 1
  store %struct.Memory* %loadMem_47aad6, %struct.Memory** %MEMORY
  %loadMem_47aada = load %struct.Memory*, %struct.Memory** %MEMORY
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 33
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %PC.i856
  %1319 = add i64 %1318, 334
  %1320 = load i64, i64* %PC.i856
  %1321 = add i64 %1320, 6
  %1322 = load i64, i64* %PC.i856
  %1323 = add i64 %1322, 6
  store i64 %1323, i64* %PC.i856
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1325 = load i8, i8* %1324, align 1
  %1326 = icmp ne i8 %1325, 0
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1328 = load i8, i8* %1327, align 1
  %1329 = icmp ne i8 %1328, 0
  %1330 = xor i1 %1326, %1329
  %1331 = xor i1 %1330, true
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %BRANCH_TAKEN, align 1
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1334 = select i1 %1330, i64 %1321, i64 %1319
  store i64 %1334, i64* %1333, align 8
  store %struct.Memory* %loadMem_47aada, %struct.Memory** %MEMORY
  %loadBr_47aada = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aada = icmp eq i8 %loadBr_47aada, 1
  br i1 %cmpBr_47aada, label %block_.L_47ac28, label %block_47aae0

block_47aae0:                                     ; preds = %block_.L_47aad6
  %loadMem_47aae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 33
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %PC.i854 = bitcast %union.anon* %1337 to i64*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 1
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %RAX.i855 = bitcast %union.anon* %1340 to i64*
  %1341 = load i64, i64* %PC.i854
  %1342 = add i64 %1341, 10
  store i64 %1342, i64* %PC.i854
  store i64 ptrtoint (%G__0x6d12c0_type* @G__0x6d12c0 to i64), i64* %RAX.i855, align 8
  store %struct.Memory* %loadMem_47aae0, %struct.Memory** %MEMORY
  %loadMem_47aaea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1344 = getelementptr inbounds %struct.GPR, %struct.GPR* %1343, i32 0, i32 33
  %1345 = getelementptr inbounds %struct.Reg, %struct.Reg* %1344, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %1345 to i64*
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 5
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %RCX.i853 = bitcast %union.anon* %1348 to i64*
  %1349 = load i64, i64* %PC.i852
  %1350 = add i64 %1349, 10
  store i64 %1350, i64* %PC.i852
  store i64 ptrtoint (%G__0x4b9d50_type* @G__0x4b9d50 to i64), i64* %RCX.i853, align 8
  store %struct.Memory* %loadMem_47aaea, %struct.Memory** %MEMORY
  %loadMem_47aaf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 33
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %1353 to i64*
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 7
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %RDX.i851 = bitcast %union.anon* %1356 to i64*
  %1357 = load i64, i64* %PC.i850
  %1358 = add i64 %1357, 10
  store i64 %1358, i64* %PC.i850
  store i64 ptrtoint (%G__0x70f6e0_type* @G__0x70f6e0 to i64), i64* %RDX.i851, align 8
  store %struct.Memory* %loadMem_47aaf4, %struct.Memory** %MEMORY
  %loadMem_47aafe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 9
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RSI.i849 = bitcast %union.anon* %1364 to i64*
  %1365 = load i64, i64* %PC.i848
  %1366 = add i64 %1365, 10
  store i64 %1366, i64* %PC.i848
  store i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64* %RSI.i849, align 8
  store %struct.Memory* %loadMem_47aafe, %struct.Memory** %MEMORY
  %loadMem_47ab08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 33
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 11
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RDI.i847 = bitcast %union.anon* %1372 to i64*
  %1373 = load i64, i64* %PC.i846
  %1374 = add i64 %1373, 10
  store i64 %1374, i64* %PC.i846
  store i64 ptrtoint (%G__0x6cfc70_type* @G__0x6cfc70 to i64), i64* %RDI.i847, align 8
  store %struct.Memory* %loadMem_47ab08, %struct.Memory** %MEMORY
  %loadMem_47ab12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 17
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %R8.i845 = bitcast %union.anon* %1380 to i64*
  %1381 = load i64, i64* %PC.i844
  %1382 = add i64 %1381, 10
  store i64 %1382, i64* %PC.i844
  store i64 ptrtoint (%G__0x6d0bc0_type* @G__0x6d0bc0 to i64), i64* %R8.i845, align 8
  store %struct.Memory* %loadMem_47ab12, %struct.Memory** %MEMORY
  %loadMem_47ab1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 33
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %1385 to i64*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 15
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %RBP.i842 = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 19
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %R9.i843 = bitcast %union.anon* %1391 to i64*
  %1392 = load i64, i64* %RBP.i842
  %1393 = sub i64 %1392, 12
  %1394 = load i64, i64* %PC.i841
  %1395 = add i64 %1394, 4
  store i64 %1395, i64* %PC.i841
  %1396 = inttoptr i64 %1393 to i32*
  %1397 = load i32, i32* %1396
  %1398 = sext i32 %1397 to i64
  store i64 %1398, i64* %R9.i843, align 8
  store %struct.Memory* %loadMem_47ab1c, %struct.Memory** %MEMORY
  %loadMem_47ab20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 33
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %1401 to i64*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 19
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %R9.i840 = bitcast %union.anon* %1404 to i64*
  %1405 = load i64, i64* %R9.i840
  %1406 = load i64, i64* %PC.i839
  %1407 = add i64 %1406, 4
  store i64 %1407, i64* %PC.i839
  %1408 = shl i64 %1405, 7
  %1409 = icmp slt i64 %1408, 0
  %1410 = shl i64 %1408, 1
  store i64 %1410, i64* %R9.i840, align 8
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1412 = zext i1 %1409 to i8
  store i8 %1412, i8* %1411, align 1
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1414 = trunc i64 %1410 to i32
  store i8 1, i8* %1413, align 1
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1415, align 1
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1417 = icmp eq i64 %1410, 0
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %1416, align 1
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1420 = lshr i64 %1410, 63
  %1421 = trunc i64 %1420 to i8
  store i8 %1421, i8* %1419, align 1
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1422, align 1
  store %struct.Memory* %loadMem_47ab20, %struct.Memory** %MEMORY
  %loadMem_47ab24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 33
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %1425 to i64*
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 9
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %RSI.i837 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 21
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %R10.i838 = bitcast %union.anon* %1431 to i64*
  %1432 = load i64, i64* %RSI.i837
  %1433 = load i64, i64* %PC.i836
  %1434 = add i64 %1433, 3
  store i64 %1434, i64* %PC.i836
  store i64 %1432, i64* %R10.i838, align 8
  store %struct.Memory* %loadMem_47ab24, %struct.Memory** %MEMORY
  %loadMem_47ab27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 19
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %R9.i834 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 21
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %R10.i835 = bitcast %union.anon* %1443 to i64*
  %1444 = load i64, i64* %R10.i835
  %1445 = load i64, i64* %R9.i834
  %1446 = load i64, i64* %PC.i833
  %1447 = add i64 %1446, 3
  store i64 %1447, i64* %PC.i833
  %1448 = add i64 %1445, %1444
  store i64 %1448, i64* %R10.i835, align 8
  %1449 = icmp ult i64 %1448, %1444
  %1450 = icmp ult i64 %1448, %1445
  %1451 = or i1 %1449, %1450
  %1452 = zext i1 %1451 to i8
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1452, i8* %1453, align 1
  %1454 = trunc i64 %1448 to i32
  %1455 = and i32 %1454, 255
  %1456 = call i32 @llvm.ctpop.i32(i32 %1455)
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  %1459 = xor i8 %1458, 1
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1459, i8* %1460, align 1
  %1461 = xor i64 %1445, %1444
  %1462 = xor i64 %1461, %1448
  %1463 = lshr i64 %1462, 4
  %1464 = trunc i64 %1463 to i8
  %1465 = and i8 %1464, 1
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1465, i8* %1466, align 1
  %1467 = icmp eq i64 %1448, 0
  %1468 = zext i1 %1467 to i8
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1468, i8* %1469, align 1
  %1470 = lshr i64 %1448, 63
  %1471 = trunc i64 %1470 to i8
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1471, i8* %1472, align 1
  %1473 = lshr i64 %1444, 63
  %1474 = lshr i64 %1445, 63
  %1475 = xor i64 %1470, %1473
  %1476 = xor i64 %1470, %1474
  %1477 = add i64 %1475, %1476
  %1478 = icmp eq i64 %1477, 2
  %1479 = zext i1 %1478 to i8
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1479, i8* %1480, align 1
  store %struct.Memory* %loadMem_47ab27, %struct.Memory** %MEMORY
  %loadMem_47ab2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 33
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %1483 to i64*
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 15
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %RBP.i831 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 19
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %R9.i832 = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %RBP.i831
  %1491 = sub i64 %1490, 8
  %1492 = load i64, i64* %PC.i830
  %1493 = add i64 %1492, 4
  store i64 %1493, i64* %PC.i830
  %1494 = inttoptr i64 %1491 to i32*
  %1495 = load i32, i32* %1494
  %1496 = sext i32 %1495 to i64
  store i64 %1496, i64* %R9.i832, align 8
  store %struct.Memory* %loadMem_47ab2a, %struct.Memory** %MEMORY
  %loadMem_47ab2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 33
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %1499 to i64*
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 19
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %R9.i829 = bitcast %union.anon* %1502 to i64*
  %1503 = load i64, i64* %R9.i829
  %1504 = load i64, i64* %PC.i828
  %1505 = add i64 %1504, 4
  store i64 %1505, i64* %PC.i828
  %1506 = shl i64 %1503, 4
  %1507 = icmp slt i64 %1506, 0
  %1508 = shl i64 %1506, 1
  store i64 %1508, i64* %R9.i829, align 8
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1510 = zext i1 %1507 to i8
  store i8 %1510, i8* %1509, align 1
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1512 = trunc i64 %1508 to i32
  %1513 = and i32 %1512, 254
  %1514 = call i32 @llvm.ctpop.i32(i32 %1513)
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = xor i8 %1516, 1
  store i8 %1517, i8* %1511, align 1
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1518, align 1
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1520 = icmp eq i64 %1508, 0
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %1519, align 1
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1523 = lshr i64 %1508, 63
  %1524 = trunc i64 %1523 to i8
  store i8 %1524, i8* %1522, align 1
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1525, align 1
  store %struct.Memory* %loadMem_47ab2e, %struct.Memory** %MEMORY
  %loadMem_47ab32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 19
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %R9.i826 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 21
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %R10.i827 = bitcast %union.anon* %1534 to i64*
  %1535 = load i64, i64* %R10.i827
  %1536 = load i64, i64* %R9.i826
  %1537 = load i64, i64* %PC.i825
  %1538 = add i64 %1537, 3
  store i64 %1538, i64* %PC.i825
  %1539 = add i64 %1536, %1535
  store i64 %1539, i64* %R10.i827, align 8
  %1540 = icmp ult i64 %1539, %1535
  %1541 = icmp ult i64 %1539, %1536
  %1542 = or i1 %1540, %1541
  %1543 = zext i1 %1542 to i8
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1543, i8* %1544, align 1
  %1545 = trunc i64 %1539 to i32
  %1546 = and i32 %1545, 255
  %1547 = call i32 @llvm.ctpop.i32(i32 %1546)
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  %1550 = xor i8 %1549, 1
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1550, i8* %1551, align 1
  %1552 = xor i64 %1536, %1535
  %1553 = xor i64 %1552, %1539
  %1554 = lshr i64 %1553, 4
  %1555 = trunc i64 %1554 to i8
  %1556 = and i8 %1555, 1
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1556, i8* %1557, align 1
  %1558 = icmp eq i64 %1539, 0
  %1559 = zext i1 %1558 to i8
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1559, i8* %1560, align 1
  %1561 = lshr i64 %1539, 63
  %1562 = trunc i64 %1561 to i8
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1562, i8* %1563, align 1
  %1564 = lshr i64 %1535, 63
  %1565 = lshr i64 %1536, 63
  %1566 = xor i64 %1561, %1564
  %1567 = xor i64 %1561, %1565
  %1568 = add i64 %1566, %1567
  %1569 = icmp eq i64 %1568, 2
  %1570 = zext i1 %1569 to i8
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1570, i8* %1571, align 1
  store %struct.Memory* %loadMem_47ab32, %struct.Memory** %MEMORY
  %loadMem_47ab35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 33
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 15
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RBP.i823 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 19
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %R9.i824 = bitcast %union.anon* %1580 to i64*
  %1581 = load i64, i64* %RBP.i823
  %1582 = sub i64 %1581, 4
  %1583 = load i64, i64* %PC.i822
  %1584 = add i64 %1583, 4
  store i64 %1584, i64* %PC.i822
  %1585 = inttoptr i64 %1582 to i32*
  %1586 = load i32, i32* %1585
  %1587 = sext i32 %1586 to i64
  store i64 %1587, i64* %R9.i824, align 8
  store %struct.Memory* %loadMem_47ab35, %struct.Memory** %MEMORY
  %loadMem_47ab39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 23
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %R11D.i820 = bitcast %union.anon* %1593 to i32*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 19
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %R9.i821 = bitcast %union.anon* %1596 to i64*
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 21
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %R10.i = bitcast %union.anon* %1599 to i64*
  %1600 = bitcast i32* %R11D.i820 to i64*
  %1601 = load i64, i64* %R10.i
  %1602 = load i64, i64* %R9.i821
  %1603 = mul i64 %1602, 4
  %1604 = add i64 %1603, %1601
  %1605 = load i64, i64* %PC.i819
  %1606 = add i64 %1605, 4
  store i64 %1606, i64* %PC.i819
  %1607 = inttoptr i64 %1604 to i32*
  %1608 = load i32, i32* %1607
  %1609 = zext i32 %1608 to i64
  store i64 %1609, i64* %1600, align 8
  store %struct.Memory* %loadMem_47ab39, %struct.Memory** %MEMORY
  %loadMem_47ab3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 33
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %1612 to i64*
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 15
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %RBP.i817 = bitcast %union.anon* %1615 to i64*
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1617 = getelementptr inbounds %struct.GPR, %struct.GPR* %1616, i32 0, i32 19
  %1618 = getelementptr inbounds %struct.Reg, %struct.Reg* %1617, i32 0, i32 0
  %R9.i818 = bitcast %union.anon* %1618 to i64*
  %1619 = load i64, i64* %RBP.i817
  %1620 = sub i64 %1619, 12
  %1621 = load i64, i64* %PC.i816
  %1622 = add i64 %1621, 4
  store i64 %1622, i64* %PC.i816
  %1623 = inttoptr i64 %1620 to i32*
  %1624 = load i32, i32* %1623
  %1625 = sext i32 %1624 to i64
  store i64 %1625, i64* %R9.i818, align 8
  store %struct.Memory* %loadMem_47ab3d, %struct.Memory** %MEMORY
  %loadMem_47ab41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 33
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %1628 to i64*
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 19
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %R9.i815 = bitcast %union.anon* %1631 to i64*
  %1632 = load i64, i64* %R9.i815
  %1633 = load i64, i64* %PC.i814
  %1634 = add i64 %1633, 4
  store i64 %1634, i64* %PC.i814
  %1635 = shl i64 %1632, 7
  %1636 = icmp slt i64 %1635, 0
  %1637 = shl i64 %1635, 1
  store i64 %1637, i64* %R9.i815, align 8
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1639 = zext i1 %1636 to i8
  store i8 %1639, i8* %1638, align 1
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1641 = trunc i64 %1637 to i32
  store i8 1, i8* %1640, align 1
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1642, align 1
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1644 = icmp eq i64 %1637, 0
  %1645 = zext i1 %1644 to i8
  store i8 %1645, i8* %1643, align 1
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1647 = lshr i64 %1637, 63
  %1648 = trunc i64 %1647 to i8
  store i8 %1648, i8* %1646, align 1
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1649, align 1
  store %struct.Memory* %loadMem_47ab41, %struct.Memory** %MEMORY
  %loadMem_47ab45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 33
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 17
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %R8.i812 = bitcast %union.anon* %1655 to i64*
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 19
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %R9.i813 = bitcast %union.anon* %1658 to i64*
  %1659 = load i64, i64* %R8.i812
  %1660 = load i64, i64* %R9.i813
  %1661 = load i64, i64* %PC.i811
  %1662 = add i64 %1661, 3
  store i64 %1662, i64* %PC.i811
  %1663 = add i64 %1660, %1659
  store i64 %1663, i64* %R8.i812, align 8
  %1664 = icmp ult i64 %1663, %1659
  %1665 = icmp ult i64 %1663, %1660
  %1666 = or i1 %1664, %1665
  %1667 = zext i1 %1666 to i8
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1667, i8* %1668, align 1
  %1669 = trunc i64 %1663 to i32
  %1670 = and i32 %1669, 255
  %1671 = call i32 @llvm.ctpop.i32(i32 %1670)
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  %1674 = xor i8 %1673, 1
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1674, i8* %1675, align 1
  %1676 = xor i64 %1660, %1659
  %1677 = xor i64 %1676, %1663
  %1678 = lshr i64 %1677, 4
  %1679 = trunc i64 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1680, i8* %1681, align 1
  %1682 = icmp eq i64 %1663, 0
  %1683 = zext i1 %1682 to i8
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1683, i8* %1684, align 1
  %1685 = lshr i64 %1663, 63
  %1686 = trunc i64 %1685 to i8
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1686, i8* %1687, align 1
  %1688 = lshr i64 %1659, 63
  %1689 = lshr i64 %1660, 63
  %1690 = xor i64 %1685, %1688
  %1691 = xor i64 %1685, %1689
  %1692 = add i64 %1690, %1691
  %1693 = icmp eq i64 %1692, 2
  %1694 = zext i1 %1693 to i8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1694, i8* %1695, align 1
  store %struct.Memory* %loadMem_47ab45, %struct.Memory** %MEMORY
  %loadMem_47ab48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 33
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 15
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %1701 to i64*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 19
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %R9.i810 = bitcast %union.anon* %1704 to i64*
  %1705 = load i64, i64* %RBP.i809
  %1706 = sub i64 %1705, 8
  %1707 = load i64, i64* %PC.i808
  %1708 = add i64 %1707, 4
  store i64 %1708, i64* %PC.i808
  %1709 = inttoptr i64 %1706 to i32*
  %1710 = load i32, i32* %1709
  %1711 = sext i32 %1710 to i64
  store i64 %1711, i64* %R9.i810, align 8
  store %struct.Memory* %loadMem_47ab48, %struct.Memory** %MEMORY
  %loadMem_47ab4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 19
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %R9.i807 = bitcast %union.anon* %1717 to i64*
  %1718 = load i64, i64* %R9.i807
  %1719 = load i64, i64* %PC.i806
  %1720 = add i64 %1719, 4
  store i64 %1720, i64* %PC.i806
  %1721 = shl i64 %1718, 4
  %1722 = icmp slt i64 %1721, 0
  %1723 = shl i64 %1721, 1
  store i64 %1723, i64* %R9.i807, align 8
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1725 = zext i1 %1722 to i8
  store i8 %1725, i8* %1724, align 1
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1727 = trunc i64 %1723 to i32
  %1728 = and i32 %1727, 254
  %1729 = call i32 @llvm.ctpop.i32(i32 %1728)
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  %1732 = xor i8 %1731, 1
  store i8 %1732, i8* %1726, align 1
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1733, align 1
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1735 = icmp eq i64 %1723, 0
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %1734, align 1
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1738 = lshr i64 %1723, 63
  %1739 = trunc i64 %1738 to i8
  store i8 %1739, i8* %1737, align 1
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1740, align 1
  store %struct.Memory* %loadMem_47ab4c, %struct.Memory** %MEMORY
  %loadMem_47ab50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 33
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %1743 to i64*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 17
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %R8.i804 = bitcast %union.anon* %1746 to i64*
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 19
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %R9.i805 = bitcast %union.anon* %1749 to i64*
  %1750 = load i64, i64* %R8.i804
  %1751 = load i64, i64* %R9.i805
  %1752 = load i64, i64* %PC.i803
  %1753 = add i64 %1752, 3
  store i64 %1753, i64* %PC.i803
  %1754 = add i64 %1751, %1750
  store i64 %1754, i64* %R8.i804, align 8
  %1755 = icmp ult i64 %1754, %1750
  %1756 = icmp ult i64 %1754, %1751
  %1757 = or i1 %1755, %1756
  %1758 = zext i1 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1758, i8* %1759, align 1
  %1760 = trunc i64 %1754 to i32
  %1761 = and i32 %1760, 255
  %1762 = call i32 @llvm.ctpop.i32(i32 %1761)
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  %1765 = xor i8 %1764, 1
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1765, i8* %1766, align 1
  %1767 = xor i64 %1751, %1750
  %1768 = xor i64 %1767, %1754
  %1769 = lshr i64 %1768, 4
  %1770 = trunc i64 %1769 to i8
  %1771 = and i8 %1770, 1
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1771, i8* %1772, align 1
  %1773 = icmp eq i64 %1754, 0
  %1774 = zext i1 %1773 to i8
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1774, i8* %1775, align 1
  %1776 = lshr i64 %1754, 63
  %1777 = trunc i64 %1776 to i8
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1777, i8* %1778, align 1
  %1779 = lshr i64 %1750, 63
  %1780 = lshr i64 %1751, 63
  %1781 = xor i64 %1776, %1779
  %1782 = xor i64 %1776, %1780
  %1783 = add i64 %1781, %1782
  %1784 = icmp eq i64 %1783, 2
  %1785 = zext i1 %1784 to i8
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1785, i8* %1786, align 1
  store %struct.Memory* %loadMem_47ab50, %struct.Memory** %MEMORY
  %loadMem_47ab53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 15
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %1792 to i64*
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 19
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %R9.i802 = bitcast %union.anon* %1795 to i64*
  %1796 = load i64, i64* %RBP.i801
  %1797 = sub i64 %1796, 4
  %1798 = load i64, i64* %PC.i800
  %1799 = add i64 %1798, 4
  store i64 %1799, i64* %PC.i800
  %1800 = inttoptr i64 %1797 to i32*
  %1801 = load i32, i32* %1800
  %1802 = sext i32 %1801 to i64
  store i64 %1802, i64* %R9.i802, align 8
  store %struct.Memory* %loadMem_47ab53, %struct.Memory** %MEMORY
  %loadMem_47ab57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 33
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 23
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %R11D.i797 = bitcast %union.anon* %1808 to i32*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 17
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %R8.i798 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 19
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %R9.i799 = bitcast %union.anon* %1814 to i64*
  %1815 = load i64, i64* %R8.i798
  %1816 = load i64, i64* %R9.i799
  %1817 = mul i64 %1816, 4
  %1818 = add i64 %1817, %1815
  %1819 = load i32, i32* %R11D.i797
  %1820 = zext i32 %1819 to i64
  %1821 = load i64, i64* %PC.i796
  %1822 = add i64 %1821, 4
  store i64 %1822, i64* %PC.i796
  %1823 = inttoptr i64 %1818 to i32*
  store i32 %1819, i32* %1823
  store %struct.Memory* %loadMem_47ab57, %struct.Memory** %MEMORY
  %loadMem_47ab5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 33
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 15
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 17
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %R8.i795 = bitcast %union.anon* %1832 to i64*
  %1833 = load i64, i64* %RBP.i794
  %1834 = sub i64 %1833, 12
  %1835 = load i64, i64* %PC.i793
  %1836 = add i64 %1835, 4
  store i64 %1836, i64* %PC.i793
  %1837 = inttoptr i64 %1834 to i32*
  %1838 = load i32, i32* %1837
  %1839 = sext i32 %1838 to i64
  store i64 %1839, i64* %R8.i795, align 8
  store %struct.Memory* %loadMem_47ab5b, %struct.Memory** %MEMORY
  %loadMem_47ab5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 33
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 17
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %R8.i792 = bitcast %union.anon* %1845 to i64*
  %1846 = load i64, i64* %R8.i792
  %1847 = load i64, i64* %PC.i791
  %1848 = add i64 %1847, 4
  store i64 %1848, i64* %PC.i791
  %1849 = shl i64 %1846, 7
  %1850 = icmp slt i64 %1849, 0
  %1851 = shl i64 %1849, 1
  store i64 %1851, i64* %R8.i792, align 8
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1853 = zext i1 %1850 to i8
  store i8 %1853, i8* %1852, align 1
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1855 = trunc i64 %1851 to i32
  store i8 1, i8* %1854, align 1
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1856, align 1
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1858 = icmp eq i64 %1851, 0
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %1857, align 1
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1861 = lshr i64 %1851, 63
  %1862 = trunc i64 %1861 to i8
  store i8 %1862, i8* %1860, align 1
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1863, align 1
  store %struct.Memory* %loadMem_47ab5f, %struct.Memory** %MEMORY
  %loadMem_47ab63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 33
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %1866 to i64*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 5
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %RCX.i789 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 19
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %R9.i790 = bitcast %union.anon* %1872 to i64*
  %1873 = load i64, i64* %RCX.i789
  %1874 = load i64, i64* %PC.i788
  %1875 = add i64 %1874, 3
  store i64 %1875, i64* %PC.i788
  store i64 %1873, i64* %R9.i790, align 8
  store %struct.Memory* %loadMem_47ab63, %struct.Memory** %MEMORY
  %loadMem_47ab66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 33
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %1878 to i64*
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1880 = getelementptr inbounds %struct.GPR, %struct.GPR* %1879, i32 0, i32 17
  %1881 = getelementptr inbounds %struct.Reg, %struct.Reg* %1880, i32 0, i32 0
  %R8.i786 = bitcast %union.anon* %1881 to i64*
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 19
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %R9.i787 = bitcast %union.anon* %1884 to i64*
  %1885 = load i64, i64* %R9.i787
  %1886 = load i64, i64* %R8.i786
  %1887 = load i64, i64* %PC.i785
  %1888 = add i64 %1887, 3
  store i64 %1888, i64* %PC.i785
  %1889 = add i64 %1886, %1885
  store i64 %1889, i64* %R9.i787, align 8
  %1890 = icmp ult i64 %1889, %1885
  %1891 = icmp ult i64 %1889, %1886
  %1892 = or i1 %1890, %1891
  %1893 = zext i1 %1892 to i8
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1893, i8* %1894, align 1
  %1895 = trunc i64 %1889 to i32
  %1896 = and i32 %1895, 255
  %1897 = call i32 @llvm.ctpop.i32(i32 %1896)
  %1898 = trunc i32 %1897 to i8
  %1899 = and i8 %1898, 1
  %1900 = xor i8 %1899, 1
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1900, i8* %1901, align 1
  %1902 = xor i64 %1886, %1885
  %1903 = xor i64 %1902, %1889
  %1904 = lshr i64 %1903, 4
  %1905 = trunc i64 %1904 to i8
  %1906 = and i8 %1905, 1
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1906, i8* %1907, align 1
  %1908 = icmp eq i64 %1889, 0
  %1909 = zext i1 %1908 to i8
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1909, i8* %1910, align 1
  %1911 = lshr i64 %1889, 63
  %1912 = trunc i64 %1911 to i8
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1912, i8* %1913, align 1
  %1914 = lshr i64 %1885, 63
  %1915 = lshr i64 %1886, 63
  %1916 = xor i64 %1911, %1914
  %1917 = xor i64 %1911, %1915
  %1918 = add i64 %1916, %1917
  %1919 = icmp eq i64 %1918, 2
  %1920 = zext i1 %1919 to i8
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1920, i8* %1921, align 1
  store %struct.Memory* %loadMem_47ab66, %struct.Memory** %MEMORY
  %loadMem_47ab69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 33
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %1924 to i64*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 15
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %RBP.i783 = bitcast %union.anon* %1927 to i64*
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 17
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %R8.i784 = bitcast %union.anon* %1930 to i64*
  %1931 = load i64, i64* %RBP.i783
  %1932 = sub i64 %1931, 8
  %1933 = load i64, i64* %PC.i782
  %1934 = add i64 %1933, 4
  store i64 %1934, i64* %PC.i782
  %1935 = inttoptr i64 %1932 to i32*
  %1936 = load i32, i32* %1935
  %1937 = sext i32 %1936 to i64
  store i64 %1937, i64* %R8.i784, align 8
  store %struct.Memory* %loadMem_47ab69, %struct.Memory** %MEMORY
  %loadMem_47ab6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 33
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 17
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %R8.i781 = bitcast %union.anon* %1943 to i64*
  %1944 = load i64, i64* %R8.i781
  %1945 = load i64, i64* %PC.i780
  %1946 = add i64 %1945, 4
  store i64 %1946, i64* %PC.i780
  %1947 = shl i64 %1944, 4
  %1948 = icmp slt i64 %1947, 0
  %1949 = shl i64 %1947, 1
  store i64 %1949, i64* %R8.i781, align 8
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1951 = zext i1 %1948 to i8
  store i8 %1951, i8* %1950, align 1
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1953 = trunc i64 %1949 to i32
  %1954 = and i32 %1953, 254
  %1955 = call i32 @llvm.ctpop.i32(i32 %1954)
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = xor i8 %1957, 1
  store i8 %1958, i8* %1952, align 1
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1959, align 1
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1961 = icmp eq i64 %1949, 0
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %1960, align 1
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1964 = lshr i64 %1949, 63
  %1965 = trunc i64 %1964 to i8
  store i8 %1965, i8* %1963, align 1
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1966, align 1
  store %struct.Memory* %loadMem_47ab6d, %struct.Memory** %MEMORY
  %loadMem_47ab71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 33
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %1969 to i64*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 17
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %R8.i778 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 19
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %R9.i779 = bitcast %union.anon* %1975 to i64*
  %1976 = load i64, i64* %R9.i779
  %1977 = load i64, i64* %R8.i778
  %1978 = load i64, i64* %PC.i777
  %1979 = add i64 %1978, 3
  store i64 %1979, i64* %PC.i777
  %1980 = add i64 %1977, %1976
  store i64 %1980, i64* %R9.i779, align 8
  %1981 = icmp ult i64 %1980, %1976
  %1982 = icmp ult i64 %1980, %1977
  %1983 = or i1 %1981, %1982
  %1984 = zext i1 %1983 to i8
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1984, i8* %1985, align 1
  %1986 = trunc i64 %1980 to i32
  %1987 = and i32 %1986, 255
  %1988 = call i32 @llvm.ctpop.i32(i32 %1987)
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  %1991 = xor i8 %1990, 1
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1991, i8* %1992, align 1
  %1993 = xor i64 %1977, %1976
  %1994 = xor i64 %1993, %1980
  %1995 = lshr i64 %1994, 4
  %1996 = trunc i64 %1995 to i8
  %1997 = and i8 %1996, 1
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1997, i8* %1998, align 1
  %1999 = icmp eq i64 %1980, 0
  %2000 = zext i1 %1999 to i8
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2000, i8* %2001, align 1
  %2002 = lshr i64 %1980, 63
  %2003 = trunc i64 %2002 to i8
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2003, i8* %2004, align 1
  %2005 = lshr i64 %1976, 63
  %2006 = lshr i64 %1977, 63
  %2007 = xor i64 %2002, %2005
  %2008 = xor i64 %2002, %2006
  %2009 = add i64 %2007, %2008
  %2010 = icmp eq i64 %2009, 2
  %2011 = zext i1 %2010 to i8
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2011, i8* %2012, align 1
  store %struct.Memory* %loadMem_47ab71, %struct.Memory** %MEMORY
  %loadMem_47ab74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 33
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %2015 to i64*
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 15
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %RBP.i775 = bitcast %union.anon* %2018 to i64*
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2020 = getelementptr inbounds %struct.GPR, %struct.GPR* %2019, i32 0, i32 17
  %2021 = getelementptr inbounds %struct.Reg, %struct.Reg* %2020, i32 0, i32 0
  %R8.i776 = bitcast %union.anon* %2021 to i64*
  %2022 = load i64, i64* %RBP.i775
  %2023 = sub i64 %2022, 4
  %2024 = load i64, i64* %PC.i774
  %2025 = add i64 %2024, 4
  store i64 %2025, i64* %PC.i774
  %2026 = inttoptr i64 %2023 to i32*
  %2027 = load i32, i32* %2026
  %2028 = sext i32 %2027 to i64
  store i64 %2028, i64* %R8.i776, align 8
  store %struct.Memory* %loadMem_47ab74, %struct.Memory** %MEMORY
  %loadMem_47ab78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 33
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 23
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %R11D.i772 = bitcast %union.anon* %2034 to i32*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 17
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %R8.i773 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 19
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %R9.i = bitcast %union.anon* %2040 to i64*
  %2041 = bitcast i32* %R11D.i772 to i64*
  %2042 = load i64, i64* %R9.i
  %2043 = load i64, i64* %R8.i773
  %2044 = mul i64 %2043, 4
  %2045 = add i64 %2044, %2042
  %2046 = load i64, i64* %PC.i771
  %2047 = add i64 %2046, 4
  store i64 %2047, i64* %PC.i771
  %2048 = inttoptr i64 %2045 to i32*
  %2049 = load i32, i32* %2048
  %2050 = zext i32 %2049 to i64
  store i64 %2050, i64* %2041, align 8
  store %struct.Memory* %loadMem_47ab78, %struct.Memory** %MEMORY
  %loadMem_47ab7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %2053 to i64*
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 23
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %R11D.i770 = bitcast %union.anon* %2056 to i32*
  %2057 = bitcast i32* %R11D.i770 to i64*
  %2058 = load i32, i32* %R11D.i770
  %2059 = zext i32 %2058 to i64
  %2060 = load i64, i64* %PC.i769
  %2061 = add i64 %2060, 4
  store i64 %2061, i64* %PC.i769
  %2062 = and i64 %2059, 4294967295
  %2063 = shl i64 %2062, 3
  %2064 = trunc i64 %2063 to i32
  %2065 = icmp slt i32 %2064, 0
  %2066 = shl i32 %2064, 1
  %2067 = zext i32 %2066 to i64
  store i64 %2067, i64* %2057, align 8
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2069 = zext i1 %2065 to i8
  store i8 %2069, i8* %2068, align 1
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2071 = and i32 %2066, 254
  %2072 = call i32 @llvm.ctpop.i32(i32 %2071)
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  %2075 = xor i8 %2074, 1
  store i8 %2075, i8* %2070, align 1
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2076, align 1
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2078 = icmp eq i32 %2066, 0
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %2077, align 1
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2081 = lshr i32 %2066, 31
  %2082 = trunc i32 %2081 to i8
  store i8 %2082, i8* %2080, align 1
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2083, align 1
  store %struct.Memory* %loadMem_47ab7c, %struct.Memory** %MEMORY
  %loadMem_47ab80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 33
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %2086 to i64*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 15
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %2089 to i64*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 17
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %R8.i768 = bitcast %union.anon* %2092 to i64*
  %2093 = load i64, i64* %RBP.i767
  %2094 = sub i64 %2093, 12
  %2095 = load i64, i64* %PC.i766
  %2096 = add i64 %2095, 4
  store i64 %2096, i64* %PC.i766
  %2097 = inttoptr i64 %2094 to i32*
  %2098 = load i32, i32* %2097
  %2099 = sext i32 %2098 to i64
  store i64 %2099, i64* %R8.i768, align 8
  store %struct.Memory* %loadMem_47ab80, %struct.Memory** %MEMORY
  %loadMem_47ab84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 17
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %R8.i765 = bitcast %union.anon* %2105 to i64*
  %2106 = load i64, i64* %R8.i765
  %2107 = load i64, i64* %PC.i764
  %2108 = add i64 %2107, 4
  store i64 %2108, i64* %PC.i764
  %2109 = shl i64 %2106, 7
  %2110 = icmp slt i64 %2109, 0
  %2111 = shl i64 %2109, 1
  store i64 %2111, i64* %R8.i765, align 8
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2113 = zext i1 %2110 to i8
  store i8 %2113, i8* %2112, align 1
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2115 = trunc i64 %2111 to i32
  store i8 1, i8* %2114, align 1
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2116, align 1
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2118 = icmp eq i64 %2111, 0
  %2119 = zext i1 %2118 to i8
  store i8 %2119, i8* %2117, align 1
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2121 = lshr i64 %2111, 63
  %2122 = trunc i64 %2121 to i8
  store i8 %2122, i8* %2120, align 1
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2123, align 1
  store %struct.Memory* %loadMem_47ab84, %struct.Memory** %MEMORY
  %loadMem_47ab88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 33
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 11
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RDI.i762 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 17
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %R8.i763 = bitcast %union.anon* %2132 to i64*
  %2133 = load i64, i64* %RDI.i762
  %2134 = load i64, i64* %R8.i763
  %2135 = load i64, i64* %PC.i761
  %2136 = add i64 %2135, 3
  store i64 %2136, i64* %PC.i761
  %2137 = add i64 %2134, %2133
  store i64 %2137, i64* %RDI.i762, align 8
  %2138 = icmp ult i64 %2137, %2133
  %2139 = icmp ult i64 %2137, %2134
  %2140 = or i1 %2138, %2139
  %2141 = zext i1 %2140 to i8
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2141, i8* %2142, align 1
  %2143 = trunc i64 %2137 to i32
  %2144 = and i32 %2143, 255
  %2145 = call i32 @llvm.ctpop.i32(i32 %2144)
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  %2148 = xor i8 %2147, 1
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2148, i8* %2149, align 1
  %2150 = xor i64 %2134, %2133
  %2151 = xor i64 %2150, %2137
  %2152 = lshr i64 %2151, 4
  %2153 = trunc i64 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2154, i8* %2155, align 1
  %2156 = icmp eq i64 %2137, 0
  %2157 = zext i1 %2156 to i8
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2157, i8* %2158, align 1
  %2159 = lshr i64 %2137, 63
  %2160 = trunc i64 %2159 to i8
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2160, i8* %2161, align 1
  %2162 = lshr i64 %2133, 63
  %2163 = lshr i64 %2134, 63
  %2164 = xor i64 %2159, %2162
  %2165 = xor i64 %2159, %2163
  %2166 = add i64 %2164, %2165
  %2167 = icmp eq i64 %2166, 2
  %2168 = zext i1 %2167 to i8
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2168, i8* %2169, align 1
  store %struct.Memory* %loadMem_47ab88, %struct.Memory** %MEMORY
  %loadMem_47ab8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 33
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %2172 to i64*
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 15
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %2175 to i64*
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2177 = getelementptr inbounds %struct.GPR, %struct.GPR* %2176, i32 0, i32 17
  %2178 = getelementptr inbounds %struct.Reg, %struct.Reg* %2177, i32 0, i32 0
  %R8.i760 = bitcast %union.anon* %2178 to i64*
  %2179 = load i64, i64* %RBP.i759
  %2180 = sub i64 %2179, 8
  %2181 = load i64, i64* %PC.i758
  %2182 = add i64 %2181, 4
  store i64 %2182, i64* %PC.i758
  %2183 = inttoptr i64 %2180 to i32*
  %2184 = load i32, i32* %2183
  %2185 = sext i32 %2184 to i64
  store i64 %2185, i64* %R8.i760, align 8
  store %struct.Memory* %loadMem_47ab8b, %struct.Memory** %MEMORY
  %loadMem_47ab8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 33
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 17
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %R8.i757 = bitcast %union.anon* %2191 to i64*
  %2192 = load i64, i64* %R8.i757
  %2193 = load i64, i64* %PC.i756
  %2194 = add i64 %2193, 4
  store i64 %2194, i64* %PC.i756
  %2195 = shl i64 %2192, 4
  %2196 = icmp slt i64 %2195, 0
  %2197 = shl i64 %2195, 1
  store i64 %2197, i64* %R8.i757, align 8
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2199 = zext i1 %2196 to i8
  store i8 %2199, i8* %2198, align 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2201 = trunc i64 %2197 to i32
  %2202 = and i32 %2201, 254
  %2203 = call i32 @llvm.ctpop.i32(i32 %2202)
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  %2206 = xor i8 %2205, 1
  store i8 %2206, i8* %2200, align 1
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2207, align 1
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2209 = icmp eq i64 %2197, 0
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %2208, align 1
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2212 = lshr i64 %2197, 63
  %2213 = trunc i64 %2212 to i8
  store i8 %2213, i8* %2211, align 1
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2214, align 1
  store %struct.Memory* %loadMem_47ab8f, %struct.Memory** %MEMORY
  %loadMem_47ab93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 33
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 11
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RDI.i754 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 17
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %R8.i755 = bitcast %union.anon* %2223 to i64*
  %2224 = load i64, i64* %RDI.i754
  %2225 = load i64, i64* %R8.i755
  %2226 = load i64, i64* %PC.i753
  %2227 = add i64 %2226, 3
  store i64 %2227, i64* %PC.i753
  %2228 = add i64 %2225, %2224
  store i64 %2228, i64* %RDI.i754, align 8
  %2229 = icmp ult i64 %2228, %2224
  %2230 = icmp ult i64 %2228, %2225
  %2231 = or i1 %2229, %2230
  %2232 = zext i1 %2231 to i8
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2232, i8* %2233, align 1
  %2234 = trunc i64 %2228 to i32
  %2235 = and i32 %2234, 255
  %2236 = call i32 @llvm.ctpop.i32(i32 %2235)
  %2237 = trunc i32 %2236 to i8
  %2238 = and i8 %2237, 1
  %2239 = xor i8 %2238, 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2239, i8* %2240, align 1
  %2241 = xor i64 %2225, %2224
  %2242 = xor i64 %2241, %2228
  %2243 = lshr i64 %2242, 4
  %2244 = trunc i64 %2243 to i8
  %2245 = and i8 %2244, 1
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2245, i8* %2246, align 1
  %2247 = icmp eq i64 %2228, 0
  %2248 = zext i1 %2247 to i8
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2248, i8* %2249, align 1
  %2250 = lshr i64 %2228, 63
  %2251 = trunc i64 %2250 to i8
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2251, i8* %2252, align 1
  %2253 = lshr i64 %2224, 63
  %2254 = lshr i64 %2225, 63
  %2255 = xor i64 %2250, %2253
  %2256 = xor i64 %2250, %2254
  %2257 = add i64 %2255, %2256
  %2258 = icmp eq i64 %2257, 2
  %2259 = zext i1 %2258 to i8
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2259, i8* %2260, align 1
  store %struct.Memory* %loadMem_47ab93, %struct.Memory** %MEMORY
  %loadMem_47ab96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 33
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %2263 to i64*
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2265 = getelementptr inbounds %struct.GPR, %struct.GPR* %2264, i32 0, i32 15
  %2266 = getelementptr inbounds %struct.Reg, %struct.Reg* %2265, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %2266 to i64*
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 17
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %R8.i752 = bitcast %union.anon* %2269 to i64*
  %2270 = load i64, i64* %RBP.i751
  %2271 = sub i64 %2270, 4
  %2272 = load i64, i64* %PC.i750
  %2273 = add i64 %2272, 4
  store i64 %2273, i64* %PC.i750
  %2274 = inttoptr i64 %2271 to i32*
  %2275 = load i32, i32* %2274
  %2276 = sext i32 %2275 to i64
  store i64 %2276, i64* %R8.i752, align 8
  store %struct.Memory* %loadMem_47ab96, %struct.Memory** %MEMORY
  %loadMem_47ab9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 33
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 23
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %R11D.i748 = bitcast %union.anon* %2282 to i32*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 11
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %RDI.i749 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 17
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %R8.i = bitcast %union.anon* %2288 to i64*
  %2289 = load i64, i64* %RDI.i749
  %2290 = load i64, i64* %R8.i
  %2291 = mul i64 %2290, 4
  %2292 = add i64 %2291, %2289
  %2293 = load i32, i32* %R11D.i748
  %2294 = zext i32 %2293 to i64
  %2295 = load i64, i64* %PC.i747
  %2296 = add i64 %2295, 4
  store i64 %2296, i64* %PC.i747
  %2297 = inttoptr i64 %2292 to i32*
  store i32 %2293, i32* %2297
  store %struct.Memory* %loadMem_47ab9a, %struct.Memory** %MEMORY
  %loadMem_47ab9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2299 = getelementptr inbounds %struct.GPR, %struct.GPR* %2298, i32 0, i32 33
  %2300 = getelementptr inbounds %struct.Reg, %struct.Reg* %2299, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %2300 to i64*
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 11
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %RDI.i745 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 15
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %RBP.i746 = bitcast %union.anon* %2306 to i64*
  %2307 = load i64, i64* %RBP.i746
  %2308 = sub i64 %2307, 12
  %2309 = load i64, i64* %PC.i744
  %2310 = add i64 %2309, 4
  store i64 %2310, i64* %PC.i744
  %2311 = inttoptr i64 %2308 to i32*
  %2312 = load i32, i32* %2311
  %2313 = sext i32 %2312 to i64
  store i64 %2313, i64* %RDI.i745, align 8
  store %struct.Memory* %loadMem_47ab9e, %struct.Memory** %MEMORY
  %loadMem_47aba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 33
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 11
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RDI.i743 = bitcast %union.anon* %2319 to i64*
  %2320 = load i64, i64* %RDI.i743
  %2321 = load i64, i64* %PC.i742
  %2322 = add i64 %2321, 4
  store i64 %2322, i64* %PC.i742
  %2323 = shl i64 %2320, 7
  %2324 = icmp slt i64 %2323, 0
  %2325 = shl i64 %2323, 1
  store i64 %2325, i64* %RDI.i743, align 8
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2327 = zext i1 %2324 to i8
  store i8 %2327, i8* %2326, align 1
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2329 = trunc i64 %2325 to i32
  store i8 1, i8* %2328, align 1
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2330, align 1
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2332 = icmp eq i64 %2325, 0
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %2331, align 1
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2335 = lshr i64 %2325, 63
  %2336 = trunc i64 %2335 to i8
  store i8 %2336, i8* %2334, align 1
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2337, align 1
  store %struct.Memory* %loadMem_47aba2, %struct.Memory** %MEMORY
  %loadMem_47aba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 33
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %2340 to i64*
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 9
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %RSI.i740 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 11
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %RDI.i741 = bitcast %union.anon* %2346 to i64*
  %2347 = load i64, i64* %RSI.i740
  %2348 = load i64, i64* %RDI.i741
  %2349 = load i64, i64* %PC.i739
  %2350 = add i64 %2349, 3
  store i64 %2350, i64* %PC.i739
  %2351 = add i64 %2348, %2347
  store i64 %2351, i64* %RSI.i740, align 8
  %2352 = icmp ult i64 %2351, %2347
  %2353 = icmp ult i64 %2351, %2348
  %2354 = or i1 %2352, %2353
  %2355 = zext i1 %2354 to i8
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2355, i8* %2356, align 1
  %2357 = trunc i64 %2351 to i32
  %2358 = and i32 %2357, 255
  %2359 = call i32 @llvm.ctpop.i32(i32 %2358)
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  %2362 = xor i8 %2361, 1
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2362, i8* %2363, align 1
  %2364 = xor i64 %2348, %2347
  %2365 = xor i64 %2364, %2351
  %2366 = lshr i64 %2365, 4
  %2367 = trunc i64 %2366 to i8
  %2368 = and i8 %2367, 1
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2368, i8* %2369, align 1
  %2370 = icmp eq i64 %2351, 0
  %2371 = zext i1 %2370 to i8
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2371, i8* %2372, align 1
  %2373 = lshr i64 %2351, 63
  %2374 = trunc i64 %2373 to i8
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2374, i8* %2375, align 1
  %2376 = lshr i64 %2347, 63
  %2377 = lshr i64 %2348, 63
  %2378 = xor i64 %2373, %2376
  %2379 = xor i64 %2373, %2377
  %2380 = add i64 %2378, %2379
  %2381 = icmp eq i64 %2380, 2
  %2382 = zext i1 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2382, i8* %2383, align 1
  store %struct.Memory* %loadMem_47aba6, %struct.Memory** %MEMORY
  %loadMem_47aba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 33
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %2386 to i64*
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 11
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %RDI.i737 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 15
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RBP.i738 = bitcast %union.anon* %2392 to i64*
  %2393 = load i64, i64* %RBP.i738
  %2394 = sub i64 %2393, 8
  %2395 = load i64, i64* %PC.i736
  %2396 = add i64 %2395, 4
  store i64 %2396, i64* %PC.i736
  %2397 = inttoptr i64 %2394 to i32*
  %2398 = load i32, i32* %2397
  %2399 = sext i32 %2398 to i64
  store i64 %2399, i64* %RDI.i737, align 8
  store %struct.Memory* %loadMem_47aba9, %struct.Memory** %MEMORY
  %loadMem_47abad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 33
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 11
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RDI.i735 = bitcast %union.anon* %2405 to i64*
  %2406 = load i64, i64* %RDI.i735
  %2407 = load i64, i64* %PC.i734
  %2408 = add i64 %2407, 4
  store i64 %2408, i64* %PC.i734
  %2409 = shl i64 %2406, 4
  %2410 = icmp slt i64 %2409, 0
  %2411 = shl i64 %2409, 1
  store i64 %2411, i64* %RDI.i735, align 8
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2413 = zext i1 %2410 to i8
  store i8 %2413, i8* %2412, align 1
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2415 = trunc i64 %2411 to i32
  %2416 = and i32 %2415, 254
  %2417 = call i32 @llvm.ctpop.i32(i32 %2416)
  %2418 = trunc i32 %2417 to i8
  %2419 = and i8 %2418, 1
  %2420 = xor i8 %2419, 1
  store i8 %2420, i8* %2414, align 1
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2421, align 1
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2423 = icmp eq i64 %2411, 0
  %2424 = zext i1 %2423 to i8
  store i8 %2424, i8* %2422, align 1
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2426 = lshr i64 %2411, 63
  %2427 = trunc i64 %2426 to i8
  store i8 %2427, i8* %2425, align 1
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2428, align 1
  store %struct.Memory* %loadMem_47abad, %struct.Memory** %MEMORY
  %loadMem_47abb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %2431 to i64*
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 9
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %RSI.i732 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 11
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RDI.i733 = bitcast %union.anon* %2437 to i64*
  %2438 = load i64, i64* %RSI.i732
  %2439 = load i64, i64* %RDI.i733
  %2440 = load i64, i64* %PC.i731
  %2441 = add i64 %2440, 3
  store i64 %2441, i64* %PC.i731
  %2442 = add i64 %2439, %2438
  store i64 %2442, i64* %RSI.i732, align 8
  %2443 = icmp ult i64 %2442, %2438
  %2444 = icmp ult i64 %2442, %2439
  %2445 = or i1 %2443, %2444
  %2446 = zext i1 %2445 to i8
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2446, i8* %2447, align 1
  %2448 = trunc i64 %2442 to i32
  %2449 = and i32 %2448, 255
  %2450 = call i32 @llvm.ctpop.i32(i32 %2449)
  %2451 = trunc i32 %2450 to i8
  %2452 = and i8 %2451, 1
  %2453 = xor i8 %2452, 1
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2453, i8* %2454, align 1
  %2455 = xor i64 %2439, %2438
  %2456 = xor i64 %2455, %2442
  %2457 = lshr i64 %2456, 4
  %2458 = trunc i64 %2457 to i8
  %2459 = and i8 %2458, 1
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2459, i8* %2460, align 1
  %2461 = icmp eq i64 %2442, 0
  %2462 = zext i1 %2461 to i8
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2462, i8* %2463, align 1
  %2464 = lshr i64 %2442, 63
  %2465 = trunc i64 %2464 to i8
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2465, i8* %2466, align 1
  %2467 = lshr i64 %2438, 63
  %2468 = lshr i64 %2439, 63
  %2469 = xor i64 %2464, %2467
  %2470 = xor i64 %2464, %2468
  %2471 = add i64 %2469, %2470
  %2472 = icmp eq i64 %2471, 2
  %2473 = zext i1 %2472 to i8
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2473, i8* %2474, align 1
  store %struct.Memory* %loadMem_47abb1, %struct.Memory** %MEMORY
  %loadMem_47abb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 33
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 11
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %RDI.i729 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 15
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RBP.i730 = bitcast %union.anon* %2483 to i64*
  %2484 = load i64, i64* %RBP.i730
  %2485 = sub i64 %2484, 4
  %2486 = load i64, i64* %PC.i728
  %2487 = add i64 %2486, 4
  store i64 %2487, i64* %PC.i728
  %2488 = inttoptr i64 %2485 to i32*
  %2489 = load i32, i32* %2488
  %2490 = sext i32 %2489 to i64
  store i64 %2490, i64* %RDI.i729, align 8
  store %struct.Memory* %loadMem_47abb4, %struct.Memory** %MEMORY
  %loadMem_47abb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 33
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %2493 to i64*
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 23
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %R11D.i725 = bitcast %union.anon* %2496 to i32*
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 9
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %RSI.i726 = bitcast %union.anon* %2499 to i64*
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 11
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %RDI.i727 = bitcast %union.anon* %2502 to i64*
  %2503 = bitcast i32* %R11D.i725 to i64*
  %2504 = load i64, i64* %RSI.i726
  %2505 = load i64, i64* %RDI.i727
  %2506 = mul i64 %2505, 4
  %2507 = add i64 %2506, %2504
  %2508 = load i64, i64* %PC.i724
  %2509 = add i64 %2508, 4
  store i64 %2509, i64* %PC.i724
  %2510 = inttoptr i64 %2507 to i32*
  %2511 = load i32, i32* %2510
  %2512 = zext i32 %2511 to i64
  store i64 %2512, i64* %2503, align 8
  store %struct.Memory* %loadMem_47abb8, %struct.Memory** %MEMORY
  %loadMem_47abbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 9
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RSI.i722 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 15
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %RBP.i723 = bitcast %union.anon* %2521 to i64*
  %2522 = load i64, i64* %RBP.i723
  %2523 = sub i64 %2522, 12
  %2524 = load i64, i64* %PC.i721
  %2525 = add i64 %2524, 4
  store i64 %2525, i64* %PC.i721
  %2526 = inttoptr i64 %2523 to i32*
  %2527 = load i32, i32* %2526
  %2528 = sext i32 %2527 to i64
  store i64 %2528, i64* %RSI.i722, align 8
  store %struct.Memory* %loadMem_47abbc, %struct.Memory** %MEMORY
  %loadMem_47abc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 33
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 9
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RSI.i720 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RSI.i720
  %2536 = load i64, i64* %PC.i719
  %2537 = add i64 %2536, 4
  store i64 %2537, i64* %PC.i719
  %2538 = shl i64 %2535, 7
  %2539 = icmp slt i64 %2538, 0
  %2540 = shl i64 %2538, 1
  store i64 %2540, i64* %RSI.i720, align 8
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2542 = zext i1 %2539 to i8
  store i8 %2542, i8* %2541, align 1
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2544 = trunc i64 %2540 to i32
  store i8 1, i8* %2543, align 1
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2545, align 1
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2547 = icmp eq i64 %2540, 0
  %2548 = zext i1 %2547 to i8
  store i8 %2548, i8* %2546, align 1
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2550 = lshr i64 %2540, 63
  %2551 = trunc i64 %2550 to i8
  store i8 %2551, i8* %2549, align 1
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2552, align 1
  store %struct.Memory* %loadMem_47abc0, %struct.Memory** %MEMORY
  %loadMem_47abc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 33
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 7
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %RDX.i717 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 9
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RSI.i718 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %RDX.i717
  %2563 = load i64, i64* %RSI.i718
  %2564 = load i64, i64* %PC.i716
  %2565 = add i64 %2564, 3
  store i64 %2565, i64* %PC.i716
  %2566 = add i64 %2563, %2562
  store i64 %2566, i64* %RDX.i717, align 8
  %2567 = icmp ult i64 %2566, %2562
  %2568 = icmp ult i64 %2566, %2563
  %2569 = or i1 %2567, %2568
  %2570 = zext i1 %2569 to i8
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2570, i8* %2571, align 1
  %2572 = trunc i64 %2566 to i32
  %2573 = and i32 %2572, 255
  %2574 = call i32 @llvm.ctpop.i32(i32 %2573)
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = xor i8 %2576, 1
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2577, i8* %2578, align 1
  %2579 = xor i64 %2563, %2562
  %2580 = xor i64 %2579, %2566
  %2581 = lshr i64 %2580, 4
  %2582 = trunc i64 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2583, i8* %2584, align 1
  %2585 = icmp eq i64 %2566, 0
  %2586 = zext i1 %2585 to i8
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2586, i8* %2587, align 1
  %2588 = lshr i64 %2566, 63
  %2589 = trunc i64 %2588 to i8
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2589, i8* %2590, align 1
  %2591 = lshr i64 %2562, 63
  %2592 = lshr i64 %2563, 63
  %2593 = xor i64 %2588, %2591
  %2594 = xor i64 %2588, %2592
  %2595 = add i64 %2593, %2594
  %2596 = icmp eq i64 %2595, 2
  %2597 = zext i1 %2596 to i8
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2597, i8* %2598, align 1
  store %struct.Memory* %loadMem_47abc4, %struct.Memory** %MEMORY
  %loadMem_47abc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 33
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %2601 to i64*
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 9
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %RSI.i714 = bitcast %union.anon* %2604 to i64*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 15
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %RBP.i715 = bitcast %union.anon* %2607 to i64*
  %2608 = load i64, i64* %RBP.i715
  %2609 = sub i64 %2608, 8
  %2610 = load i64, i64* %PC.i713
  %2611 = add i64 %2610, 4
  store i64 %2611, i64* %PC.i713
  %2612 = inttoptr i64 %2609 to i32*
  %2613 = load i32, i32* %2612
  %2614 = sext i32 %2613 to i64
  store i64 %2614, i64* %RSI.i714, align 8
  store %struct.Memory* %loadMem_47abc7, %struct.Memory** %MEMORY
  %loadMem_47abcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 33
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 9
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %RSI.i712 = bitcast %union.anon* %2620 to i64*
  %2621 = load i64, i64* %RSI.i712
  %2622 = load i64, i64* %PC.i711
  %2623 = add i64 %2622, 4
  store i64 %2623, i64* %PC.i711
  %2624 = shl i64 %2621, 4
  %2625 = icmp slt i64 %2624, 0
  %2626 = shl i64 %2624, 1
  store i64 %2626, i64* %RSI.i712, align 8
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2628 = zext i1 %2625 to i8
  store i8 %2628, i8* %2627, align 1
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2630 = trunc i64 %2626 to i32
  %2631 = and i32 %2630, 254
  %2632 = call i32 @llvm.ctpop.i32(i32 %2631)
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  %2635 = xor i8 %2634, 1
  store i8 %2635, i8* %2629, align 1
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2636, align 1
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2638 = icmp eq i64 %2626, 0
  %2639 = zext i1 %2638 to i8
  store i8 %2639, i8* %2637, align 1
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2641 = lshr i64 %2626, 63
  %2642 = trunc i64 %2641 to i8
  store i8 %2642, i8* %2640, align 1
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2643, align 1
  store %struct.Memory* %loadMem_47abcb, %struct.Memory** %MEMORY
  %loadMem_47abcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 33
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %2646 to i64*
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 7
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %RDX.i709 = bitcast %union.anon* %2649 to i64*
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 9
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %RSI.i710 = bitcast %union.anon* %2652 to i64*
  %2653 = load i64, i64* %RDX.i709
  %2654 = load i64, i64* %RSI.i710
  %2655 = load i64, i64* %PC.i708
  %2656 = add i64 %2655, 3
  store i64 %2656, i64* %PC.i708
  %2657 = add i64 %2654, %2653
  store i64 %2657, i64* %RDX.i709, align 8
  %2658 = icmp ult i64 %2657, %2653
  %2659 = icmp ult i64 %2657, %2654
  %2660 = or i1 %2658, %2659
  %2661 = zext i1 %2660 to i8
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2661, i8* %2662, align 1
  %2663 = trunc i64 %2657 to i32
  %2664 = and i32 %2663, 255
  %2665 = call i32 @llvm.ctpop.i32(i32 %2664)
  %2666 = trunc i32 %2665 to i8
  %2667 = and i8 %2666, 1
  %2668 = xor i8 %2667, 1
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2668, i8* %2669, align 1
  %2670 = xor i64 %2654, %2653
  %2671 = xor i64 %2670, %2657
  %2672 = lshr i64 %2671, 4
  %2673 = trunc i64 %2672 to i8
  %2674 = and i8 %2673, 1
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2674, i8* %2675, align 1
  %2676 = icmp eq i64 %2657, 0
  %2677 = zext i1 %2676 to i8
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2677, i8* %2678, align 1
  %2679 = lshr i64 %2657, 63
  %2680 = trunc i64 %2679 to i8
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2680, i8* %2681, align 1
  %2682 = lshr i64 %2653, 63
  %2683 = lshr i64 %2654, 63
  %2684 = xor i64 %2679, %2682
  %2685 = xor i64 %2679, %2683
  %2686 = add i64 %2684, %2685
  %2687 = icmp eq i64 %2686, 2
  %2688 = zext i1 %2687 to i8
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2688, i8* %2689, align 1
  store %struct.Memory* %loadMem_47abcf, %struct.Memory** %MEMORY
  %loadMem_47abd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2691 = getelementptr inbounds %struct.GPR, %struct.GPR* %2690, i32 0, i32 33
  %2692 = getelementptr inbounds %struct.Reg, %struct.Reg* %2691, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %2692 to i64*
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 9
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %RSI.i706 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 15
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %RBP.i707 = bitcast %union.anon* %2698 to i64*
  %2699 = load i64, i64* %RBP.i707
  %2700 = sub i64 %2699, 4
  %2701 = load i64, i64* %PC.i705
  %2702 = add i64 %2701, 4
  store i64 %2702, i64* %PC.i705
  %2703 = inttoptr i64 %2700 to i32*
  %2704 = load i32, i32* %2703
  %2705 = sext i32 %2704 to i64
  store i64 %2705, i64* %RSI.i706, align 8
  store %struct.Memory* %loadMem_47abd2, %struct.Memory** %MEMORY
  %loadMem_47abd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 33
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 23
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %R11D.i702 = bitcast %union.anon* %2711 to i32*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 7
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %RDX.i703 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 9
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RSI.i704 = bitcast %union.anon* %2717 to i64*
  %2718 = load i64, i64* %RDX.i703
  %2719 = load i64, i64* %RSI.i704
  %2720 = mul i64 %2719, 4
  %2721 = add i64 %2720, %2718
  %2722 = load i32, i32* %R11D.i702
  %2723 = zext i32 %2722 to i64
  %2724 = load i64, i64* %PC.i701
  %2725 = add i64 %2724, 4
  store i64 %2725, i64* %PC.i701
  %2726 = inttoptr i64 %2721 to i32*
  store i32 %2722, i32* %2726
  store %struct.Memory* %loadMem_47abd6, %struct.Memory** %MEMORY
  %loadMem_47abda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 33
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 7
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RDX.i699 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 15
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %RBP.i700 = bitcast %union.anon* %2735 to i64*
  %2736 = load i64, i64* %RBP.i700
  %2737 = sub i64 %2736, 12
  %2738 = load i64, i64* %PC.i698
  %2739 = add i64 %2738, 4
  store i64 %2739, i64* %PC.i698
  %2740 = inttoptr i64 %2737 to i32*
  %2741 = load i32, i32* %2740
  %2742 = sext i32 %2741 to i64
  store i64 %2742, i64* %RDX.i699, align 8
  store %struct.Memory* %loadMem_47abda, %struct.Memory** %MEMORY
  %loadMem_47abde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 33
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %2745 to i64*
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 7
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %RDX.i697 = bitcast %union.anon* %2748 to i64*
  %2749 = load i64, i64* %RDX.i697
  %2750 = load i64, i64* %PC.i696
  %2751 = add i64 %2750, 4
  store i64 %2751, i64* %PC.i696
  %2752 = shl i64 %2749, 7
  %2753 = icmp slt i64 %2752, 0
  %2754 = shl i64 %2752, 1
  store i64 %2754, i64* %RDX.i697, align 8
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2756 = zext i1 %2753 to i8
  store i8 %2756, i8* %2755, align 1
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2758 = trunc i64 %2754 to i32
  store i8 1, i8* %2757, align 1
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2759, align 1
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2761 = icmp eq i64 %2754, 0
  %2762 = zext i1 %2761 to i8
  store i8 %2762, i8* %2760, align 1
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2764 = lshr i64 %2754, 63
  %2765 = trunc i64 %2764 to i8
  store i8 %2765, i8* %2763, align 1
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2766, align 1
  store %struct.Memory* %loadMem_47abde, %struct.Memory** %MEMORY
  %loadMem_47abe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 33
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %2769 to i64*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 5
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %RCX.i694 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 7
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %RDX.i695 = bitcast %union.anon* %2775 to i64*
  %2776 = load i64, i64* %RCX.i694
  %2777 = load i64, i64* %RDX.i695
  %2778 = load i64, i64* %PC.i693
  %2779 = add i64 %2778, 3
  store i64 %2779, i64* %PC.i693
  %2780 = add i64 %2777, %2776
  store i64 %2780, i64* %RCX.i694, align 8
  %2781 = icmp ult i64 %2780, %2776
  %2782 = icmp ult i64 %2780, %2777
  %2783 = or i1 %2781, %2782
  %2784 = zext i1 %2783 to i8
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2784, i8* %2785, align 1
  %2786 = trunc i64 %2780 to i32
  %2787 = and i32 %2786, 255
  %2788 = call i32 @llvm.ctpop.i32(i32 %2787)
  %2789 = trunc i32 %2788 to i8
  %2790 = and i8 %2789, 1
  %2791 = xor i8 %2790, 1
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2791, i8* %2792, align 1
  %2793 = xor i64 %2777, %2776
  %2794 = xor i64 %2793, %2780
  %2795 = lshr i64 %2794, 4
  %2796 = trunc i64 %2795 to i8
  %2797 = and i8 %2796, 1
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2797, i8* %2798, align 1
  %2799 = icmp eq i64 %2780, 0
  %2800 = zext i1 %2799 to i8
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2800, i8* %2801, align 1
  %2802 = lshr i64 %2780, 63
  %2803 = trunc i64 %2802 to i8
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2803, i8* %2804, align 1
  %2805 = lshr i64 %2776, 63
  %2806 = lshr i64 %2777, 63
  %2807 = xor i64 %2802, %2805
  %2808 = xor i64 %2802, %2806
  %2809 = add i64 %2807, %2808
  %2810 = icmp eq i64 %2809, 2
  %2811 = zext i1 %2810 to i8
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2811, i8* %2812, align 1
  store %struct.Memory* %loadMem_47abe2, %struct.Memory** %MEMORY
  %loadMem_47abe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 33
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 7
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %RDX.i691 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 15
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %RBP.i692 = bitcast %union.anon* %2821 to i64*
  %2822 = load i64, i64* %RBP.i692
  %2823 = sub i64 %2822, 8
  %2824 = load i64, i64* %PC.i690
  %2825 = add i64 %2824, 4
  store i64 %2825, i64* %PC.i690
  %2826 = inttoptr i64 %2823 to i32*
  %2827 = load i32, i32* %2826
  %2828 = sext i32 %2827 to i64
  store i64 %2828, i64* %RDX.i691, align 8
  store %struct.Memory* %loadMem_47abe5, %struct.Memory** %MEMORY
  %loadMem_47abe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 33
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 7
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %RDX.i689 = bitcast %union.anon* %2834 to i64*
  %2835 = load i64, i64* %RDX.i689
  %2836 = load i64, i64* %PC.i688
  %2837 = add i64 %2836, 4
  store i64 %2837, i64* %PC.i688
  %2838 = shl i64 %2835, 4
  %2839 = icmp slt i64 %2838, 0
  %2840 = shl i64 %2838, 1
  store i64 %2840, i64* %RDX.i689, align 8
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2842 = zext i1 %2839 to i8
  store i8 %2842, i8* %2841, align 1
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2844 = trunc i64 %2840 to i32
  %2845 = and i32 %2844, 254
  %2846 = call i32 @llvm.ctpop.i32(i32 %2845)
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  %2849 = xor i8 %2848, 1
  store i8 %2849, i8* %2843, align 1
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2850, align 1
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2852 = icmp eq i64 %2840, 0
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %2851, align 1
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2855 = lshr i64 %2840, 63
  %2856 = trunc i64 %2855 to i8
  store i8 %2856, i8* %2854, align 1
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2857, align 1
  store %struct.Memory* %loadMem_47abe9, %struct.Memory** %MEMORY
  %loadMem_47abed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 33
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 5
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RCX.i686 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 7
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %RDX.i687 = bitcast %union.anon* %2866 to i64*
  %2867 = load i64, i64* %RCX.i686
  %2868 = load i64, i64* %RDX.i687
  %2869 = load i64, i64* %PC.i685
  %2870 = add i64 %2869, 3
  store i64 %2870, i64* %PC.i685
  %2871 = add i64 %2868, %2867
  store i64 %2871, i64* %RCX.i686, align 8
  %2872 = icmp ult i64 %2871, %2867
  %2873 = icmp ult i64 %2871, %2868
  %2874 = or i1 %2872, %2873
  %2875 = zext i1 %2874 to i8
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2875, i8* %2876, align 1
  %2877 = trunc i64 %2871 to i32
  %2878 = and i32 %2877, 255
  %2879 = call i32 @llvm.ctpop.i32(i32 %2878)
  %2880 = trunc i32 %2879 to i8
  %2881 = and i8 %2880, 1
  %2882 = xor i8 %2881, 1
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2882, i8* %2883, align 1
  %2884 = xor i64 %2868, %2867
  %2885 = xor i64 %2884, %2871
  %2886 = lshr i64 %2885, 4
  %2887 = trunc i64 %2886 to i8
  %2888 = and i8 %2887, 1
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2888, i8* %2889, align 1
  %2890 = icmp eq i64 %2871, 0
  %2891 = zext i1 %2890 to i8
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2891, i8* %2892, align 1
  %2893 = lshr i64 %2871, 63
  %2894 = trunc i64 %2893 to i8
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2894, i8* %2895, align 1
  %2896 = lshr i64 %2867, 63
  %2897 = lshr i64 %2868, 63
  %2898 = xor i64 %2893, %2896
  %2899 = xor i64 %2893, %2897
  %2900 = add i64 %2898, %2899
  %2901 = icmp eq i64 %2900, 2
  %2902 = zext i1 %2901 to i8
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2902, i8* %2903, align 1
  store %struct.Memory* %loadMem_47abed, %struct.Memory** %MEMORY
  %loadMem_47abf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 33
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 7
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %RDX.i683 = bitcast %union.anon* %2909 to i64*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 15
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %2912 to i64*
  %2913 = load i64, i64* %RBP.i684
  %2914 = sub i64 %2913, 4
  %2915 = load i64, i64* %PC.i682
  %2916 = add i64 %2915, 4
  store i64 %2916, i64* %PC.i682
  %2917 = inttoptr i64 %2914 to i32*
  %2918 = load i32, i32* %2917
  %2919 = sext i32 %2918 to i64
  store i64 %2919, i64* %RDX.i683, align 8
  store %struct.Memory* %loadMem_47abf0, %struct.Memory** %MEMORY
  %loadMem_47abf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 33
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 23
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %R11D.i679 = bitcast %union.anon* %2925 to i32*
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 5
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %RCX.i680 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 7
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %RDX.i681 = bitcast %union.anon* %2931 to i64*
  %2932 = bitcast i32* %R11D.i679 to i64*
  %2933 = load i64, i64* %RCX.i680
  %2934 = load i64, i64* %RDX.i681
  %2935 = mul i64 %2934, 4
  %2936 = add i64 %2935, %2933
  %2937 = load i64, i64* %PC.i678
  %2938 = add i64 %2937, 4
  store i64 %2938, i64* %PC.i678
  %2939 = inttoptr i64 %2936 to i32*
  %2940 = load i32, i32* %2939
  %2941 = zext i32 %2940 to i64
  store i64 %2941, i64* %2932, align 8
  store %struct.Memory* %loadMem_47abf4, %struct.Memory** %MEMORY
  %loadMem_47abf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 33
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %2944 to i64*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 23
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %R11D.i677 = bitcast %union.anon* %2947 to i32*
  %2948 = bitcast i32* %R11D.i677 to i64*
  %2949 = load i32, i32* %R11D.i677
  %2950 = zext i32 %2949 to i64
  %2951 = load i64, i64* %PC.i676
  %2952 = add i64 %2951, 4
  store i64 %2952, i64* %PC.i676
  %2953 = and i64 %2950, 4294967295
  %2954 = shl i64 %2953, 3
  %2955 = trunc i64 %2954 to i32
  %2956 = icmp slt i32 %2955, 0
  %2957 = shl i32 %2955, 1
  %2958 = zext i32 %2957 to i64
  store i64 %2958, i64* %2948, align 8
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2960 = zext i1 %2956 to i8
  store i8 %2960, i8* %2959, align 1
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2962 = and i32 %2957, 254
  %2963 = call i32 @llvm.ctpop.i32(i32 %2962)
  %2964 = trunc i32 %2963 to i8
  %2965 = and i8 %2964, 1
  %2966 = xor i8 %2965, 1
  store i8 %2966, i8* %2961, align 1
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2967, align 1
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2969 = icmp eq i32 %2957, 0
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %2968, align 1
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2972 = lshr i32 %2957, 31
  %2973 = trunc i32 %2972 to i8
  store i8 %2973, i8* %2971, align 1
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2974, align 1
  store %struct.Memory* %loadMem_47abf8, %struct.Memory** %MEMORY
  %loadMem_47abfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 33
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2977 to i64*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 5
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %RCX.i674 = bitcast %union.anon* %2980 to i64*
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 15
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %2983 to i64*
  %2984 = load i64, i64* %RBP.i675
  %2985 = sub i64 %2984, 12
  %2986 = load i64, i64* %PC.i673
  %2987 = add i64 %2986, 4
  store i64 %2987, i64* %PC.i673
  %2988 = inttoptr i64 %2985 to i32*
  %2989 = load i32, i32* %2988
  %2990 = sext i32 %2989 to i64
  store i64 %2990, i64* %RCX.i674, align 8
  store %struct.Memory* %loadMem_47abfc, %struct.Memory** %MEMORY
  %loadMem_47ac00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 33
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %2993 to i64*
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 5
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %RCX.i672 = bitcast %union.anon* %2996 to i64*
  %2997 = load i64, i64* %RCX.i672
  %2998 = load i64, i64* %PC.i671
  %2999 = add i64 %2998, 4
  store i64 %2999, i64* %PC.i671
  %3000 = shl i64 %2997, 7
  %3001 = icmp slt i64 %3000, 0
  %3002 = shl i64 %3000, 1
  store i64 %3002, i64* %RCX.i672, align 8
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3004 = zext i1 %3001 to i8
  store i8 %3004, i8* %3003, align 1
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3006 = trunc i64 %3002 to i32
  store i8 1, i8* %3005, align 1
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3007, align 1
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3009 = icmp eq i64 %3002, 0
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %3008, align 1
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3012 = lshr i64 %3002, 63
  %3013 = trunc i64 %3012 to i8
  store i8 %3013, i8* %3011, align 1
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3014, align 1
  store %struct.Memory* %loadMem_47ac00, %struct.Memory** %MEMORY
  %loadMem_47ac04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 33
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %3017 to i64*
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 1
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %RAX.i669 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 5
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %RCX.i670 = bitcast %union.anon* %3023 to i64*
  %3024 = load i64, i64* %RAX.i669
  %3025 = load i64, i64* %RCX.i670
  %3026 = load i64, i64* %PC.i668
  %3027 = add i64 %3026, 3
  store i64 %3027, i64* %PC.i668
  %3028 = add i64 %3025, %3024
  store i64 %3028, i64* %RAX.i669, align 8
  %3029 = icmp ult i64 %3028, %3024
  %3030 = icmp ult i64 %3028, %3025
  %3031 = or i1 %3029, %3030
  %3032 = zext i1 %3031 to i8
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3032, i8* %3033, align 1
  %3034 = trunc i64 %3028 to i32
  %3035 = and i32 %3034, 255
  %3036 = call i32 @llvm.ctpop.i32(i32 %3035)
  %3037 = trunc i32 %3036 to i8
  %3038 = and i8 %3037, 1
  %3039 = xor i8 %3038, 1
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3039, i8* %3040, align 1
  %3041 = xor i64 %3025, %3024
  %3042 = xor i64 %3041, %3028
  %3043 = lshr i64 %3042, 4
  %3044 = trunc i64 %3043 to i8
  %3045 = and i8 %3044, 1
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3045, i8* %3046, align 1
  %3047 = icmp eq i64 %3028, 0
  %3048 = zext i1 %3047 to i8
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3048, i8* %3049, align 1
  %3050 = lshr i64 %3028, 63
  %3051 = trunc i64 %3050 to i8
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3051, i8* %3052, align 1
  %3053 = lshr i64 %3024, 63
  %3054 = lshr i64 %3025, 63
  %3055 = xor i64 %3050, %3053
  %3056 = xor i64 %3050, %3054
  %3057 = add i64 %3055, %3056
  %3058 = icmp eq i64 %3057, 2
  %3059 = zext i1 %3058 to i8
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3059, i8* %3060, align 1
  store %struct.Memory* %loadMem_47ac04, %struct.Memory** %MEMORY
  %loadMem_47ac07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 33
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 5
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %3066 to i64*
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 15
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %3069 to i64*
  %3070 = load i64, i64* %RBP.i667
  %3071 = sub i64 %3070, 8
  %3072 = load i64, i64* %PC.i665
  %3073 = add i64 %3072, 4
  store i64 %3073, i64* %PC.i665
  %3074 = inttoptr i64 %3071 to i32*
  %3075 = load i32, i32* %3074
  %3076 = sext i32 %3075 to i64
  store i64 %3076, i64* %RCX.i666, align 8
  store %struct.Memory* %loadMem_47ac07, %struct.Memory** %MEMORY
  %loadMem_47ac0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 5
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %3082 to i64*
  %3083 = load i64, i64* %RCX.i664
  %3084 = load i64, i64* %PC.i663
  %3085 = add i64 %3084, 4
  store i64 %3085, i64* %PC.i663
  %3086 = shl i64 %3083, 4
  %3087 = icmp slt i64 %3086, 0
  %3088 = shl i64 %3086, 1
  store i64 %3088, i64* %RCX.i664, align 8
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3090 = zext i1 %3087 to i8
  store i8 %3090, i8* %3089, align 1
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3092 = trunc i64 %3088 to i32
  %3093 = and i32 %3092, 254
  %3094 = call i32 @llvm.ctpop.i32(i32 %3093)
  %3095 = trunc i32 %3094 to i8
  %3096 = and i8 %3095, 1
  %3097 = xor i8 %3096, 1
  store i8 %3097, i8* %3091, align 1
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3098, align 1
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3100 = icmp eq i64 %3088, 0
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %3099, align 1
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3103 = lshr i64 %3088, 63
  %3104 = trunc i64 %3103 to i8
  store i8 %3104, i8* %3102, align 1
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3105, align 1
  store %struct.Memory* %loadMem_47ac0b, %struct.Memory** %MEMORY
  %loadMem_47ac0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 33
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 1
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RAX.i661 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 5
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RCX.i662 = bitcast %union.anon* %3114 to i64*
  %3115 = load i64, i64* %RAX.i661
  %3116 = load i64, i64* %RCX.i662
  %3117 = load i64, i64* %PC.i660
  %3118 = add i64 %3117, 3
  store i64 %3118, i64* %PC.i660
  %3119 = add i64 %3116, %3115
  store i64 %3119, i64* %RAX.i661, align 8
  %3120 = icmp ult i64 %3119, %3115
  %3121 = icmp ult i64 %3119, %3116
  %3122 = or i1 %3120, %3121
  %3123 = zext i1 %3122 to i8
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3123, i8* %3124, align 1
  %3125 = trunc i64 %3119 to i32
  %3126 = and i32 %3125, 255
  %3127 = call i32 @llvm.ctpop.i32(i32 %3126)
  %3128 = trunc i32 %3127 to i8
  %3129 = and i8 %3128, 1
  %3130 = xor i8 %3129, 1
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3130, i8* %3131, align 1
  %3132 = xor i64 %3116, %3115
  %3133 = xor i64 %3132, %3119
  %3134 = lshr i64 %3133, 4
  %3135 = trunc i64 %3134 to i8
  %3136 = and i8 %3135, 1
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3136, i8* %3137, align 1
  %3138 = icmp eq i64 %3119, 0
  %3139 = zext i1 %3138 to i8
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3139, i8* %3140, align 1
  %3141 = lshr i64 %3119, 63
  %3142 = trunc i64 %3141 to i8
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3142, i8* %3143, align 1
  %3144 = lshr i64 %3115, 63
  %3145 = lshr i64 %3116, 63
  %3146 = xor i64 %3141, %3144
  %3147 = xor i64 %3141, %3145
  %3148 = add i64 %3146, %3147
  %3149 = icmp eq i64 %3148, 2
  %3150 = zext i1 %3149 to i8
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3150, i8* %3151, align 1
  store %struct.Memory* %loadMem_47ac0f, %struct.Memory** %MEMORY
  %loadMem_47ac12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 33
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 5
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %RCX.i658 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 15
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %3160 to i64*
  %3161 = load i64, i64* %RBP.i659
  %3162 = sub i64 %3161, 4
  %3163 = load i64, i64* %PC.i657
  %3164 = add i64 %3163, 4
  store i64 %3164, i64* %PC.i657
  %3165 = inttoptr i64 %3162 to i32*
  %3166 = load i32, i32* %3165
  %3167 = sext i32 %3166 to i64
  store i64 %3167, i64* %RCX.i658, align 8
  store %struct.Memory* %loadMem_47ac12, %struct.Memory** %MEMORY
  %loadMem_47ac16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 33
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %3170 to i64*
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 23
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %3173 to i32*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 1
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %RAX.i655 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 5
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RCX.i656 = bitcast %union.anon* %3179 to i64*
  %3180 = load i64, i64* %RAX.i655
  %3181 = load i64, i64* %RCX.i656
  %3182 = mul i64 %3181, 4
  %3183 = add i64 %3182, %3180
  %3184 = load i32, i32* %R11D.i
  %3185 = zext i32 %3184 to i64
  %3186 = load i64, i64* %PC.i654
  %3187 = add i64 %3186, 4
  store i64 %3187, i64* %PC.i654
  %3188 = inttoptr i64 %3183 to i32*
  store i32 %3184, i32* %3188
  store %struct.Memory* %loadMem_47ac16, %struct.Memory** %MEMORY
  %loadMem_47ac1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 33
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %3191 to i64*
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 1
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %RAX.i652 = bitcast %union.anon* %3194 to i64*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 15
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %3197 to i64*
  %3198 = load i64, i64* %RBP.i653
  %3199 = sub i64 %3198, 4
  %3200 = load i64, i64* %PC.i651
  %3201 = add i64 %3200, 3
  store i64 %3201, i64* %PC.i651
  %3202 = inttoptr i64 %3199 to i32*
  %3203 = load i32, i32* %3202
  %3204 = zext i32 %3203 to i64
  store i64 %3204, i64* %RAX.i652, align 8
  store %struct.Memory* %loadMem_47ac1a, %struct.Memory** %MEMORY
  %loadMem_47ac1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 33
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %3207 to i64*
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 1
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %RAX.i650 = bitcast %union.anon* %3210 to i64*
  %3211 = load i64, i64* %RAX.i650
  %3212 = load i64, i64* %PC.i649
  %3213 = add i64 %3212, 3
  store i64 %3213, i64* %PC.i649
  %3214 = trunc i64 %3211 to i32
  %3215 = add i32 1, %3214
  %3216 = zext i32 %3215 to i64
  store i64 %3216, i64* %RAX.i650, align 8
  %3217 = icmp ult i32 %3215, %3214
  %3218 = icmp ult i32 %3215, 1
  %3219 = or i1 %3217, %3218
  %3220 = zext i1 %3219 to i8
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3220, i8* %3221, align 1
  %3222 = and i32 %3215, 255
  %3223 = call i32 @llvm.ctpop.i32(i32 %3222)
  %3224 = trunc i32 %3223 to i8
  %3225 = and i8 %3224, 1
  %3226 = xor i8 %3225, 1
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3226, i8* %3227, align 1
  %3228 = xor i64 1, %3211
  %3229 = trunc i64 %3228 to i32
  %3230 = xor i32 %3229, %3215
  %3231 = lshr i32 %3230, 4
  %3232 = trunc i32 %3231 to i8
  %3233 = and i8 %3232, 1
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3233, i8* %3234, align 1
  %3235 = icmp eq i32 %3215, 0
  %3236 = zext i1 %3235 to i8
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3236, i8* %3237, align 1
  %3238 = lshr i32 %3215, 31
  %3239 = trunc i32 %3238 to i8
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3239, i8* %3240, align 1
  %3241 = lshr i32 %3214, 31
  %3242 = xor i32 %3238, %3241
  %3243 = add i32 %3242, %3238
  %3244 = icmp eq i32 %3243, 2
  %3245 = zext i1 %3244 to i8
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3245, i8* %3246, align 1
  store %struct.Memory* %loadMem_47ac1d, %struct.Memory** %MEMORY
  %loadMem_47ac20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 33
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %3249 to i64*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 1
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %EAX.i647 = bitcast %union.anon* %3252 to i32*
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 15
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %3255 to i64*
  %3256 = load i64, i64* %RBP.i648
  %3257 = sub i64 %3256, 4
  %3258 = load i32, i32* %EAX.i647
  %3259 = zext i32 %3258 to i64
  %3260 = load i64, i64* %PC.i646
  %3261 = add i64 %3260, 3
  store i64 %3261, i64* %PC.i646
  %3262 = inttoptr i64 %3257 to i32*
  store i32 %3258, i32* %3262
  store %struct.Memory* %loadMem_47ac20, %struct.Memory** %MEMORY
  %loadMem_47ac23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 33
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %PC.i645 = bitcast %union.anon* %3265 to i64*
  %3266 = load i64, i64* %PC.i645
  %3267 = add i64 %3266, -333
  %3268 = load i64, i64* %PC.i645
  %3269 = add i64 %3268, 5
  store i64 %3269, i64* %PC.i645
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3267, i64* %3270, align 8
  store %struct.Memory* %loadMem_47ac23, %struct.Memory** %MEMORY
  br label %block_.L_47aad6

block_.L_47ac28:                                  ; preds = %block_.L_47aad6
  %loadMem_47ac28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 33
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %3273 to i64*
  %3274 = load i64, i64* %PC.i644
  %3275 = add i64 %3274, 5
  %3276 = load i64, i64* %PC.i644
  %3277 = add i64 %3276, 5
  store i64 %3277, i64* %PC.i644
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3275, i64* %3278, align 8
  store %struct.Memory* %loadMem_47ac28, %struct.Memory** %MEMORY
  br label %block_.L_47ac2d

block_.L_47ac2d:                                  ; preds = %block_.L_47ac28
  %loadMem_47ac2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 33
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %3281 to i64*
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 1
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %RAX.i642 = bitcast %union.anon* %3284 to i64*
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 15
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %3287 to i64*
  %3288 = load i64, i64* %RBP.i643
  %3289 = sub i64 %3288, 8
  %3290 = load i64, i64* %PC.i641
  %3291 = add i64 %3290, 3
  store i64 %3291, i64* %PC.i641
  %3292 = inttoptr i64 %3289 to i32*
  %3293 = load i32, i32* %3292
  %3294 = zext i32 %3293 to i64
  store i64 %3294, i64* %RAX.i642, align 8
  store %struct.Memory* %loadMem_47ac2d, %struct.Memory** %MEMORY
  %loadMem_47ac30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 33
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %3297 to i64*
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3299 = getelementptr inbounds %struct.GPR, %struct.GPR* %3298, i32 0, i32 1
  %3300 = getelementptr inbounds %struct.Reg, %struct.Reg* %3299, i32 0, i32 0
  %RAX.i640 = bitcast %union.anon* %3300 to i64*
  %3301 = load i64, i64* %RAX.i640
  %3302 = load i64, i64* %PC.i639
  %3303 = add i64 %3302, 3
  store i64 %3303, i64* %PC.i639
  %3304 = trunc i64 %3301 to i32
  %3305 = add i32 1, %3304
  %3306 = zext i32 %3305 to i64
  store i64 %3306, i64* %RAX.i640, align 8
  %3307 = icmp ult i32 %3305, %3304
  %3308 = icmp ult i32 %3305, 1
  %3309 = or i1 %3307, %3308
  %3310 = zext i1 %3309 to i8
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3310, i8* %3311, align 1
  %3312 = and i32 %3305, 255
  %3313 = call i32 @llvm.ctpop.i32(i32 %3312)
  %3314 = trunc i32 %3313 to i8
  %3315 = and i8 %3314, 1
  %3316 = xor i8 %3315, 1
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3316, i8* %3317, align 1
  %3318 = xor i64 1, %3301
  %3319 = trunc i64 %3318 to i32
  %3320 = xor i32 %3319, %3305
  %3321 = lshr i32 %3320, 4
  %3322 = trunc i32 %3321 to i8
  %3323 = and i8 %3322, 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3323, i8* %3324, align 1
  %3325 = icmp eq i32 %3305, 0
  %3326 = zext i1 %3325 to i8
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3326, i8* %3327, align 1
  %3328 = lshr i32 %3305, 31
  %3329 = trunc i32 %3328 to i8
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3329, i8* %3330, align 1
  %3331 = lshr i32 %3304, 31
  %3332 = xor i32 %3328, %3331
  %3333 = add i32 %3332, %3328
  %3334 = icmp eq i32 %3333, 2
  %3335 = zext i1 %3334 to i8
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3335, i8* %3336, align 1
  store %struct.Memory* %loadMem_47ac30, %struct.Memory** %MEMORY
  %loadMem_47ac33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 33
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %3339 to i64*
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 1
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %EAX.i637 = bitcast %union.anon* %3342 to i32*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 15
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %RBP.i638 = bitcast %union.anon* %3345 to i64*
  %3346 = load i64, i64* %RBP.i638
  %3347 = sub i64 %3346, 8
  %3348 = load i32, i32* %EAX.i637
  %3349 = zext i32 %3348 to i64
  %3350 = load i64, i64* %PC.i636
  %3351 = add i64 %3350, 3
  store i64 %3351, i64* %PC.i636
  %3352 = inttoptr i64 %3347 to i32*
  store i32 %3348, i32* %3352
  store %struct.Memory* %loadMem_47ac33, %struct.Memory** %MEMORY
  %loadMem_47ac36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 33
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %3355 to i64*
  %3356 = load i64, i64* %PC.i635
  %3357 = add i64 %3356, -369
  %3358 = load i64, i64* %PC.i635
  %3359 = add i64 %3358, 5
  store i64 %3359, i64* %PC.i635
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3357, i64* %3360, align 8
  store %struct.Memory* %loadMem_47ac36, %struct.Memory** %MEMORY
  br label %block_.L_47aac5

block_.L_47ac3b:                                  ; preds = %block_.L_47aac5
  %loadMem_47ac3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 33
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %3363 to i64*
  %3364 = load i64, i64* %PC.i634
  %3365 = add i64 %3364, 5
  %3366 = load i64, i64* %PC.i634
  %3367 = add i64 %3366, 5
  store i64 %3367, i64* %PC.i634
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3365, i64* %3368, align 8
  store %struct.Memory* %loadMem_47ac3b, %struct.Memory** %MEMORY
  br label %block_.L_47ac40

block_.L_47ac40:                                  ; preds = %block_.L_47ac3b
  %loadMem_47ac40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 33
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 1
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %RAX.i632 = bitcast %union.anon* %3374 to i64*
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 15
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %3377 to i64*
  %3378 = load i64, i64* %RBP.i633
  %3379 = sub i64 %3378, 12
  %3380 = load i64, i64* %PC.i631
  %3381 = add i64 %3380, 3
  store i64 %3381, i64* %PC.i631
  %3382 = inttoptr i64 %3379 to i32*
  %3383 = load i32, i32* %3382
  %3384 = zext i32 %3383 to i64
  store i64 %3384, i64* %RAX.i632, align 8
  store %struct.Memory* %loadMem_47ac40, %struct.Memory** %MEMORY
  %loadMem_47ac43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 33
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %3387 to i64*
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 1
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %RAX.i630 = bitcast %union.anon* %3390 to i64*
  %3391 = load i64, i64* %RAX.i630
  %3392 = load i64, i64* %PC.i629
  %3393 = add i64 %3392, 3
  store i64 %3393, i64* %PC.i629
  %3394 = trunc i64 %3391 to i32
  %3395 = add i32 1, %3394
  %3396 = zext i32 %3395 to i64
  store i64 %3396, i64* %RAX.i630, align 8
  %3397 = icmp ult i32 %3395, %3394
  %3398 = icmp ult i32 %3395, 1
  %3399 = or i1 %3397, %3398
  %3400 = zext i1 %3399 to i8
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3400, i8* %3401, align 1
  %3402 = and i32 %3395, 255
  %3403 = call i32 @llvm.ctpop.i32(i32 %3402)
  %3404 = trunc i32 %3403 to i8
  %3405 = and i8 %3404, 1
  %3406 = xor i8 %3405, 1
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3406, i8* %3407, align 1
  %3408 = xor i64 1, %3391
  %3409 = trunc i64 %3408 to i32
  %3410 = xor i32 %3409, %3395
  %3411 = lshr i32 %3410, 4
  %3412 = trunc i32 %3411 to i8
  %3413 = and i8 %3412, 1
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3413, i8* %3414, align 1
  %3415 = icmp eq i32 %3395, 0
  %3416 = zext i1 %3415 to i8
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3416, i8* %3417, align 1
  %3418 = lshr i32 %3395, 31
  %3419 = trunc i32 %3418 to i8
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3419, i8* %3420, align 1
  %3421 = lshr i32 %3394, 31
  %3422 = xor i32 %3418, %3421
  %3423 = add i32 %3422, %3418
  %3424 = icmp eq i32 %3423, 2
  %3425 = zext i1 %3424 to i8
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3425, i8* %3426, align 1
  store %struct.Memory* %loadMem_47ac43, %struct.Memory** %MEMORY
  %loadMem_47ac46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 33
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %3429 to i64*
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 1
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %EAX.i627 = bitcast %union.anon* %3432 to i32*
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 15
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %3435 to i64*
  %3436 = load i64, i64* %RBP.i628
  %3437 = sub i64 %3436, 12
  %3438 = load i32, i32* %EAX.i627
  %3439 = zext i32 %3438 to i64
  %3440 = load i64, i64* %PC.i626
  %3441 = add i64 %3440, 3
  store i64 %3441, i64* %PC.i626
  %3442 = inttoptr i64 %3437 to i32*
  store i32 %3438, i32* %3442
  store %struct.Memory* %loadMem_47ac46, %struct.Memory** %MEMORY
  %loadMem_47ac49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %3445 to i64*
  %3446 = load i64, i64* %PC.i625
  %3447 = add i64 %3446, -405
  %3448 = load i64, i64* %PC.i625
  %3449 = add i64 %3448, 5
  store i64 %3449, i64* %PC.i625
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3447, i64* %3450, align 8
  store %struct.Memory* %loadMem_47ac49, %struct.Memory** %MEMORY
  br label %block_.L_47aab4

block_.L_47ac4e:                                  ; preds = %block_.L_47aab4
  %loadMem_47ac4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 33
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %3453 to i64*
  %3454 = load i64, i64* %PC.i624
  %3455 = add i64 %3454, 1050
  %3456 = load i64, i64* %PC.i624
  %3457 = add i64 %3456, 5
  store i64 %3457, i64* %PC.i624
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3455, i64* %3458, align 8
  store %struct.Memory* %loadMem_47ac4e, %struct.Memory** %MEMORY
  br label %block_.L_47b068

block_.L_47ac53:                                  ; preds = %block_.L_47aaa3
  %loadMem_47ac53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 15
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %3464 to i64*
  %3465 = load i64, i64* %RBP.i623
  %3466 = sub i64 %3465, 12
  %3467 = load i64, i64* %PC.i622
  %3468 = add i64 %3467, 7
  store i64 %3468, i64* %PC.i622
  %3469 = inttoptr i64 %3466 to i32*
  store i32 0, i32* %3469
  store %struct.Memory* %loadMem_47ac53, %struct.Memory** %MEMORY
  br label %block_.L_47ac5a

block_.L_47ac5a:                                  ; preds = %block_.L_47b055, %block_.L_47ac53
  %loadMem_47ac5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 33
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %3472 to i64*
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 15
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %3475 to i64*
  %3476 = load i64, i64* %RBP.i621
  %3477 = sub i64 %3476, 12
  %3478 = load i64, i64* %PC.i620
  %3479 = add i64 %3478, 4
  store i64 %3479, i64* %PC.i620
  %3480 = inttoptr i64 %3477 to i32*
  %3481 = load i32, i32* %3480
  %3482 = sub i32 %3481, 6
  %3483 = icmp ult i32 %3481, 6
  %3484 = zext i1 %3483 to i8
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3484, i8* %3485, align 1
  %3486 = and i32 %3482, 255
  %3487 = call i32 @llvm.ctpop.i32(i32 %3486)
  %3488 = trunc i32 %3487 to i8
  %3489 = and i8 %3488, 1
  %3490 = xor i8 %3489, 1
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3490, i8* %3491, align 1
  %3492 = xor i32 %3481, 6
  %3493 = xor i32 %3492, %3482
  %3494 = lshr i32 %3493, 4
  %3495 = trunc i32 %3494 to i8
  %3496 = and i8 %3495, 1
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3496, i8* %3497, align 1
  %3498 = icmp eq i32 %3482, 0
  %3499 = zext i1 %3498 to i8
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3499, i8* %3500, align 1
  %3501 = lshr i32 %3482, 31
  %3502 = trunc i32 %3501 to i8
  %3503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3502, i8* %3503, align 1
  %3504 = lshr i32 %3481, 31
  %3505 = xor i32 %3501, %3504
  %3506 = add i32 %3505, %3504
  %3507 = icmp eq i32 %3506, 2
  %3508 = zext i1 %3507 to i8
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3508, i8* %3509, align 1
  store %struct.Memory* %loadMem_47ac5a, %struct.Memory** %MEMORY
  %loadMem_47ac5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 33
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %3512 to i64*
  %3513 = load i64, i64* %PC.i619
  %3514 = add i64 %3513, 1029
  %3515 = load i64, i64* %PC.i619
  %3516 = add i64 %3515, 6
  %3517 = load i64, i64* %PC.i619
  %3518 = add i64 %3517, 6
  store i64 %3518, i64* %PC.i619
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3520 = load i8, i8* %3519, align 1
  %3521 = icmp ne i8 %3520, 0
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3523 = load i8, i8* %3522, align 1
  %3524 = icmp ne i8 %3523, 0
  %3525 = xor i1 %3521, %3524
  %3526 = xor i1 %3525, true
  %3527 = zext i1 %3526 to i8
  store i8 %3527, i8* %BRANCH_TAKEN, align 1
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3529 = select i1 %3525, i64 %3516, i64 %3514
  store i64 %3529, i64* %3528, align 8
  store %struct.Memory* %loadMem_47ac5e, %struct.Memory** %MEMORY
  %loadBr_47ac5e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ac5e = icmp eq i8 %loadBr_47ac5e, 1
  br i1 %cmpBr_47ac5e, label %block_.L_47b063, label %block_47ac64

block_47ac64:                                     ; preds = %block_.L_47ac5a
  %loadMem_47ac64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 33
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %3532 to i64*
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 15
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %3535 to i64*
  %3536 = load i64, i64* %RBP.i618
  %3537 = sub i64 %3536, 8
  %3538 = load i64, i64* %PC.i617
  %3539 = add i64 %3538, 7
  store i64 %3539, i64* %PC.i617
  %3540 = inttoptr i64 %3537 to i32*
  store i32 0, i32* %3540
  store %struct.Memory* %loadMem_47ac64, %struct.Memory** %MEMORY
  br label %block_.L_47ac6b

block_.L_47ac6b:                                  ; preds = %block_.L_47b042, %block_47ac64
  %loadMem_47ac6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 33
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %3543 to i64*
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 15
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %3546 to i64*
  %3547 = load i64, i64* %RBP.i616
  %3548 = sub i64 %3547, 8
  %3549 = load i64, i64* %PC.i615
  %3550 = add i64 %3549, 4
  store i64 %3550, i64* %PC.i615
  %3551 = inttoptr i64 %3548 to i32*
  %3552 = load i32, i32* %3551
  %3553 = sub i32 %3552, 8
  %3554 = icmp ult i32 %3552, 8
  %3555 = zext i1 %3554 to i8
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3555, i8* %3556, align 1
  %3557 = and i32 %3553, 255
  %3558 = call i32 @llvm.ctpop.i32(i32 %3557)
  %3559 = trunc i32 %3558 to i8
  %3560 = and i8 %3559, 1
  %3561 = xor i8 %3560, 1
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3561, i8* %3562, align 1
  %3563 = xor i32 %3552, 8
  %3564 = xor i32 %3563, %3553
  %3565 = lshr i32 %3564, 4
  %3566 = trunc i32 %3565 to i8
  %3567 = and i8 %3566, 1
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3567, i8* %3568, align 1
  %3569 = icmp eq i32 %3553, 0
  %3570 = zext i1 %3569 to i8
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3570, i8* %3571, align 1
  %3572 = lshr i32 %3553, 31
  %3573 = trunc i32 %3572 to i8
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3573, i8* %3574, align 1
  %3575 = lshr i32 %3552, 31
  %3576 = xor i32 %3572, %3575
  %3577 = add i32 %3576, %3575
  %3578 = icmp eq i32 %3577, 2
  %3579 = zext i1 %3578 to i8
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3579, i8* %3580, align 1
  store %struct.Memory* %loadMem_47ac6b, %struct.Memory** %MEMORY
  %loadMem_47ac6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 33
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %3583 to i64*
  %3584 = load i64, i64* %PC.i614
  %3585 = add i64 %3584, 993
  %3586 = load i64, i64* %PC.i614
  %3587 = add i64 %3586, 6
  %3588 = load i64, i64* %PC.i614
  %3589 = add i64 %3588, 6
  store i64 %3589, i64* %PC.i614
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3591 = load i8, i8* %3590, align 1
  %3592 = icmp ne i8 %3591, 0
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3594 = load i8, i8* %3593, align 1
  %3595 = icmp ne i8 %3594, 0
  %3596 = xor i1 %3592, %3595
  %3597 = xor i1 %3596, true
  %3598 = zext i1 %3597 to i8
  store i8 %3598, i8* %BRANCH_TAKEN, align 1
  %3599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3600 = select i1 %3596, i64 %3587, i64 %3585
  store i64 %3600, i64* %3599, align 8
  store %struct.Memory* %loadMem_47ac6f, %struct.Memory** %MEMORY
  %loadBr_47ac6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ac6f = icmp eq i8 %loadBr_47ac6f, 1
  br i1 %cmpBr_47ac6f, label %block_.L_47b050, label %block_47ac75

block_47ac75:                                     ; preds = %block_.L_47ac6b
  %loadMem_47ac75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 33
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %3603 to i64*
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 15
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %RBP.i613 = bitcast %union.anon* %3606 to i64*
  %3607 = load i64, i64* %RBP.i613
  %3608 = sub i64 %3607, 4
  %3609 = load i64, i64* %PC.i612
  %3610 = add i64 %3609, 7
  store i64 %3610, i64* %PC.i612
  %3611 = inttoptr i64 %3608 to i32*
  store i32 0, i32* %3611
  store %struct.Memory* %loadMem_47ac75, %struct.Memory** %MEMORY
  br label %block_.L_47ac7c

block_.L_47ac7c:                                  ; preds = %block_.L_47b02f, %block_47ac75
  %loadMem_47ac7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 33
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %3614 to i64*
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 15
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %3617 to i64*
  %3618 = load i64, i64* %RBP.i611
  %3619 = sub i64 %3618, 4
  %3620 = load i64, i64* %PC.i610
  %3621 = add i64 %3620, 4
  store i64 %3621, i64* %PC.i610
  %3622 = inttoptr i64 %3619 to i32*
  %3623 = load i32, i32* %3622
  %3624 = sub i32 %3623, 8
  %3625 = icmp ult i32 %3623, 8
  %3626 = zext i1 %3625 to i8
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3626, i8* %3627, align 1
  %3628 = and i32 %3624, 255
  %3629 = call i32 @llvm.ctpop.i32(i32 %3628)
  %3630 = trunc i32 %3629 to i8
  %3631 = and i8 %3630, 1
  %3632 = xor i8 %3631, 1
  %3633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3632, i8* %3633, align 1
  %3634 = xor i32 %3623, 8
  %3635 = xor i32 %3634, %3624
  %3636 = lshr i32 %3635, 4
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3638, i8* %3639, align 1
  %3640 = icmp eq i32 %3624, 0
  %3641 = zext i1 %3640 to i8
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3641, i8* %3642, align 1
  %3643 = lshr i32 %3624, 31
  %3644 = trunc i32 %3643 to i8
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3644, i8* %3645, align 1
  %3646 = lshr i32 %3623, 31
  %3647 = xor i32 %3643, %3646
  %3648 = add i32 %3647, %3646
  %3649 = icmp eq i32 %3648, 2
  %3650 = zext i1 %3649 to i8
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3650, i8* %3651, align 1
  store %struct.Memory* %loadMem_47ac7c, %struct.Memory** %MEMORY
  %loadMem_47ac80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 33
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %3654 to i64*
  %3655 = load i64, i64* %PC.i609
  %3656 = add i64 %3655, 957
  %3657 = load i64, i64* %PC.i609
  %3658 = add i64 %3657, 6
  %3659 = load i64, i64* %PC.i609
  %3660 = add i64 %3659, 6
  store i64 %3660, i64* %PC.i609
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3662 = load i8, i8* %3661, align 1
  %3663 = icmp ne i8 %3662, 0
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3665 = load i8, i8* %3664, align 1
  %3666 = icmp ne i8 %3665, 0
  %3667 = xor i1 %3663, %3666
  %3668 = xor i1 %3667, true
  %3669 = zext i1 %3668 to i8
  store i8 %3669, i8* %BRANCH_TAKEN, align 1
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3671 = select i1 %3667, i64 %3658, i64 %3656
  store i64 %3671, i64* %3670, align 8
  store %struct.Memory* %loadMem_47ac80, %struct.Memory** %MEMORY
  %loadBr_47ac80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ac80 = icmp eq i8 %loadBr_47ac80, 1
  br i1 %cmpBr_47ac80, label %block_.L_47b03d, label %block_47ac86

block_47ac86:                                     ; preds = %block_.L_47ac7c
  %loadMem_47ac86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 33
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %3674 to i64*
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 1
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %RAX.i607 = bitcast %union.anon* %3677 to i64*
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 15
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %3680 to i64*
  %3681 = load i64, i64* %RBP.i608
  %3682 = sub i64 %3681, 4
  %3683 = load i64, i64* %PC.i606
  %3684 = add i64 %3683, 3
  store i64 %3684, i64* %PC.i606
  %3685 = inttoptr i64 %3682 to i32*
  %3686 = load i32, i32* %3685
  %3687 = zext i32 %3686 to i64
  store i64 %3687, i64* %RAX.i607, align 8
  store %struct.Memory* %loadMem_47ac86, %struct.Memory** %MEMORY
  %loadMem_47ac89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 33
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %3690 to i64*
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 1
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %3693 to i64*
  %3694 = load i64, i64* %RAX.i605
  %3695 = load i64, i64* %PC.i604
  %3696 = add i64 %3695, 3
  store i64 %3696, i64* %PC.i604
  %3697 = and i64 %3694, 4294967295
  %3698 = shl i64 %3697, 2
  %3699 = trunc i64 %3698 to i32
  %3700 = icmp slt i32 %3699, 0
  %3701 = shl i32 %3699, 1
  %3702 = zext i32 %3701 to i64
  store i64 %3702, i64* %RAX.i605, align 8
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3704 = zext i1 %3700 to i8
  store i8 %3704, i8* %3703, align 1
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3706 = and i32 %3701, 254
  %3707 = call i32 @llvm.ctpop.i32(i32 %3706)
  %3708 = trunc i32 %3707 to i8
  %3709 = and i8 %3708, 1
  %3710 = xor i8 %3709, 1
  store i8 %3710, i8* %3705, align 1
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3711, align 1
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3713 = icmp eq i32 %3701, 0
  %3714 = zext i1 %3713 to i8
  store i8 %3714, i8* %3712, align 1
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3716 = lshr i32 %3701, 31
  %3717 = trunc i32 %3716 to i8
  store i8 %3717, i8* %3715, align 1
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3718, align 1
  store %struct.Memory* %loadMem_47ac89, %struct.Memory** %MEMORY
  %loadMem_47ac8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 33
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %3721 to i64*
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 1
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %3724 to i64*
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 15
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %3727 to i64*
  %3728 = load i64, i64* %RAX.i602
  %3729 = load i64, i64* %RBP.i603
  %3730 = sub i64 %3729, 8
  %3731 = load i64, i64* %PC.i601
  %3732 = add i64 %3731, 3
  store i64 %3732, i64* %PC.i601
  %3733 = trunc i64 %3728 to i32
  %3734 = inttoptr i64 %3730 to i32*
  %3735 = load i32, i32* %3734
  %3736 = add i32 %3735, %3733
  %3737 = zext i32 %3736 to i64
  store i64 %3737, i64* %RAX.i602, align 8
  %3738 = icmp ult i32 %3736, %3733
  %3739 = icmp ult i32 %3736, %3735
  %3740 = or i1 %3738, %3739
  %3741 = zext i1 %3740 to i8
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3741, i8* %3742, align 1
  %3743 = and i32 %3736, 255
  %3744 = call i32 @llvm.ctpop.i32(i32 %3743)
  %3745 = trunc i32 %3744 to i8
  %3746 = and i8 %3745, 1
  %3747 = xor i8 %3746, 1
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3747, i8* %3748, align 1
  %3749 = xor i32 %3735, %3733
  %3750 = xor i32 %3749, %3736
  %3751 = lshr i32 %3750, 4
  %3752 = trunc i32 %3751 to i8
  %3753 = and i8 %3752, 1
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3753, i8* %3754, align 1
  %3755 = icmp eq i32 %3736, 0
  %3756 = zext i1 %3755 to i8
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3756, i8* %3757, align 1
  %3758 = lshr i32 %3736, 31
  %3759 = trunc i32 %3758 to i8
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3759, i8* %3760, align 1
  %3761 = lshr i32 %3733, 31
  %3762 = lshr i32 %3735, 31
  %3763 = xor i32 %3758, %3761
  %3764 = xor i32 %3758, %3762
  %3765 = add i32 %3763, %3764
  %3766 = icmp eq i32 %3765, 2
  %3767 = zext i1 %3766 to i8
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3767, i8* %3768, align 1
  store %struct.Memory* %loadMem_47ac8c, %struct.Memory** %MEMORY
  %loadMem_47ac8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 33
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %3771 to i64*
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 1
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %EAX.i599 = bitcast %union.anon* %3774 to i32*
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 15
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %3777 to i64*
  %3778 = load i64, i64* %RBP.i600
  %3779 = sub i64 %3778, 16
  %3780 = load i32, i32* %EAX.i599
  %3781 = zext i32 %3780 to i64
  %3782 = load i64, i64* %PC.i598
  %3783 = add i64 %3782, 3
  store i64 %3783, i64* %PC.i598
  %3784 = inttoptr i64 %3779 to i32*
  store i32 %3780, i32* %3784
  store %struct.Memory* %loadMem_47ac8f, %struct.Memory** %MEMORY
  %loadMem_47ac92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 33
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 15
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %3790 to i64*
  %3791 = load i64, i64* %RBP.i597
  %3792 = sub i64 %3791, 24
  %3793 = load i64, i64* %PC.i596
  %3794 = add i64 %3793, 4
  store i64 %3794, i64* %PC.i596
  %3795 = inttoptr i64 %3792 to i32*
  %3796 = load i32, i32* %3795
  %3797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3797, align 1
  %3798 = and i32 %3796, 255
  %3799 = call i32 @llvm.ctpop.i32(i32 %3798)
  %3800 = trunc i32 %3799 to i8
  %3801 = and i8 %3800, 1
  %3802 = xor i8 %3801, 1
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3802, i8* %3803, align 1
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3804, align 1
  %3805 = icmp eq i32 %3796, 0
  %3806 = zext i1 %3805 to i8
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3806, i8* %3807, align 1
  %3808 = lshr i32 %3796, 31
  %3809 = trunc i32 %3808 to i8
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3809, i8* %3810, align 1
  %3811 = lshr i32 %3796, 31
  %3812 = xor i32 %3808, %3811
  %3813 = add i32 %3812, %3811
  %3814 = icmp eq i32 %3813, 2
  %3815 = zext i1 %3814 to i8
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3815, i8* %3816, align 1
  store %struct.Memory* %loadMem_47ac92, %struct.Memory** %MEMORY
  %loadMem_47ac96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 33
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %3819 to i64*
  %3820 = load i64, i64* %PC.i595
  %3821 = add i64 %3820, 23
  %3822 = load i64, i64* %PC.i595
  %3823 = add i64 %3822, 6
  %3824 = load i64, i64* %PC.i595
  %3825 = add i64 %3824, 6
  store i64 %3825, i64* %PC.i595
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3827 = load i8, i8* %3826, align 1
  store i8 %3827, i8* %BRANCH_TAKEN, align 1
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3829 = icmp ne i8 %3827, 0
  %3830 = select i1 %3829, i64 %3821, i64 %3823
  store i64 %3830, i64* %3828, align 8
  store %struct.Memory* %loadMem_47ac96, %struct.Memory** %MEMORY
  %loadBr_47ac96 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ac96 = icmp eq i8 %loadBr_47ac96, 1
  br i1 %cmpBr_47ac96, label %block_.L_47acad, label %block_47ac9c

block_47ac9c:                                     ; preds = %block_47ac86
  %loadMem_47ac9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 33
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %3833 to i64*
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 1
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %RAX.i594 = bitcast %union.anon* %3836 to i64*
  %3837 = load i64, i64* %PC.i593
  %3838 = add i64 %3837, 8
  store i64 %3838, i64* %PC.i593
  %3839 = load i16, i16* bitcast (%G_0x6d1f9c_type* @G_0x6d1f9c to i16*)
  %3840 = sext i16 %3839 to i64
  %3841 = and i64 %3840, 4294967295
  store i64 %3841, i64* %RAX.i594, align 8
  store %struct.Memory* %loadMem_47ac9c, %struct.Memory** %MEMORY
  %loadMem_47aca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 33
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %3844 to i64*
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 1
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %EAX.i592 = bitcast %union.anon* %3847 to i32*
  %3848 = load i32, i32* %EAX.i592
  %3849 = zext i32 %3848 to i64
  %3850 = load i64, i64* %PC.i591
  %3851 = add i64 %3850, 3
  store i64 %3851, i64* %PC.i591
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3852, align 1
  %3853 = and i32 %3848, 255
  %3854 = call i32 @llvm.ctpop.i32(i32 %3853)
  %3855 = trunc i32 %3854 to i8
  %3856 = and i8 %3855, 1
  %3857 = xor i8 %3856, 1
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3857, i8* %3858, align 1
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3859, align 1
  %3860 = icmp eq i32 %3848, 0
  %3861 = zext i1 %3860 to i8
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3861, i8* %3862, align 1
  %3863 = lshr i32 %3848, 31
  %3864 = trunc i32 %3863 to i8
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3864, i8* %3865, align 1
  %3866 = lshr i32 %3848, 31
  %3867 = xor i32 %3863, %3866
  %3868 = add i32 %3867, %3866
  %3869 = icmp eq i32 %3868, 2
  %3870 = zext i1 %3869 to i8
  %3871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3870, i8* %3871, align 1
  store %struct.Memory* %loadMem_47aca4, %struct.Memory** %MEMORY
  %loadMem_47aca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3873 = getelementptr inbounds %struct.GPR, %struct.GPR* %3872, i32 0, i32 33
  %3874 = getelementptr inbounds %struct.Reg, %struct.Reg* %3873, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %3874 to i64*
  %3875 = load i64, i64* %PC.i590
  %3876 = add i64 %3875, 225
  %3877 = load i64, i64* %PC.i590
  %3878 = add i64 %3877, 6
  %3879 = load i64, i64* %PC.i590
  %3880 = add i64 %3879, 6
  store i64 %3880, i64* %PC.i590
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3882 = load i8, i8* %3881, align 1
  store i8 %3882, i8* %BRANCH_TAKEN, align 1
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3884 = icmp ne i8 %3882, 0
  %3885 = select i1 %3884, i64 %3876, i64 %3878
  store i64 %3885, i64* %3883, align 8
  store %struct.Memory* %loadMem_47aca7, %struct.Memory** %MEMORY
  %loadBr_47aca7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aca7 = icmp eq i8 %loadBr_47aca7, 1
  br i1 %cmpBr_47aca7, label %block_.L_47ad88, label %block_.L_47acad

block_.L_47acad:                                  ; preds = %block_47ac9c, %block_47ac86
  %loadMem_47acad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 33
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %3888 to i64*
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 1
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %RAX.i589 = bitcast %union.anon* %3891 to i64*
  %3892 = load i64, i64* %PC.i588
  %3893 = add i64 %3892, 10
  store i64 %3893, i64* %PC.i588
  store i64 ptrtoint (%G__0x6cfc70_type* @G__0x6cfc70 to i64), i64* %RAX.i589, align 8
  store %struct.Memory* %loadMem_47acad, %struct.Memory** %MEMORY
  %loadMem_47acb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 33
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %3896 to i64*
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 5
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %RCX.i587 = bitcast %union.anon* %3899 to i64*
  %3900 = load i64, i64* %PC.i586
  %3901 = add i64 %3900, 10
  store i64 %3901, i64* %PC.i586
  store i64 ptrtoint (%G__0x4b9d50_type* @G__0x4b9d50 to i64), i64* %RCX.i587, align 8
  store %struct.Memory* %loadMem_47acb7, %struct.Memory** %MEMORY
  %loadMem_47acc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 33
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3904 to i64*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 7
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %RDX.i585 = bitcast %union.anon* %3907 to i64*
  %3908 = load i64, i64* %PC.i584
  %3909 = add i64 %3908, 10
  store i64 %3909, i64* %PC.i584
  store i64 ptrtoint (%G__0x6d0bc0_type* @G__0x6d0bc0 to i64), i64* %RDX.i585, align 8
  store %struct.Memory* %loadMem_47acc1, %struct.Memory** %MEMORY
  %loadMem_47accb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 33
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %3912 to i64*
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 9
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %RSI.i583 = bitcast %union.anon* %3915 to i64*
  %3916 = load i64, i64* %PC.i582
  %3917 = add i64 %3916, 10
  store i64 %3917, i64* %PC.i582
  store i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64* %RSI.i583, align 8
  store %struct.Memory* %loadMem_47accb, %struct.Memory** %MEMORY
  %loadMem_47acd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 33
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %3920 to i64*
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 11
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %RDI.i580 = bitcast %union.anon* %3923 to i64*
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 15
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %3926 to i64*
  %3927 = load i64, i64* %RBP.i581
  %3928 = sub i64 %3927, 12
  %3929 = load i64, i64* %PC.i579
  %3930 = add i64 %3929, 4
  store i64 %3930, i64* %PC.i579
  %3931 = inttoptr i64 %3928 to i32*
  %3932 = load i32, i32* %3931
  %3933 = sext i32 %3932 to i64
  store i64 %3933, i64* %RDI.i580, align 8
  store %struct.Memory* %loadMem_47acd5, %struct.Memory** %MEMORY
  %loadMem_47acd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 33
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %3936 to i64*
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 11
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %RDI.i578 = bitcast %union.anon* %3939 to i64*
  %3940 = load i64, i64* %RDI.i578
  %3941 = load i64, i64* %PC.i577
  %3942 = add i64 %3941, 4
  store i64 %3942, i64* %PC.i577
  %3943 = shl i64 %3940, 7
  %3944 = icmp slt i64 %3943, 0
  %3945 = shl i64 %3943, 1
  store i64 %3945, i64* %RDI.i578, align 8
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3947 = zext i1 %3944 to i8
  store i8 %3947, i8* %3946, align 1
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3949 = trunc i64 %3945 to i32
  store i8 1, i8* %3948, align 1
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3950, align 1
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3952 = icmp eq i64 %3945, 0
  %3953 = zext i1 %3952 to i8
  store i8 %3953, i8* %3951, align 1
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3955 = lshr i64 %3945, 63
  %3956 = trunc i64 %3955 to i8
  store i8 %3956, i8* %3954, align 1
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3957, align 1
  store %struct.Memory* %loadMem_47acd9, %struct.Memory** %MEMORY
  %loadMem_47acdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 33
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %3960 to i64*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 9
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %RSI.i575 = bitcast %union.anon* %3963 to i64*
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 11
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %RDI.i576 = bitcast %union.anon* %3966 to i64*
  %3967 = load i64, i64* %RSI.i575
  %3968 = load i64, i64* %RDI.i576
  %3969 = load i64, i64* %PC.i574
  %3970 = add i64 %3969, 3
  store i64 %3970, i64* %PC.i574
  %3971 = add i64 %3968, %3967
  store i64 %3971, i64* %RSI.i575, align 8
  %3972 = icmp ult i64 %3971, %3967
  %3973 = icmp ult i64 %3971, %3968
  %3974 = or i1 %3972, %3973
  %3975 = zext i1 %3974 to i8
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3975, i8* %3976, align 1
  %3977 = trunc i64 %3971 to i32
  %3978 = and i32 %3977, 255
  %3979 = call i32 @llvm.ctpop.i32(i32 %3978)
  %3980 = trunc i32 %3979 to i8
  %3981 = and i8 %3980, 1
  %3982 = xor i8 %3981, 1
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3982, i8* %3983, align 1
  %3984 = xor i64 %3968, %3967
  %3985 = xor i64 %3984, %3971
  %3986 = lshr i64 %3985, 4
  %3987 = trunc i64 %3986 to i8
  %3988 = and i8 %3987, 1
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3988, i8* %3989, align 1
  %3990 = icmp eq i64 %3971, 0
  %3991 = zext i1 %3990 to i8
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3991, i8* %3992, align 1
  %3993 = lshr i64 %3971, 63
  %3994 = trunc i64 %3993 to i8
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3994, i8* %3995, align 1
  %3996 = lshr i64 %3967, 63
  %3997 = lshr i64 %3968, 63
  %3998 = xor i64 %3993, %3996
  %3999 = xor i64 %3993, %3997
  %4000 = add i64 %3998, %3999
  %4001 = icmp eq i64 %4000, 2
  %4002 = zext i1 %4001 to i8
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4002, i8* %4003, align 1
  store %struct.Memory* %loadMem_47acdd, %struct.Memory** %MEMORY
  %loadMem_47ace0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 33
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 11
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %RDI.i572 = bitcast %union.anon* %4009 to i64*
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 15
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %4012 to i64*
  %4013 = load i64, i64* %RBP.i573
  %4014 = sub i64 %4013, 8
  %4015 = load i64, i64* %PC.i571
  %4016 = add i64 %4015, 4
  store i64 %4016, i64* %PC.i571
  %4017 = inttoptr i64 %4014 to i32*
  %4018 = load i32, i32* %4017
  %4019 = sext i32 %4018 to i64
  store i64 %4019, i64* %RDI.i572, align 8
  store %struct.Memory* %loadMem_47ace0, %struct.Memory** %MEMORY
  %loadMem_47ace4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 33
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %4022 to i64*
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 11
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %RDI.i570 = bitcast %union.anon* %4025 to i64*
  %4026 = load i64, i64* %RDI.i570
  %4027 = load i64, i64* %PC.i569
  %4028 = add i64 %4027, 4
  store i64 %4028, i64* %PC.i569
  %4029 = shl i64 %4026, 4
  %4030 = icmp slt i64 %4029, 0
  %4031 = shl i64 %4029, 1
  store i64 %4031, i64* %RDI.i570, align 8
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4033 = zext i1 %4030 to i8
  store i8 %4033, i8* %4032, align 1
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4035 = trunc i64 %4031 to i32
  %4036 = and i32 %4035, 254
  %4037 = call i32 @llvm.ctpop.i32(i32 %4036)
  %4038 = trunc i32 %4037 to i8
  %4039 = and i8 %4038, 1
  %4040 = xor i8 %4039, 1
  store i8 %4040, i8* %4034, align 1
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4041, align 1
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4043 = icmp eq i64 %4031, 0
  %4044 = zext i1 %4043 to i8
  store i8 %4044, i8* %4042, align 1
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4046 = lshr i64 %4031, 63
  %4047 = trunc i64 %4046 to i8
  store i8 %4047, i8* %4045, align 1
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4048, align 1
  store %struct.Memory* %loadMem_47ace4, %struct.Memory** %MEMORY
  %loadMem_47ace8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4050 = getelementptr inbounds %struct.GPR, %struct.GPR* %4049, i32 0, i32 33
  %4051 = getelementptr inbounds %struct.Reg, %struct.Reg* %4050, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %4051 to i64*
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4053 = getelementptr inbounds %struct.GPR, %struct.GPR* %4052, i32 0, i32 9
  %4054 = getelementptr inbounds %struct.Reg, %struct.Reg* %4053, i32 0, i32 0
  %RSI.i567 = bitcast %union.anon* %4054 to i64*
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 11
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %RDI.i568 = bitcast %union.anon* %4057 to i64*
  %4058 = load i64, i64* %RSI.i567
  %4059 = load i64, i64* %RDI.i568
  %4060 = load i64, i64* %PC.i566
  %4061 = add i64 %4060, 3
  store i64 %4061, i64* %PC.i566
  %4062 = add i64 %4059, %4058
  store i64 %4062, i64* %RSI.i567, align 8
  %4063 = icmp ult i64 %4062, %4058
  %4064 = icmp ult i64 %4062, %4059
  %4065 = or i1 %4063, %4064
  %4066 = zext i1 %4065 to i8
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4066, i8* %4067, align 1
  %4068 = trunc i64 %4062 to i32
  %4069 = and i32 %4068, 255
  %4070 = call i32 @llvm.ctpop.i32(i32 %4069)
  %4071 = trunc i32 %4070 to i8
  %4072 = and i8 %4071, 1
  %4073 = xor i8 %4072, 1
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4073, i8* %4074, align 1
  %4075 = xor i64 %4059, %4058
  %4076 = xor i64 %4075, %4062
  %4077 = lshr i64 %4076, 4
  %4078 = trunc i64 %4077 to i8
  %4079 = and i8 %4078, 1
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4079, i8* %4080, align 1
  %4081 = icmp eq i64 %4062, 0
  %4082 = zext i1 %4081 to i8
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4082, i8* %4083, align 1
  %4084 = lshr i64 %4062, 63
  %4085 = trunc i64 %4084 to i8
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4085, i8* %4086, align 1
  %4087 = lshr i64 %4058, 63
  %4088 = lshr i64 %4059, 63
  %4089 = xor i64 %4084, %4087
  %4090 = xor i64 %4084, %4088
  %4091 = add i64 %4089, %4090
  %4092 = icmp eq i64 %4091, 2
  %4093 = zext i1 %4092 to i8
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4093, i8* %4094, align 1
  store %struct.Memory* %loadMem_47ace8, %struct.Memory** %MEMORY
  %loadMem_47aceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 33
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %4097 to i64*
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 11
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %RDI.i564 = bitcast %union.anon* %4100 to i64*
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 15
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %4103 to i64*
  %4104 = load i64, i64* %RBP.i565
  %4105 = sub i64 %4104, 4
  %4106 = load i64, i64* %PC.i563
  %4107 = add i64 %4106, 4
  store i64 %4107, i64* %PC.i563
  %4108 = inttoptr i64 %4105 to i32*
  %4109 = load i32, i32* %4108
  %4110 = sext i32 %4109 to i64
  store i64 %4110, i64* %RDI.i564, align 8
  store %struct.Memory* %loadMem_47aceb, %struct.Memory** %MEMORY
  %loadMem_47acef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4112 = getelementptr inbounds %struct.GPR, %struct.GPR* %4111, i32 0, i32 33
  %4113 = getelementptr inbounds %struct.Reg, %struct.Reg* %4112, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %4113 to i64*
  %4114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4115 = getelementptr inbounds %struct.GPR, %struct.GPR* %4114, i32 0, i32 17
  %4116 = getelementptr inbounds %struct.Reg, %struct.Reg* %4115, i32 0, i32 0
  %R8D.i560 = bitcast %union.anon* %4116 to i32*
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 9
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %RSI.i561 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 11
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %RDI.i562 = bitcast %union.anon* %4122 to i64*
  %4123 = bitcast i32* %R8D.i560 to i64*
  %4124 = load i64, i64* %RSI.i561
  %4125 = load i64, i64* %RDI.i562
  %4126 = mul i64 %4125, 4
  %4127 = add i64 %4126, %4124
  %4128 = load i64, i64* %PC.i559
  %4129 = add i64 %4128, 4
  store i64 %4129, i64* %PC.i559
  %4130 = inttoptr i64 %4127 to i32*
  %4131 = load i32, i32* %4130
  %4132 = zext i32 %4131 to i64
  store i64 %4132, i64* %4123, align 8
  store %struct.Memory* %loadMem_47acef, %struct.Memory** %MEMORY
  %loadMem_47acf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 17
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %R8D.i558 = bitcast %union.anon* %4138 to i32*
  %4139 = bitcast i32* %R8D.i558 to i64*
  %4140 = load i32, i32* %R8D.i558
  %4141 = zext i32 %4140 to i64
  %4142 = load i64, i64* %PC.i557
  %4143 = add i64 %4142, 4
  store i64 %4143, i64* %PC.i557
  %4144 = and i64 %4141, 4294967295
  %4145 = shl i64 %4144, 3
  %4146 = trunc i64 %4145 to i32
  %4147 = icmp slt i32 %4146, 0
  %4148 = shl i32 %4146, 1
  %4149 = zext i32 %4148 to i64
  store i64 %4149, i64* %4139, align 8
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4151 = zext i1 %4147 to i8
  store i8 %4151, i8* %4150, align 1
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4153 = and i32 %4148, 254
  %4154 = call i32 @llvm.ctpop.i32(i32 %4153)
  %4155 = trunc i32 %4154 to i8
  %4156 = and i8 %4155, 1
  %4157 = xor i8 %4156, 1
  store i8 %4157, i8* %4152, align 1
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4158, align 1
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4160 = icmp eq i32 %4148, 0
  %4161 = zext i1 %4160 to i8
  store i8 %4161, i8* %4159, align 1
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4163 = lshr i32 %4148, 31
  %4164 = trunc i32 %4163 to i8
  store i8 %4164, i8* %4162, align 1
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4165, align 1
  store %struct.Memory* %loadMem_47acf3, %struct.Memory** %MEMORY
  %loadMem_47acf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 33
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 9
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %RSI.i555 = bitcast %union.anon* %4171 to i64*
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4173 = getelementptr inbounds %struct.GPR, %struct.GPR* %4172, i32 0, i32 15
  %4174 = getelementptr inbounds %struct.Reg, %struct.Reg* %4173, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %4174 to i64*
  %4175 = load i64, i64* %RBP.i556
  %4176 = sub i64 %4175, 16
  %4177 = load i64, i64* %PC.i554
  %4178 = add i64 %4177, 4
  store i64 %4178, i64* %PC.i554
  %4179 = inttoptr i64 %4176 to i32*
  %4180 = load i32, i32* %4179
  %4181 = sext i32 %4180 to i64
  store i64 %4181, i64* %RSI.i555, align 8
  store %struct.Memory* %loadMem_47acf7, %struct.Memory** %MEMORY
  %loadMem_47acfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 33
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %4184 to i64*
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 19
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %R9D.i552 = bitcast %union.anon* %4187 to i32*
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4189 = getelementptr inbounds %struct.GPR, %struct.GPR* %4188, i32 0, i32 9
  %4190 = getelementptr inbounds %struct.Reg, %struct.Reg* %4189, i32 0, i32 0
  %RSI.i553 = bitcast %union.anon* %4190 to i64*
  %4191 = bitcast i32* %R9D.i552 to i64*
  %4192 = load i64, i64* %RSI.i553
  %4193 = mul i64 %4192, 2
  %4194 = add i64 %4193, 4952832
  %4195 = load i64, i64* %PC.i551
  %4196 = add i64 %4195, 9
  store i64 %4196, i64* %PC.i551
  %4197 = inttoptr i64 %4194 to i16*
  %4198 = load i16, i16* %4197
  %4199 = sext i16 %4198 to i64
  %4200 = and i64 %4199, 4294967295
  store i64 %4200, i64* %4191, align 8
  store %struct.Memory* %loadMem_47acfb, %struct.Memory** %MEMORY
  %loadMem_47ad04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 33
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %4203 to i64*
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4205 = getelementptr inbounds %struct.GPR, %struct.GPR* %4204, i32 0, i32 1
  %4206 = getelementptr inbounds %struct.Reg, %struct.Reg* %4205, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %4206 to i64*
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 15
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %4209 to i64*
  %4210 = load i64, i64* %RBP.i550
  %4211 = sub i64 %4210, 40
  %4212 = load i64, i64* %RAX.i549
  %4213 = load i64, i64* %PC.i548
  %4214 = add i64 %4213, 4
  store i64 %4214, i64* %PC.i548
  %4215 = inttoptr i64 %4211 to i64*
  store i64 %4212, i64* %4215
  store %struct.Memory* %loadMem_47ad04, %struct.Memory** %MEMORY
  %loadMem_47ad08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 33
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %4218 to i64*
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 17
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %R8D.i546 = bitcast %union.anon* %4221 to i32*
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 1
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %4224 to i64*
  %4225 = load i32, i32* %R8D.i546
  %4226 = zext i32 %4225 to i64
  %4227 = load i64, i64* %PC.i545
  %4228 = add i64 %4227, 3
  store i64 %4228, i64* %PC.i545
  %4229 = and i64 %4226, 4294967295
  store i64 %4229, i64* %RAX.i547, align 8
  store %struct.Memory* %loadMem_47ad08, %struct.Memory** %MEMORY
  %loadMem_47ad0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 33
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %4232 to i64*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 7
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %RDX.i543 = bitcast %union.anon* %4235 to i64*
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 15
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %4238 to i64*
  %4239 = load i64, i64* %RBP.i544
  %4240 = sub i64 %4239, 48
  %4241 = load i64, i64* %RDX.i543
  %4242 = load i64, i64* %PC.i542
  %4243 = add i64 %4242, 4
  store i64 %4243, i64* %PC.i542
  %4244 = inttoptr i64 %4240 to i64*
  store i64 %4241, i64* %4244
  store %struct.Memory* %loadMem_47ad0b, %struct.Memory** %MEMORY
  %loadMem_47ad0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4246 = getelementptr inbounds %struct.GPR, %struct.GPR* %4245, i32 0, i32 33
  %4247 = getelementptr inbounds %struct.Reg, %struct.Reg* %4246, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %4247 to i64*
  %4248 = load i64, i64* %PC.i541
  %4249 = add i64 %4248, 1
  store i64 %4249, i64* %PC.i541
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4252 = bitcast %union.anon* %4251 to i32*
  %4253 = load i32, i32* %4252, align 8
  %4254 = sext i32 %4253 to i64
  %4255 = lshr i64 %4254, 32
  store i64 %4255, i64* %4250, align 8
  store %struct.Memory* %loadMem_47ad0f, %struct.Memory** %MEMORY
  %loadMem_47ad10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 33
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %4258 to i64*
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 19
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %R9D.i537 = bitcast %union.anon* %4261 to i32*
  %4262 = load i32, i32* %R9D.i537
  %4263 = zext i32 %4262 to i64
  %4264 = load i64, i64* %PC.i536
  %4265 = add i64 %4264, 3
  store i64 %4265, i64* %PC.i536
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4267 = bitcast %union.anon* %4266 to i32*
  %4268 = load i32, i32* %4267, align 8
  %4269 = zext i32 %4268 to i64
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4271 = bitcast %union.anon* %4270 to i32*
  %4272 = load i32, i32* %4271, align 8
  %4273 = zext i32 %4272 to i64
  %4274 = shl i64 %4263, 32
  %4275 = ashr exact i64 %4274, 32
  %4276 = shl i64 %4273, 32
  %4277 = or i64 %4276, %4269
  %4278 = sdiv i64 %4277, %4275
  %4279 = shl i64 %4278, 32
  %4280 = ashr exact i64 %4279, 32
  %4281 = icmp eq i64 %4278, %4280
  br i1 %4281, label %4286, label %4282

; <label>:4282:                                   ; preds = %block_.L_47acad
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4284 = load i64, i64* %4283, align 8
  %4285 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4284, %struct.Memory* %loadMem_47ad10)
  br label %routine_idivl__r9d.exit538

; <label>:4286:                                   ; preds = %block_.L_47acad
  %4287 = srem i64 %4277, %4275
  %4288 = getelementptr inbounds %union.anon, %union.anon* %4266, i64 0, i32 0
  %4289 = and i64 %4278, 4294967295
  store i64 %4289, i64* %4288, align 8
  %4290 = getelementptr inbounds %union.anon, %union.anon* %4270, i64 0, i32 0
  %4291 = and i64 %4287, 4294967295
  store i64 %4291, i64* %4290, align 8
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4292, align 1
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4293, align 1
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4294, align 1
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4295, align 1
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4296, align 1
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4297, align 1
  br label %routine_idivl__r9d.exit538

routine_idivl__r9d.exit538:                       ; preds = %4282, %4286
  %4298 = phi %struct.Memory* [ %4285, %4282 ], [ %loadMem_47ad10, %4286 ]
  store %struct.Memory* %4298, %struct.Memory** %MEMORY
  %loadMem_47ad13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 33
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %4301 to i64*
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 9
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %RSI.i534 = bitcast %union.anon* %4304 to i64*
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4306 = getelementptr inbounds %struct.GPR, %struct.GPR* %4305, i32 0, i32 15
  %4307 = getelementptr inbounds %struct.Reg, %struct.Reg* %4306, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %4307 to i64*
  %4308 = load i64, i64* %RBP.i535
  %4309 = sub i64 %4308, 12
  %4310 = load i64, i64* %PC.i533
  %4311 = add i64 %4310, 4
  store i64 %4311, i64* %PC.i533
  %4312 = inttoptr i64 %4309 to i32*
  %4313 = load i32, i32* %4312
  %4314 = sext i32 %4313 to i64
  store i64 %4314, i64* %RSI.i534, align 8
  store %struct.Memory* %loadMem_47ad13, %struct.Memory** %MEMORY
  %loadMem_47ad17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 33
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %4317 to i64*
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4319 = getelementptr inbounds %struct.GPR, %struct.GPR* %4318, i32 0, i32 9
  %4320 = getelementptr inbounds %struct.Reg, %struct.Reg* %4319, i32 0, i32 0
  %RSI.i532 = bitcast %union.anon* %4320 to i64*
  %4321 = load i64, i64* %RSI.i532
  %4322 = load i64, i64* %PC.i531
  %4323 = add i64 %4322, 4
  store i64 %4323, i64* %PC.i531
  %4324 = shl i64 %4321, 7
  %4325 = icmp slt i64 %4324, 0
  %4326 = shl i64 %4324, 1
  store i64 %4326, i64* %RSI.i532, align 8
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4328 = zext i1 %4325 to i8
  store i8 %4328, i8* %4327, align 1
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4330 = trunc i64 %4326 to i32
  store i8 1, i8* %4329, align 1
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4331, align 1
  %4332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4333 = icmp eq i64 %4326, 0
  %4334 = zext i1 %4333 to i8
  store i8 %4334, i8* %4332, align 1
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4336 = lshr i64 %4326, 63
  %4337 = trunc i64 %4336 to i8
  store i8 %4337, i8* %4335, align 1
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4338, align 1
  store %struct.Memory* %loadMem_47ad17, %struct.Memory** %MEMORY
  %loadMem_47ad1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 33
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %4341 to i64*
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 11
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %RDI.i529 = bitcast %union.anon* %4344 to i64*
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 15
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %4347 to i64*
  %4348 = load i64, i64* %RBP.i530
  %4349 = sub i64 %4348, 48
  %4350 = load i64, i64* %PC.i528
  %4351 = add i64 %4350, 4
  store i64 %4351, i64* %PC.i528
  %4352 = inttoptr i64 %4349 to i64*
  %4353 = load i64, i64* %4352
  store i64 %4353, i64* %RDI.i529, align 8
  store %struct.Memory* %loadMem_47ad1b, %struct.Memory** %MEMORY
  %loadMem_47ad1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 33
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %4356 to i64*
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 9
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %RSI.i526 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 11
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %RDI.i527 = bitcast %union.anon* %4362 to i64*
  %4363 = load i64, i64* %RDI.i527
  %4364 = load i64, i64* %RSI.i526
  %4365 = load i64, i64* %PC.i525
  %4366 = add i64 %4365, 3
  store i64 %4366, i64* %PC.i525
  %4367 = add i64 %4364, %4363
  store i64 %4367, i64* %RDI.i527, align 8
  %4368 = icmp ult i64 %4367, %4363
  %4369 = icmp ult i64 %4367, %4364
  %4370 = or i1 %4368, %4369
  %4371 = zext i1 %4370 to i8
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4371, i8* %4372, align 1
  %4373 = trunc i64 %4367 to i32
  %4374 = and i32 %4373, 255
  %4375 = call i32 @llvm.ctpop.i32(i32 %4374)
  %4376 = trunc i32 %4375 to i8
  %4377 = and i8 %4376, 1
  %4378 = xor i8 %4377, 1
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4378, i8* %4379, align 1
  %4380 = xor i64 %4364, %4363
  %4381 = xor i64 %4380, %4367
  %4382 = lshr i64 %4381, 4
  %4383 = trunc i64 %4382 to i8
  %4384 = and i8 %4383, 1
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4384, i8* %4385, align 1
  %4386 = icmp eq i64 %4367, 0
  %4387 = zext i1 %4386 to i8
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4387, i8* %4388, align 1
  %4389 = lshr i64 %4367, 63
  %4390 = trunc i64 %4389 to i8
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4390, i8* %4391, align 1
  %4392 = lshr i64 %4363, 63
  %4393 = lshr i64 %4364, 63
  %4394 = xor i64 %4389, %4392
  %4395 = xor i64 %4389, %4393
  %4396 = add i64 %4394, %4395
  %4397 = icmp eq i64 %4396, 2
  %4398 = zext i1 %4397 to i8
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4398, i8* %4399, align 1
  store %struct.Memory* %loadMem_47ad1f, %struct.Memory** %MEMORY
  %loadMem_47ad22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4401 = getelementptr inbounds %struct.GPR, %struct.GPR* %4400, i32 0, i32 33
  %4402 = getelementptr inbounds %struct.Reg, %struct.Reg* %4401, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %4402 to i64*
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 9
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %RSI.i523 = bitcast %union.anon* %4405 to i64*
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4407 = getelementptr inbounds %struct.GPR, %struct.GPR* %4406, i32 0, i32 15
  %4408 = getelementptr inbounds %struct.Reg, %struct.Reg* %4407, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %4408 to i64*
  %4409 = load i64, i64* %RBP.i524
  %4410 = sub i64 %4409, 8
  %4411 = load i64, i64* %PC.i522
  %4412 = add i64 %4411, 4
  store i64 %4412, i64* %PC.i522
  %4413 = inttoptr i64 %4410 to i32*
  %4414 = load i32, i32* %4413
  %4415 = sext i32 %4414 to i64
  store i64 %4415, i64* %RSI.i523, align 8
  store %struct.Memory* %loadMem_47ad22, %struct.Memory** %MEMORY
  %loadMem_47ad26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4417 = getelementptr inbounds %struct.GPR, %struct.GPR* %4416, i32 0, i32 33
  %4418 = getelementptr inbounds %struct.Reg, %struct.Reg* %4417, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %4418 to i64*
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4420 = getelementptr inbounds %struct.GPR, %struct.GPR* %4419, i32 0, i32 9
  %4421 = getelementptr inbounds %struct.Reg, %struct.Reg* %4420, i32 0, i32 0
  %RSI.i521 = bitcast %union.anon* %4421 to i64*
  %4422 = load i64, i64* %RSI.i521
  %4423 = load i64, i64* %PC.i520
  %4424 = add i64 %4423, 4
  store i64 %4424, i64* %PC.i520
  %4425 = shl i64 %4422, 4
  %4426 = icmp slt i64 %4425, 0
  %4427 = shl i64 %4425, 1
  store i64 %4427, i64* %RSI.i521, align 8
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4429 = zext i1 %4426 to i8
  store i8 %4429, i8* %4428, align 1
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4431 = trunc i64 %4427 to i32
  %4432 = and i32 %4431, 254
  %4433 = call i32 @llvm.ctpop.i32(i32 %4432)
  %4434 = trunc i32 %4433 to i8
  %4435 = and i8 %4434, 1
  %4436 = xor i8 %4435, 1
  store i8 %4436, i8* %4430, align 1
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4437, align 1
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4439 = icmp eq i64 %4427, 0
  %4440 = zext i1 %4439 to i8
  store i8 %4440, i8* %4438, align 1
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4442 = lshr i64 %4427, 63
  %4443 = trunc i64 %4442 to i8
  store i8 %4443, i8* %4441, align 1
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4444, align 1
  store %struct.Memory* %loadMem_47ad26, %struct.Memory** %MEMORY
  %loadMem_47ad2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 33
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %4447 to i64*
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 9
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %RSI.i518 = bitcast %union.anon* %4450 to i64*
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 11
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %RDI.i519 = bitcast %union.anon* %4453 to i64*
  %4454 = load i64, i64* %RDI.i519
  %4455 = load i64, i64* %RSI.i518
  %4456 = load i64, i64* %PC.i517
  %4457 = add i64 %4456, 3
  store i64 %4457, i64* %PC.i517
  %4458 = add i64 %4455, %4454
  store i64 %4458, i64* %RDI.i519, align 8
  %4459 = icmp ult i64 %4458, %4454
  %4460 = icmp ult i64 %4458, %4455
  %4461 = or i1 %4459, %4460
  %4462 = zext i1 %4461 to i8
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4462, i8* %4463, align 1
  %4464 = trunc i64 %4458 to i32
  %4465 = and i32 %4464, 255
  %4466 = call i32 @llvm.ctpop.i32(i32 %4465)
  %4467 = trunc i32 %4466 to i8
  %4468 = and i8 %4467, 1
  %4469 = xor i8 %4468, 1
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4469, i8* %4470, align 1
  %4471 = xor i64 %4455, %4454
  %4472 = xor i64 %4471, %4458
  %4473 = lshr i64 %4472, 4
  %4474 = trunc i64 %4473 to i8
  %4475 = and i8 %4474, 1
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4475, i8* %4476, align 1
  %4477 = icmp eq i64 %4458, 0
  %4478 = zext i1 %4477 to i8
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4478, i8* %4479, align 1
  %4480 = lshr i64 %4458, 63
  %4481 = trunc i64 %4480 to i8
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4481, i8* %4482, align 1
  %4483 = lshr i64 %4454, 63
  %4484 = lshr i64 %4455, 63
  %4485 = xor i64 %4480, %4483
  %4486 = xor i64 %4480, %4484
  %4487 = add i64 %4485, %4486
  %4488 = icmp eq i64 %4487, 2
  %4489 = zext i1 %4488 to i8
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4489, i8* %4490, align 1
  store %struct.Memory* %loadMem_47ad2a, %struct.Memory** %MEMORY
  %loadMem_47ad2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 33
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %4493 to i64*
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 9
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %RSI.i515 = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 15
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %4499 to i64*
  %4500 = load i64, i64* %RBP.i516
  %4501 = sub i64 %4500, 4
  %4502 = load i64, i64* %PC.i514
  %4503 = add i64 %4502, 4
  store i64 %4503, i64* %PC.i514
  %4504 = inttoptr i64 %4501 to i32*
  %4505 = load i32, i32* %4504
  %4506 = sext i32 %4505 to i64
  store i64 %4506, i64* %RSI.i515, align 8
  store %struct.Memory* %loadMem_47ad2d, %struct.Memory** %MEMORY
  %loadMem_47ad31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 33
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %4509 to i64*
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4511 = getelementptr inbounds %struct.GPR, %struct.GPR* %4510, i32 0, i32 1
  %4512 = getelementptr inbounds %struct.Reg, %struct.Reg* %4511, i32 0, i32 0
  %EAX.i511 = bitcast %union.anon* %4512 to i32*
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 9
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %RSI.i512 = bitcast %union.anon* %4515 to i64*
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4517 = getelementptr inbounds %struct.GPR, %struct.GPR* %4516, i32 0, i32 11
  %4518 = getelementptr inbounds %struct.Reg, %struct.Reg* %4517, i32 0, i32 0
  %RDI.i513 = bitcast %union.anon* %4518 to i64*
  %4519 = load i64, i64* %RDI.i513
  %4520 = load i64, i64* %RSI.i512
  %4521 = mul i64 %4520, 4
  %4522 = add i64 %4521, %4519
  %4523 = load i32, i32* %EAX.i511
  %4524 = zext i32 %4523 to i64
  %4525 = load i64, i64* %PC.i510
  %4526 = add i64 %4525, 3
  store i64 %4526, i64* %PC.i510
  %4527 = inttoptr i64 %4522 to i32*
  store i32 %4523, i32* %4527
  store %struct.Memory* %loadMem_47ad31, %struct.Memory** %MEMORY
  %loadMem_47ad34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4529 = getelementptr inbounds %struct.GPR, %struct.GPR* %4528, i32 0, i32 33
  %4530 = getelementptr inbounds %struct.Reg, %struct.Reg* %4529, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %4530 to i64*
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4532 = getelementptr inbounds %struct.GPR, %struct.GPR* %4531, i32 0, i32 9
  %4533 = getelementptr inbounds %struct.Reg, %struct.Reg* %4532, i32 0, i32 0
  %RSI.i508 = bitcast %union.anon* %4533 to i64*
  %4534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4535 = getelementptr inbounds %struct.GPR, %struct.GPR* %4534, i32 0, i32 15
  %4536 = getelementptr inbounds %struct.Reg, %struct.Reg* %4535, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %4536 to i64*
  %4537 = load i64, i64* %RBP.i509
  %4538 = sub i64 %4537, 12
  %4539 = load i64, i64* %PC.i507
  %4540 = add i64 %4539, 4
  store i64 %4540, i64* %PC.i507
  %4541 = inttoptr i64 %4538 to i32*
  %4542 = load i32, i32* %4541
  %4543 = sext i32 %4542 to i64
  store i64 %4543, i64* %RSI.i508, align 8
  store %struct.Memory* %loadMem_47ad34, %struct.Memory** %MEMORY
  %loadMem_47ad38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 33
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %4546 to i64*
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4548 = getelementptr inbounds %struct.GPR, %struct.GPR* %4547, i32 0, i32 9
  %4549 = getelementptr inbounds %struct.Reg, %struct.Reg* %4548, i32 0, i32 0
  %RSI.i506 = bitcast %union.anon* %4549 to i64*
  %4550 = load i64, i64* %RSI.i506
  %4551 = load i64, i64* %PC.i505
  %4552 = add i64 %4551, 4
  store i64 %4552, i64* %PC.i505
  %4553 = shl i64 %4550, 7
  %4554 = icmp slt i64 %4553, 0
  %4555 = shl i64 %4553, 1
  store i64 %4555, i64* %RSI.i506, align 8
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4557 = zext i1 %4554 to i8
  store i8 %4557, i8* %4556, align 1
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4559 = trunc i64 %4555 to i32
  store i8 1, i8* %4558, align 1
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4560, align 1
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4562 = icmp eq i64 %4555, 0
  %4563 = zext i1 %4562 to i8
  store i8 %4563, i8* %4561, align 1
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4565 = lshr i64 %4555, 63
  %4566 = trunc i64 %4565 to i8
  store i8 %4566, i8* %4564, align 1
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4567, align 1
  store %struct.Memory* %loadMem_47ad38, %struct.Memory** %MEMORY
  %loadMem_47ad3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 33
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %4570 to i64*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4572 = getelementptr inbounds %struct.GPR, %struct.GPR* %4571, i32 0, i32 5
  %4573 = getelementptr inbounds %struct.Reg, %struct.Reg* %4572, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %4573 to i64*
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4575 = getelementptr inbounds %struct.GPR, %struct.GPR* %4574, i32 0, i32 9
  %4576 = getelementptr inbounds %struct.Reg, %struct.Reg* %4575, i32 0, i32 0
  %RSI.i504 = bitcast %union.anon* %4576 to i64*
  %4577 = load i64, i64* %RCX.i503
  %4578 = load i64, i64* %RSI.i504
  %4579 = load i64, i64* %PC.i502
  %4580 = add i64 %4579, 3
  store i64 %4580, i64* %PC.i502
  %4581 = add i64 %4578, %4577
  store i64 %4581, i64* %RCX.i503, align 8
  %4582 = icmp ult i64 %4581, %4577
  %4583 = icmp ult i64 %4581, %4578
  %4584 = or i1 %4582, %4583
  %4585 = zext i1 %4584 to i8
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4585, i8* %4586, align 1
  %4587 = trunc i64 %4581 to i32
  %4588 = and i32 %4587, 255
  %4589 = call i32 @llvm.ctpop.i32(i32 %4588)
  %4590 = trunc i32 %4589 to i8
  %4591 = and i8 %4590, 1
  %4592 = xor i8 %4591, 1
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4592, i8* %4593, align 1
  %4594 = xor i64 %4578, %4577
  %4595 = xor i64 %4594, %4581
  %4596 = lshr i64 %4595, 4
  %4597 = trunc i64 %4596 to i8
  %4598 = and i8 %4597, 1
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4598, i8* %4599, align 1
  %4600 = icmp eq i64 %4581, 0
  %4601 = zext i1 %4600 to i8
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4601, i8* %4602, align 1
  %4603 = lshr i64 %4581, 63
  %4604 = trunc i64 %4603 to i8
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4604, i8* %4605, align 1
  %4606 = lshr i64 %4577, 63
  %4607 = lshr i64 %4578, 63
  %4608 = xor i64 %4603, %4606
  %4609 = xor i64 %4603, %4607
  %4610 = add i64 %4608, %4609
  %4611 = icmp eq i64 %4610, 2
  %4612 = zext i1 %4611 to i8
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4612, i8* %4613, align 1
  store %struct.Memory* %loadMem_47ad3c, %struct.Memory** %MEMORY
  %loadMem_47ad3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 33
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %4616 to i64*
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 9
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %RSI.i500 = bitcast %union.anon* %4619 to i64*
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 15
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %4622 to i64*
  %4623 = load i64, i64* %RBP.i501
  %4624 = sub i64 %4623, 8
  %4625 = load i64, i64* %PC.i499
  %4626 = add i64 %4625, 4
  store i64 %4626, i64* %PC.i499
  %4627 = inttoptr i64 %4624 to i32*
  %4628 = load i32, i32* %4627
  %4629 = sext i32 %4628 to i64
  store i64 %4629, i64* %RSI.i500, align 8
  store %struct.Memory* %loadMem_47ad3f, %struct.Memory** %MEMORY
  %loadMem_47ad43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 33
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %4632 to i64*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 9
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %RSI.i498 = bitcast %union.anon* %4635 to i64*
  %4636 = load i64, i64* %RSI.i498
  %4637 = load i64, i64* %PC.i497
  %4638 = add i64 %4637, 4
  store i64 %4638, i64* %PC.i497
  %4639 = shl i64 %4636, 4
  %4640 = icmp slt i64 %4639, 0
  %4641 = shl i64 %4639, 1
  store i64 %4641, i64* %RSI.i498, align 8
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4643 = zext i1 %4640 to i8
  store i8 %4643, i8* %4642, align 1
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4645 = trunc i64 %4641 to i32
  %4646 = and i32 %4645, 254
  %4647 = call i32 @llvm.ctpop.i32(i32 %4646)
  %4648 = trunc i32 %4647 to i8
  %4649 = and i8 %4648, 1
  %4650 = xor i8 %4649, 1
  store i8 %4650, i8* %4644, align 1
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4651, align 1
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4653 = icmp eq i64 %4641, 0
  %4654 = zext i1 %4653 to i8
  store i8 %4654, i8* %4652, align 1
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4656 = lshr i64 %4641, 63
  %4657 = trunc i64 %4656 to i8
  store i8 %4657, i8* %4655, align 1
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4658, align 1
  store %struct.Memory* %loadMem_47ad43, %struct.Memory** %MEMORY
  %loadMem_47ad47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 33
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %4661 to i64*
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 5
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %4664 to i64*
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4666 = getelementptr inbounds %struct.GPR, %struct.GPR* %4665, i32 0, i32 9
  %4667 = getelementptr inbounds %struct.Reg, %struct.Reg* %4666, i32 0, i32 0
  %RSI.i496 = bitcast %union.anon* %4667 to i64*
  %4668 = load i64, i64* %RCX.i495
  %4669 = load i64, i64* %RSI.i496
  %4670 = load i64, i64* %PC.i494
  %4671 = add i64 %4670, 3
  store i64 %4671, i64* %PC.i494
  %4672 = add i64 %4669, %4668
  store i64 %4672, i64* %RCX.i495, align 8
  %4673 = icmp ult i64 %4672, %4668
  %4674 = icmp ult i64 %4672, %4669
  %4675 = or i1 %4673, %4674
  %4676 = zext i1 %4675 to i8
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4676, i8* %4677, align 1
  %4678 = trunc i64 %4672 to i32
  %4679 = and i32 %4678, 255
  %4680 = call i32 @llvm.ctpop.i32(i32 %4679)
  %4681 = trunc i32 %4680 to i8
  %4682 = and i8 %4681, 1
  %4683 = xor i8 %4682, 1
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4683, i8* %4684, align 1
  %4685 = xor i64 %4669, %4668
  %4686 = xor i64 %4685, %4672
  %4687 = lshr i64 %4686, 4
  %4688 = trunc i64 %4687 to i8
  %4689 = and i8 %4688, 1
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4689, i8* %4690, align 1
  %4691 = icmp eq i64 %4672, 0
  %4692 = zext i1 %4691 to i8
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4692, i8* %4693, align 1
  %4694 = lshr i64 %4672, 63
  %4695 = trunc i64 %4694 to i8
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4695, i8* %4696, align 1
  %4697 = lshr i64 %4668, 63
  %4698 = lshr i64 %4669, 63
  %4699 = xor i64 %4694, %4697
  %4700 = xor i64 %4694, %4698
  %4701 = add i64 %4699, %4700
  %4702 = icmp eq i64 %4701, 2
  %4703 = zext i1 %4702 to i8
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4703, i8* %4704, align 1
  store %struct.Memory* %loadMem_47ad47, %struct.Memory** %MEMORY
  %loadMem_47ad4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4706 = getelementptr inbounds %struct.GPR, %struct.GPR* %4705, i32 0, i32 33
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %4707 to i64*
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 9
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %RSI.i492 = bitcast %union.anon* %4710 to i64*
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 15
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %4713 to i64*
  %4714 = load i64, i64* %RBP.i493
  %4715 = sub i64 %4714, 4
  %4716 = load i64, i64* %PC.i491
  %4717 = add i64 %4716, 4
  store i64 %4717, i64* %PC.i491
  %4718 = inttoptr i64 %4715 to i32*
  %4719 = load i32, i32* %4718
  %4720 = sext i32 %4719 to i64
  store i64 %4720, i64* %RSI.i492, align 8
  store %struct.Memory* %loadMem_47ad4a, %struct.Memory** %MEMORY
  %loadMem_47ad4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 33
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %4723 to i64*
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 1
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %RAX.i488 = bitcast %union.anon* %4726 to i64*
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 5
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %RCX.i489 = bitcast %union.anon* %4729 to i64*
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 9
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %RSI.i490 = bitcast %union.anon* %4732 to i64*
  %4733 = load i64, i64* %RCX.i489
  %4734 = load i64, i64* %RSI.i490
  %4735 = mul i64 %4734, 4
  %4736 = add i64 %4735, %4733
  %4737 = load i64, i64* %PC.i487
  %4738 = add i64 %4737, 3
  store i64 %4738, i64* %PC.i487
  %4739 = inttoptr i64 %4736 to i32*
  %4740 = load i32, i32* %4739
  %4741 = zext i32 %4740 to i64
  store i64 %4741, i64* %RAX.i488, align 8
  store %struct.Memory* %loadMem_47ad4e, %struct.Memory** %MEMORY
  %loadMem_47ad51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4743 = getelementptr inbounds %struct.GPR, %struct.GPR* %4742, i32 0, i32 33
  %4744 = getelementptr inbounds %struct.Reg, %struct.Reg* %4743, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %4744 to i64*
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 5
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %RCX.i485 = bitcast %union.anon* %4747 to i64*
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 15
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %4750 to i64*
  %4751 = load i64, i64* %RBP.i486
  %4752 = sub i64 %4751, 16
  %4753 = load i64, i64* %PC.i484
  %4754 = add i64 %4753, 4
  store i64 %4754, i64* %PC.i484
  %4755 = inttoptr i64 %4752 to i32*
  %4756 = load i32, i32* %4755
  %4757 = sext i32 %4756 to i64
  store i64 %4757, i64* %RCX.i485, align 8
  store %struct.Memory* %loadMem_47ad51, %struct.Memory** %MEMORY
  %loadMem_47ad55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 33
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %4760 to i64*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 17
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %R8D.i482 = bitcast %union.anon* %4763 to i32*
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 5
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %RCX.i483 = bitcast %union.anon* %4766 to i64*
  %4767 = bitcast i32* %R8D.i482 to i64*
  %4768 = load i64, i64* %RCX.i483
  %4769 = mul i64 %4768, 2
  %4770 = add i64 %4769, 4952832
  %4771 = load i64, i64* %PC.i481
  %4772 = add i64 %4771, 9
  store i64 %4772, i64* %PC.i481
  %4773 = inttoptr i64 %4770 to i16*
  %4774 = load i16, i16* %4773
  %4775 = sext i16 %4774 to i64
  %4776 = and i64 %4775, 4294967295
  store i64 %4776, i64* %4767, align 8
  store %struct.Memory* %loadMem_47ad55, %struct.Memory** %MEMORY
  %loadMem_47ad5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 33
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %4779 to i64*
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 17
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %R8D.i479 = bitcast %union.anon* %4782 to i32*
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 1
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %4785 to i64*
  %4786 = load i64, i64* %RAX.i480
  %4787 = load i32, i32* %R8D.i479
  %4788 = zext i32 %4787 to i64
  %4789 = load i64, i64* %PC.i478
  %4790 = add i64 %4789, 4
  store i64 %4790, i64* %PC.i478
  %4791 = shl i64 %4786, 32
  %4792 = ashr exact i64 %4791, 32
  %4793 = shl i64 %4788, 32
  %4794 = ashr exact i64 %4793, 32
  %4795 = mul i64 %4794, %4792
  %4796 = trunc i64 %4795 to i32
  %4797 = and i64 %4795, 4294967295
  store i64 %4797, i64* %RAX.i480, align 8
  %4798 = shl i64 %4795, 32
  %4799 = ashr exact i64 %4798, 32
  %4800 = icmp ne i64 %4799, %4795
  %4801 = zext i1 %4800 to i8
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4801, i8* %4802, align 1
  %4803 = and i32 %4796, 255
  %4804 = call i32 @llvm.ctpop.i32(i32 %4803)
  %4805 = trunc i32 %4804 to i8
  %4806 = and i8 %4805, 1
  %4807 = xor i8 %4806, 1
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4807, i8* %4808, align 1
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4809, align 1
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4810, align 1
  %4811 = lshr i32 %4796, 31
  %4812 = trunc i32 %4811 to i8
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4812, i8* %4813, align 1
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4801, i8* %4814, align 1
  store %struct.Memory* %loadMem_47ad5e, %struct.Memory** %MEMORY
  %loadMem_47ad62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 33
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %4817 to i64*
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 5
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %RCX.i476 = bitcast %union.anon* %4820 to i64*
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 15
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %4823 to i64*
  %4824 = load i64, i64* %RBP.i477
  %4825 = sub i64 %4824, 12
  %4826 = load i64, i64* %PC.i475
  %4827 = add i64 %4826, 4
  store i64 %4827, i64* %PC.i475
  %4828 = inttoptr i64 %4825 to i32*
  %4829 = load i32, i32* %4828
  %4830 = sext i32 %4829 to i64
  store i64 %4830, i64* %RCX.i476, align 8
  store %struct.Memory* %loadMem_47ad62, %struct.Memory** %MEMORY
  %loadMem_47ad66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4832 = getelementptr inbounds %struct.GPR, %struct.GPR* %4831, i32 0, i32 33
  %4833 = getelementptr inbounds %struct.Reg, %struct.Reg* %4832, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %4833 to i64*
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4835 = getelementptr inbounds %struct.GPR, %struct.GPR* %4834, i32 0, i32 5
  %4836 = getelementptr inbounds %struct.Reg, %struct.Reg* %4835, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %4836 to i64*
  %4837 = load i64, i64* %RCX.i474
  %4838 = load i64, i64* %PC.i473
  %4839 = add i64 %4838, 4
  store i64 %4839, i64* %PC.i473
  %4840 = shl i64 %4837, 7
  %4841 = icmp slt i64 %4840, 0
  %4842 = shl i64 %4840, 1
  store i64 %4842, i64* %RCX.i474, align 8
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4844 = zext i1 %4841 to i8
  store i8 %4844, i8* %4843, align 1
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4846 = trunc i64 %4842 to i32
  store i8 1, i8* %4845, align 1
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4847, align 1
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4849 = icmp eq i64 %4842, 0
  %4850 = zext i1 %4849 to i8
  store i8 %4850, i8* %4848, align 1
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4852 = lshr i64 %4842, 63
  %4853 = trunc i64 %4852 to i8
  store i8 %4853, i8* %4851, align 1
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4854, align 1
  store %struct.Memory* %loadMem_47ad66, %struct.Memory** %MEMORY
  %loadMem_47ad6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 33
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %4857 to i64*
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 9
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %RSI.i471 = bitcast %union.anon* %4860 to i64*
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 15
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %4863 to i64*
  %4864 = load i64, i64* %RBP.i472
  %4865 = sub i64 %4864, 40
  %4866 = load i64, i64* %PC.i470
  %4867 = add i64 %4866, 4
  store i64 %4867, i64* %PC.i470
  %4868 = inttoptr i64 %4865 to i64*
  %4869 = load i64, i64* %4868
  store i64 %4869, i64* %RSI.i471, align 8
  store %struct.Memory* %loadMem_47ad6a, %struct.Memory** %MEMORY
  %loadMem_47ad6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4871 = getelementptr inbounds %struct.GPR, %struct.GPR* %4870, i32 0, i32 33
  %4872 = getelementptr inbounds %struct.Reg, %struct.Reg* %4871, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4872 to i64*
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4874 = getelementptr inbounds %struct.GPR, %struct.GPR* %4873, i32 0, i32 5
  %4875 = getelementptr inbounds %struct.Reg, %struct.Reg* %4874, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %4875 to i64*
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4877 = getelementptr inbounds %struct.GPR, %struct.GPR* %4876, i32 0, i32 9
  %4878 = getelementptr inbounds %struct.Reg, %struct.Reg* %4877, i32 0, i32 0
  %RSI.i469 = bitcast %union.anon* %4878 to i64*
  %4879 = load i64, i64* %RSI.i469
  %4880 = load i64, i64* %RCX.i468
  %4881 = load i64, i64* %PC.i467
  %4882 = add i64 %4881, 3
  store i64 %4882, i64* %PC.i467
  %4883 = add i64 %4880, %4879
  store i64 %4883, i64* %RSI.i469, align 8
  %4884 = icmp ult i64 %4883, %4879
  %4885 = icmp ult i64 %4883, %4880
  %4886 = or i1 %4884, %4885
  %4887 = zext i1 %4886 to i8
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4887, i8* %4888, align 1
  %4889 = trunc i64 %4883 to i32
  %4890 = and i32 %4889, 255
  %4891 = call i32 @llvm.ctpop.i32(i32 %4890)
  %4892 = trunc i32 %4891 to i8
  %4893 = and i8 %4892, 1
  %4894 = xor i8 %4893, 1
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4894, i8* %4895, align 1
  %4896 = xor i64 %4880, %4879
  %4897 = xor i64 %4896, %4883
  %4898 = lshr i64 %4897, 4
  %4899 = trunc i64 %4898 to i8
  %4900 = and i8 %4899, 1
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4900, i8* %4901, align 1
  %4902 = icmp eq i64 %4883, 0
  %4903 = zext i1 %4902 to i8
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4903, i8* %4904, align 1
  %4905 = lshr i64 %4883, 63
  %4906 = trunc i64 %4905 to i8
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4906, i8* %4907, align 1
  %4908 = lshr i64 %4879, 63
  %4909 = lshr i64 %4880, 63
  %4910 = xor i64 %4905, %4908
  %4911 = xor i64 %4905, %4909
  %4912 = add i64 %4910, %4911
  %4913 = icmp eq i64 %4912, 2
  %4914 = zext i1 %4913 to i8
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4914, i8* %4915, align 1
  store %struct.Memory* %loadMem_47ad6e, %struct.Memory** %MEMORY
  %loadMem_47ad71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 33
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %4918 to i64*
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 5
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %RCX.i465 = bitcast %union.anon* %4921 to i64*
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 15
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %4924 to i64*
  %4925 = load i64, i64* %RBP.i466
  %4926 = sub i64 %4925, 8
  %4927 = load i64, i64* %PC.i464
  %4928 = add i64 %4927, 4
  store i64 %4928, i64* %PC.i464
  %4929 = inttoptr i64 %4926 to i32*
  %4930 = load i32, i32* %4929
  %4931 = sext i32 %4930 to i64
  store i64 %4931, i64* %RCX.i465, align 8
  store %struct.Memory* %loadMem_47ad71, %struct.Memory** %MEMORY
  %loadMem_47ad75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 33
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %4934 to i64*
  %4935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4936 = getelementptr inbounds %struct.GPR, %struct.GPR* %4935, i32 0, i32 5
  %4937 = getelementptr inbounds %struct.Reg, %struct.Reg* %4936, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %4937 to i64*
  %4938 = load i64, i64* %RCX.i463
  %4939 = load i64, i64* %PC.i462
  %4940 = add i64 %4939, 4
  store i64 %4940, i64* %PC.i462
  %4941 = shl i64 %4938, 4
  %4942 = icmp slt i64 %4941, 0
  %4943 = shl i64 %4941, 1
  store i64 %4943, i64* %RCX.i463, align 8
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4945 = zext i1 %4942 to i8
  store i8 %4945, i8* %4944, align 1
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4947 = trunc i64 %4943 to i32
  %4948 = and i32 %4947, 254
  %4949 = call i32 @llvm.ctpop.i32(i32 %4948)
  %4950 = trunc i32 %4949 to i8
  %4951 = and i8 %4950, 1
  %4952 = xor i8 %4951, 1
  store i8 %4952, i8* %4946, align 1
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4953, align 1
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4955 = icmp eq i64 %4943, 0
  %4956 = zext i1 %4955 to i8
  store i8 %4956, i8* %4954, align 1
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4958 = lshr i64 %4943, 63
  %4959 = trunc i64 %4958 to i8
  store i8 %4959, i8* %4957, align 1
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4960, align 1
  store %struct.Memory* %loadMem_47ad75, %struct.Memory** %MEMORY
  %loadMem_47ad79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4962 = getelementptr inbounds %struct.GPR, %struct.GPR* %4961, i32 0, i32 33
  %4963 = getelementptr inbounds %struct.Reg, %struct.Reg* %4962, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %4963 to i64*
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4965 = getelementptr inbounds %struct.GPR, %struct.GPR* %4964, i32 0, i32 5
  %4966 = getelementptr inbounds %struct.Reg, %struct.Reg* %4965, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %4966 to i64*
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4968 = getelementptr inbounds %struct.GPR, %struct.GPR* %4967, i32 0, i32 9
  %4969 = getelementptr inbounds %struct.Reg, %struct.Reg* %4968, i32 0, i32 0
  %RSI.i461 = bitcast %union.anon* %4969 to i64*
  %4970 = load i64, i64* %RSI.i461
  %4971 = load i64, i64* %RCX.i460
  %4972 = load i64, i64* %PC.i459
  %4973 = add i64 %4972, 3
  store i64 %4973, i64* %PC.i459
  %4974 = add i64 %4971, %4970
  store i64 %4974, i64* %RSI.i461, align 8
  %4975 = icmp ult i64 %4974, %4970
  %4976 = icmp ult i64 %4974, %4971
  %4977 = or i1 %4975, %4976
  %4978 = zext i1 %4977 to i8
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4978, i8* %4979, align 1
  %4980 = trunc i64 %4974 to i32
  %4981 = and i32 %4980, 255
  %4982 = call i32 @llvm.ctpop.i32(i32 %4981)
  %4983 = trunc i32 %4982 to i8
  %4984 = and i8 %4983, 1
  %4985 = xor i8 %4984, 1
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4985, i8* %4986, align 1
  %4987 = xor i64 %4971, %4970
  %4988 = xor i64 %4987, %4974
  %4989 = lshr i64 %4988, 4
  %4990 = trunc i64 %4989 to i8
  %4991 = and i8 %4990, 1
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4991, i8* %4992, align 1
  %4993 = icmp eq i64 %4974, 0
  %4994 = zext i1 %4993 to i8
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4994, i8* %4995, align 1
  %4996 = lshr i64 %4974, 63
  %4997 = trunc i64 %4996 to i8
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4997, i8* %4998, align 1
  %4999 = lshr i64 %4970, 63
  %5000 = lshr i64 %4971, 63
  %5001 = xor i64 %4996, %4999
  %5002 = xor i64 %4996, %5000
  %5003 = add i64 %5001, %5002
  %5004 = icmp eq i64 %5003, 2
  %5005 = zext i1 %5004 to i8
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5005, i8* %5006, align 1
  store %struct.Memory* %loadMem_47ad79, %struct.Memory** %MEMORY
  %loadMem_47ad7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 33
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %5009 to i64*
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 5
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %5012 to i64*
  %5013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5014 = getelementptr inbounds %struct.GPR, %struct.GPR* %5013, i32 0, i32 15
  %5015 = getelementptr inbounds %struct.Reg, %struct.Reg* %5014, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %5015 to i64*
  %5016 = load i64, i64* %RBP.i458
  %5017 = sub i64 %5016, 4
  %5018 = load i64, i64* %PC.i456
  %5019 = add i64 %5018, 4
  store i64 %5019, i64* %PC.i456
  %5020 = inttoptr i64 %5017 to i32*
  %5021 = load i32, i32* %5020
  %5022 = sext i32 %5021 to i64
  store i64 %5022, i64* %RCX.i457, align 8
  store %struct.Memory* %loadMem_47ad7c, %struct.Memory** %MEMORY
  %loadMem_47ad80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 33
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %5025 to i64*
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 1
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %EAX.i453 = bitcast %union.anon* %5028 to i32*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 5
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %5031 to i64*
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 9
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %RSI.i455 = bitcast %union.anon* %5034 to i64*
  %5035 = load i64, i64* %RSI.i455
  %5036 = load i64, i64* %RCX.i454
  %5037 = mul i64 %5036, 4
  %5038 = add i64 %5037, %5035
  %5039 = load i32, i32* %EAX.i453
  %5040 = zext i32 %5039 to i64
  %5041 = load i64, i64* %PC.i452
  %5042 = add i64 %5041, 3
  store i64 %5042, i64* %PC.i452
  %5043 = inttoptr i64 %5038 to i32*
  store i32 %5039, i32* %5043
  store %struct.Memory* %loadMem_47ad80, %struct.Memory** %MEMORY
  %loadMem_47ad83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5045 = getelementptr inbounds %struct.GPR, %struct.GPR* %5044, i32 0, i32 33
  %5046 = getelementptr inbounds %struct.Reg, %struct.Reg* %5045, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %5046 to i64*
  %5047 = load i64, i64* %PC.i451
  %5048 = add i64 %5047, 219
  %5049 = load i64, i64* %PC.i451
  %5050 = add i64 %5049, 5
  store i64 %5050, i64* %PC.i451
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5048, i64* %5051, align 8
  store %struct.Memory* %loadMem_47ad83, %struct.Memory** %MEMORY
  br label %block_.L_47ae5e

block_.L_47ad88:                                  ; preds = %block_47ac9c
  %loadMem_47ad88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 33
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %5054 to i64*
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 1
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %5057 to i64*
  %5058 = load i64, i64* %PC.i449
  %5059 = add i64 %5058, 10
  store i64 %5059, i64* %PC.i449
  store i64 ptrtoint (%G__0x6cfc70_type* @G__0x6cfc70 to i64), i64* %RAX.i450, align 8
  store %struct.Memory* %loadMem_47ad88, %struct.Memory** %MEMORY
  %loadMem_47ad92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5061 = getelementptr inbounds %struct.GPR, %struct.GPR* %5060, i32 0, i32 33
  %5062 = getelementptr inbounds %struct.Reg, %struct.Reg* %5061, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %5062 to i64*
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5064 = getelementptr inbounds %struct.GPR, %struct.GPR* %5063, i32 0, i32 5
  %5065 = getelementptr inbounds %struct.Reg, %struct.Reg* %5064, i32 0, i32 0
  %RCX.i448 = bitcast %union.anon* %5065 to i64*
  %5066 = load i64, i64* %PC.i447
  %5067 = add i64 %5066, 10
  store i64 %5067, i64* %PC.i447
  store i64 ptrtoint (%G__0x4b9d50_type* @G__0x4b9d50 to i64), i64* %RCX.i448, align 8
  store %struct.Memory* %loadMem_47ad92, %struct.Memory** %MEMORY
  %loadMem_47ad9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5069 = getelementptr inbounds %struct.GPR, %struct.GPR* %5068, i32 0, i32 33
  %5070 = getelementptr inbounds %struct.Reg, %struct.Reg* %5069, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %5070 to i64*
  %5071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5072 = getelementptr inbounds %struct.GPR, %struct.GPR* %5071, i32 0, i32 7
  %5073 = getelementptr inbounds %struct.Reg, %struct.Reg* %5072, i32 0, i32 0
  %RDX.i446 = bitcast %union.anon* %5073 to i64*
  %5074 = load i64, i64* %PC.i445
  %5075 = add i64 %5074, 10
  store i64 %5075, i64* %PC.i445
  store i64 ptrtoint (%G__0x6d0bc0_type* @G__0x6d0bc0 to i64), i64* %RDX.i446, align 8
  store %struct.Memory* %loadMem_47ad9c, %struct.Memory** %MEMORY
  %loadMem_47ada6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 33
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %5078 to i64*
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 9
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %RSI.i444 = bitcast %union.anon* %5081 to i64*
  %5082 = load i64, i64* %PC.i443
  %5083 = add i64 %5082, 10
  store i64 %5083, i64* %PC.i443
  store i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64* %RSI.i444, align 8
  store %struct.Memory* %loadMem_47ada6, %struct.Memory** %MEMORY
  %loadMem_47adb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %5086 to i64*
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 11
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %RDI.i441 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 15
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %5092 to i64*
  %5093 = load i64, i64* %RBP.i442
  %5094 = sub i64 %5093, 12
  %5095 = load i64, i64* %PC.i440
  %5096 = add i64 %5095, 4
  store i64 %5096, i64* %PC.i440
  %5097 = inttoptr i64 %5094 to i32*
  %5098 = load i32, i32* %5097
  %5099 = sext i32 %5098 to i64
  store i64 %5099, i64* %RDI.i441, align 8
  store %struct.Memory* %loadMem_47adb0, %struct.Memory** %MEMORY
  %loadMem_47adb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5101 = getelementptr inbounds %struct.GPR, %struct.GPR* %5100, i32 0, i32 33
  %5102 = getelementptr inbounds %struct.Reg, %struct.Reg* %5101, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %5102 to i64*
  %5103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5104 = getelementptr inbounds %struct.GPR, %struct.GPR* %5103, i32 0, i32 11
  %5105 = getelementptr inbounds %struct.Reg, %struct.Reg* %5104, i32 0, i32 0
  %RDI.i439 = bitcast %union.anon* %5105 to i64*
  %5106 = load i64, i64* %RDI.i439
  %5107 = load i64, i64* %PC.i438
  %5108 = add i64 %5107, 4
  store i64 %5108, i64* %PC.i438
  %5109 = shl i64 %5106, 7
  %5110 = icmp slt i64 %5109, 0
  %5111 = shl i64 %5109, 1
  store i64 %5111, i64* %RDI.i439, align 8
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5113 = zext i1 %5110 to i8
  store i8 %5113, i8* %5112, align 1
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5115 = trunc i64 %5111 to i32
  store i8 1, i8* %5114, align 1
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5116, align 1
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5118 = icmp eq i64 %5111, 0
  %5119 = zext i1 %5118 to i8
  store i8 %5119, i8* %5117, align 1
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5121 = lshr i64 %5111, 63
  %5122 = trunc i64 %5121 to i8
  store i8 %5122, i8* %5120, align 1
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5123, align 1
  store %struct.Memory* %loadMem_47adb4, %struct.Memory** %MEMORY
  %loadMem_47adb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5125 = getelementptr inbounds %struct.GPR, %struct.GPR* %5124, i32 0, i32 33
  %5126 = getelementptr inbounds %struct.Reg, %struct.Reg* %5125, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %5126 to i64*
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5128 = getelementptr inbounds %struct.GPR, %struct.GPR* %5127, i32 0, i32 9
  %5129 = getelementptr inbounds %struct.Reg, %struct.Reg* %5128, i32 0, i32 0
  %RSI.i436 = bitcast %union.anon* %5129 to i64*
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5131 = getelementptr inbounds %struct.GPR, %struct.GPR* %5130, i32 0, i32 11
  %5132 = getelementptr inbounds %struct.Reg, %struct.Reg* %5131, i32 0, i32 0
  %RDI.i437 = bitcast %union.anon* %5132 to i64*
  %5133 = load i64, i64* %RSI.i436
  %5134 = load i64, i64* %RDI.i437
  %5135 = load i64, i64* %PC.i435
  %5136 = add i64 %5135, 3
  store i64 %5136, i64* %PC.i435
  %5137 = add i64 %5134, %5133
  store i64 %5137, i64* %RSI.i436, align 8
  %5138 = icmp ult i64 %5137, %5133
  %5139 = icmp ult i64 %5137, %5134
  %5140 = or i1 %5138, %5139
  %5141 = zext i1 %5140 to i8
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5141, i8* %5142, align 1
  %5143 = trunc i64 %5137 to i32
  %5144 = and i32 %5143, 255
  %5145 = call i32 @llvm.ctpop.i32(i32 %5144)
  %5146 = trunc i32 %5145 to i8
  %5147 = and i8 %5146, 1
  %5148 = xor i8 %5147, 1
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5148, i8* %5149, align 1
  %5150 = xor i64 %5134, %5133
  %5151 = xor i64 %5150, %5137
  %5152 = lshr i64 %5151, 4
  %5153 = trunc i64 %5152 to i8
  %5154 = and i8 %5153, 1
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5154, i8* %5155, align 1
  %5156 = icmp eq i64 %5137, 0
  %5157 = zext i1 %5156 to i8
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5157, i8* %5158, align 1
  %5159 = lshr i64 %5137, 63
  %5160 = trunc i64 %5159 to i8
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5160, i8* %5161, align 1
  %5162 = lshr i64 %5133, 63
  %5163 = lshr i64 %5134, 63
  %5164 = xor i64 %5159, %5162
  %5165 = xor i64 %5159, %5163
  %5166 = add i64 %5164, %5165
  %5167 = icmp eq i64 %5166, 2
  %5168 = zext i1 %5167 to i8
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5168, i8* %5169, align 1
  store %struct.Memory* %loadMem_47adb8, %struct.Memory** %MEMORY
  %loadMem_47adbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 33
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %5172 to i64*
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 11
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %RDI.i433 = bitcast %union.anon* %5175 to i64*
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 15
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %5178 to i64*
  %5179 = load i64, i64* %RBP.i434
  %5180 = sub i64 %5179, 8
  %5181 = load i64, i64* %PC.i432
  %5182 = add i64 %5181, 4
  store i64 %5182, i64* %PC.i432
  %5183 = inttoptr i64 %5180 to i32*
  %5184 = load i32, i32* %5183
  %5185 = sext i32 %5184 to i64
  store i64 %5185, i64* %RDI.i433, align 8
  store %struct.Memory* %loadMem_47adbb, %struct.Memory** %MEMORY
  %loadMem_47adbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5187 = getelementptr inbounds %struct.GPR, %struct.GPR* %5186, i32 0, i32 33
  %5188 = getelementptr inbounds %struct.Reg, %struct.Reg* %5187, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %5188 to i64*
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 11
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %RDI.i431 = bitcast %union.anon* %5191 to i64*
  %5192 = load i64, i64* %RDI.i431
  %5193 = load i64, i64* %PC.i430
  %5194 = add i64 %5193, 4
  store i64 %5194, i64* %PC.i430
  %5195 = shl i64 %5192, 4
  %5196 = icmp slt i64 %5195, 0
  %5197 = shl i64 %5195, 1
  store i64 %5197, i64* %RDI.i431, align 8
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5199 = zext i1 %5196 to i8
  store i8 %5199, i8* %5198, align 1
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5201 = trunc i64 %5197 to i32
  %5202 = and i32 %5201, 254
  %5203 = call i32 @llvm.ctpop.i32(i32 %5202)
  %5204 = trunc i32 %5203 to i8
  %5205 = and i8 %5204, 1
  %5206 = xor i8 %5205, 1
  store i8 %5206, i8* %5200, align 1
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5207, align 1
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5209 = icmp eq i64 %5197, 0
  %5210 = zext i1 %5209 to i8
  store i8 %5210, i8* %5208, align 1
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5212 = lshr i64 %5197, 63
  %5213 = trunc i64 %5212 to i8
  store i8 %5213, i8* %5211, align 1
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5214, align 1
  store %struct.Memory* %loadMem_47adbf, %struct.Memory** %MEMORY
  %loadMem_47adc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 33
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %5217 to i64*
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5219 = getelementptr inbounds %struct.GPR, %struct.GPR* %5218, i32 0, i32 9
  %5220 = getelementptr inbounds %struct.Reg, %struct.Reg* %5219, i32 0, i32 0
  %RSI.i428 = bitcast %union.anon* %5220 to i64*
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5222 = getelementptr inbounds %struct.GPR, %struct.GPR* %5221, i32 0, i32 11
  %5223 = getelementptr inbounds %struct.Reg, %struct.Reg* %5222, i32 0, i32 0
  %RDI.i429 = bitcast %union.anon* %5223 to i64*
  %5224 = load i64, i64* %RSI.i428
  %5225 = load i64, i64* %RDI.i429
  %5226 = load i64, i64* %PC.i427
  %5227 = add i64 %5226, 3
  store i64 %5227, i64* %PC.i427
  %5228 = add i64 %5225, %5224
  store i64 %5228, i64* %RSI.i428, align 8
  %5229 = icmp ult i64 %5228, %5224
  %5230 = icmp ult i64 %5228, %5225
  %5231 = or i1 %5229, %5230
  %5232 = zext i1 %5231 to i8
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5232, i8* %5233, align 1
  %5234 = trunc i64 %5228 to i32
  %5235 = and i32 %5234, 255
  %5236 = call i32 @llvm.ctpop.i32(i32 %5235)
  %5237 = trunc i32 %5236 to i8
  %5238 = and i8 %5237, 1
  %5239 = xor i8 %5238, 1
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5239, i8* %5240, align 1
  %5241 = xor i64 %5225, %5224
  %5242 = xor i64 %5241, %5228
  %5243 = lshr i64 %5242, 4
  %5244 = trunc i64 %5243 to i8
  %5245 = and i8 %5244, 1
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5245, i8* %5246, align 1
  %5247 = icmp eq i64 %5228, 0
  %5248 = zext i1 %5247 to i8
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5248, i8* %5249, align 1
  %5250 = lshr i64 %5228, 63
  %5251 = trunc i64 %5250 to i8
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5251, i8* %5252, align 1
  %5253 = lshr i64 %5224, 63
  %5254 = lshr i64 %5225, 63
  %5255 = xor i64 %5250, %5253
  %5256 = xor i64 %5250, %5254
  %5257 = add i64 %5255, %5256
  %5258 = icmp eq i64 %5257, 2
  %5259 = zext i1 %5258 to i8
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5259, i8* %5260, align 1
  store %struct.Memory* %loadMem_47adc3, %struct.Memory** %MEMORY
  %loadMem_47adc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 33
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %5263 to i64*
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5265 = getelementptr inbounds %struct.GPR, %struct.GPR* %5264, i32 0, i32 11
  %5266 = getelementptr inbounds %struct.Reg, %struct.Reg* %5265, i32 0, i32 0
  %RDI.i425 = bitcast %union.anon* %5266 to i64*
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 15
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %5269 to i64*
  %5270 = load i64, i64* %RBP.i426
  %5271 = sub i64 %5270, 4
  %5272 = load i64, i64* %PC.i424
  %5273 = add i64 %5272, 4
  store i64 %5273, i64* %PC.i424
  %5274 = inttoptr i64 %5271 to i32*
  %5275 = load i32, i32* %5274
  %5276 = sext i32 %5275 to i64
  store i64 %5276, i64* %RDI.i425, align 8
  store %struct.Memory* %loadMem_47adc6, %struct.Memory** %MEMORY
  %loadMem_47adca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5278 = getelementptr inbounds %struct.GPR, %struct.GPR* %5277, i32 0, i32 33
  %5279 = getelementptr inbounds %struct.Reg, %struct.Reg* %5278, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %5279 to i64*
  %5280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5281 = getelementptr inbounds %struct.GPR, %struct.GPR* %5280, i32 0, i32 17
  %5282 = getelementptr inbounds %struct.Reg, %struct.Reg* %5281, i32 0, i32 0
  %R8D.i421 = bitcast %union.anon* %5282 to i32*
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 9
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %RSI.i422 = bitcast %union.anon* %5285 to i64*
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 11
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %RDI.i423 = bitcast %union.anon* %5288 to i64*
  %5289 = bitcast i32* %R8D.i421 to i64*
  %5290 = load i64, i64* %RSI.i422
  %5291 = load i64, i64* %RDI.i423
  %5292 = mul i64 %5291, 4
  %5293 = add i64 %5292, %5290
  %5294 = load i64, i64* %PC.i420
  %5295 = add i64 %5294, 4
  store i64 %5295, i64* %PC.i420
  %5296 = inttoptr i64 %5293 to i32*
  %5297 = load i32, i32* %5296
  %5298 = zext i32 %5297 to i64
  store i64 %5298, i64* %5289, align 8
  store %struct.Memory* %loadMem_47adca, %struct.Memory** %MEMORY
  %loadMem_47adce = load %struct.Memory*, %struct.Memory** %MEMORY
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 33
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %5301 to i64*
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 17
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %R8D.i419 = bitcast %union.anon* %5304 to i32*
  %5305 = bitcast i32* %R8D.i419 to i64*
  %5306 = load i32, i32* %R8D.i419
  %5307 = zext i32 %5306 to i64
  %5308 = load i64, i64* %PC.i418
  %5309 = add i64 %5308, 4
  store i64 %5309, i64* %PC.i418
  %5310 = and i64 %5307, 4294967295
  %5311 = shl i64 %5310, 3
  %5312 = trunc i64 %5311 to i32
  %5313 = icmp slt i32 %5312, 0
  %5314 = shl i32 %5312, 1
  %5315 = zext i32 %5314 to i64
  store i64 %5315, i64* %5305, align 8
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5317 = zext i1 %5313 to i8
  store i8 %5317, i8* %5316, align 1
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5319 = and i32 %5314, 254
  %5320 = call i32 @llvm.ctpop.i32(i32 %5319)
  %5321 = trunc i32 %5320 to i8
  %5322 = and i8 %5321, 1
  %5323 = xor i8 %5322, 1
  store i8 %5323, i8* %5318, align 1
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5324, align 1
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5326 = icmp eq i32 %5314, 0
  %5327 = zext i1 %5326 to i8
  store i8 %5327, i8* %5325, align 1
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5329 = lshr i32 %5314, 31
  %5330 = trunc i32 %5329 to i8
  store i8 %5330, i8* %5328, align 1
  %5331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5331, align 1
  store %struct.Memory* %loadMem_47adce, %struct.Memory** %MEMORY
  %loadMem_47add2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5333 = getelementptr inbounds %struct.GPR, %struct.GPR* %5332, i32 0, i32 33
  %5334 = getelementptr inbounds %struct.Reg, %struct.Reg* %5333, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %5334 to i64*
  %5335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5336 = getelementptr inbounds %struct.GPR, %struct.GPR* %5335, i32 0, i32 9
  %5337 = getelementptr inbounds %struct.Reg, %struct.Reg* %5336, i32 0, i32 0
  %RSI.i416 = bitcast %union.anon* %5337 to i64*
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 15
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %5340 to i64*
  %5341 = load i64, i64* %RBP.i417
  %5342 = sub i64 %5341, 16
  %5343 = load i64, i64* %PC.i415
  %5344 = add i64 %5343, 4
  store i64 %5344, i64* %PC.i415
  %5345 = inttoptr i64 %5342 to i32*
  %5346 = load i32, i32* %5345
  %5347 = sext i32 %5346 to i64
  store i64 %5347, i64* %RSI.i416, align 8
  store %struct.Memory* %loadMem_47add2, %struct.Memory** %MEMORY
  %loadMem_47add6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 33
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %5350 to i64*
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5352 = getelementptr inbounds %struct.GPR, %struct.GPR* %5351, i32 0, i32 19
  %5353 = getelementptr inbounds %struct.Reg, %struct.Reg* %5352, i32 0, i32 0
  %R9D.i413 = bitcast %union.anon* %5353 to i32*
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5355 = getelementptr inbounds %struct.GPR, %struct.GPR* %5354, i32 0, i32 9
  %5356 = getelementptr inbounds %struct.Reg, %struct.Reg* %5355, i32 0, i32 0
  %RSI.i414 = bitcast %union.anon* %5356 to i64*
  %5357 = bitcast i32* %R9D.i413 to i64*
  %5358 = load i64, i64* %RSI.i414
  %5359 = mul i64 %5358, 2
  %5360 = add i64 %5359, 7302688
  %5361 = load i64, i64* %PC.i412
  %5362 = add i64 %5361, 9
  store i64 %5362, i64* %PC.i412
  %5363 = inttoptr i64 %5360 to i16*
  %5364 = load i16, i16* %5363
  %5365 = sext i16 %5364 to i64
  %5366 = and i64 %5365, 4294967295
  store i64 %5366, i64* %5357, align 8
  store %struct.Memory* %loadMem_47add6, %struct.Memory** %MEMORY
  %loadMem_47addf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5368 = getelementptr inbounds %struct.GPR, %struct.GPR* %5367, i32 0, i32 33
  %5369 = getelementptr inbounds %struct.Reg, %struct.Reg* %5368, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %5369 to i64*
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 1
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %5372 to i64*
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5374 = getelementptr inbounds %struct.GPR, %struct.GPR* %5373, i32 0, i32 15
  %5375 = getelementptr inbounds %struct.Reg, %struct.Reg* %5374, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %5375 to i64*
  %5376 = load i64, i64* %RBP.i411
  %5377 = sub i64 %5376, 56
  %5378 = load i64, i64* %RAX.i410
  %5379 = load i64, i64* %PC.i409
  %5380 = add i64 %5379, 4
  store i64 %5380, i64* %PC.i409
  %5381 = inttoptr i64 %5377 to i64*
  store i64 %5378, i64* %5381
  store %struct.Memory* %loadMem_47addf, %struct.Memory** %MEMORY
  %loadMem_47ade3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5383 = getelementptr inbounds %struct.GPR, %struct.GPR* %5382, i32 0, i32 33
  %5384 = getelementptr inbounds %struct.Reg, %struct.Reg* %5383, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %5384 to i64*
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 17
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %R8D.i407 = bitcast %union.anon* %5387 to i32*
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 1
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %RAX.i408 = bitcast %union.anon* %5390 to i64*
  %5391 = load i32, i32* %R8D.i407
  %5392 = zext i32 %5391 to i64
  %5393 = load i64, i64* %PC.i406
  %5394 = add i64 %5393, 3
  store i64 %5394, i64* %PC.i406
  %5395 = and i64 %5392, 4294967295
  store i64 %5395, i64* %RAX.i408, align 8
  store %struct.Memory* %loadMem_47ade3, %struct.Memory** %MEMORY
  %loadMem_47ade6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 33
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %5398 to i64*
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5400 = getelementptr inbounds %struct.GPR, %struct.GPR* %5399, i32 0, i32 7
  %5401 = getelementptr inbounds %struct.Reg, %struct.Reg* %5400, i32 0, i32 0
  %RDX.i404 = bitcast %union.anon* %5401 to i64*
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5403 = getelementptr inbounds %struct.GPR, %struct.GPR* %5402, i32 0, i32 15
  %5404 = getelementptr inbounds %struct.Reg, %struct.Reg* %5403, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %5404 to i64*
  %5405 = load i64, i64* %RBP.i405
  %5406 = sub i64 %5405, 64
  %5407 = load i64, i64* %RDX.i404
  %5408 = load i64, i64* %PC.i403
  %5409 = add i64 %5408, 4
  store i64 %5409, i64* %PC.i403
  %5410 = inttoptr i64 %5406 to i64*
  store i64 %5407, i64* %5410
  store %struct.Memory* %loadMem_47ade6, %struct.Memory** %MEMORY
  %loadMem_47adea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 33
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %5413 to i64*
  %5414 = load i64, i64* %PC.i402
  %5415 = add i64 %5414, 1
  store i64 %5415, i64* %PC.i402
  %5416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5418 = bitcast %union.anon* %5417 to i32*
  %5419 = load i32, i32* %5418, align 8
  %5420 = sext i32 %5419 to i64
  %5421 = lshr i64 %5420, 32
  store i64 %5421, i64* %5416, align 8
  store %struct.Memory* %loadMem_47adea, %struct.Memory** %MEMORY
  %loadMem_47adeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5423 = getelementptr inbounds %struct.GPR, %struct.GPR* %5422, i32 0, i32 33
  %5424 = getelementptr inbounds %struct.Reg, %struct.Reg* %5423, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %5424 to i64*
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5426 = getelementptr inbounds %struct.GPR, %struct.GPR* %5425, i32 0, i32 19
  %5427 = getelementptr inbounds %struct.Reg, %struct.Reg* %5426, i32 0, i32 0
  %R9D.i398 = bitcast %union.anon* %5427 to i32*
  %5428 = load i32, i32* %R9D.i398
  %5429 = zext i32 %5428 to i64
  %5430 = load i64, i64* %PC.i397
  %5431 = add i64 %5430, 3
  store i64 %5431, i64* %PC.i397
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5433 = bitcast %union.anon* %5432 to i32*
  %5434 = load i32, i32* %5433, align 8
  %5435 = zext i32 %5434 to i64
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5437 = bitcast %union.anon* %5436 to i32*
  %5438 = load i32, i32* %5437, align 8
  %5439 = zext i32 %5438 to i64
  %5440 = shl i64 %5429, 32
  %5441 = ashr exact i64 %5440, 32
  %5442 = shl i64 %5439, 32
  %5443 = or i64 %5442, %5435
  %5444 = sdiv i64 %5443, %5441
  %5445 = shl i64 %5444, 32
  %5446 = ashr exact i64 %5445, 32
  %5447 = icmp eq i64 %5444, %5446
  br i1 %5447, label %5452, label %5448

; <label>:5448:                                   ; preds = %block_.L_47ad88
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5450 = load i64, i64* %5449, align 8
  %5451 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5450, %struct.Memory* %loadMem_47adeb)
  br label %routine_idivl__r9d.exit399

; <label>:5452:                                   ; preds = %block_.L_47ad88
  %5453 = srem i64 %5443, %5441
  %5454 = getelementptr inbounds %union.anon, %union.anon* %5432, i64 0, i32 0
  %5455 = and i64 %5444, 4294967295
  store i64 %5455, i64* %5454, align 8
  %5456 = getelementptr inbounds %union.anon, %union.anon* %5436, i64 0, i32 0
  %5457 = and i64 %5453, 4294967295
  store i64 %5457, i64* %5456, align 8
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5458, align 1
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5459, align 1
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5460, align 1
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5461, align 1
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5462, align 1
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5463, align 1
  br label %routine_idivl__r9d.exit399

routine_idivl__r9d.exit399:                       ; preds = %5448, %5452
  %5464 = phi %struct.Memory* [ %5451, %5448 ], [ %loadMem_47adeb, %5452 ]
  store %struct.Memory* %5464, %struct.Memory** %MEMORY
  %loadMem_47adee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5466 = getelementptr inbounds %struct.GPR, %struct.GPR* %5465, i32 0, i32 33
  %5467 = getelementptr inbounds %struct.Reg, %struct.Reg* %5466, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %5467 to i64*
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5469 = getelementptr inbounds %struct.GPR, %struct.GPR* %5468, i32 0, i32 9
  %5470 = getelementptr inbounds %struct.Reg, %struct.Reg* %5469, i32 0, i32 0
  %RSI.i395 = bitcast %union.anon* %5470 to i64*
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5472 = getelementptr inbounds %struct.GPR, %struct.GPR* %5471, i32 0, i32 15
  %5473 = getelementptr inbounds %struct.Reg, %struct.Reg* %5472, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %5473 to i64*
  %5474 = load i64, i64* %RBP.i396
  %5475 = sub i64 %5474, 12
  %5476 = load i64, i64* %PC.i394
  %5477 = add i64 %5476, 4
  store i64 %5477, i64* %PC.i394
  %5478 = inttoptr i64 %5475 to i32*
  %5479 = load i32, i32* %5478
  %5480 = sext i32 %5479 to i64
  store i64 %5480, i64* %RSI.i395, align 8
  store %struct.Memory* %loadMem_47adee, %struct.Memory** %MEMORY
  %loadMem_47adf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 33
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %5483 to i64*
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 9
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %RSI.i393 = bitcast %union.anon* %5486 to i64*
  %5487 = load i64, i64* %RSI.i393
  %5488 = load i64, i64* %PC.i392
  %5489 = add i64 %5488, 4
  store i64 %5489, i64* %PC.i392
  %5490 = shl i64 %5487, 7
  %5491 = icmp slt i64 %5490, 0
  %5492 = shl i64 %5490, 1
  store i64 %5492, i64* %RSI.i393, align 8
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5494 = zext i1 %5491 to i8
  store i8 %5494, i8* %5493, align 1
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5496 = trunc i64 %5492 to i32
  store i8 1, i8* %5495, align 1
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5497, align 1
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5499 = icmp eq i64 %5492, 0
  %5500 = zext i1 %5499 to i8
  store i8 %5500, i8* %5498, align 1
  %5501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5502 = lshr i64 %5492, 63
  %5503 = trunc i64 %5502 to i8
  store i8 %5503, i8* %5501, align 1
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5504, align 1
  store %struct.Memory* %loadMem_47adf2, %struct.Memory** %MEMORY
  %loadMem_47adf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5506 = getelementptr inbounds %struct.GPR, %struct.GPR* %5505, i32 0, i32 33
  %5507 = getelementptr inbounds %struct.Reg, %struct.Reg* %5506, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %5507 to i64*
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5509 = getelementptr inbounds %struct.GPR, %struct.GPR* %5508, i32 0, i32 11
  %5510 = getelementptr inbounds %struct.Reg, %struct.Reg* %5509, i32 0, i32 0
  %RDI.i390 = bitcast %union.anon* %5510 to i64*
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5512 = getelementptr inbounds %struct.GPR, %struct.GPR* %5511, i32 0, i32 15
  %5513 = getelementptr inbounds %struct.Reg, %struct.Reg* %5512, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %5513 to i64*
  %5514 = load i64, i64* %RBP.i391
  %5515 = sub i64 %5514, 64
  %5516 = load i64, i64* %PC.i389
  %5517 = add i64 %5516, 4
  store i64 %5517, i64* %PC.i389
  %5518 = inttoptr i64 %5515 to i64*
  %5519 = load i64, i64* %5518
  store i64 %5519, i64* %RDI.i390, align 8
  store %struct.Memory* %loadMem_47adf6, %struct.Memory** %MEMORY
  %loadMem_47adfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 33
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %5522 to i64*
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5524 = getelementptr inbounds %struct.GPR, %struct.GPR* %5523, i32 0, i32 9
  %5525 = getelementptr inbounds %struct.Reg, %struct.Reg* %5524, i32 0, i32 0
  %RSI.i387 = bitcast %union.anon* %5525 to i64*
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5527 = getelementptr inbounds %struct.GPR, %struct.GPR* %5526, i32 0, i32 11
  %5528 = getelementptr inbounds %struct.Reg, %struct.Reg* %5527, i32 0, i32 0
  %RDI.i388 = bitcast %union.anon* %5528 to i64*
  %5529 = load i64, i64* %RDI.i388
  %5530 = load i64, i64* %RSI.i387
  %5531 = load i64, i64* %PC.i386
  %5532 = add i64 %5531, 3
  store i64 %5532, i64* %PC.i386
  %5533 = add i64 %5530, %5529
  store i64 %5533, i64* %RDI.i388, align 8
  %5534 = icmp ult i64 %5533, %5529
  %5535 = icmp ult i64 %5533, %5530
  %5536 = or i1 %5534, %5535
  %5537 = zext i1 %5536 to i8
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5537, i8* %5538, align 1
  %5539 = trunc i64 %5533 to i32
  %5540 = and i32 %5539, 255
  %5541 = call i32 @llvm.ctpop.i32(i32 %5540)
  %5542 = trunc i32 %5541 to i8
  %5543 = and i8 %5542, 1
  %5544 = xor i8 %5543, 1
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5544, i8* %5545, align 1
  %5546 = xor i64 %5530, %5529
  %5547 = xor i64 %5546, %5533
  %5548 = lshr i64 %5547, 4
  %5549 = trunc i64 %5548 to i8
  %5550 = and i8 %5549, 1
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5550, i8* %5551, align 1
  %5552 = icmp eq i64 %5533, 0
  %5553 = zext i1 %5552 to i8
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5553, i8* %5554, align 1
  %5555 = lshr i64 %5533, 63
  %5556 = trunc i64 %5555 to i8
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5556, i8* %5557, align 1
  %5558 = lshr i64 %5529, 63
  %5559 = lshr i64 %5530, 63
  %5560 = xor i64 %5555, %5558
  %5561 = xor i64 %5555, %5559
  %5562 = add i64 %5560, %5561
  %5563 = icmp eq i64 %5562, 2
  %5564 = zext i1 %5563 to i8
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5564, i8* %5565, align 1
  store %struct.Memory* %loadMem_47adfa, %struct.Memory** %MEMORY
  %loadMem_47adfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 33
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %5568 to i64*
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5570 = getelementptr inbounds %struct.GPR, %struct.GPR* %5569, i32 0, i32 9
  %5571 = getelementptr inbounds %struct.Reg, %struct.Reg* %5570, i32 0, i32 0
  %RSI.i384 = bitcast %union.anon* %5571 to i64*
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5573 = getelementptr inbounds %struct.GPR, %struct.GPR* %5572, i32 0, i32 15
  %5574 = getelementptr inbounds %struct.Reg, %struct.Reg* %5573, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %5574 to i64*
  %5575 = load i64, i64* %RBP.i385
  %5576 = sub i64 %5575, 8
  %5577 = load i64, i64* %PC.i383
  %5578 = add i64 %5577, 4
  store i64 %5578, i64* %PC.i383
  %5579 = inttoptr i64 %5576 to i32*
  %5580 = load i32, i32* %5579
  %5581 = sext i32 %5580 to i64
  store i64 %5581, i64* %RSI.i384, align 8
  store %struct.Memory* %loadMem_47adfd, %struct.Memory** %MEMORY
  %loadMem_47ae01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 33
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %5584 to i64*
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5586 = getelementptr inbounds %struct.GPR, %struct.GPR* %5585, i32 0, i32 9
  %5587 = getelementptr inbounds %struct.Reg, %struct.Reg* %5586, i32 0, i32 0
  %RSI.i382 = bitcast %union.anon* %5587 to i64*
  %5588 = load i64, i64* %RSI.i382
  %5589 = load i64, i64* %PC.i381
  %5590 = add i64 %5589, 4
  store i64 %5590, i64* %PC.i381
  %5591 = shl i64 %5588, 4
  %5592 = icmp slt i64 %5591, 0
  %5593 = shl i64 %5591, 1
  store i64 %5593, i64* %RSI.i382, align 8
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5595 = zext i1 %5592 to i8
  store i8 %5595, i8* %5594, align 1
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5597 = trunc i64 %5593 to i32
  %5598 = and i32 %5597, 254
  %5599 = call i32 @llvm.ctpop.i32(i32 %5598)
  %5600 = trunc i32 %5599 to i8
  %5601 = and i8 %5600, 1
  %5602 = xor i8 %5601, 1
  store i8 %5602, i8* %5596, align 1
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5603, align 1
  %5604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5605 = icmp eq i64 %5593, 0
  %5606 = zext i1 %5605 to i8
  store i8 %5606, i8* %5604, align 1
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5608 = lshr i64 %5593, 63
  %5609 = trunc i64 %5608 to i8
  store i8 %5609, i8* %5607, align 1
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5610, align 1
  store %struct.Memory* %loadMem_47ae01, %struct.Memory** %MEMORY
  %loadMem_47ae05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5612 = getelementptr inbounds %struct.GPR, %struct.GPR* %5611, i32 0, i32 33
  %5613 = getelementptr inbounds %struct.Reg, %struct.Reg* %5612, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %5613 to i64*
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5615 = getelementptr inbounds %struct.GPR, %struct.GPR* %5614, i32 0, i32 9
  %5616 = getelementptr inbounds %struct.Reg, %struct.Reg* %5615, i32 0, i32 0
  %RSI.i379 = bitcast %union.anon* %5616 to i64*
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5618 = getelementptr inbounds %struct.GPR, %struct.GPR* %5617, i32 0, i32 11
  %5619 = getelementptr inbounds %struct.Reg, %struct.Reg* %5618, i32 0, i32 0
  %RDI.i380 = bitcast %union.anon* %5619 to i64*
  %5620 = load i64, i64* %RDI.i380
  %5621 = load i64, i64* %RSI.i379
  %5622 = load i64, i64* %PC.i378
  %5623 = add i64 %5622, 3
  store i64 %5623, i64* %PC.i378
  %5624 = add i64 %5621, %5620
  store i64 %5624, i64* %RDI.i380, align 8
  %5625 = icmp ult i64 %5624, %5620
  %5626 = icmp ult i64 %5624, %5621
  %5627 = or i1 %5625, %5626
  %5628 = zext i1 %5627 to i8
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5628, i8* %5629, align 1
  %5630 = trunc i64 %5624 to i32
  %5631 = and i32 %5630, 255
  %5632 = call i32 @llvm.ctpop.i32(i32 %5631)
  %5633 = trunc i32 %5632 to i8
  %5634 = and i8 %5633, 1
  %5635 = xor i8 %5634, 1
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5635, i8* %5636, align 1
  %5637 = xor i64 %5621, %5620
  %5638 = xor i64 %5637, %5624
  %5639 = lshr i64 %5638, 4
  %5640 = trunc i64 %5639 to i8
  %5641 = and i8 %5640, 1
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5641, i8* %5642, align 1
  %5643 = icmp eq i64 %5624, 0
  %5644 = zext i1 %5643 to i8
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5644, i8* %5645, align 1
  %5646 = lshr i64 %5624, 63
  %5647 = trunc i64 %5646 to i8
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5647, i8* %5648, align 1
  %5649 = lshr i64 %5620, 63
  %5650 = lshr i64 %5621, 63
  %5651 = xor i64 %5646, %5649
  %5652 = xor i64 %5646, %5650
  %5653 = add i64 %5651, %5652
  %5654 = icmp eq i64 %5653, 2
  %5655 = zext i1 %5654 to i8
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5655, i8* %5656, align 1
  store %struct.Memory* %loadMem_47ae05, %struct.Memory** %MEMORY
  %loadMem_47ae08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5658 = getelementptr inbounds %struct.GPR, %struct.GPR* %5657, i32 0, i32 33
  %5659 = getelementptr inbounds %struct.Reg, %struct.Reg* %5658, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %5659 to i64*
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5661 = getelementptr inbounds %struct.GPR, %struct.GPR* %5660, i32 0, i32 9
  %5662 = getelementptr inbounds %struct.Reg, %struct.Reg* %5661, i32 0, i32 0
  %RSI.i376 = bitcast %union.anon* %5662 to i64*
  %5663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5664 = getelementptr inbounds %struct.GPR, %struct.GPR* %5663, i32 0, i32 15
  %5665 = getelementptr inbounds %struct.Reg, %struct.Reg* %5664, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %5665 to i64*
  %5666 = load i64, i64* %RBP.i377
  %5667 = sub i64 %5666, 4
  %5668 = load i64, i64* %PC.i375
  %5669 = add i64 %5668, 4
  store i64 %5669, i64* %PC.i375
  %5670 = inttoptr i64 %5667 to i32*
  %5671 = load i32, i32* %5670
  %5672 = sext i32 %5671 to i64
  store i64 %5672, i64* %RSI.i376, align 8
  store %struct.Memory* %loadMem_47ae08, %struct.Memory** %MEMORY
  %loadMem_47ae0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5674 = getelementptr inbounds %struct.GPR, %struct.GPR* %5673, i32 0, i32 33
  %5675 = getelementptr inbounds %struct.Reg, %struct.Reg* %5674, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %5675 to i64*
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5677 = getelementptr inbounds %struct.GPR, %struct.GPR* %5676, i32 0, i32 1
  %5678 = getelementptr inbounds %struct.Reg, %struct.Reg* %5677, i32 0, i32 0
  %EAX.i372 = bitcast %union.anon* %5678 to i32*
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5680 = getelementptr inbounds %struct.GPR, %struct.GPR* %5679, i32 0, i32 9
  %5681 = getelementptr inbounds %struct.Reg, %struct.Reg* %5680, i32 0, i32 0
  %RSI.i373 = bitcast %union.anon* %5681 to i64*
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5683 = getelementptr inbounds %struct.GPR, %struct.GPR* %5682, i32 0, i32 11
  %5684 = getelementptr inbounds %struct.Reg, %struct.Reg* %5683, i32 0, i32 0
  %RDI.i374 = bitcast %union.anon* %5684 to i64*
  %5685 = load i64, i64* %RDI.i374
  %5686 = load i64, i64* %RSI.i373
  %5687 = mul i64 %5686, 4
  %5688 = add i64 %5687, %5685
  %5689 = load i32, i32* %EAX.i372
  %5690 = zext i32 %5689 to i64
  %5691 = load i64, i64* %PC.i371
  %5692 = add i64 %5691, 3
  store i64 %5692, i64* %PC.i371
  %5693 = inttoptr i64 %5688 to i32*
  store i32 %5689, i32* %5693
  store %struct.Memory* %loadMem_47ae0c, %struct.Memory** %MEMORY
  %loadMem_47ae0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5695 = getelementptr inbounds %struct.GPR, %struct.GPR* %5694, i32 0, i32 33
  %5696 = getelementptr inbounds %struct.Reg, %struct.Reg* %5695, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %5696 to i64*
  %5697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5698 = getelementptr inbounds %struct.GPR, %struct.GPR* %5697, i32 0, i32 9
  %5699 = getelementptr inbounds %struct.Reg, %struct.Reg* %5698, i32 0, i32 0
  %RSI.i369 = bitcast %union.anon* %5699 to i64*
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5701 = getelementptr inbounds %struct.GPR, %struct.GPR* %5700, i32 0, i32 15
  %5702 = getelementptr inbounds %struct.Reg, %struct.Reg* %5701, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %5702 to i64*
  %5703 = load i64, i64* %RBP.i370
  %5704 = sub i64 %5703, 12
  %5705 = load i64, i64* %PC.i368
  %5706 = add i64 %5705, 4
  store i64 %5706, i64* %PC.i368
  %5707 = inttoptr i64 %5704 to i32*
  %5708 = load i32, i32* %5707
  %5709 = sext i32 %5708 to i64
  store i64 %5709, i64* %RSI.i369, align 8
  store %struct.Memory* %loadMem_47ae0f, %struct.Memory** %MEMORY
  %loadMem_47ae13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5711 = getelementptr inbounds %struct.GPR, %struct.GPR* %5710, i32 0, i32 33
  %5712 = getelementptr inbounds %struct.Reg, %struct.Reg* %5711, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %5712 to i64*
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5714 = getelementptr inbounds %struct.GPR, %struct.GPR* %5713, i32 0, i32 9
  %5715 = getelementptr inbounds %struct.Reg, %struct.Reg* %5714, i32 0, i32 0
  %RSI.i367 = bitcast %union.anon* %5715 to i64*
  %5716 = load i64, i64* %RSI.i367
  %5717 = load i64, i64* %PC.i366
  %5718 = add i64 %5717, 4
  store i64 %5718, i64* %PC.i366
  %5719 = shl i64 %5716, 7
  %5720 = icmp slt i64 %5719, 0
  %5721 = shl i64 %5719, 1
  store i64 %5721, i64* %RSI.i367, align 8
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5723 = zext i1 %5720 to i8
  store i8 %5723, i8* %5722, align 1
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5725 = trunc i64 %5721 to i32
  store i8 1, i8* %5724, align 1
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5726, align 1
  %5727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5728 = icmp eq i64 %5721, 0
  %5729 = zext i1 %5728 to i8
  store i8 %5729, i8* %5727, align 1
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5731 = lshr i64 %5721, 63
  %5732 = trunc i64 %5731 to i8
  store i8 %5732, i8* %5730, align 1
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5733, align 1
  store %struct.Memory* %loadMem_47ae13, %struct.Memory** %MEMORY
  %loadMem_47ae17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5735 = getelementptr inbounds %struct.GPR, %struct.GPR* %5734, i32 0, i32 33
  %5736 = getelementptr inbounds %struct.Reg, %struct.Reg* %5735, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %5736 to i64*
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5738 = getelementptr inbounds %struct.GPR, %struct.GPR* %5737, i32 0, i32 5
  %5739 = getelementptr inbounds %struct.Reg, %struct.Reg* %5738, i32 0, i32 0
  %RCX.i364 = bitcast %union.anon* %5739 to i64*
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5741 = getelementptr inbounds %struct.GPR, %struct.GPR* %5740, i32 0, i32 9
  %5742 = getelementptr inbounds %struct.Reg, %struct.Reg* %5741, i32 0, i32 0
  %RSI.i365 = bitcast %union.anon* %5742 to i64*
  %5743 = load i64, i64* %RCX.i364
  %5744 = load i64, i64* %RSI.i365
  %5745 = load i64, i64* %PC.i363
  %5746 = add i64 %5745, 3
  store i64 %5746, i64* %PC.i363
  %5747 = add i64 %5744, %5743
  store i64 %5747, i64* %RCX.i364, align 8
  %5748 = icmp ult i64 %5747, %5743
  %5749 = icmp ult i64 %5747, %5744
  %5750 = or i1 %5748, %5749
  %5751 = zext i1 %5750 to i8
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5751, i8* %5752, align 1
  %5753 = trunc i64 %5747 to i32
  %5754 = and i32 %5753, 255
  %5755 = call i32 @llvm.ctpop.i32(i32 %5754)
  %5756 = trunc i32 %5755 to i8
  %5757 = and i8 %5756, 1
  %5758 = xor i8 %5757, 1
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5758, i8* %5759, align 1
  %5760 = xor i64 %5744, %5743
  %5761 = xor i64 %5760, %5747
  %5762 = lshr i64 %5761, 4
  %5763 = trunc i64 %5762 to i8
  %5764 = and i8 %5763, 1
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5764, i8* %5765, align 1
  %5766 = icmp eq i64 %5747, 0
  %5767 = zext i1 %5766 to i8
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5767, i8* %5768, align 1
  %5769 = lshr i64 %5747, 63
  %5770 = trunc i64 %5769 to i8
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5770, i8* %5771, align 1
  %5772 = lshr i64 %5743, 63
  %5773 = lshr i64 %5744, 63
  %5774 = xor i64 %5769, %5772
  %5775 = xor i64 %5769, %5773
  %5776 = add i64 %5774, %5775
  %5777 = icmp eq i64 %5776, 2
  %5778 = zext i1 %5777 to i8
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5778, i8* %5779, align 1
  store %struct.Memory* %loadMem_47ae17, %struct.Memory** %MEMORY
  %loadMem_47ae1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5781 = getelementptr inbounds %struct.GPR, %struct.GPR* %5780, i32 0, i32 33
  %5782 = getelementptr inbounds %struct.Reg, %struct.Reg* %5781, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %5782 to i64*
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 9
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %RSI.i361 = bitcast %union.anon* %5785 to i64*
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 15
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %5788 to i64*
  %5789 = load i64, i64* %RBP.i362
  %5790 = sub i64 %5789, 8
  %5791 = load i64, i64* %PC.i360
  %5792 = add i64 %5791, 4
  store i64 %5792, i64* %PC.i360
  %5793 = inttoptr i64 %5790 to i32*
  %5794 = load i32, i32* %5793
  %5795 = sext i32 %5794 to i64
  store i64 %5795, i64* %RSI.i361, align 8
  store %struct.Memory* %loadMem_47ae1a, %struct.Memory** %MEMORY
  %loadMem_47ae1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5797 = getelementptr inbounds %struct.GPR, %struct.GPR* %5796, i32 0, i32 33
  %5798 = getelementptr inbounds %struct.Reg, %struct.Reg* %5797, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %5798 to i64*
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5800 = getelementptr inbounds %struct.GPR, %struct.GPR* %5799, i32 0, i32 9
  %5801 = getelementptr inbounds %struct.Reg, %struct.Reg* %5800, i32 0, i32 0
  %RSI.i359 = bitcast %union.anon* %5801 to i64*
  %5802 = load i64, i64* %RSI.i359
  %5803 = load i64, i64* %PC.i358
  %5804 = add i64 %5803, 4
  store i64 %5804, i64* %PC.i358
  %5805 = shl i64 %5802, 4
  %5806 = icmp slt i64 %5805, 0
  %5807 = shl i64 %5805, 1
  store i64 %5807, i64* %RSI.i359, align 8
  %5808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5809 = zext i1 %5806 to i8
  store i8 %5809, i8* %5808, align 1
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5811 = trunc i64 %5807 to i32
  %5812 = and i32 %5811, 254
  %5813 = call i32 @llvm.ctpop.i32(i32 %5812)
  %5814 = trunc i32 %5813 to i8
  %5815 = and i8 %5814, 1
  %5816 = xor i8 %5815, 1
  store i8 %5816, i8* %5810, align 1
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5817, align 1
  %5818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5819 = icmp eq i64 %5807, 0
  %5820 = zext i1 %5819 to i8
  store i8 %5820, i8* %5818, align 1
  %5821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5822 = lshr i64 %5807, 63
  %5823 = trunc i64 %5822 to i8
  store i8 %5823, i8* %5821, align 1
  %5824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5824, align 1
  store %struct.Memory* %loadMem_47ae1e, %struct.Memory** %MEMORY
  %loadMem_47ae22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 33
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %5827 to i64*
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 5
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %RCX.i356 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 9
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %RSI.i357 = bitcast %union.anon* %5833 to i64*
  %5834 = load i64, i64* %RCX.i356
  %5835 = load i64, i64* %RSI.i357
  %5836 = load i64, i64* %PC.i355
  %5837 = add i64 %5836, 3
  store i64 %5837, i64* %PC.i355
  %5838 = add i64 %5835, %5834
  store i64 %5838, i64* %RCX.i356, align 8
  %5839 = icmp ult i64 %5838, %5834
  %5840 = icmp ult i64 %5838, %5835
  %5841 = or i1 %5839, %5840
  %5842 = zext i1 %5841 to i8
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5842, i8* %5843, align 1
  %5844 = trunc i64 %5838 to i32
  %5845 = and i32 %5844, 255
  %5846 = call i32 @llvm.ctpop.i32(i32 %5845)
  %5847 = trunc i32 %5846 to i8
  %5848 = and i8 %5847, 1
  %5849 = xor i8 %5848, 1
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5849, i8* %5850, align 1
  %5851 = xor i64 %5835, %5834
  %5852 = xor i64 %5851, %5838
  %5853 = lshr i64 %5852, 4
  %5854 = trunc i64 %5853 to i8
  %5855 = and i8 %5854, 1
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5855, i8* %5856, align 1
  %5857 = icmp eq i64 %5838, 0
  %5858 = zext i1 %5857 to i8
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5858, i8* %5859, align 1
  %5860 = lshr i64 %5838, 63
  %5861 = trunc i64 %5860 to i8
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5861, i8* %5862, align 1
  %5863 = lshr i64 %5834, 63
  %5864 = lshr i64 %5835, 63
  %5865 = xor i64 %5860, %5863
  %5866 = xor i64 %5860, %5864
  %5867 = add i64 %5865, %5866
  %5868 = icmp eq i64 %5867, 2
  %5869 = zext i1 %5868 to i8
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5869, i8* %5870, align 1
  store %struct.Memory* %loadMem_47ae22, %struct.Memory** %MEMORY
  %loadMem_47ae25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 33
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %5873 to i64*
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 9
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %RSI.i353 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 15
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %5879 to i64*
  %5880 = load i64, i64* %RBP.i354
  %5881 = sub i64 %5880, 4
  %5882 = load i64, i64* %PC.i352
  %5883 = add i64 %5882, 4
  store i64 %5883, i64* %PC.i352
  %5884 = inttoptr i64 %5881 to i32*
  %5885 = load i32, i32* %5884
  %5886 = sext i32 %5885 to i64
  store i64 %5886, i64* %RSI.i353, align 8
  store %struct.Memory* %loadMem_47ae25, %struct.Memory** %MEMORY
  %loadMem_47ae29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5888 = getelementptr inbounds %struct.GPR, %struct.GPR* %5887, i32 0, i32 33
  %5889 = getelementptr inbounds %struct.Reg, %struct.Reg* %5888, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %5889 to i64*
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5891 = getelementptr inbounds %struct.GPR, %struct.GPR* %5890, i32 0, i32 1
  %5892 = getelementptr inbounds %struct.Reg, %struct.Reg* %5891, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %5892 to i64*
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5894 = getelementptr inbounds %struct.GPR, %struct.GPR* %5893, i32 0, i32 5
  %5895 = getelementptr inbounds %struct.Reg, %struct.Reg* %5894, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %5895 to i64*
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5897 = getelementptr inbounds %struct.GPR, %struct.GPR* %5896, i32 0, i32 9
  %5898 = getelementptr inbounds %struct.Reg, %struct.Reg* %5897, i32 0, i32 0
  %RSI.i351 = bitcast %union.anon* %5898 to i64*
  %5899 = load i64, i64* %RCX.i350
  %5900 = load i64, i64* %RSI.i351
  %5901 = mul i64 %5900, 4
  %5902 = add i64 %5901, %5899
  %5903 = load i64, i64* %PC.i348
  %5904 = add i64 %5903, 3
  store i64 %5904, i64* %PC.i348
  %5905 = inttoptr i64 %5902 to i32*
  %5906 = load i32, i32* %5905
  %5907 = zext i32 %5906 to i64
  store i64 %5907, i64* %RAX.i349, align 8
  store %struct.Memory* %loadMem_47ae29, %struct.Memory** %MEMORY
  %loadMem_47ae2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5909 = getelementptr inbounds %struct.GPR, %struct.GPR* %5908, i32 0, i32 33
  %5910 = getelementptr inbounds %struct.Reg, %struct.Reg* %5909, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %5910 to i64*
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5912 = getelementptr inbounds %struct.GPR, %struct.GPR* %5911, i32 0, i32 5
  %5913 = getelementptr inbounds %struct.Reg, %struct.Reg* %5912, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %5913 to i64*
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5915 = getelementptr inbounds %struct.GPR, %struct.GPR* %5914, i32 0, i32 15
  %5916 = getelementptr inbounds %struct.Reg, %struct.Reg* %5915, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %5916 to i64*
  %5917 = load i64, i64* %RBP.i347
  %5918 = sub i64 %5917, 16
  %5919 = load i64, i64* %PC.i345
  %5920 = add i64 %5919, 4
  store i64 %5920, i64* %PC.i345
  %5921 = inttoptr i64 %5918 to i32*
  %5922 = load i32, i32* %5921
  %5923 = sext i32 %5922 to i64
  store i64 %5923, i64* %RCX.i346, align 8
  store %struct.Memory* %loadMem_47ae2c, %struct.Memory** %MEMORY
  %loadMem_47ae30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5925 = getelementptr inbounds %struct.GPR, %struct.GPR* %5924, i32 0, i32 33
  %5926 = getelementptr inbounds %struct.Reg, %struct.Reg* %5925, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %5926 to i64*
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5928 = getelementptr inbounds %struct.GPR, %struct.GPR* %5927, i32 0, i32 17
  %5929 = getelementptr inbounds %struct.Reg, %struct.Reg* %5928, i32 0, i32 0
  %R8D.i343 = bitcast %union.anon* %5929 to i32*
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5931 = getelementptr inbounds %struct.GPR, %struct.GPR* %5930, i32 0, i32 5
  %5932 = getelementptr inbounds %struct.Reg, %struct.Reg* %5931, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %5932 to i64*
  %5933 = bitcast i32* %R8D.i343 to i64*
  %5934 = load i64, i64* %RCX.i344
  %5935 = mul i64 %5934, 2
  %5936 = add i64 %5935, 7302688
  %5937 = load i64, i64* %PC.i342
  %5938 = add i64 %5937, 9
  store i64 %5938, i64* %PC.i342
  %5939 = inttoptr i64 %5936 to i16*
  %5940 = load i16, i16* %5939
  %5941 = sext i16 %5940 to i64
  %5942 = and i64 %5941, 4294967295
  store i64 %5942, i64* %5933, align 8
  store %struct.Memory* %loadMem_47ae30, %struct.Memory** %MEMORY
  %loadMem_47ae39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 33
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %5945 to i64*
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5947 = getelementptr inbounds %struct.GPR, %struct.GPR* %5946, i32 0, i32 17
  %5948 = getelementptr inbounds %struct.Reg, %struct.Reg* %5947, i32 0, i32 0
  %R8D.i340 = bitcast %union.anon* %5948 to i32*
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5950 = getelementptr inbounds %struct.GPR, %struct.GPR* %5949, i32 0, i32 1
  %5951 = getelementptr inbounds %struct.Reg, %struct.Reg* %5950, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %5951 to i64*
  %5952 = load i64, i64* %RAX.i341
  %5953 = load i32, i32* %R8D.i340
  %5954 = zext i32 %5953 to i64
  %5955 = load i64, i64* %PC.i339
  %5956 = add i64 %5955, 4
  store i64 %5956, i64* %PC.i339
  %5957 = shl i64 %5952, 32
  %5958 = ashr exact i64 %5957, 32
  %5959 = shl i64 %5954, 32
  %5960 = ashr exact i64 %5959, 32
  %5961 = mul i64 %5960, %5958
  %5962 = trunc i64 %5961 to i32
  %5963 = and i64 %5961, 4294967295
  store i64 %5963, i64* %RAX.i341, align 8
  %5964 = shl i64 %5961, 32
  %5965 = ashr exact i64 %5964, 32
  %5966 = icmp ne i64 %5965, %5961
  %5967 = zext i1 %5966 to i8
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5967, i8* %5968, align 1
  %5969 = and i32 %5962, 255
  %5970 = call i32 @llvm.ctpop.i32(i32 %5969)
  %5971 = trunc i32 %5970 to i8
  %5972 = and i8 %5971, 1
  %5973 = xor i8 %5972, 1
  %5974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5973, i8* %5974, align 1
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5975, align 1
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5976, align 1
  %5977 = lshr i32 %5962, 31
  %5978 = trunc i32 %5977 to i8
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5978, i8* %5979, align 1
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5967, i8* %5980, align 1
  store %struct.Memory* %loadMem_47ae39, %struct.Memory** %MEMORY
  %loadMem_47ae3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5982 = getelementptr inbounds %struct.GPR, %struct.GPR* %5981, i32 0, i32 33
  %5983 = getelementptr inbounds %struct.Reg, %struct.Reg* %5982, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5983 to i64*
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5985 = getelementptr inbounds %struct.GPR, %struct.GPR* %5984, i32 0, i32 5
  %5986 = getelementptr inbounds %struct.Reg, %struct.Reg* %5985, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %5986 to i64*
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 15
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %5989 to i64*
  %5990 = load i64, i64* %RBP.i338
  %5991 = sub i64 %5990, 12
  %5992 = load i64, i64* %PC.i336
  %5993 = add i64 %5992, 4
  store i64 %5993, i64* %PC.i336
  %5994 = inttoptr i64 %5991 to i32*
  %5995 = load i32, i32* %5994
  %5996 = sext i32 %5995 to i64
  store i64 %5996, i64* %RCX.i337, align 8
  store %struct.Memory* %loadMem_47ae3d, %struct.Memory** %MEMORY
  %loadMem_47ae41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5998 = getelementptr inbounds %struct.GPR, %struct.GPR* %5997, i32 0, i32 33
  %5999 = getelementptr inbounds %struct.Reg, %struct.Reg* %5998, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %5999 to i64*
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6001 = getelementptr inbounds %struct.GPR, %struct.GPR* %6000, i32 0, i32 5
  %6002 = getelementptr inbounds %struct.Reg, %struct.Reg* %6001, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %6002 to i64*
  %6003 = load i64, i64* %RCX.i335
  %6004 = load i64, i64* %PC.i334
  %6005 = add i64 %6004, 4
  store i64 %6005, i64* %PC.i334
  %6006 = shl i64 %6003, 7
  %6007 = icmp slt i64 %6006, 0
  %6008 = shl i64 %6006, 1
  store i64 %6008, i64* %RCX.i335, align 8
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6010 = zext i1 %6007 to i8
  store i8 %6010, i8* %6009, align 1
  %6011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6012 = trunc i64 %6008 to i32
  store i8 1, i8* %6011, align 1
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6013, align 1
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6015 = icmp eq i64 %6008, 0
  %6016 = zext i1 %6015 to i8
  store i8 %6016, i8* %6014, align 1
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6018 = lshr i64 %6008, 63
  %6019 = trunc i64 %6018 to i8
  store i8 %6019, i8* %6017, align 1
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6020, align 1
  store %struct.Memory* %loadMem_47ae41, %struct.Memory** %MEMORY
  %loadMem_47ae45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6022 = getelementptr inbounds %struct.GPR, %struct.GPR* %6021, i32 0, i32 33
  %6023 = getelementptr inbounds %struct.Reg, %struct.Reg* %6022, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %6023 to i64*
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6025 = getelementptr inbounds %struct.GPR, %struct.GPR* %6024, i32 0, i32 9
  %6026 = getelementptr inbounds %struct.Reg, %struct.Reg* %6025, i32 0, i32 0
  %RSI.i332 = bitcast %union.anon* %6026 to i64*
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6028 = getelementptr inbounds %struct.GPR, %struct.GPR* %6027, i32 0, i32 15
  %6029 = getelementptr inbounds %struct.Reg, %struct.Reg* %6028, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %6029 to i64*
  %6030 = load i64, i64* %RBP.i333
  %6031 = sub i64 %6030, 56
  %6032 = load i64, i64* %PC.i331
  %6033 = add i64 %6032, 4
  store i64 %6033, i64* %PC.i331
  %6034 = inttoptr i64 %6031 to i64*
  %6035 = load i64, i64* %6034
  store i64 %6035, i64* %RSI.i332, align 8
  store %struct.Memory* %loadMem_47ae45, %struct.Memory** %MEMORY
  %loadMem_47ae49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6037 = getelementptr inbounds %struct.GPR, %struct.GPR* %6036, i32 0, i32 33
  %6038 = getelementptr inbounds %struct.Reg, %struct.Reg* %6037, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %6038 to i64*
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6040 = getelementptr inbounds %struct.GPR, %struct.GPR* %6039, i32 0, i32 5
  %6041 = getelementptr inbounds %struct.Reg, %struct.Reg* %6040, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %6041 to i64*
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6043 = getelementptr inbounds %struct.GPR, %struct.GPR* %6042, i32 0, i32 9
  %6044 = getelementptr inbounds %struct.Reg, %struct.Reg* %6043, i32 0, i32 0
  %RSI.i330 = bitcast %union.anon* %6044 to i64*
  %6045 = load i64, i64* %RSI.i330
  %6046 = load i64, i64* %RCX.i329
  %6047 = load i64, i64* %PC.i328
  %6048 = add i64 %6047, 3
  store i64 %6048, i64* %PC.i328
  %6049 = add i64 %6046, %6045
  store i64 %6049, i64* %RSI.i330, align 8
  %6050 = icmp ult i64 %6049, %6045
  %6051 = icmp ult i64 %6049, %6046
  %6052 = or i1 %6050, %6051
  %6053 = zext i1 %6052 to i8
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6053, i8* %6054, align 1
  %6055 = trunc i64 %6049 to i32
  %6056 = and i32 %6055, 255
  %6057 = call i32 @llvm.ctpop.i32(i32 %6056)
  %6058 = trunc i32 %6057 to i8
  %6059 = and i8 %6058, 1
  %6060 = xor i8 %6059, 1
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6060, i8* %6061, align 1
  %6062 = xor i64 %6046, %6045
  %6063 = xor i64 %6062, %6049
  %6064 = lshr i64 %6063, 4
  %6065 = trunc i64 %6064 to i8
  %6066 = and i8 %6065, 1
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6066, i8* %6067, align 1
  %6068 = icmp eq i64 %6049, 0
  %6069 = zext i1 %6068 to i8
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6069, i8* %6070, align 1
  %6071 = lshr i64 %6049, 63
  %6072 = trunc i64 %6071 to i8
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6072, i8* %6073, align 1
  %6074 = lshr i64 %6045, 63
  %6075 = lshr i64 %6046, 63
  %6076 = xor i64 %6071, %6074
  %6077 = xor i64 %6071, %6075
  %6078 = add i64 %6076, %6077
  %6079 = icmp eq i64 %6078, 2
  %6080 = zext i1 %6079 to i8
  %6081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6080, i8* %6081, align 1
  store %struct.Memory* %loadMem_47ae49, %struct.Memory** %MEMORY
  %loadMem_47ae4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6083 = getelementptr inbounds %struct.GPR, %struct.GPR* %6082, i32 0, i32 33
  %6084 = getelementptr inbounds %struct.Reg, %struct.Reg* %6083, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %6084 to i64*
  %6085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6086 = getelementptr inbounds %struct.GPR, %struct.GPR* %6085, i32 0, i32 5
  %6087 = getelementptr inbounds %struct.Reg, %struct.Reg* %6086, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %6087 to i64*
  %6088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6089 = getelementptr inbounds %struct.GPR, %struct.GPR* %6088, i32 0, i32 15
  %6090 = getelementptr inbounds %struct.Reg, %struct.Reg* %6089, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %6090 to i64*
  %6091 = load i64, i64* %RBP.i327
  %6092 = sub i64 %6091, 8
  %6093 = load i64, i64* %PC.i325
  %6094 = add i64 %6093, 4
  store i64 %6094, i64* %PC.i325
  %6095 = inttoptr i64 %6092 to i32*
  %6096 = load i32, i32* %6095
  %6097 = sext i32 %6096 to i64
  store i64 %6097, i64* %RCX.i326, align 8
  store %struct.Memory* %loadMem_47ae4c, %struct.Memory** %MEMORY
  %loadMem_47ae50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6099 = getelementptr inbounds %struct.GPR, %struct.GPR* %6098, i32 0, i32 33
  %6100 = getelementptr inbounds %struct.Reg, %struct.Reg* %6099, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %6100 to i64*
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6102 = getelementptr inbounds %struct.GPR, %struct.GPR* %6101, i32 0, i32 5
  %6103 = getelementptr inbounds %struct.Reg, %struct.Reg* %6102, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %6103 to i64*
  %6104 = load i64, i64* %RCX.i324
  %6105 = load i64, i64* %PC.i323
  %6106 = add i64 %6105, 4
  store i64 %6106, i64* %PC.i323
  %6107 = shl i64 %6104, 4
  %6108 = icmp slt i64 %6107, 0
  %6109 = shl i64 %6107, 1
  store i64 %6109, i64* %RCX.i324, align 8
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6111 = zext i1 %6108 to i8
  store i8 %6111, i8* %6110, align 1
  %6112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6113 = trunc i64 %6109 to i32
  %6114 = and i32 %6113, 254
  %6115 = call i32 @llvm.ctpop.i32(i32 %6114)
  %6116 = trunc i32 %6115 to i8
  %6117 = and i8 %6116, 1
  %6118 = xor i8 %6117, 1
  store i8 %6118, i8* %6112, align 1
  %6119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6119, align 1
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6121 = icmp eq i64 %6109, 0
  %6122 = zext i1 %6121 to i8
  store i8 %6122, i8* %6120, align 1
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6124 = lshr i64 %6109, 63
  %6125 = trunc i64 %6124 to i8
  store i8 %6125, i8* %6123, align 1
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6126, align 1
  store %struct.Memory* %loadMem_47ae50, %struct.Memory** %MEMORY
  %loadMem_47ae54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6128 = getelementptr inbounds %struct.GPR, %struct.GPR* %6127, i32 0, i32 33
  %6129 = getelementptr inbounds %struct.Reg, %struct.Reg* %6128, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %6129 to i64*
  %6130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6131 = getelementptr inbounds %struct.GPR, %struct.GPR* %6130, i32 0, i32 5
  %6132 = getelementptr inbounds %struct.Reg, %struct.Reg* %6131, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %6132 to i64*
  %6133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6134 = getelementptr inbounds %struct.GPR, %struct.GPR* %6133, i32 0, i32 9
  %6135 = getelementptr inbounds %struct.Reg, %struct.Reg* %6134, i32 0, i32 0
  %RSI.i322 = bitcast %union.anon* %6135 to i64*
  %6136 = load i64, i64* %RSI.i322
  %6137 = load i64, i64* %RCX.i321
  %6138 = load i64, i64* %PC.i320
  %6139 = add i64 %6138, 3
  store i64 %6139, i64* %PC.i320
  %6140 = add i64 %6137, %6136
  store i64 %6140, i64* %RSI.i322, align 8
  %6141 = icmp ult i64 %6140, %6136
  %6142 = icmp ult i64 %6140, %6137
  %6143 = or i1 %6141, %6142
  %6144 = zext i1 %6143 to i8
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6144, i8* %6145, align 1
  %6146 = trunc i64 %6140 to i32
  %6147 = and i32 %6146, 255
  %6148 = call i32 @llvm.ctpop.i32(i32 %6147)
  %6149 = trunc i32 %6148 to i8
  %6150 = and i8 %6149, 1
  %6151 = xor i8 %6150, 1
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6151, i8* %6152, align 1
  %6153 = xor i64 %6137, %6136
  %6154 = xor i64 %6153, %6140
  %6155 = lshr i64 %6154, 4
  %6156 = trunc i64 %6155 to i8
  %6157 = and i8 %6156, 1
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6157, i8* %6158, align 1
  %6159 = icmp eq i64 %6140, 0
  %6160 = zext i1 %6159 to i8
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6160, i8* %6161, align 1
  %6162 = lshr i64 %6140, 63
  %6163 = trunc i64 %6162 to i8
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6163, i8* %6164, align 1
  %6165 = lshr i64 %6136, 63
  %6166 = lshr i64 %6137, 63
  %6167 = xor i64 %6162, %6165
  %6168 = xor i64 %6162, %6166
  %6169 = add i64 %6167, %6168
  %6170 = icmp eq i64 %6169, 2
  %6171 = zext i1 %6170 to i8
  %6172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6171, i8* %6172, align 1
  store %struct.Memory* %loadMem_47ae54, %struct.Memory** %MEMORY
  %loadMem_47ae57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 33
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %6175 to i64*
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 5
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %6178 to i64*
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6180 = getelementptr inbounds %struct.GPR, %struct.GPR* %6179, i32 0, i32 15
  %6181 = getelementptr inbounds %struct.Reg, %struct.Reg* %6180, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %6181 to i64*
  %6182 = load i64, i64* %RBP.i319
  %6183 = sub i64 %6182, 4
  %6184 = load i64, i64* %PC.i317
  %6185 = add i64 %6184, 4
  store i64 %6185, i64* %PC.i317
  %6186 = inttoptr i64 %6183 to i32*
  %6187 = load i32, i32* %6186
  %6188 = sext i32 %6187 to i64
  store i64 %6188, i64* %RCX.i318, align 8
  store %struct.Memory* %loadMem_47ae57, %struct.Memory** %MEMORY
  %loadMem_47ae5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6190 = getelementptr inbounds %struct.GPR, %struct.GPR* %6189, i32 0, i32 33
  %6191 = getelementptr inbounds %struct.Reg, %struct.Reg* %6190, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %6191 to i64*
  %6192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6193 = getelementptr inbounds %struct.GPR, %struct.GPR* %6192, i32 0, i32 1
  %6194 = getelementptr inbounds %struct.Reg, %struct.Reg* %6193, i32 0, i32 0
  %EAX.i314 = bitcast %union.anon* %6194 to i32*
  %6195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6196 = getelementptr inbounds %struct.GPR, %struct.GPR* %6195, i32 0, i32 5
  %6197 = getelementptr inbounds %struct.Reg, %struct.Reg* %6196, i32 0, i32 0
  %RCX.i315 = bitcast %union.anon* %6197 to i64*
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6199 = getelementptr inbounds %struct.GPR, %struct.GPR* %6198, i32 0, i32 9
  %6200 = getelementptr inbounds %struct.Reg, %struct.Reg* %6199, i32 0, i32 0
  %RSI.i316 = bitcast %union.anon* %6200 to i64*
  %6201 = load i64, i64* %RSI.i316
  %6202 = load i64, i64* %RCX.i315
  %6203 = mul i64 %6202, 4
  %6204 = add i64 %6203, %6201
  %6205 = load i32, i32* %EAX.i314
  %6206 = zext i32 %6205 to i64
  %6207 = load i64, i64* %PC.i313
  %6208 = add i64 %6207, 3
  store i64 %6208, i64* %PC.i313
  %6209 = inttoptr i64 %6204 to i32*
  store i32 %6205, i32* %6209
  store %struct.Memory* %loadMem_47ae5b, %struct.Memory** %MEMORY
  br label %block_.L_47ae5e

block_.L_47ae5e:                                  ; preds = %routine_idivl__r9d.exit399, %routine_idivl__r9d.exit538
  %loadMem_47ae5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6211 = getelementptr inbounds %struct.GPR, %struct.GPR* %6210, i32 0, i32 33
  %6212 = getelementptr inbounds %struct.Reg, %struct.Reg* %6211, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %6212 to i64*
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6214 = getelementptr inbounds %struct.GPR, %struct.GPR* %6213, i32 0, i32 15
  %6215 = getelementptr inbounds %struct.Reg, %struct.Reg* %6214, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %6215 to i64*
  %6216 = load i64, i64* %RBP.i312
  %6217 = sub i64 %6216, 20
  %6218 = load i64, i64* %PC.i311
  %6219 = add i64 %6218, 4
  store i64 %6219, i64* %PC.i311
  %6220 = inttoptr i64 %6217 to i32*
  %6221 = load i32, i32* %6220
  %6222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6222, align 1
  %6223 = and i32 %6221, 255
  %6224 = call i32 @llvm.ctpop.i32(i32 %6223)
  %6225 = trunc i32 %6224 to i8
  %6226 = and i8 %6225, 1
  %6227 = xor i8 %6226, 1
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6227, i8* %6228, align 1
  %6229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6229, align 1
  %6230 = icmp eq i32 %6221, 0
  %6231 = zext i1 %6230 to i8
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6231, i8* %6232, align 1
  %6233 = lshr i32 %6221, 31
  %6234 = trunc i32 %6233 to i8
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6234, i8* %6235, align 1
  %6236 = lshr i32 %6221, 31
  %6237 = xor i32 %6233, %6236
  %6238 = add i32 %6237, %6236
  %6239 = icmp eq i32 %6238, 2
  %6240 = zext i1 %6239 to i8
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6240, i8* %6241, align 1
  store %struct.Memory* %loadMem_47ae5e, %struct.Memory** %MEMORY
  %loadMem_47ae62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6243 = getelementptr inbounds %struct.GPR, %struct.GPR* %6242, i32 0, i32 33
  %6244 = getelementptr inbounds %struct.Reg, %struct.Reg* %6243, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %6244 to i64*
  %6245 = load i64, i64* %PC.i310
  %6246 = add i64 %6245, 23
  %6247 = load i64, i64* %PC.i310
  %6248 = add i64 %6247, 6
  %6249 = load i64, i64* %PC.i310
  %6250 = add i64 %6249, 6
  store i64 %6250, i64* %PC.i310
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6252 = load i8, i8* %6251, align 1
  store i8 %6252, i8* %BRANCH_TAKEN, align 1
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6254 = icmp ne i8 %6252, 0
  %6255 = select i1 %6254, i64 %6246, i64 %6248
  store i64 %6255, i64* %6253, align 8
  store %struct.Memory* %loadMem_47ae62, %struct.Memory** %MEMORY
  %loadBr_47ae62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ae62 = icmp eq i8 %loadBr_47ae62, 1
  br i1 %cmpBr_47ae62, label %block_.L_47ae79, label %block_47ae68

block_47ae68:                                     ; preds = %block_.L_47ae5e
  %loadMem_47ae68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6257 = getelementptr inbounds %struct.GPR, %struct.GPR* %6256, i32 0, i32 33
  %6258 = getelementptr inbounds %struct.Reg, %struct.Reg* %6257, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %6258 to i64*
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6260 = getelementptr inbounds %struct.GPR, %struct.GPR* %6259, i32 0, i32 1
  %6261 = getelementptr inbounds %struct.Reg, %struct.Reg* %6260, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %6261 to i64*
  %6262 = load i64, i64* %PC.i308
  %6263 = add i64 %6262, 8
  store i64 %6263, i64* %PC.i308
  %6264 = load i16, i16* bitcast (%G_0x6d1f9e_type* @G_0x6d1f9e to i16*)
  %6265 = sext i16 %6264 to i64
  %6266 = and i64 %6265, 4294967295
  store i64 %6266, i64* %RAX.i309, align 8
  store %struct.Memory* %loadMem_47ae68, %struct.Memory** %MEMORY
  %loadMem_47ae70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6268 = getelementptr inbounds %struct.GPR, %struct.GPR* %6267, i32 0, i32 33
  %6269 = getelementptr inbounds %struct.Reg, %struct.Reg* %6268, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %6269 to i64*
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6271 = getelementptr inbounds %struct.GPR, %struct.GPR* %6270, i32 0, i32 1
  %6272 = getelementptr inbounds %struct.Reg, %struct.Reg* %6271, i32 0, i32 0
  %EAX.i307 = bitcast %union.anon* %6272 to i32*
  %6273 = load i32, i32* %EAX.i307
  %6274 = zext i32 %6273 to i64
  %6275 = load i64, i64* %PC.i306
  %6276 = add i64 %6275, 3
  store i64 %6276, i64* %PC.i306
  %6277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6277, align 1
  %6278 = and i32 %6273, 255
  %6279 = call i32 @llvm.ctpop.i32(i32 %6278)
  %6280 = trunc i32 %6279 to i8
  %6281 = and i8 %6280, 1
  %6282 = xor i8 %6281, 1
  %6283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6282, i8* %6283, align 1
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6284, align 1
  %6285 = icmp eq i32 %6273, 0
  %6286 = zext i1 %6285 to i8
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6286, i8* %6287, align 1
  %6288 = lshr i32 %6273, 31
  %6289 = trunc i32 %6288 to i8
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6289, i8* %6290, align 1
  %6291 = lshr i32 %6273, 31
  %6292 = xor i32 %6288, %6291
  %6293 = add i32 %6292, %6291
  %6294 = icmp eq i32 %6293, 2
  %6295 = zext i1 %6294 to i8
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6295, i8* %6296, align 1
  store %struct.Memory* %loadMem_47ae70, %struct.Memory** %MEMORY
  %loadMem_47ae73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6298 = getelementptr inbounds %struct.GPR, %struct.GPR* %6297, i32 0, i32 33
  %6299 = getelementptr inbounds %struct.Reg, %struct.Reg* %6298, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %6299 to i64*
  %6300 = load i64, i64* %PC.i305
  %6301 = add i64 %6300, 225
  %6302 = load i64, i64* %PC.i305
  %6303 = add i64 %6302, 6
  %6304 = load i64, i64* %PC.i305
  %6305 = add i64 %6304, 6
  store i64 %6305, i64* %PC.i305
  %6306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6307 = load i8, i8* %6306, align 1
  store i8 %6307, i8* %BRANCH_TAKEN, align 1
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6309 = icmp ne i8 %6307, 0
  %6310 = select i1 %6309, i64 %6301, i64 %6303
  store i64 %6310, i64* %6308, align 8
  store %struct.Memory* %loadMem_47ae73, %struct.Memory** %MEMORY
  %loadBr_47ae73 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ae73 = icmp eq i8 %loadBr_47ae73, 1
  br i1 %cmpBr_47ae73, label %block_.L_47af54, label %block_.L_47ae79

block_.L_47ae79:                                  ; preds = %block_47ae68, %block_.L_47ae5e
  %loadMem_47ae79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6312 = getelementptr inbounds %struct.GPR, %struct.GPR* %6311, i32 0, i32 33
  %6313 = getelementptr inbounds %struct.Reg, %struct.Reg* %6312, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %6313 to i64*
  %6314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6315 = getelementptr inbounds %struct.GPR, %struct.GPR* %6314, i32 0, i32 1
  %6316 = getelementptr inbounds %struct.Reg, %struct.Reg* %6315, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %6316 to i64*
  %6317 = load i64, i64* %PC.i303
  %6318 = add i64 %6317, 10
  store i64 %6318, i64* %PC.i303
  store i64 ptrtoint (%G__0x6d12c0_type* @G__0x6d12c0 to i64), i64* %RAX.i304, align 8
  store %struct.Memory* %loadMem_47ae79, %struct.Memory** %MEMORY
  %loadMem_47ae83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6320 = getelementptr inbounds %struct.GPR, %struct.GPR* %6319, i32 0, i32 33
  %6321 = getelementptr inbounds %struct.Reg, %struct.Reg* %6320, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %6321 to i64*
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6323 = getelementptr inbounds %struct.GPR, %struct.GPR* %6322, i32 0, i32 5
  %6324 = getelementptr inbounds %struct.Reg, %struct.Reg* %6323, i32 0, i32 0
  %RCX.i302 = bitcast %union.anon* %6324 to i64*
  %6325 = load i64, i64* %PC.i301
  %6326 = add i64 %6325, 10
  store i64 %6326, i64* %PC.i301
  store i64 ptrtoint (%G__0x4b9d50_type* @G__0x4b9d50 to i64), i64* %RCX.i302, align 8
  store %struct.Memory* %loadMem_47ae83, %struct.Memory** %MEMORY
  %loadMem_47ae8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6328 = getelementptr inbounds %struct.GPR, %struct.GPR* %6327, i32 0, i32 33
  %6329 = getelementptr inbounds %struct.Reg, %struct.Reg* %6328, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %6329 to i64*
  %6330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6331 = getelementptr inbounds %struct.GPR, %struct.GPR* %6330, i32 0, i32 7
  %6332 = getelementptr inbounds %struct.Reg, %struct.Reg* %6331, i32 0, i32 0
  %RDX.i300 = bitcast %union.anon* %6332 to i64*
  %6333 = load i64, i64* %PC.i299
  %6334 = add i64 %6333, 10
  store i64 %6334, i64* %PC.i299
  store i64 ptrtoint (%G__0x70f6e0_type* @G__0x70f6e0 to i64), i64* %RDX.i300, align 8
  store %struct.Memory* %loadMem_47ae8d, %struct.Memory** %MEMORY
  %loadMem_47ae97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6336 = getelementptr inbounds %struct.GPR, %struct.GPR* %6335, i32 0, i32 33
  %6337 = getelementptr inbounds %struct.Reg, %struct.Reg* %6336, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %6337 to i64*
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6339 = getelementptr inbounds %struct.GPR, %struct.GPR* %6338, i32 0, i32 9
  %6340 = getelementptr inbounds %struct.Reg, %struct.Reg* %6339, i32 0, i32 0
  %RSI.i298 = bitcast %union.anon* %6340 to i64*
  %6341 = load i64, i64* %PC.i297
  %6342 = add i64 %6341, 10
  store i64 %6342, i64* %PC.i297
  store i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64* %RSI.i298, align 8
  store %struct.Memory* %loadMem_47ae97, %struct.Memory** %MEMORY
  %loadMem_47aea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6344 = getelementptr inbounds %struct.GPR, %struct.GPR* %6343, i32 0, i32 33
  %6345 = getelementptr inbounds %struct.Reg, %struct.Reg* %6344, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %6345 to i64*
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6347 = getelementptr inbounds %struct.GPR, %struct.GPR* %6346, i32 0, i32 11
  %6348 = getelementptr inbounds %struct.Reg, %struct.Reg* %6347, i32 0, i32 0
  %RDI.i295 = bitcast %union.anon* %6348 to i64*
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6350 = getelementptr inbounds %struct.GPR, %struct.GPR* %6349, i32 0, i32 15
  %6351 = getelementptr inbounds %struct.Reg, %struct.Reg* %6350, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %6351 to i64*
  %6352 = load i64, i64* %RBP.i296
  %6353 = sub i64 %6352, 12
  %6354 = load i64, i64* %PC.i294
  %6355 = add i64 %6354, 4
  store i64 %6355, i64* %PC.i294
  %6356 = inttoptr i64 %6353 to i32*
  %6357 = load i32, i32* %6356
  %6358 = sext i32 %6357 to i64
  store i64 %6358, i64* %RDI.i295, align 8
  store %struct.Memory* %loadMem_47aea1, %struct.Memory** %MEMORY
  %loadMem_47aea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6360 = getelementptr inbounds %struct.GPR, %struct.GPR* %6359, i32 0, i32 33
  %6361 = getelementptr inbounds %struct.Reg, %struct.Reg* %6360, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %6361 to i64*
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6363 = getelementptr inbounds %struct.GPR, %struct.GPR* %6362, i32 0, i32 11
  %6364 = getelementptr inbounds %struct.Reg, %struct.Reg* %6363, i32 0, i32 0
  %RDI.i293 = bitcast %union.anon* %6364 to i64*
  %6365 = load i64, i64* %RDI.i293
  %6366 = load i64, i64* %PC.i292
  %6367 = add i64 %6366, 4
  store i64 %6367, i64* %PC.i292
  %6368 = shl i64 %6365, 7
  %6369 = icmp slt i64 %6368, 0
  %6370 = shl i64 %6368, 1
  store i64 %6370, i64* %RDI.i293, align 8
  %6371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6372 = zext i1 %6369 to i8
  store i8 %6372, i8* %6371, align 1
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6374 = trunc i64 %6370 to i32
  store i8 1, i8* %6373, align 1
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6375, align 1
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6377 = icmp eq i64 %6370, 0
  %6378 = zext i1 %6377 to i8
  store i8 %6378, i8* %6376, align 1
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6380 = lshr i64 %6370, 63
  %6381 = trunc i64 %6380 to i8
  store i8 %6381, i8* %6379, align 1
  %6382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6382, align 1
  store %struct.Memory* %loadMem_47aea5, %struct.Memory** %MEMORY
  %loadMem_47aea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6384 = getelementptr inbounds %struct.GPR, %struct.GPR* %6383, i32 0, i32 33
  %6385 = getelementptr inbounds %struct.Reg, %struct.Reg* %6384, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %6385 to i64*
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6387 = getelementptr inbounds %struct.GPR, %struct.GPR* %6386, i32 0, i32 9
  %6388 = getelementptr inbounds %struct.Reg, %struct.Reg* %6387, i32 0, i32 0
  %RSI.i290 = bitcast %union.anon* %6388 to i64*
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6390 = getelementptr inbounds %struct.GPR, %struct.GPR* %6389, i32 0, i32 11
  %6391 = getelementptr inbounds %struct.Reg, %struct.Reg* %6390, i32 0, i32 0
  %RDI.i291 = bitcast %union.anon* %6391 to i64*
  %6392 = load i64, i64* %RSI.i290
  %6393 = load i64, i64* %RDI.i291
  %6394 = load i64, i64* %PC.i289
  %6395 = add i64 %6394, 3
  store i64 %6395, i64* %PC.i289
  %6396 = add i64 %6393, %6392
  store i64 %6396, i64* %RSI.i290, align 8
  %6397 = icmp ult i64 %6396, %6392
  %6398 = icmp ult i64 %6396, %6393
  %6399 = or i1 %6397, %6398
  %6400 = zext i1 %6399 to i8
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6400, i8* %6401, align 1
  %6402 = trunc i64 %6396 to i32
  %6403 = and i32 %6402, 255
  %6404 = call i32 @llvm.ctpop.i32(i32 %6403)
  %6405 = trunc i32 %6404 to i8
  %6406 = and i8 %6405, 1
  %6407 = xor i8 %6406, 1
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6407, i8* %6408, align 1
  %6409 = xor i64 %6393, %6392
  %6410 = xor i64 %6409, %6396
  %6411 = lshr i64 %6410, 4
  %6412 = trunc i64 %6411 to i8
  %6413 = and i8 %6412, 1
  %6414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6413, i8* %6414, align 1
  %6415 = icmp eq i64 %6396, 0
  %6416 = zext i1 %6415 to i8
  %6417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6416, i8* %6417, align 1
  %6418 = lshr i64 %6396, 63
  %6419 = trunc i64 %6418 to i8
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6419, i8* %6420, align 1
  %6421 = lshr i64 %6392, 63
  %6422 = lshr i64 %6393, 63
  %6423 = xor i64 %6418, %6421
  %6424 = xor i64 %6418, %6422
  %6425 = add i64 %6423, %6424
  %6426 = icmp eq i64 %6425, 2
  %6427 = zext i1 %6426 to i8
  %6428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6427, i8* %6428, align 1
  store %struct.Memory* %loadMem_47aea9, %struct.Memory** %MEMORY
  %loadMem_47aeac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6430 = getelementptr inbounds %struct.GPR, %struct.GPR* %6429, i32 0, i32 33
  %6431 = getelementptr inbounds %struct.Reg, %struct.Reg* %6430, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %6431 to i64*
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6433 = getelementptr inbounds %struct.GPR, %struct.GPR* %6432, i32 0, i32 11
  %6434 = getelementptr inbounds %struct.Reg, %struct.Reg* %6433, i32 0, i32 0
  %RDI.i287 = bitcast %union.anon* %6434 to i64*
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6436 = getelementptr inbounds %struct.GPR, %struct.GPR* %6435, i32 0, i32 15
  %6437 = getelementptr inbounds %struct.Reg, %struct.Reg* %6436, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %6437 to i64*
  %6438 = load i64, i64* %RBP.i288
  %6439 = sub i64 %6438, 8
  %6440 = load i64, i64* %PC.i286
  %6441 = add i64 %6440, 4
  store i64 %6441, i64* %PC.i286
  %6442 = inttoptr i64 %6439 to i32*
  %6443 = load i32, i32* %6442
  %6444 = sext i32 %6443 to i64
  store i64 %6444, i64* %RDI.i287, align 8
  store %struct.Memory* %loadMem_47aeac, %struct.Memory** %MEMORY
  %loadMem_47aeb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6446 = getelementptr inbounds %struct.GPR, %struct.GPR* %6445, i32 0, i32 33
  %6447 = getelementptr inbounds %struct.Reg, %struct.Reg* %6446, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %6447 to i64*
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6449 = getelementptr inbounds %struct.GPR, %struct.GPR* %6448, i32 0, i32 11
  %6450 = getelementptr inbounds %struct.Reg, %struct.Reg* %6449, i32 0, i32 0
  %RDI.i285 = bitcast %union.anon* %6450 to i64*
  %6451 = load i64, i64* %RDI.i285
  %6452 = load i64, i64* %PC.i284
  %6453 = add i64 %6452, 4
  store i64 %6453, i64* %PC.i284
  %6454 = shl i64 %6451, 4
  %6455 = icmp slt i64 %6454, 0
  %6456 = shl i64 %6454, 1
  store i64 %6456, i64* %RDI.i285, align 8
  %6457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6458 = zext i1 %6455 to i8
  store i8 %6458, i8* %6457, align 1
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6460 = trunc i64 %6456 to i32
  %6461 = and i32 %6460, 254
  %6462 = call i32 @llvm.ctpop.i32(i32 %6461)
  %6463 = trunc i32 %6462 to i8
  %6464 = and i8 %6463, 1
  %6465 = xor i8 %6464, 1
  store i8 %6465, i8* %6459, align 1
  %6466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6466, align 1
  %6467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6468 = icmp eq i64 %6456, 0
  %6469 = zext i1 %6468 to i8
  store i8 %6469, i8* %6467, align 1
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6471 = lshr i64 %6456, 63
  %6472 = trunc i64 %6471 to i8
  store i8 %6472, i8* %6470, align 1
  %6473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6473, align 1
  store %struct.Memory* %loadMem_47aeb0, %struct.Memory** %MEMORY
  %loadMem_47aeb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6475 = getelementptr inbounds %struct.GPR, %struct.GPR* %6474, i32 0, i32 33
  %6476 = getelementptr inbounds %struct.Reg, %struct.Reg* %6475, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %6476 to i64*
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6478 = getelementptr inbounds %struct.GPR, %struct.GPR* %6477, i32 0, i32 9
  %6479 = getelementptr inbounds %struct.Reg, %struct.Reg* %6478, i32 0, i32 0
  %RSI.i282 = bitcast %union.anon* %6479 to i64*
  %6480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6481 = getelementptr inbounds %struct.GPR, %struct.GPR* %6480, i32 0, i32 11
  %6482 = getelementptr inbounds %struct.Reg, %struct.Reg* %6481, i32 0, i32 0
  %RDI.i283 = bitcast %union.anon* %6482 to i64*
  %6483 = load i64, i64* %RSI.i282
  %6484 = load i64, i64* %RDI.i283
  %6485 = load i64, i64* %PC.i281
  %6486 = add i64 %6485, 3
  store i64 %6486, i64* %PC.i281
  %6487 = add i64 %6484, %6483
  store i64 %6487, i64* %RSI.i282, align 8
  %6488 = icmp ult i64 %6487, %6483
  %6489 = icmp ult i64 %6487, %6484
  %6490 = or i1 %6488, %6489
  %6491 = zext i1 %6490 to i8
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6491, i8* %6492, align 1
  %6493 = trunc i64 %6487 to i32
  %6494 = and i32 %6493, 255
  %6495 = call i32 @llvm.ctpop.i32(i32 %6494)
  %6496 = trunc i32 %6495 to i8
  %6497 = and i8 %6496, 1
  %6498 = xor i8 %6497, 1
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6498, i8* %6499, align 1
  %6500 = xor i64 %6484, %6483
  %6501 = xor i64 %6500, %6487
  %6502 = lshr i64 %6501, 4
  %6503 = trunc i64 %6502 to i8
  %6504 = and i8 %6503, 1
  %6505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6504, i8* %6505, align 1
  %6506 = icmp eq i64 %6487, 0
  %6507 = zext i1 %6506 to i8
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6507, i8* %6508, align 1
  %6509 = lshr i64 %6487, 63
  %6510 = trunc i64 %6509 to i8
  %6511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6510, i8* %6511, align 1
  %6512 = lshr i64 %6483, 63
  %6513 = lshr i64 %6484, 63
  %6514 = xor i64 %6509, %6512
  %6515 = xor i64 %6509, %6513
  %6516 = add i64 %6514, %6515
  %6517 = icmp eq i64 %6516, 2
  %6518 = zext i1 %6517 to i8
  %6519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6518, i8* %6519, align 1
  store %struct.Memory* %loadMem_47aeb4, %struct.Memory** %MEMORY
  %loadMem_47aeb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6521 = getelementptr inbounds %struct.GPR, %struct.GPR* %6520, i32 0, i32 33
  %6522 = getelementptr inbounds %struct.Reg, %struct.Reg* %6521, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %6522 to i64*
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6524 = getelementptr inbounds %struct.GPR, %struct.GPR* %6523, i32 0, i32 11
  %6525 = getelementptr inbounds %struct.Reg, %struct.Reg* %6524, i32 0, i32 0
  %RDI.i279 = bitcast %union.anon* %6525 to i64*
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6527 = getelementptr inbounds %struct.GPR, %struct.GPR* %6526, i32 0, i32 15
  %6528 = getelementptr inbounds %struct.Reg, %struct.Reg* %6527, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %6528 to i64*
  %6529 = load i64, i64* %RBP.i280
  %6530 = sub i64 %6529, 4
  %6531 = load i64, i64* %PC.i278
  %6532 = add i64 %6531, 4
  store i64 %6532, i64* %PC.i278
  %6533 = inttoptr i64 %6530 to i32*
  %6534 = load i32, i32* %6533
  %6535 = sext i32 %6534 to i64
  store i64 %6535, i64* %RDI.i279, align 8
  store %struct.Memory* %loadMem_47aeb7, %struct.Memory** %MEMORY
  %loadMem_47aebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6537 = getelementptr inbounds %struct.GPR, %struct.GPR* %6536, i32 0, i32 33
  %6538 = getelementptr inbounds %struct.Reg, %struct.Reg* %6537, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %6538 to i64*
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6540 = getelementptr inbounds %struct.GPR, %struct.GPR* %6539, i32 0, i32 17
  %6541 = getelementptr inbounds %struct.Reg, %struct.Reg* %6540, i32 0, i32 0
  %R8D.i275 = bitcast %union.anon* %6541 to i32*
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6543 = getelementptr inbounds %struct.GPR, %struct.GPR* %6542, i32 0, i32 9
  %6544 = getelementptr inbounds %struct.Reg, %struct.Reg* %6543, i32 0, i32 0
  %RSI.i276 = bitcast %union.anon* %6544 to i64*
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6546 = getelementptr inbounds %struct.GPR, %struct.GPR* %6545, i32 0, i32 11
  %6547 = getelementptr inbounds %struct.Reg, %struct.Reg* %6546, i32 0, i32 0
  %RDI.i277 = bitcast %union.anon* %6547 to i64*
  %6548 = bitcast i32* %R8D.i275 to i64*
  %6549 = load i64, i64* %RSI.i276
  %6550 = load i64, i64* %RDI.i277
  %6551 = mul i64 %6550, 4
  %6552 = add i64 %6551, %6549
  %6553 = load i64, i64* %PC.i274
  %6554 = add i64 %6553, 4
  store i64 %6554, i64* %PC.i274
  %6555 = inttoptr i64 %6552 to i32*
  %6556 = load i32, i32* %6555
  %6557 = zext i32 %6556 to i64
  store i64 %6557, i64* %6548, align 8
  store %struct.Memory* %loadMem_47aebb, %struct.Memory** %MEMORY
  %loadMem_47aebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6559 = getelementptr inbounds %struct.GPR, %struct.GPR* %6558, i32 0, i32 33
  %6560 = getelementptr inbounds %struct.Reg, %struct.Reg* %6559, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %6560 to i64*
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6562 = getelementptr inbounds %struct.GPR, %struct.GPR* %6561, i32 0, i32 17
  %6563 = getelementptr inbounds %struct.Reg, %struct.Reg* %6562, i32 0, i32 0
  %R8D.i273 = bitcast %union.anon* %6563 to i32*
  %6564 = bitcast i32* %R8D.i273 to i64*
  %6565 = load i32, i32* %R8D.i273
  %6566 = zext i32 %6565 to i64
  %6567 = load i64, i64* %PC.i272
  %6568 = add i64 %6567, 4
  store i64 %6568, i64* %PC.i272
  %6569 = and i64 %6566, 4294967295
  %6570 = shl i64 %6569, 3
  %6571 = trunc i64 %6570 to i32
  %6572 = icmp slt i32 %6571, 0
  %6573 = shl i32 %6571, 1
  %6574 = zext i32 %6573 to i64
  store i64 %6574, i64* %6564, align 8
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6576 = zext i1 %6572 to i8
  store i8 %6576, i8* %6575, align 1
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6578 = and i32 %6573, 254
  %6579 = call i32 @llvm.ctpop.i32(i32 %6578)
  %6580 = trunc i32 %6579 to i8
  %6581 = and i8 %6580, 1
  %6582 = xor i8 %6581, 1
  store i8 %6582, i8* %6577, align 1
  %6583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6583, align 1
  %6584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6585 = icmp eq i32 %6573, 0
  %6586 = zext i1 %6585 to i8
  store i8 %6586, i8* %6584, align 1
  %6587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6588 = lshr i32 %6573, 31
  %6589 = trunc i32 %6588 to i8
  store i8 %6589, i8* %6587, align 1
  %6590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6590, align 1
  store %struct.Memory* %loadMem_47aebf, %struct.Memory** %MEMORY
  %loadMem_47aec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6592 = getelementptr inbounds %struct.GPR, %struct.GPR* %6591, i32 0, i32 33
  %6593 = getelementptr inbounds %struct.Reg, %struct.Reg* %6592, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %6593 to i64*
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6595 = getelementptr inbounds %struct.GPR, %struct.GPR* %6594, i32 0, i32 9
  %6596 = getelementptr inbounds %struct.Reg, %struct.Reg* %6595, i32 0, i32 0
  %RSI.i270 = bitcast %union.anon* %6596 to i64*
  %6597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6598 = getelementptr inbounds %struct.GPR, %struct.GPR* %6597, i32 0, i32 15
  %6599 = getelementptr inbounds %struct.Reg, %struct.Reg* %6598, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %6599 to i64*
  %6600 = load i64, i64* %RBP.i271
  %6601 = sub i64 %6600, 16
  %6602 = load i64, i64* %PC.i269
  %6603 = add i64 %6602, 4
  store i64 %6603, i64* %PC.i269
  %6604 = inttoptr i64 %6601 to i32*
  %6605 = load i32, i32* %6604
  %6606 = sext i32 %6605 to i64
  store i64 %6606, i64* %RSI.i270, align 8
  store %struct.Memory* %loadMem_47aec3, %struct.Memory** %MEMORY
  %loadMem_47aec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6608 = getelementptr inbounds %struct.GPR, %struct.GPR* %6607, i32 0, i32 33
  %6609 = getelementptr inbounds %struct.Reg, %struct.Reg* %6608, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %6609 to i64*
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6611 = getelementptr inbounds %struct.GPR, %struct.GPR* %6610, i32 0, i32 19
  %6612 = getelementptr inbounds %struct.Reg, %struct.Reg* %6611, i32 0, i32 0
  %R9D.i267 = bitcast %union.anon* %6612 to i32*
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6614 = getelementptr inbounds %struct.GPR, %struct.GPR* %6613, i32 0, i32 9
  %6615 = getelementptr inbounds %struct.Reg, %struct.Reg* %6614, i32 0, i32 0
  %RSI.i268 = bitcast %union.anon* %6615 to i64*
  %6616 = bitcast i32* %R9D.i267 to i64*
  %6617 = load i64, i64* %RSI.i268
  %6618 = mul i64 %6617, 2
  %6619 = add i64 %6618, 4952704
  %6620 = load i64, i64* %PC.i266
  %6621 = add i64 %6620, 9
  store i64 %6621, i64* %PC.i266
  %6622 = inttoptr i64 %6619 to i16*
  %6623 = load i16, i16* %6622
  %6624 = sext i16 %6623 to i64
  %6625 = and i64 %6624, 4294967295
  store i64 %6625, i64* %6616, align 8
  store %struct.Memory* %loadMem_47aec7, %struct.Memory** %MEMORY
  %loadMem_47aed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6627 = getelementptr inbounds %struct.GPR, %struct.GPR* %6626, i32 0, i32 33
  %6628 = getelementptr inbounds %struct.Reg, %struct.Reg* %6627, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %6628 to i64*
  %6629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6630 = getelementptr inbounds %struct.GPR, %struct.GPR* %6629, i32 0, i32 1
  %6631 = getelementptr inbounds %struct.Reg, %struct.Reg* %6630, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %6631 to i64*
  %6632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6633 = getelementptr inbounds %struct.GPR, %struct.GPR* %6632, i32 0, i32 15
  %6634 = getelementptr inbounds %struct.Reg, %struct.Reg* %6633, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %6634 to i64*
  %6635 = load i64, i64* %RBP.i265
  %6636 = sub i64 %6635, 72
  %6637 = load i64, i64* %RAX.i264
  %6638 = load i64, i64* %PC.i263
  %6639 = add i64 %6638, 4
  store i64 %6639, i64* %PC.i263
  %6640 = inttoptr i64 %6636 to i64*
  store i64 %6637, i64* %6640
  store %struct.Memory* %loadMem_47aed0, %struct.Memory** %MEMORY
  %loadMem_47aed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6642 = getelementptr inbounds %struct.GPR, %struct.GPR* %6641, i32 0, i32 33
  %6643 = getelementptr inbounds %struct.Reg, %struct.Reg* %6642, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %6643 to i64*
  %6644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6645 = getelementptr inbounds %struct.GPR, %struct.GPR* %6644, i32 0, i32 17
  %6646 = getelementptr inbounds %struct.Reg, %struct.Reg* %6645, i32 0, i32 0
  %R8D.i261 = bitcast %union.anon* %6646 to i32*
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6648 = getelementptr inbounds %struct.GPR, %struct.GPR* %6647, i32 0, i32 1
  %6649 = getelementptr inbounds %struct.Reg, %struct.Reg* %6648, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %6649 to i64*
  %6650 = load i32, i32* %R8D.i261
  %6651 = zext i32 %6650 to i64
  %6652 = load i64, i64* %PC.i260
  %6653 = add i64 %6652, 3
  store i64 %6653, i64* %PC.i260
  %6654 = and i64 %6651, 4294967295
  store i64 %6654, i64* %RAX.i262, align 8
  store %struct.Memory* %loadMem_47aed4, %struct.Memory** %MEMORY
  %loadMem_47aed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6656 = getelementptr inbounds %struct.GPR, %struct.GPR* %6655, i32 0, i32 33
  %6657 = getelementptr inbounds %struct.Reg, %struct.Reg* %6656, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %6657 to i64*
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 7
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %6660 to i64*
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 15
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %6663 to i64*
  %6664 = load i64, i64* %RBP.i259
  %6665 = sub i64 %6664, 80
  %6666 = load i64, i64* %RDX.i258
  %6667 = load i64, i64* %PC.i257
  %6668 = add i64 %6667, 4
  store i64 %6668, i64* %PC.i257
  %6669 = inttoptr i64 %6665 to i64*
  store i64 %6666, i64* %6669
  store %struct.Memory* %loadMem_47aed7, %struct.Memory** %MEMORY
  %loadMem_47aedb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6671 = getelementptr inbounds %struct.GPR, %struct.GPR* %6670, i32 0, i32 33
  %6672 = getelementptr inbounds %struct.Reg, %struct.Reg* %6671, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %6672 to i64*
  %6673 = load i64, i64* %PC.i256
  %6674 = add i64 %6673, 1
  store i64 %6674, i64* %PC.i256
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6677 = bitcast %union.anon* %6676 to i32*
  %6678 = load i32, i32* %6677, align 8
  %6679 = sext i32 %6678 to i64
  %6680 = lshr i64 %6679, 32
  store i64 %6680, i64* %6675, align 8
  store %struct.Memory* %loadMem_47aedb, %struct.Memory** %MEMORY
  %loadMem_47aedc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6682 = getelementptr inbounds %struct.GPR, %struct.GPR* %6681, i32 0, i32 33
  %6683 = getelementptr inbounds %struct.Reg, %struct.Reg* %6682, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %6683 to i64*
  %6684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6685 = getelementptr inbounds %struct.GPR, %struct.GPR* %6684, i32 0, i32 19
  %6686 = getelementptr inbounds %struct.Reg, %struct.Reg* %6685, i32 0, i32 0
  %R9D.i252 = bitcast %union.anon* %6686 to i32*
  %6687 = load i32, i32* %R9D.i252
  %6688 = zext i32 %6687 to i64
  %6689 = load i64, i64* %PC.i251
  %6690 = add i64 %6689, 3
  store i64 %6690, i64* %PC.i251
  %6691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6692 = bitcast %union.anon* %6691 to i32*
  %6693 = load i32, i32* %6692, align 8
  %6694 = zext i32 %6693 to i64
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %6696 = bitcast %union.anon* %6695 to i32*
  %6697 = load i32, i32* %6696, align 8
  %6698 = zext i32 %6697 to i64
  %6699 = shl i64 %6688, 32
  %6700 = ashr exact i64 %6699, 32
  %6701 = shl i64 %6698, 32
  %6702 = or i64 %6701, %6694
  %6703 = sdiv i64 %6702, %6700
  %6704 = shl i64 %6703, 32
  %6705 = ashr exact i64 %6704, 32
  %6706 = icmp eq i64 %6703, %6705
  br i1 %6706, label %6711, label %6707

; <label>:6707:                                   ; preds = %block_.L_47ae79
  %6708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6709 = load i64, i64* %6708, align 8
  %6710 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6709, %struct.Memory* %loadMem_47aedc)
  br label %routine_idivl__r9d.exit253

; <label>:6711:                                   ; preds = %block_.L_47ae79
  %6712 = srem i64 %6702, %6700
  %6713 = getelementptr inbounds %union.anon, %union.anon* %6691, i64 0, i32 0
  %6714 = and i64 %6703, 4294967295
  store i64 %6714, i64* %6713, align 8
  %6715 = getelementptr inbounds %union.anon, %union.anon* %6695, i64 0, i32 0
  %6716 = and i64 %6712, 4294967295
  store i64 %6716, i64* %6715, align 8
  %6717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6717, align 1
  %6718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %6718, align 1
  %6719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6719, align 1
  %6720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6720, align 1
  %6721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6721, align 1
  %6722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6722, align 1
  br label %routine_idivl__r9d.exit253

routine_idivl__r9d.exit253:                       ; preds = %6707, %6711
  %6723 = phi %struct.Memory* [ %6710, %6707 ], [ %loadMem_47aedc, %6711 ]
  store %struct.Memory* %6723, %struct.Memory** %MEMORY
  %loadMem_47aedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6725 = getelementptr inbounds %struct.GPR, %struct.GPR* %6724, i32 0, i32 33
  %6726 = getelementptr inbounds %struct.Reg, %struct.Reg* %6725, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %6726 to i64*
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6728 = getelementptr inbounds %struct.GPR, %struct.GPR* %6727, i32 0, i32 9
  %6729 = getelementptr inbounds %struct.Reg, %struct.Reg* %6728, i32 0, i32 0
  %RSI.i249 = bitcast %union.anon* %6729 to i64*
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6731 = getelementptr inbounds %struct.GPR, %struct.GPR* %6730, i32 0, i32 15
  %6732 = getelementptr inbounds %struct.Reg, %struct.Reg* %6731, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %6732 to i64*
  %6733 = load i64, i64* %RBP.i250
  %6734 = sub i64 %6733, 12
  %6735 = load i64, i64* %PC.i248
  %6736 = add i64 %6735, 4
  store i64 %6736, i64* %PC.i248
  %6737 = inttoptr i64 %6734 to i32*
  %6738 = load i32, i32* %6737
  %6739 = sext i32 %6738 to i64
  store i64 %6739, i64* %RSI.i249, align 8
  store %struct.Memory* %loadMem_47aedf, %struct.Memory** %MEMORY
  %loadMem_47aee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6741 = getelementptr inbounds %struct.GPR, %struct.GPR* %6740, i32 0, i32 33
  %6742 = getelementptr inbounds %struct.Reg, %struct.Reg* %6741, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %6742 to i64*
  %6743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6744 = getelementptr inbounds %struct.GPR, %struct.GPR* %6743, i32 0, i32 9
  %6745 = getelementptr inbounds %struct.Reg, %struct.Reg* %6744, i32 0, i32 0
  %RSI.i247 = bitcast %union.anon* %6745 to i64*
  %6746 = load i64, i64* %RSI.i247
  %6747 = load i64, i64* %PC.i246
  %6748 = add i64 %6747, 4
  store i64 %6748, i64* %PC.i246
  %6749 = shl i64 %6746, 7
  %6750 = icmp slt i64 %6749, 0
  %6751 = shl i64 %6749, 1
  store i64 %6751, i64* %RSI.i247, align 8
  %6752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6753 = zext i1 %6750 to i8
  store i8 %6753, i8* %6752, align 1
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6755 = trunc i64 %6751 to i32
  store i8 1, i8* %6754, align 1
  %6756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6756, align 1
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6758 = icmp eq i64 %6751, 0
  %6759 = zext i1 %6758 to i8
  store i8 %6759, i8* %6757, align 1
  %6760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6761 = lshr i64 %6751, 63
  %6762 = trunc i64 %6761 to i8
  store i8 %6762, i8* %6760, align 1
  %6763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6763, align 1
  store %struct.Memory* %loadMem_47aee3, %struct.Memory** %MEMORY
  %loadMem_47aee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6765 = getelementptr inbounds %struct.GPR, %struct.GPR* %6764, i32 0, i32 33
  %6766 = getelementptr inbounds %struct.Reg, %struct.Reg* %6765, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %6766 to i64*
  %6767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6768 = getelementptr inbounds %struct.GPR, %struct.GPR* %6767, i32 0, i32 11
  %6769 = getelementptr inbounds %struct.Reg, %struct.Reg* %6768, i32 0, i32 0
  %RDI.i244 = bitcast %union.anon* %6769 to i64*
  %6770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6771 = getelementptr inbounds %struct.GPR, %struct.GPR* %6770, i32 0, i32 15
  %6772 = getelementptr inbounds %struct.Reg, %struct.Reg* %6771, i32 0, i32 0
  %RBP.i245 = bitcast %union.anon* %6772 to i64*
  %6773 = load i64, i64* %RBP.i245
  %6774 = sub i64 %6773, 80
  %6775 = load i64, i64* %PC.i243
  %6776 = add i64 %6775, 4
  store i64 %6776, i64* %PC.i243
  %6777 = inttoptr i64 %6774 to i64*
  %6778 = load i64, i64* %6777
  store i64 %6778, i64* %RDI.i244, align 8
  store %struct.Memory* %loadMem_47aee7, %struct.Memory** %MEMORY
  %loadMem_47aeeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6780 = getelementptr inbounds %struct.GPR, %struct.GPR* %6779, i32 0, i32 33
  %6781 = getelementptr inbounds %struct.Reg, %struct.Reg* %6780, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %6781 to i64*
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6783 = getelementptr inbounds %struct.GPR, %struct.GPR* %6782, i32 0, i32 9
  %6784 = getelementptr inbounds %struct.Reg, %struct.Reg* %6783, i32 0, i32 0
  %RSI.i241 = bitcast %union.anon* %6784 to i64*
  %6785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6786 = getelementptr inbounds %struct.GPR, %struct.GPR* %6785, i32 0, i32 11
  %6787 = getelementptr inbounds %struct.Reg, %struct.Reg* %6786, i32 0, i32 0
  %RDI.i242 = bitcast %union.anon* %6787 to i64*
  %6788 = load i64, i64* %RDI.i242
  %6789 = load i64, i64* %RSI.i241
  %6790 = load i64, i64* %PC.i240
  %6791 = add i64 %6790, 3
  store i64 %6791, i64* %PC.i240
  %6792 = add i64 %6789, %6788
  store i64 %6792, i64* %RDI.i242, align 8
  %6793 = icmp ult i64 %6792, %6788
  %6794 = icmp ult i64 %6792, %6789
  %6795 = or i1 %6793, %6794
  %6796 = zext i1 %6795 to i8
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6796, i8* %6797, align 1
  %6798 = trunc i64 %6792 to i32
  %6799 = and i32 %6798, 255
  %6800 = call i32 @llvm.ctpop.i32(i32 %6799)
  %6801 = trunc i32 %6800 to i8
  %6802 = and i8 %6801, 1
  %6803 = xor i8 %6802, 1
  %6804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6803, i8* %6804, align 1
  %6805 = xor i64 %6789, %6788
  %6806 = xor i64 %6805, %6792
  %6807 = lshr i64 %6806, 4
  %6808 = trunc i64 %6807 to i8
  %6809 = and i8 %6808, 1
  %6810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6809, i8* %6810, align 1
  %6811 = icmp eq i64 %6792, 0
  %6812 = zext i1 %6811 to i8
  %6813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6812, i8* %6813, align 1
  %6814 = lshr i64 %6792, 63
  %6815 = trunc i64 %6814 to i8
  %6816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6815, i8* %6816, align 1
  %6817 = lshr i64 %6788, 63
  %6818 = lshr i64 %6789, 63
  %6819 = xor i64 %6814, %6817
  %6820 = xor i64 %6814, %6818
  %6821 = add i64 %6819, %6820
  %6822 = icmp eq i64 %6821, 2
  %6823 = zext i1 %6822 to i8
  %6824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6823, i8* %6824, align 1
  store %struct.Memory* %loadMem_47aeeb, %struct.Memory** %MEMORY
  %loadMem_47aeee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6826 = getelementptr inbounds %struct.GPR, %struct.GPR* %6825, i32 0, i32 33
  %6827 = getelementptr inbounds %struct.Reg, %struct.Reg* %6826, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %6827 to i64*
  %6828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6829 = getelementptr inbounds %struct.GPR, %struct.GPR* %6828, i32 0, i32 9
  %6830 = getelementptr inbounds %struct.Reg, %struct.Reg* %6829, i32 0, i32 0
  %RSI.i238 = bitcast %union.anon* %6830 to i64*
  %6831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6832 = getelementptr inbounds %struct.GPR, %struct.GPR* %6831, i32 0, i32 15
  %6833 = getelementptr inbounds %struct.Reg, %struct.Reg* %6832, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %6833 to i64*
  %6834 = load i64, i64* %RBP.i239
  %6835 = sub i64 %6834, 8
  %6836 = load i64, i64* %PC.i237
  %6837 = add i64 %6836, 4
  store i64 %6837, i64* %PC.i237
  %6838 = inttoptr i64 %6835 to i32*
  %6839 = load i32, i32* %6838
  %6840 = sext i32 %6839 to i64
  store i64 %6840, i64* %RSI.i238, align 8
  store %struct.Memory* %loadMem_47aeee, %struct.Memory** %MEMORY
  %loadMem_47aef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6842 = getelementptr inbounds %struct.GPR, %struct.GPR* %6841, i32 0, i32 33
  %6843 = getelementptr inbounds %struct.Reg, %struct.Reg* %6842, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %6843 to i64*
  %6844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6845 = getelementptr inbounds %struct.GPR, %struct.GPR* %6844, i32 0, i32 9
  %6846 = getelementptr inbounds %struct.Reg, %struct.Reg* %6845, i32 0, i32 0
  %RSI.i236 = bitcast %union.anon* %6846 to i64*
  %6847 = load i64, i64* %RSI.i236
  %6848 = load i64, i64* %PC.i235
  %6849 = add i64 %6848, 4
  store i64 %6849, i64* %PC.i235
  %6850 = shl i64 %6847, 4
  %6851 = icmp slt i64 %6850, 0
  %6852 = shl i64 %6850, 1
  store i64 %6852, i64* %RSI.i236, align 8
  %6853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6854 = zext i1 %6851 to i8
  store i8 %6854, i8* %6853, align 1
  %6855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6856 = trunc i64 %6852 to i32
  %6857 = and i32 %6856, 254
  %6858 = call i32 @llvm.ctpop.i32(i32 %6857)
  %6859 = trunc i32 %6858 to i8
  %6860 = and i8 %6859, 1
  %6861 = xor i8 %6860, 1
  store i8 %6861, i8* %6855, align 1
  %6862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6862, align 1
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6864 = icmp eq i64 %6852, 0
  %6865 = zext i1 %6864 to i8
  store i8 %6865, i8* %6863, align 1
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6867 = lshr i64 %6852, 63
  %6868 = trunc i64 %6867 to i8
  store i8 %6868, i8* %6866, align 1
  %6869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6869, align 1
  store %struct.Memory* %loadMem_47aef2, %struct.Memory** %MEMORY
  %loadMem_47aef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6871 = getelementptr inbounds %struct.GPR, %struct.GPR* %6870, i32 0, i32 33
  %6872 = getelementptr inbounds %struct.Reg, %struct.Reg* %6871, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6872 to i64*
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6874 = getelementptr inbounds %struct.GPR, %struct.GPR* %6873, i32 0, i32 9
  %6875 = getelementptr inbounds %struct.Reg, %struct.Reg* %6874, i32 0, i32 0
  %RSI.i233 = bitcast %union.anon* %6875 to i64*
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6877 = getelementptr inbounds %struct.GPR, %struct.GPR* %6876, i32 0, i32 11
  %6878 = getelementptr inbounds %struct.Reg, %struct.Reg* %6877, i32 0, i32 0
  %RDI.i234 = bitcast %union.anon* %6878 to i64*
  %6879 = load i64, i64* %RDI.i234
  %6880 = load i64, i64* %RSI.i233
  %6881 = load i64, i64* %PC.i232
  %6882 = add i64 %6881, 3
  store i64 %6882, i64* %PC.i232
  %6883 = add i64 %6880, %6879
  store i64 %6883, i64* %RDI.i234, align 8
  %6884 = icmp ult i64 %6883, %6879
  %6885 = icmp ult i64 %6883, %6880
  %6886 = or i1 %6884, %6885
  %6887 = zext i1 %6886 to i8
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6887, i8* %6888, align 1
  %6889 = trunc i64 %6883 to i32
  %6890 = and i32 %6889, 255
  %6891 = call i32 @llvm.ctpop.i32(i32 %6890)
  %6892 = trunc i32 %6891 to i8
  %6893 = and i8 %6892, 1
  %6894 = xor i8 %6893, 1
  %6895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6894, i8* %6895, align 1
  %6896 = xor i64 %6880, %6879
  %6897 = xor i64 %6896, %6883
  %6898 = lshr i64 %6897, 4
  %6899 = trunc i64 %6898 to i8
  %6900 = and i8 %6899, 1
  %6901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6900, i8* %6901, align 1
  %6902 = icmp eq i64 %6883, 0
  %6903 = zext i1 %6902 to i8
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6903, i8* %6904, align 1
  %6905 = lshr i64 %6883, 63
  %6906 = trunc i64 %6905 to i8
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6906, i8* %6907, align 1
  %6908 = lshr i64 %6879, 63
  %6909 = lshr i64 %6880, 63
  %6910 = xor i64 %6905, %6908
  %6911 = xor i64 %6905, %6909
  %6912 = add i64 %6910, %6911
  %6913 = icmp eq i64 %6912, 2
  %6914 = zext i1 %6913 to i8
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6914, i8* %6915, align 1
  store %struct.Memory* %loadMem_47aef6, %struct.Memory** %MEMORY
  %loadMem_47aef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6917 = getelementptr inbounds %struct.GPR, %struct.GPR* %6916, i32 0, i32 33
  %6918 = getelementptr inbounds %struct.Reg, %struct.Reg* %6917, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %6918 to i64*
  %6919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6920 = getelementptr inbounds %struct.GPR, %struct.GPR* %6919, i32 0, i32 9
  %6921 = getelementptr inbounds %struct.Reg, %struct.Reg* %6920, i32 0, i32 0
  %RSI.i230 = bitcast %union.anon* %6921 to i64*
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6923 = getelementptr inbounds %struct.GPR, %struct.GPR* %6922, i32 0, i32 15
  %6924 = getelementptr inbounds %struct.Reg, %struct.Reg* %6923, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %6924 to i64*
  %6925 = load i64, i64* %RBP.i231
  %6926 = sub i64 %6925, 4
  %6927 = load i64, i64* %PC.i229
  %6928 = add i64 %6927, 4
  store i64 %6928, i64* %PC.i229
  %6929 = inttoptr i64 %6926 to i32*
  %6930 = load i32, i32* %6929
  %6931 = sext i32 %6930 to i64
  store i64 %6931, i64* %RSI.i230, align 8
  store %struct.Memory* %loadMem_47aef9, %struct.Memory** %MEMORY
  %loadMem_47aefd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6933 = getelementptr inbounds %struct.GPR, %struct.GPR* %6932, i32 0, i32 33
  %6934 = getelementptr inbounds %struct.Reg, %struct.Reg* %6933, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %6934 to i64*
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6936 = getelementptr inbounds %struct.GPR, %struct.GPR* %6935, i32 0, i32 1
  %6937 = getelementptr inbounds %struct.Reg, %struct.Reg* %6936, i32 0, i32 0
  %EAX.i226 = bitcast %union.anon* %6937 to i32*
  %6938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6939 = getelementptr inbounds %struct.GPR, %struct.GPR* %6938, i32 0, i32 9
  %6940 = getelementptr inbounds %struct.Reg, %struct.Reg* %6939, i32 0, i32 0
  %RSI.i227 = bitcast %union.anon* %6940 to i64*
  %6941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6942 = getelementptr inbounds %struct.GPR, %struct.GPR* %6941, i32 0, i32 11
  %6943 = getelementptr inbounds %struct.Reg, %struct.Reg* %6942, i32 0, i32 0
  %RDI.i228 = bitcast %union.anon* %6943 to i64*
  %6944 = load i64, i64* %RDI.i228
  %6945 = load i64, i64* %RSI.i227
  %6946 = mul i64 %6945, 4
  %6947 = add i64 %6946, %6944
  %6948 = load i32, i32* %EAX.i226
  %6949 = zext i32 %6948 to i64
  %6950 = load i64, i64* %PC.i225
  %6951 = add i64 %6950, 3
  store i64 %6951, i64* %PC.i225
  %6952 = inttoptr i64 %6947 to i32*
  store i32 %6948, i32* %6952
  store %struct.Memory* %loadMem_47aefd, %struct.Memory** %MEMORY
  %loadMem_47af00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6954 = getelementptr inbounds %struct.GPR, %struct.GPR* %6953, i32 0, i32 33
  %6955 = getelementptr inbounds %struct.Reg, %struct.Reg* %6954, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %6955 to i64*
  %6956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6957 = getelementptr inbounds %struct.GPR, %struct.GPR* %6956, i32 0, i32 9
  %6958 = getelementptr inbounds %struct.Reg, %struct.Reg* %6957, i32 0, i32 0
  %RSI.i223 = bitcast %union.anon* %6958 to i64*
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6960 = getelementptr inbounds %struct.GPR, %struct.GPR* %6959, i32 0, i32 15
  %6961 = getelementptr inbounds %struct.Reg, %struct.Reg* %6960, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %6961 to i64*
  %6962 = load i64, i64* %RBP.i224
  %6963 = sub i64 %6962, 12
  %6964 = load i64, i64* %PC.i222
  %6965 = add i64 %6964, 4
  store i64 %6965, i64* %PC.i222
  %6966 = inttoptr i64 %6963 to i32*
  %6967 = load i32, i32* %6966
  %6968 = sext i32 %6967 to i64
  store i64 %6968, i64* %RSI.i223, align 8
  store %struct.Memory* %loadMem_47af00, %struct.Memory** %MEMORY
  %loadMem_47af04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6970 = getelementptr inbounds %struct.GPR, %struct.GPR* %6969, i32 0, i32 33
  %6971 = getelementptr inbounds %struct.Reg, %struct.Reg* %6970, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %6971 to i64*
  %6972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6973 = getelementptr inbounds %struct.GPR, %struct.GPR* %6972, i32 0, i32 9
  %6974 = getelementptr inbounds %struct.Reg, %struct.Reg* %6973, i32 0, i32 0
  %RSI.i221 = bitcast %union.anon* %6974 to i64*
  %6975 = load i64, i64* %RSI.i221
  %6976 = load i64, i64* %PC.i220
  %6977 = add i64 %6976, 4
  store i64 %6977, i64* %PC.i220
  %6978 = shl i64 %6975, 7
  %6979 = icmp slt i64 %6978, 0
  %6980 = shl i64 %6978, 1
  store i64 %6980, i64* %RSI.i221, align 8
  %6981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6982 = zext i1 %6979 to i8
  store i8 %6982, i8* %6981, align 1
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6984 = trunc i64 %6980 to i32
  store i8 1, i8* %6983, align 1
  %6985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6985, align 1
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6987 = icmp eq i64 %6980, 0
  %6988 = zext i1 %6987 to i8
  store i8 %6988, i8* %6986, align 1
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6990 = lshr i64 %6980, 63
  %6991 = trunc i64 %6990 to i8
  store i8 %6991, i8* %6989, align 1
  %6992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6992, align 1
  store %struct.Memory* %loadMem_47af04, %struct.Memory** %MEMORY
  %loadMem_47af08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6994 = getelementptr inbounds %struct.GPR, %struct.GPR* %6993, i32 0, i32 33
  %6995 = getelementptr inbounds %struct.Reg, %struct.Reg* %6994, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %6995 to i64*
  %6996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6997 = getelementptr inbounds %struct.GPR, %struct.GPR* %6996, i32 0, i32 5
  %6998 = getelementptr inbounds %struct.Reg, %struct.Reg* %6997, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %6998 to i64*
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7000 = getelementptr inbounds %struct.GPR, %struct.GPR* %6999, i32 0, i32 9
  %7001 = getelementptr inbounds %struct.Reg, %struct.Reg* %7000, i32 0, i32 0
  %RSI.i219 = bitcast %union.anon* %7001 to i64*
  %7002 = load i64, i64* %RCX.i218
  %7003 = load i64, i64* %RSI.i219
  %7004 = load i64, i64* %PC.i217
  %7005 = add i64 %7004, 3
  store i64 %7005, i64* %PC.i217
  %7006 = add i64 %7003, %7002
  store i64 %7006, i64* %RCX.i218, align 8
  %7007 = icmp ult i64 %7006, %7002
  %7008 = icmp ult i64 %7006, %7003
  %7009 = or i1 %7007, %7008
  %7010 = zext i1 %7009 to i8
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7010, i8* %7011, align 1
  %7012 = trunc i64 %7006 to i32
  %7013 = and i32 %7012, 255
  %7014 = call i32 @llvm.ctpop.i32(i32 %7013)
  %7015 = trunc i32 %7014 to i8
  %7016 = and i8 %7015, 1
  %7017 = xor i8 %7016, 1
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7017, i8* %7018, align 1
  %7019 = xor i64 %7003, %7002
  %7020 = xor i64 %7019, %7006
  %7021 = lshr i64 %7020, 4
  %7022 = trunc i64 %7021 to i8
  %7023 = and i8 %7022, 1
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7023, i8* %7024, align 1
  %7025 = icmp eq i64 %7006, 0
  %7026 = zext i1 %7025 to i8
  %7027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7026, i8* %7027, align 1
  %7028 = lshr i64 %7006, 63
  %7029 = trunc i64 %7028 to i8
  %7030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7029, i8* %7030, align 1
  %7031 = lshr i64 %7002, 63
  %7032 = lshr i64 %7003, 63
  %7033 = xor i64 %7028, %7031
  %7034 = xor i64 %7028, %7032
  %7035 = add i64 %7033, %7034
  %7036 = icmp eq i64 %7035, 2
  %7037 = zext i1 %7036 to i8
  %7038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7037, i8* %7038, align 1
  store %struct.Memory* %loadMem_47af08, %struct.Memory** %MEMORY
  %loadMem_47af0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7040 = getelementptr inbounds %struct.GPR, %struct.GPR* %7039, i32 0, i32 33
  %7041 = getelementptr inbounds %struct.Reg, %struct.Reg* %7040, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %7041 to i64*
  %7042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7043 = getelementptr inbounds %struct.GPR, %struct.GPR* %7042, i32 0, i32 9
  %7044 = getelementptr inbounds %struct.Reg, %struct.Reg* %7043, i32 0, i32 0
  %RSI.i215 = bitcast %union.anon* %7044 to i64*
  %7045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7046 = getelementptr inbounds %struct.GPR, %struct.GPR* %7045, i32 0, i32 15
  %7047 = getelementptr inbounds %struct.Reg, %struct.Reg* %7046, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %7047 to i64*
  %7048 = load i64, i64* %RBP.i216
  %7049 = sub i64 %7048, 8
  %7050 = load i64, i64* %PC.i214
  %7051 = add i64 %7050, 4
  store i64 %7051, i64* %PC.i214
  %7052 = inttoptr i64 %7049 to i32*
  %7053 = load i32, i32* %7052
  %7054 = sext i32 %7053 to i64
  store i64 %7054, i64* %RSI.i215, align 8
  store %struct.Memory* %loadMem_47af0b, %struct.Memory** %MEMORY
  %loadMem_47af0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7056 = getelementptr inbounds %struct.GPR, %struct.GPR* %7055, i32 0, i32 33
  %7057 = getelementptr inbounds %struct.Reg, %struct.Reg* %7056, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %7057 to i64*
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7059 = getelementptr inbounds %struct.GPR, %struct.GPR* %7058, i32 0, i32 9
  %7060 = getelementptr inbounds %struct.Reg, %struct.Reg* %7059, i32 0, i32 0
  %RSI.i213 = bitcast %union.anon* %7060 to i64*
  %7061 = load i64, i64* %RSI.i213
  %7062 = load i64, i64* %PC.i212
  %7063 = add i64 %7062, 4
  store i64 %7063, i64* %PC.i212
  %7064 = shl i64 %7061, 4
  %7065 = icmp slt i64 %7064, 0
  %7066 = shl i64 %7064, 1
  store i64 %7066, i64* %RSI.i213, align 8
  %7067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7068 = zext i1 %7065 to i8
  store i8 %7068, i8* %7067, align 1
  %7069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7070 = trunc i64 %7066 to i32
  %7071 = and i32 %7070, 254
  %7072 = call i32 @llvm.ctpop.i32(i32 %7071)
  %7073 = trunc i32 %7072 to i8
  %7074 = and i8 %7073, 1
  %7075 = xor i8 %7074, 1
  store i8 %7075, i8* %7069, align 1
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7076, align 1
  %7077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7078 = icmp eq i64 %7066, 0
  %7079 = zext i1 %7078 to i8
  store i8 %7079, i8* %7077, align 1
  %7080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7081 = lshr i64 %7066, 63
  %7082 = trunc i64 %7081 to i8
  store i8 %7082, i8* %7080, align 1
  %7083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7083, align 1
  store %struct.Memory* %loadMem_47af0f, %struct.Memory** %MEMORY
  %loadMem_47af13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7085 = getelementptr inbounds %struct.GPR, %struct.GPR* %7084, i32 0, i32 33
  %7086 = getelementptr inbounds %struct.Reg, %struct.Reg* %7085, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %7086 to i64*
  %7087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7088 = getelementptr inbounds %struct.GPR, %struct.GPR* %7087, i32 0, i32 5
  %7089 = getelementptr inbounds %struct.Reg, %struct.Reg* %7088, i32 0, i32 0
  %RCX.i210 = bitcast %union.anon* %7089 to i64*
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7091 = getelementptr inbounds %struct.GPR, %struct.GPR* %7090, i32 0, i32 9
  %7092 = getelementptr inbounds %struct.Reg, %struct.Reg* %7091, i32 0, i32 0
  %RSI.i211 = bitcast %union.anon* %7092 to i64*
  %7093 = load i64, i64* %RCX.i210
  %7094 = load i64, i64* %RSI.i211
  %7095 = load i64, i64* %PC.i209
  %7096 = add i64 %7095, 3
  store i64 %7096, i64* %PC.i209
  %7097 = add i64 %7094, %7093
  store i64 %7097, i64* %RCX.i210, align 8
  %7098 = icmp ult i64 %7097, %7093
  %7099 = icmp ult i64 %7097, %7094
  %7100 = or i1 %7098, %7099
  %7101 = zext i1 %7100 to i8
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7101, i8* %7102, align 1
  %7103 = trunc i64 %7097 to i32
  %7104 = and i32 %7103, 255
  %7105 = call i32 @llvm.ctpop.i32(i32 %7104)
  %7106 = trunc i32 %7105 to i8
  %7107 = and i8 %7106, 1
  %7108 = xor i8 %7107, 1
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7108, i8* %7109, align 1
  %7110 = xor i64 %7094, %7093
  %7111 = xor i64 %7110, %7097
  %7112 = lshr i64 %7111, 4
  %7113 = trunc i64 %7112 to i8
  %7114 = and i8 %7113, 1
  %7115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7114, i8* %7115, align 1
  %7116 = icmp eq i64 %7097, 0
  %7117 = zext i1 %7116 to i8
  %7118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7117, i8* %7118, align 1
  %7119 = lshr i64 %7097, 63
  %7120 = trunc i64 %7119 to i8
  %7121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7120, i8* %7121, align 1
  %7122 = lshr i64 %7093, 63
  %7123 = lshr i64 %7094, 63
  %7124 = xor i64 %7119, %7122
  %7125 = xor i64 %7119, %7123
  %7126 = add i64 %7124, %7125
  %7127 = icmp eq i64 %7126, 2
  %7128 = zext i1 %7127 to i8
  %7129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7128, i8* %7129, align 1
  store %struct.Memory* %loadMem_47af13, %struct.Memory** %MEMORY
  %loadMem_47af16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7131 = getelementptr inbounds %struct.GPR, %struct.GPR* %7130, i32 0, i32 33
  %7132 = getelementptr inbounds %struct.Reg, %struct.Reg* %7131, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %7132 to i64*
  %7133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7134 = getelementptr inbounds %struct.GPR, %struct.GPR* %7133, i32 0, i32 9
  %7135 = getelementptr inbounds %struct.Reg, %struct.Reg* %7134, i32 0, i32 0
  %RSI.i207 = bitcast %union.anon* %7135 to i64*
  %7136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7137 = getelementptr inbounds %struct.GPR, %struct.GPR* %7136, i32 0, i32 15
  %7138 = getelementptr inbounds %struct.Reg, %struct.Reg* %7137, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %7138 to i64*
  %7139 = load i64, i64* %RBP.i208
  %7140 = sub i64 %7139, 4
  %7141 = load i64, i64* %PC.i206
  %7142 = add i64 %7141, 4
  store i64 %7142, i64* %PC.i206
  %7143 = inttoptr i64 %7140 to i32*
  %7144 = load i32, i32* %7143
  %7145 = sext i32 %7144 to i64
  store i64 %7145, i64* %RSI.i207, align 8
  store %struct.Memory* %loadMem_47af16, %struct.Memory** %MEMORY
  %loadMem_47af1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7147 = getelementptr inbounds %struct.GPR, %struct.GPR* %7146, i32 0, i32 33
  %7148 = getelementptr inbounds %struct.Reg, %struct.Reg* %7147, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %7148 to i64*
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7150 = getelementptr inbounds %struct.GPR, %struct.GPR* %7149, i32 0, i32 1
  %7151 = getelementptr inbounds %struct.Reg, %struct.Reg* %7150, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %7151 to i64*
  %7152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7153 = getelementptr inbounds %struct.GPR, %struct.GPR* %7152, i32 0, i32 5
  %7154 = getelementptr inbounds %struct.Reg, %struct.Reg* %7153, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %7154 to i64*
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7156 = getelementptr inbounds %struct.GPR, %struct.GPR* %7155, i32 0, i32 9
  %7157 = getelementptr inbounds %struct.Reg, %struct.Reg* %7156, i32 0, i32 0
  %RSI.i205 = bitcast %union.anon* %7157 to i64*
  %7158 = load i64, i64* %RCX.i204
  %7159 = load i64, i64* %RSI.i205
  %7160 = mul i64 %7159, 4
  %7161 = add i64 %7160, %7158
  %7162 = load i64, i64* %PC.i202
  %7163 = add i64 %7162, 3
  store i64 %7163, i64* %PC.i202
  %7164 = inttoptr i64 %7161 to i32*
  %7165 = load i32, i32* %7164
  %7166 = zext i32 %7165 to i64
  store i64 %7166, i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_47af1a, %struct.Memory** %MEMORY
  %loadMem_47af1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7168 = getelementptr inbounds %struct.GPR, %struct.GPR* %7167, i32 0, i32 33
  %7169 = getelementptr inbounds %struct.Reg, %struct.Reg* %7168, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %7169 to i64*
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7171 = getelementptr inbounds %struct.GPR, %struct.GPR* %7170, i32 0, i32 5
  %7172 = getelementptr inbounds %struct.Reg, %struct.Reg* %7171, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %7172 to i64*
  %7173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7174 = getelementptr inbounds %struct.GPR, %struct.GPR* %7173, i32 0, i32 15
  %7175 = getelementptr inbounds %struct.Reg, %struct.Reg* %7174, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %7175 to i64*
  %7176 = load i64, i64* %RBP.i201
  %7177 = sub i64 %7176, 16
  %7178 = load i64, i64* %PC.i199
  %7179 = add i64 %7178, 4
  store i64 %7179, i64* %PC.i199
  %7180 = inttoptr i64 %7177 to i32*
  %7181 = load i32, i32* %7180
  %7182 = sext i32 %7181 to i64
  store i64 %7182, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_47af1d, %struct.Memory** %MEMORY
  %loadMem_47af21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 33
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %7185 to i64*
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7187 = getelementptr inbounds %struct.GPR, %struct.GPR* %7186, i32 0, i32 17
  %7188 = getelementptr inbounds %struct.Reg, %struct.Reg* %7187, i32 0, i32 0
  %R8D.i197 = bitcast %union.anon* %7188 to i32*
  %7189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7190 = getelementptr inbounds %struct.GPR, %struct.GPR* %7189, i32 0, i32 5
  %7191 = getelementptr inbounds %struct.Reg, %struct.Reg* %7190, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %7191 to i64*
  %7192 = bitcast i32* %R8D.i197 to i64*
  %7193 = load i64, i64* %RCX.i198
  %7194 = mul i64 %7193, 2
  %7195 = add i64 %7194, 4952704
  %7196 = load i64, i64* %PC.i196
  %7197 = add i64 %7196, 9
  store i64 %7197, i64* %PC.i196
  %7198 = inttoptr i64 %7195 to i16*
  %7199 = load i16, i16* %7198
  %7200 = sext i16 %7199 to i64
  %7201 = and i64 %7200, 4294967295
  store i64 %7201, i64* %7192, align 8
  store %struct.Memory* %loadMem_47af21, %struct.Memory** %MEMORY
  %loadMem_47af2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7203 = getelementptr inbounds %struct.GPR, %struct.GPR* %7202, i32 0, i32 33
  %7204 = getelementptr inbounds %struct.Reg, %struct.Reg* %7203, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %7204 to i64*
  %7205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7206 = getelementptr inbounds %struct.GPR, %struct.GPR* %7205, i32 0, i32 17
  %7207 = getelementptr inbounds %struct.Reg, %struct.Reg* %7206, i32 0, i32 0
  %R8D.i194 = bitcast %union.anon* %7207 to i32*
  %7208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7209 = getelementptr inbounds %struct.GPR, %struct.GPR* %7208, i32 0, i32 1
  %7210 = getelementptr inbounds %struct.Reg, %struct.Reg* %7209, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %7210 to i64*
  %7211 = load i64, i64* %RAX.i195
  %7212 = load i32, i32* %R8D.i194
  %7213 = zext i32 %7212 to i64
  %7214 = load i64, i64* %PC.i193
  %7215 = add i64 %7214, 4
  store i64 %7215, i64* %PC.i193
  %7216 = shl i64 %7211, 32
  %7217 = ashr exact i64 %7216, 32
  %7218 = shl i64 %7213, 32
  %7219 = ashr exact i64 %7218, 32
  %7220 = mul i64 %7219, %7217
  %7221 = trunc i64 %7220 to i32
  %7222 = and i64 %7220, 4294967295
  store i64 %7222, i64* %RAX.i195, align 8
  %7223 = shl i64 %7220, 32
  %7224 = ashr exact i64 %7223, 32
  %7225 = icmp ne i64 %7224, %7220
  %7226 = zext i1 %7225 to i8
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7226, i8* %7227, align 1
  %7228 = and i32 %7221, 255
  %7229 = call i32 @llvm.ctpop.i32(i32 %7228)
  %7230 = trunc i32 %7229 to i8
  %7231 = and i8 %7230, 1
  %7232 = xor i8 %7231, 1
  %7233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7232, i8* %7233, align 1
  %7234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7234, align 1
  %7235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7235, align 1
  %7236 = lshr i32 %7221, 31
  %7237 = trunc i32 %7236 to i8
  %7238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7237, i8* %7238, align 1
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7226, i8* %7239, align 1
  store %struct.Memory* %loadMem_47af2a, %struct.Memory** %MEMORY
  %loadMem_47af2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7241 = getelementptr inbounds %struct.GPR, %struct.GPR* %7240, i32 0, i32 33
  %7242 = getelementptr inbounds %struct.Reg, %struct.Reg* %7241, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %7242 to i64*
  %7243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7244 = getelementptr inbounds %struct.GPR, %struct.GPR* %7243, i32 0, i32 5
  %7245 = getelementptr inbounds %struct.Reg, %struct.Reg* %7244, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %7245 to i64*
  %7246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7247 = getelementptr inbounds %struct.GPR, %struct.GPR* %7246, i32 0, i32 15
  %7248 = getelementptr inbounds %struct.Reg, %struct.Reg* %7247, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %7248 to i64*
  %7249 = load i64, i64* %RBP.i192
  %7250 = sub i64 %7249, 12
  %7251 = load i64, i64* %PC.i190
  %7252 = add i64 %7251, 4
  store i64 %7252, i64* %PC.i190
  %7253 = inttoptr i64 %7250 to i32*
  %7254 = load i32, i32* %7253
  %7255 = sext i32 %7254 to i64
  store i64 %7255, i64* %RCX.i191, align 8
  store %struct.Memory* %loadMem_47af2e, %struct.Memory** %MEMORY
  %loadMem_47af32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7257 = getelementptr inbounds %struct.GPR, %struct.GPR* %7256, i32 0, i32 33
  %7258 = getelementptr inbounds %struct.Reg, %struct.Reg* %7257, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %7258 to i64*
  %7259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7260 = getelementptr inbounds %struct.GPR, %struct.GPR* %7259, i32 0, i32 5
  %7261 = getelementptr inbounds %struct.Reg, %struct.Reg* %7260, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %7261 to i64*
  %7262 = load i64, i64* %RCX.i189
  %7263 = load i64, i64* %PC.i188
  %7264 = add i64 %7263, 4
  store i64 %7264, i64* %PC.i188
  %7265 = shl i64 %7262, 7
  %7266 = icmp slt i64 %7265, 0
  %7267 = shl i64 %7265, 1
  store i64 %7267, i64* %RCX.i189, align 8
  %7268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7269 = zext i1 %7266 to i8
  store i8 %7269, i8* %7268, align 1
  %7270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7271 = trunc i64 %7267 to i32
  store i8 1, i8* %7270, align 1
  %7272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7272, align 1
  %7273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7274 = icmp eq i64 %7267, 0
  %7275 = zext i1 %7274 to i8
  store i8 %7275, i8* %7273, align 1
  %7276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7277 = lshr i64 %7267, 63
  %7278 = trunc i64 %7277 to i8
  store i8 %7278, i8* %7276, align 1
  %7279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7279, align 1
  store %struct.Memory* %loadMem_47af32, %struct.Memory** %MEMORY
  %loadMem_47af36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7281 = getelementptr inbounds %struct.GPR, %struct.GPR* %7280, i32 0, i32 33
  %7282 = getelementptr inbounds %struct.Reg, %struct.Reg* %7281, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %7282 to i64*
  %7283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7284 = getelementptr inbounds %struct.GPR, %struct.GPR* %7283, i32 0, i32 9
  %7285 = getelementptr inbounds %struct.Reg, %struct.Reg* %7284, i32 0, i32 0
  %RSI.i186 = bitcast %union.anon* %7285 to i64*
  %7286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7287 = getelementptr inbounds %struct.GPR, %struct.GPR* %7286, i32 0, i32 15
  %7288 = getelementptr inbounds %struct.Reg, %struct.Reg* %7287, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %7288 to i64*
  %7289 = load i64, i64* %RBP.i187
  %7290 = sub i64 %7289, 72
  %7291 = load i64, i64* %PC.i185
  %7292 = add i64 %7291, 4
  store i64 %7292, i64* %PC.i185
  %7293 = inttoptr i64 %7290 to i64*
  %7294 = load i64, i64* %7293
  store i64 %7294, i64* %RSI.i186, align 8
  store %struct.Memory* %loadMem_47af36, %struct.Memory** %MEMORY
  %loadMem_47af3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7296 = getelementptr inbounds %struct.GPR, %struct.GPR* %7295, i32 0, i32 33
  %7297 = getelementptr inbounds %struct.Reg, %struct.Reg* %7296, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %7297 to i64*
  %7298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7299 = getelementptr inbounds %struct.GPR, %struct.GPR* %7298, i32 0, i32 5
  %7300 = getelementptr inbounds %struct.Reg, %struct.Reg* %7299, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %7300 to i64*
  %7301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7302 = getelementptr inbounds %struct.GPR, %struct.GPR* %7301, i32 0, i32 9
  %7303 = getelementptr inbounds %struct.Reg, %struct.Reg* %7302, i32 0, i32 0
  %RSI.i184 = bitcast %union.anon* %7303 to i64*
  %7304 = load i64, i64* %RSI.i184
  %7305 = load i64, i64* %RCX.i183
  %7306 = load i64, i64* %PC.i182
  %7307 = add i64 %7306, 3
  store i64 %7307, i64* %PC.i182
  %7308 = add i64 %7305, %7304
  store i64 %7308, i64* %RSI.i184, align 8
  %7309 = icmp ult i64 %7308, %7304
  %7310 = icmp ult i64 %7308, %7305
  %7311 = or i1 %7309, %7310
  %7312 = zext i1 %7311 to i8
  %7313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7312, i8* %7313, align 1
  %7314 = trunc i64 %7308 to i32
  %7315 = and i32 %7314, 255
  %7316 = call i32 @llvm.ctpop.i32(i32 %7315)
  %7317 = trunc i32 %7316 to i8
  %7318 = and i8 %7317, 1
  %7319 = xor i8 %7318, 1
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7319, i8* %7320, align 1
  %7321 = xor i64 %7305, %7304
  %7322 = xor i64 %7321, %7308
  %7323 = lshr i64 %7322, 4
  %7324 = trunc i64 %7323 to i8
  %7325 = and i8 %7324, 1
  %7326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7325, i8* %7326, align 1
  %7327 = icmp eq i64 %7308, 0
  %7328 = zext i1 %7327 to i8
  %7329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7328, i8* %7329, align 1
  %7330 = lshr i64 %7308, 63
  %7331 = trunc i64 %7330 to i8
  %7332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7331, i8* %7332, align 1
  %7333 = lshr i64 %7304, 63
  %7334 = lshr i64 %7305, 63
  %7335 = xor i64 %7330, %7333
  %7336 = xor i64 %7330, %7334
  %7337 = add i64 %7335, %7336
  %7338 = icmp eq i64 %7337, 2
  %7339 = zext i1 %7338 to i8
  %7340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7339, i8* %7340, align 1
  store %struct.Memory* %loadMem_47af3a, %struct.Memory** %MEMORY
  %loadMem_47af3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7342 = getelementptr inbounds %struct.GPR, %struct.GPR* %7341, i32 0, i32 33
  %7343 = getelementptr inbounds %struct.Reg, %struct.Reg* %7342, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %7343 to i64*
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7345 = getelementptr inbounds %struct.GPR, %struct.GPR* %7344, i32 0, i32 5
  %7346 = getelementptr inbounds %struct.Reg, %struct.Reg* %7345, i32 0, i32 0
  %RCX.i180 = bitcast %union.anon* %7346 to i64*
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7348 = getelementptr inbounds %struct.GPR, %struct.GPR* %7347, i32 0, i32 15
  %7349 = getelementptr inbounds %struct.Reg, %struct.Reg* %7348, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %7349 to i64*
  %7350 = load i64, i64* %RBP.i181
  %7351 = sub i64 %7350, 8
  %7352 = load i64, i64* %PC.i179
  %7353 = add i64 %7352, 4
  store i64 %7353, i64* %PC.i179
  %7354 = inttoptr i64 %7351 to i32*
  %7355 = load i32, i32* %7354
  %7356 = sext i32 %7355 to i64
  store i64 %7356, i64* %RCX.i180, align 8
  store %struct.Memory* %loadMem_47af3d, %struct.Memory** %MEMORY
  %loadMem_47af41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7358 = getelementptr inbounds %struct.GPR, %struct.GPR* %7357, i32 0, i32 33
  %7359 = getelementptr inbounds %struct.Reg, %struct.Reg* %7358, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %7359 to i64*
  %7360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7361 = getelementptr inbounds %struct.GPR, %struct.GPR* %7360, i32 0, i32 5
  %7362 = getelementptr inbounds %struct.Reg, %struct.Reg* %7361, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %7362 to i64*
  %7363 = load i64, i64* %RCX.i178
  %7364 = load i64, i64* %PC.i177
  %7365 = add i64 %7364, 4
  store i64 %7365, i64* %PC.i177
  %7366 = shl i64 %7363, 4
  %7367 = icmp slt i64 %7366, 0
  %7368 = shl i64 %7366, 1
  store i64 %7368, i64* %RCX.i178, align 8
  %7369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7370 = zext i1 %7367 to i8
  store i8 %7370, i8* %7369, align 1
  %7371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7372 = trunc i64 %7368 to i32
  %7373 = and i32 %7372, 254
  %7374 = call i32 @llvm.ctpop.i32(i32 %7373)
  %7375 = trunc i32 %7374 to i8
  %7376 = and i8 %7375, 1
  %7377 = xor i8 %7376, 1
  store i8 %7377, i8* %7371, align 1
  %7378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7378, align 1
  %7379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7380 = icmp eq i64 %7368, 0
  %7381 = zext i1 %7380 to i8
  store i8 %7381, i8* %7379, align 1
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7383 = lshr i64 %7368, 63
  %7384 = trunc i64 %7383 to i8
  store i8 %7384, i8* %7382, align 1
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7385, align 1
  store %struct.Memory* %loadMem_47af41, %struct.Memory** %MEMORY
  %loadMem_47af45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7387 = getelementptr inbounds %struct.GPR, %struct.GPR* %7386, i32 0, i32 33
  %7388 = getelementptr inbounds %struct.Reg, %struct.Reg* %7387, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %7388 to i64*
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7390 = getelementptr inbounds %struct.GPR, %struct.GPR* %7389, i32 0, i32 5
  %7391 = getelementptr inbounds %struct.Reg, %struct.Reg* %7390, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %7391 to i64*
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7393 = getelementptr inbounds %struct.GPR, %struct.GPR* %7392, i32 0, i32 9
  %7394 = getelementptr inbounds %struct.Reg, %struct.Reg* %7393, i32 0, i32 0
  %RSI.i176 = bitcast %union.anon* %7394 to i64*
  %7395 = load i64, i64* %RSI.i176
  %7396 = load i64, i64* %RCX.i175
  %7397 = load i64, i64* %PC.i174
  %7398 = add i64 %7397, 3
  store i64 %7398, i64* %PC.i174
  %7399 = add i64 %7396, %7395
  store i64 %7399, i64* %RSI.i176, align 8
  %7400 = icmp ult i64 %7399, %7395
  %7401 = icmp ult i64 %7399, %7396
  %7402 = or i1 %7400, %7401
  %7403 = zext i1 %7402 to i8
  %7404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7403, i8* %7404, align 1
  %7405 = trunc i64 %7399 to i32
  %7406 = and i32 %7405, 255
  %7407 = call i32 @llvm.ctpop.i32(i32 %7406)
  %7408 = trunc i32 %7407 to i8
  %7409 = and i8 %7408, 1
  %7410 = xor i8 %7409, 1
  %7411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7410, i8* %7411, align 1
  %7412 = xor i64 %7396, %7395
  %7413 = xor i64 %7412, %7399
  %7414 = lshr i64 %7413, 4
  %7415 = trunc i64 %7414 to i8
  %7416 = and i8 %7415, 1
  %7417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7416, i8* %7417, align 1
  %7418 = icmp eq i64 %7399, 0
  %7419 = zext i1 %7418 to i8
  %7420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7419, i8* %7420, align 1
  %7421 = lshr i64 %7399, 63
  %7422 = trunc i64 %7421 to i8
  %7423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7422, i8* %7423, align 1
  %7424 = lshr i64 %7395, 63
  %7425 = lshr i64 %7396, 63
  %7426 = xor i64 %7421, %7424
  %7427 = xor i64 %7421, %7425
  %7428 = add i64 %7426, %7427
  %7429 = icmp eq i64 %7428, 2
  %7430 = zext i1 %7429 to i8
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7430, i8* %7431, align 1
  store %struct.Memory* %loadMem_47af45, %struct.Memory** %MEMORY
  %loadMem_47af48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7433 = getelementptr inbounds %struct.GPR, %struct.GPR* %7432, i32 0, i32 33
  %7434 = getelementptr inbounds %struct.Reg, %struct.Reg* %7433, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %7434 to i64*
  %7435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7436 = getelementptr inbounds %struct.GPR, %struct.GPR* %7435, i32 0, i32 5
  %7437 = getelementptr inbounds %struct.Reg, %struct.Reg* %7436, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %7437 to i64*
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7439 = getelementptr inbounds %struct.GPR, %struct.GPR* %7438, i32 0, i32 15
  %7440 = getelementptr inbounds %struct.Reg, %struct.Reg* %7439, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %7440 to i64*
  %7441 = load i64, i64* %RBP.i173
  %7442 = sub i64 %7441, 4
  %7443 = load i64, i64* %PC.i171
  %7444 = add i64 %7443, 4
  store i64 %7444, i64* %PC.i171
  %7445 = inttoptr i64 %7442 to i32*
  %7446 = load i32, i32* %7445
  %7447 = sext i32 %7446 to i64
  store i64 %7447, i64* %RCX.i172, align 8
  store %struct.Memory* %loadMem_47af48, %struct.Memory** %MEMORY
  %loadMem_47af4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7449 = getelementptr inbounds %struct.GPR, %struct.GPR* %7448, i32 0, i32 33
  %7450 = getelementptr inbounds %struct.Reg, %struct.Reg* %7449, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %7450 to i64*
  %7451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7452 = getelementptr inbounds %struct.GPR, %struct.GPR* %7451, i32 0, i32 1
  %7453 = getelementptr inbounds %struct.Reg, %struct.Reg* %7452, i32 0, i32 0
  %EAX.i168 = bitcast %union.anon* %7453 to i32*
  %7454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7455 = getelementptr inbounds %struct.GPR, %struct.GPR* %7454, i32 0, i32 5
  %7456 = getelementptr inbounds %struct.Reg, %struct.Reg* %7455, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %7456 to i64*
  %7457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7458 = getelementptr inbounds %struct.GPR, %struct.GPR* %7457, i32 0, i32 9
  %7459 = getelementptr inbounds %struct.Reg, %struct.Reg* %7458, i32 0, i32 0
  %RSI.i170 = bitcast %union.anon* %7459 to i64*
  %7460 = load i64, i64* %RSI.i170
  %7461 = load i64, i64* %RCX.i169
  %7462 = mul i64 %7461, 4
  %7463 = add i64 %7462, %7460
  %7464 = load i32, i32* %EAX.i168
  %7465 = zext i32 %7464 to i64
  %7466 = load i64, i64* %PC.i167
  %7467 = add i64 %7466, 3
  store i64 %7467, i64* %PC.i167
  %7468 = inttoptr i64 %7463 to i32*
  store i32 %7464, i32* %7468
  store %struct.Memory* %loadMem_47af4c, %struct.Memory** %MEMORY
  %loadMem_47af4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7470 = getelementptr inbounds %struct.GPR, %struct.GPR* %7469, i32 0, i32 33
  %7471 = getelementptr inbounds %struct.Reg, %struct.Reg* %7470, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %7471 to i64*
  %7472 = load i64, i64* %PC.i166
  %7473 = add i64 %7472, 219
  %7474 = load i64, i64* %PC.i166
  %7475 = add i64 %7474, 5
  store i64 %7475, i64* %PC.i166
  %7476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7473, i64* %7476, align 8
  store %struct.Memory* %loadMem_47af4f, %struct.Memory** %MEMORY
  br label %block_.L_47b02a

block_.L_47af54:                                  ; preds = %block_47ae68
  %loadMem_47af54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7478 = getelementptr inbounds %struct.GPR, %struct.GPR* %7477, i32 0, i32 33
  %7479 = getelementptr inbounds %struct.Reg, %struct.Reg* %7478, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %7479 to i64*
  %7480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7481 = getelementptr inbounds %struct.GPR, %struct.GPR* %7480, i32 0, i32 1
  %7482 = getelementptr inbounds %struct.Reg, %struct.Reg* %7481, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %7482 to i64*
  %7483 = load i64, i64* %PC.i164
  %7484 = add i64 %7483, 10
  store i64 %7484, i64* %PC.i164
  store i64 ptrtoint (%G__0x6d12c0_type* @G__0x6d12c0 to i64), i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_47af54, %struct.Memory** %MEMORY
  %loadMem_47af5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7486 = getelementptr inbounds %struct.GPR, %struct.GPR* %7485, i32 0, i32 33
  %7487 = getelementptr inbounds %struct.Reg, %struct.Reg* %7486, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %7487 to i64*
  %7488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7489 = getelementptr inbounds %struct.GPR, %struct.GPR* %7488, i32 0, i32 5
  %7490 = getelementptr inbounds %struct.Reg, %struct.Reg* %7489, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %7490 to i64*
  %7491 = load i64, i64* %PC.i162
  %7492 = add i64 %7491, 10
  store i64 %7492, i64* %PC.i162
  store i64 ptrtoint (%G__0x4b9d50_type* @G__0x4b9d50 to i64), i64* %RCX.i163, align 8
  store %struct.Memory* %loadMem_47af5e, %struct.Memory** %MEMORY
  %loadMem_47af68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7494 = getelementptr inbounds %struct.GPR, %struct.GPR* %7493, i32 0, i32 33
  %7495 = getelementptr inbounds %struct.Reg, %struct.Reg* %7494, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %7495 to i64*
  %7496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7497 = getelementptr inbounds %struct.GPR, %struct.GPR* %7496, i32 0, i32 7
  %7498 = getelementptr inbounds %struct.Reg, %struct.Reg* %7497, i32 0, i32 0
  %RDX.i161 = bitcast %union.anon* %7498 to i64*
  %7499 = load i64, i64* %PC.i160
  %7500 = add i64 %7499, 10
  store i64 %7500, i64* %PC.i160
  store i64 ptrtoint (%G__0x70f6e0_type* @G__0x70f6e0 to i64), i64* %RDX.i161, align 8
  store %struct.Memory* %loadMem_47af68, %struct.Memory** %MEMORY
  %loadMem_47af72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7502 = getelementptr inbounds %struct.GPR, %struct.GPR* %7501, i32 0, i32 33
  %7503 = getelementptr inbounds %struct.Reg, %struct.Reg* %7502, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %7503 to i64*
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7505 = getelementptr inbounds %struct.GPR, %struct.GPR* %7504, i32 0, i32 9
  %7506 = getelementptr inbounds %struct.Reg, %struct.Reg* %7505, i32 0, i32 0
  %RSI.i159 = bitcast %union.anon* %7506 to i64*
  %7507 = load i64, i64* %PC.i158
  %7508 = add i64 %7507, 10
  store i64 %7508, i64* %PC.i158
  store i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64* %RSI.i159, align 8
  store %struct.Memory* %loadMem_47af72, %struct.Memory** %MEMORY
  %loadMem_47af7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7510 = getelementptr inbounds %struct.GPR, %struct.GPR* %7509, i32 0, i32 33
  %7511 = getelementptr inbounds %struct.Reg, %struct.Reg* %7510, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %7511 to i64*
  %7512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7513 = getelementptr inbounds %struct.GPR, %struct.GPR* %7512, i32 0, i32 11
  %7514 = getelementptr inbounds %struct.Reg, %struct.Reg* %7513, i32 0, i32 0
  %RDI.i156 = bitcast %union.anon* %7514 to i64*
  %7515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7516 = getelementptr inbounds %struct.GPR, %struct.GPR* %7515, i32 0, i32 15
  %7517 = getelementptr inbounds %struct.Reg, %struct.Reg* %7516, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %7517 to i64*
  %7518 = load i64, i64* %RBP.i157
  %7519 = sub i64 %7518, 12
  %7520 = load i64, i64* %PC.i155
  %7521 = add i64 %7520, 4
  store i64 %7521, i64* %PC.i155
  %7522 = inttoptr i64 %7519 to i32*
  %7523 = load i32, i32* %7522
  %7524 = sext i32 %7523 to i64
  store i64 %7524, i64* %RDI.i156, align 8
  store %struct.Memory* %loadMem_47af7c, %struct.Memory** %MEMORY
  %loadMem_47af80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7526 = getelementptr inbounds %struct.GPR, %struct.GPR* %7525, i32 0, i32 33
  %7527 = getelementptr inbounds %struct.Reg, %struct.Reg* %7526, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %7527 to i64*
  %7528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7529 = getelementptr inbounds %struct.GPR, %struct.GPR* %7528, i32 0, i32 11
  %7530 = getelementptr inbounds %struct.Reg, %struct.Reg* %7529, i32 0, i32 0
  %RDI.i154 = bitcast %union.anon* %7530 to i64*
  %7531 = load i64, i64* %RDI.i154
  %7532 = load i64, i64* %PC.i153
  %7533 = add i64 %7532, 4
  store i64 %7533, i64* %PC.i153
  %7534 = shl i64 %7531, 7
  %7535 = icmp slt i64 %7534, 0
  %7536 = shl i64 %7534, 1
  store i64 %7536, i64* %RDI.i154, align 8
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7538 = zext i1 %7535 to i8
  store i8 %7538, i8* %7537, align 1
  %7539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7540 = trunc i64 %7536 to i32
  store i8 1, i8* %7539, align 1
  %7541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7541, align 1
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7543 = icmp eq i64 %7536, 0
  %7544 = zext i1 %7543 to i8
  store i8 %7544, i8* %7542, align 1
  %7545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7546 = lshr i64 %7536, 63
  %7547 = trunc i64 %7546 to i8
  store i8 %7547, i8* %7545, align 1
  %7548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7548, align 1
  store %struct.Memory* %loadMem_47af80, %struct.Memory** %MEMORY
  %loadMem_47af84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7550 = getelementptr inbounds %struct.GPR, %struct.GPR* %7549, i32 0, i32 33
  %7551 = getelementptr inbounds %struct.Reg, %struct.Reg* %7550, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %7551 to i64*
  %7552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7553 = getelementptr inbounds %struct.GPR, %struct.GPR* %7552, i32 0, i32 9
  %7554 = getelementptr inbounds %struct.Reg, %struct.Reg* %7553, i32 0, i32 0
  %RSI.i151 = bitcast %union.anon* %7554 to i64*
  %7555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7556 = getelementptr inbounds %struct.GPR, %struct.GPR* %7555, i32 0, i32 11
  %7557 = getelementptr inbounds %struct.Reg, %struct.Reg* %7556, i32 0, i32 0
  %RDI.i152 = bitcast %union.anon* %7557 to i64*
  %7558 = load i64, i64* %RSI.i151
  %7559 = load i64, i64* %RDI.i152
  %7560 = load i64, i64* %PC.i150
  %7561 = add i64 %7560, 3
  store i64 %7561, i64* %PC.i150
  %7562 = add i64 %7559, %7558
  store i64 %7562, i64* %RSI.i151, align 8
  %7563 = icmp ult i64 %7562, %7558
  %7564 = icmp ult i64 %7562, %7559
  %7565 = or i1 %7563, %7564
  %7566 = zext i1 %7565 to i8
  %7567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7566, i8* %7567, align 1
  %7568 = trunc i64 %7562 to i32
  %7569 = and i32 %7568, 255
  %7570 = call i32 @llvm.ctpop.i32(i32 %7569)
  %7571 = trunc i32 %7570 to i8
  %7572 = and i8 %7571, 1
  %7573 = xor i8 %7572, 1
  %7574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7573, i8* %7574, align 1
  %7575 = xor i64 %7559, %7558
  %7576 = xor i64 %7575, %7562
  %7577 = lshr i64 %7576, 4
  %7578 = trunc i64 %7577 to i8
  %7579 = and i8 %7578, 1
  %7580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7579, i8* %7580, align 1
  %7581 = icmp eq i64 %7562, 0
  %7582 = zext i1 %7581 to i8
  %7583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7582, i8* %7583, align 1
  %7584 = lshr i64 %7562, 63
  %7585 = trunc i64 %7584 to i8
  %7586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7585, i8* %7586, align 1
  %7587 = lshr i64 %7558, 63
  %7588 = lshr i64 %7559, 63
  %7589 = xor i64 %7584, %7587
  %7590 = xor i64 %7584, %7588
  %7591 = add i64 %7589, %7590
  %7592 = icmp eq i64 %7591, 2
  %7593 = zext i1 %7592 to i8
  %7594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7593, i8* %7594, align 1
  store %struct.Memory* %loadMem_47af84, %struct.Memory** %MEMORY
  %loadMem_47af87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7596 = getelementptr inbounds %struct.GPR, %struct.GPR* %7595, i32 0, i32 33
  %7597 = getelementptr inbounds %struct.Reg, %struct.Reg* %7596, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %7597 to i64*
  %7598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7599 = getelementptr inbounds %struct.GPR, %struct.GPR* %7598, i32 0, i32 11
  %7600 = getelementptr inbounds %struct.Reg, %struct.Reg* %7599, i32 0, i32 0
  %RDI.i148 = bitcast %union.anon* %7600 to i64*
  %7601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7602 = getelementptr inbounds %struct.GPR, %struct.GPR* %7601, i32 0, i32 15
  %7603 = getelementptr inbounds %struct.Reg, %struct.Reg* %7602, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %7603 to i64*
  %7604 = load i64, i64* %RBP.i149
  %7605 = sub i64 %7604, 8
  %7606 = load i64, i64* %PC.i147
  %7607 = add i64 %7606, 4
  store i64 %7607, i64* %PC.i147
  %7608 = inttoptr i64 %7605 to i32*
  %7609 = load i32, i32* %7608
  %7610 = sext i32 %7609 to i64
  store i64 %7610, i64* %RDI.i148, align 8
  store %struct.Memory* %loadMem_47af87, %struct.Memory** %MEMORY
  %loadMem_47af8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7612 = getelementptr inbounds %struct.GPR, %struct.GPR* %7611, i32 0, i32 33
  %7613 = getelementptr inbounds %struct.Reg, %struct.Reg* %7612, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %7613 to i64*
  %7614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7615 = getelementptr inbounds %struct.GPR, %struct.GPR* %7614, i32 0, i32 11
  %7616 = getelementptr inbounds %struct.Reg, %struct.Reg* %7615, i32 0, i32 0
  %RDI.i146 = bitcast %union.anon* %7616 to i64*
  %7617 = load i64, i64* %RDI.i146
  %7618 = load i64, i64* %PC.i145
  %7619 = add i64 %7618, 4
  store i64 %7619, i64* %PC.i145
  %7620 = shl i64 %7617, 4
  %7621 = icmp slt i64 %7620, 0
  %7622 = shl i64 %7620, 1
  store i64 %7622, i64* %RDI.i146, align 8
  %7623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7624 = zext i1 %7621 to i8
  store i8 %7624, i8* %7623, align 1
  %7625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7626 = trunc i64 %7622 to i32
  %7627 = and i32 %7626, 254
  %7628 = call i32 @llvm.ctpop.i32(i32 %7627)
  %7629 = trunc i32 %7628 to i8
  %7630 = and i8 %7629, 1
  %7631 = xor i8 %7630, 1
  store i8 %7631, i8* %7625, align 1
  %7632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7632, align 1
  %7633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7634 = icmp eq i64 %7622, 0
  %7635 = zext i1 %7634 to i8
  store i8 %7635, i8* %7633, align 1
  %7636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7637 = lshr i64 %7622, 63
  %7638 = trunc i64 %7637 to i8
  store i8 %7638, i8* %7636, align 1
  %7639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7639, align 1
  store %struct.Memory* %loadMem_47af8b, %struct.Memory** %MEMORY
  %loadMem_47af8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7641 = getelementptr inbounds %struct.GPR, %struct.GPR* %7640, i32 0, i32 33
  %7642 = getelementptr inbounds %struct.Reg, %struct.Reg* %7641, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %7642 to i64*
  %7643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7644 = getelementptr inbounds %struct.GPR, %struct.GPR* %7643, i32 0, i32 9
  %7645 = getelementptr inbounds %struct.Reg, %struct.Reg* %7644, i32 0, i32 0
  %RSI.i143 = bitcast %union.anon* %7645 to i64*
  %7646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7647 = getelementptr inbounds %struct.GPR, %struct.GPR* %7646, i32 0, i32 11
  %7648 = getelementptr inbounds %struct.Reg, %struct.Reg* %7647, i32 0, i32 0
  %RDI.i144 = bitcast %union.anon* %7648 to i64*
  %7649 = load i64, i64* %RSI.i143
  %7650 = load i64, i64* %RDI.i144
  %7651 = load i64, i64* %PC.i142
  %7652 = add i64 %7651, 3
  store i64 %7652, i64* %PC.i142
  %7653 = add i64 %7650, %7649
  store i64 %7653, i64* %RSI.i143, align 8
  %7654 = icmp ult i64 %7653, %7649
  %7655 = icmp ult i64 %7653, %7650
  %7656 = or i1 %7654, %7655
  %7657 = zext i1 %7656 to i8
  %7658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7657, i8* %7658, align 1
  %7659 = trunc i64 %7653 to i32
  %7660 = and i32 %7659, 255
  %7661 = call i32 @llvm.ctpop.i32(i32 %7660)
  %7662 = trunc i32 %7661 to i8
  %7663 = and i8 %7662, 1
  %7664 = xor i8 %7663, 1
  %7665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7664, i8* %7665, align 1
  %7666 = xor i64 %7650, %7649
  %7667 = xor i64 %7666, %7653
  %7668 = lshr i64 %7667, 4
  %7669 = trunc i64 %7668 to i8
  %7670 = and i8 %7669, 1
  %7671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7670, i8* %7671, align 1
  %7672 = icmp eq i64 %7653, 0
  %7673 = zext i1 %7672 to i8
  %7674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7673, i8* %7674, align 1
  %7675 = lshr i64 %7653, 63
  %7676 = trunc i64 %7675 to i8
  %7677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7676, i8* %7677, align 1
  %7678 = lshr i64 %7649, 63
  %7679 = lshr i64 %7650, 63
  %7680 = xor i64 %7675, %7678
  %7681 = xor i64 %7675, %7679
  %7682 = add i64 %7680, %7681
  %7683 = icmp eq i64 %7682, 2
  %7684 = zext i1 %7683 to i8
  %7685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7684, i8* %7685, align 1
  store %struct.Memory* %loadMem_47af8f, %struct.Memory** %MEMORY
  %loadMem_47af92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7687 = getelementptr inbounds %struct.GPR, %struct.GPR* %7686, i32 0, i32 33
  %7688 = getelementptr inbounds %struct.Reg, %struct.Reg* %7687, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %7688 to i64*
  %7689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7690 = getelementptr inbounds %struct.GPR, %struct.GPR* %7689, i32 0, i32 11
  %7691 = getelementptr inbounds %struct.Reg, %struct.Reg* %7690, i32 0, i32 0
  %RDI.i140 = bitcast %union.anon* %7691 to i64*
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7693 = getelementptr inbounds %struct.GPR, %struct.GPR* %7692, i32 0, i32 15
  %7694 = getelementptr inbounds %struct.Reg, %struct.Reg* %7693, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %7694 to i64*
  %7695 = load i64, i64* %RBP.i141
  %7696 = sub i64 %7695, 4
  %7697 = load i64, i64* %PC.i139
  %7698 = add i64 %7697, 4
  store i64 %7698, i64* %PC.i139
  %7699 = inttoptr i64 %7696 to i32*
  %7700 = load i32, i32* %7699
  %7701 = sext i32 %7700 to i64
  store i64 %7701, i64* %RDI.i140, align 8
  store %struct.Memory* %loadMem_47af92, %struct.Memory** %MEMORY
  %loadMem_47af96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7703 = getelementptr inbounds %struct.GPR, %struct.GPR* %7702, i32 0, i32 33
  %7704 = getelementptr inbounds %struct.Reg, %struct.Reg* %7703, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %7704 to i64*
  %7705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7706 = getelementptr inbounds %struct.GPR, %struct.GPR* %7705, i32 0, i32 17
  %7707 = getelementptr inbounds %struct.Reg, %struct.Reg* %7706, i32 0, i32 0
  %R8D.i136 = bitcast %union.anon* %7707 to i32*
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7709 = getelementptr inbounds %struct.GPR, %struct.GPR* %7708, i32 0, i32 9
  %7710 = getelementptr inbounds %struct.Reg, %struct.Reg* %7709, i32 0, i32 0
  %RSI.i137 = bitcast %union.anon* %7710 to i64*
  %7711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7712 = getelementptr inbounds %struct.GPR, %struct.GPR* %7711, i32 0, i32 11
  %7713 = getelementptr inbounds %struct.Reg, %struct.Reg* %7712, i32 0, i32 0
  %RDI.i138 = bitcast %union.anon* %7713 to i64*
  %7714 = bitcast i32* %R8D.i136 to i64*
  %7715 = load i64, i64* %RSI.i137
  %7716 = load i64, i64* %RDI.i138
  %7717 = mul i64 %7716, 4
  %7718 = add i64 %7717, %7715
  %7719 = load i64, i64* %PC.i135
  %7720 = add i64 %7719, 4
  store i64 %7720, i64* %PC.i135
  %7721 = inttoptr i64 %7718 to i32*
  %7722 = load i32, i32* %7721
  %7723 = zext i32 %7722 to i64
  store i64 %7723, i64* %7714, align 8
  store %struct.Memory* %loadMem_47af96, %struct.Memory** %MEMORY
  %loadMem_47af9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7725 = getelementptr inbounds %struct.GPR, %struct.GPR* %7724, i32 0, i32 33
  %7726 = getelementptr inbounds %struct.Reg, %struct.Reg* %7725, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %7726 to i64*
  %7727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7728 = getelementptr inbounds %struct.GPR, %struct.GPR* %7727, i32 0, i32 17
  %7729 = getelementptr inbounds %struct.Reg, %struct.Reg* %7728, i32 0, i32 0
  %R8D.i134 = bitcast %union.anon* %7729 to i32*
  %7730 = bitcast i32* %R8D.i134 to i64*
  %7731 = load i32, i32* %R8D.i134
  %7732 = zext i32 %7731 to i64
  %7733 = load i64, i64* %PC.i133
  %7734 = add i64 %7733, 4
  store i64 %7734, i64* %PC.i133
  %7735 = and i64 %7732, 4294967295
  %7736 = shl i64 %7735, 3
  %7737 = trunc i64 %7736 to i32
  %7738 = icmp slt i32 %7737, 0
  %7739 = shl i32 %7737, 1
  %7740 = zext i32 %7739 to i64
  store i64 %7740, i64* %7730, align 8
  %7741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7742 = zext i1 %7738 to i8
  store i8 %7742, i8* %7741, align 1
  %7743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7744 = and i32 %7739, 254
  %7745 = call i32 @llvm.ctpop.i32(i32 %7744)
  %7746 = trunc i32 %7745 to i8
  %7747 = and i8 %7746, 1
  %7748 = xor i8 %7747, 1
  store i8 %7748, i8* %7743, align 1
  %7749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7749, align 1
  %7750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7751 = icmp eq i32 %7739, 0
  %7752 = zext i1 %7751 to i8
  store i8 %7752, i8* %7750, align 1
  %7753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7754 = lshr i32 %7739, 31
  %7755 = trunc i32 %7754 to i8
  store i8 %7755, i8* %7753, align 1
  %7756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7756, align 1
  store %struct.Memory* %loadMem_47af9a, %struct.Memory** %MEMORY
  %loadMem_47af9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7758 = getelementptr inbounds %struct.GPR, %struct.GPR* %7757, i32 0, i32 33
  %7759 = getelementptr inbounds %struct.Reg, %struct.Reg* %7758, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %7759 to i64*
  %7760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7761 = getelementptr inbounds %struct.GPR, %struct.GPR* %7760, i32 0, i32 9
  %7762 = getelementptr inbounds %struct.Reg, %struct.Reg* %7761, i32 0, i32 0
  %RSI.i131 = bitcast %union.anon* %7762 to i64*
  %7763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7764 = getelementptr inbounds %struct.GPR, %struct.GPR* %7763, i32 0, i32 15
  %7765 = getelementptr inbounds %struct.Reg, %struct.Reg* %7764, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %7765 to i64*
  %7766 = load i64, i64* %RBP.i132
  %7767 = sub i64 %7766, 16
  %7768 = load i64, i64* %PC.i130
  %7769 = add i64 %7768, 4
  store i64 %7769, i64* %PC.i130
  %7770 = inttoptr i64 %7767 to i32*
  %7771 = load i32, i32* %7770
  %7772 = sext i32 %7771 to i64
  store i64 %7772, i64* %RSI.i131, align 8
  store %struct.Memory* %loadMem_47af9e, %struct.Memory** %MEMORY
  %loadMem_47afa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7774 = getelementptr inbounds %struct.GPR, %struct.GPR* %7773, i32 0, i32 33
  %7775 = getelementptr inbounds %struct.Reg, %struct.Reg* %7774, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %7775 to i64*
  %7776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7777 = getelementptr inbounds %struct.GPR, %struct.GPR* %7776, i32 0, i32 19
  %7778 = getelementptr inbounds %struct.Reg, %struct.Reg* %7777, i32 0, i32 0
  %R9D.i128 = bitcast %union.anon* %7778 to i32*
  %7779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7780 = getelementptr inbounds %struct.GPR, %struct.GPR* %7779, i32 0, i32 9
  %7781 = getelementptr inbounds %struct.Reg, %struct.Reg* %7780, i32 0, i32 0
  %RSI.i129 = bitcast %union.anon* %7781 to i64*
  %7782 = bitcast i32* %R9D.i128 to i64*
  %7783 = load i64, i64* %RSI.i129
  %7784 = mul i64 %7783, 2
  %7785 = add i64 %7784, 7302816
  %7786 = load i64, i64* %PC.i127
  %7787 = add i64 %7786, 9
  store i64 %7787, i64* %PC.i127
  %7788 = inttoptr i64 %7785 to i16*
  %7789 = load i16, i16* %7788
  %7790 = sext i16 %7789 to i64
  %7791 = and i64 %7790, 4294967295
  store i64 %7791, i64* %7782, align 8
  store %struct.Memory* %loadMem_47afa2, %struct.Memory** %MEMORY
  %loadMem_47afab = load %struct.Memory*, %struct.Memory** %MEMORY
  %7792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7793 = getelementptr inbounds %struct.GPR, %struct.GPR* %7792, i32 0, i32 33
  %7794 = getelementptr inbounds %struct.Reg, %struct.Reg* %7793, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %7794 to i64*
  %7795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7796 = getelementptr inbounds %struct.GPR, %struct.GPR* %7795, i32 0, i32 1
  %7797 = getelementptr inbounds %struct.Reg, %struct.Reg* %7796, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %7797 to i64*
  %7798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7799 = getelementptr inbounds %struct.GPR, %struct.GPR* %7798, i32 0, i32 15
  %7800 = getelementptr inbounds %struct.Reg, %struct.Reg* %7799, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %7800 to i64*
  %7801 = load i64, i64* %RBP.i126
  %7802 = sub i64 %7801, 88
  %7803 = load i64, i64* %RAX.i125
  %7804 = load i64, i64* %PC.i124
  %7805 = add i64 %7804, 4
  store i64 %7805, i64* %PC.i124
  %7806 = inttoptr i64 %7802 to i64*
  store i64 %7803, i64* %7806
  store %struct.Memory* %loadMem_47afab, %struct.Memory** %MEMORY
  %loadMem_47afaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7808 = getelementptr inbounds %struct.GPR, %struct.GPR* %7807, i32 0, i32 33
  %7809 = getelementptr inbounds %struct.Reg, %struct.Reg* %7808, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %7809 to i64*
  %7810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7811 = getelementptr inbounds %struct.GPR, %struct.GPR* %7810, i32 0, i32 17
  %7812 = getelementptr inbounds %struct.Reg, %struct.Reg* %7811, i32 0, i32 0
  %R8D.i122 = bitcast %union.anon* %7812 to i32*
  %7813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7814 = getelementptr inbounds %struct.GPR, %struct.GPR* %7813, i32 0, i32 1
  %7815 = getelementptr inbounds %struct.Reg, %struct.Reg* %7814, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %7815 to i64*
  %7816 = load i32, i32* %R8D.i122
  %7817 = zext i32 %7816 to i64
  %7818 = load i64, i64* %PC.i121
  %7819 = add i64 %7818, 3
  store i64 %7819, i64* %PC.i121
  %7820 = and i64 %7817, 4294967295
  store i64 %7820, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_47afaf, %struct.Memory** %MEMORY
  %loadMem_47afb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7822 = getelementptr inbounds %struct.GPR, %struct.GPR* %7821, i32 0, i32 33
  %7823 = getelementptr inbounds %struct.Reg, %struct.Reg* %7822, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7823 to i64*
  %7824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7825 = getelementptr inbounds %struct.GPR, %struct.GPR* %7824, i32 0, i32 7
  %7826 = getelementptr inbounds %struct.Reg, %struct.Reg* %7825, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7826 to i64*
  %7827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7828 = getelementptr inbounds %struct.GPR, %struct.GPR* %7827, i32 0, i32 15
  %7829 = getelementptr inbounds %struct.Reg, %struct.Reg* %7828, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %7829 to i64*
  %7830 = load i64, i64* %RBP.i120
  %7831 = sub i64 %7830, 96
  %7832 = load i64, i64* %RDX.i
  %7833 = load i64, i64* %PC.i119
  %7834 = add i64 %7833, 4
  store i64 %7834, i64* %PC.i119
  %7835 = inttoptr i64 %7831 to i64*
  store i64 %7832, i64* %7835
  store %struct.Memory* %loadMem_47afb2, %struct.Memory** %MEMORY
  %loadMem_47afb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7837 = getelementptr inbounds %struct.GPR, %struct.GPR* %7836, i32 0, i32 33
  %7838 = getelementptr inbounds %struct.Reg, %struct.Reg* %7837, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %7838 to i64*
  %7839 = load i64, i64* %PC.i118
  %7840 = add i64 %7839, 1
  store i64 %7840, i64* %PC.i118
  %7841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %7842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7843 = bitcast %union.anon* %7842 to i32*
  %7844 = load i32, i32* %7843, align 8
  %7845 = sext i32 %7844 to i64
  %7846 = lshr i64 %7845, 32
  store i64 %7846, i64* %7841, align 8
  store %struct.Memory* %loadMem_47afb6, %struct.Memory** %MEMORY
  %loadMem_47afb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7848 = getelementptr inbounds %struct.GPR, %struct.GPR* %7847, i32 0, i32 33
  %7849 = getelementptr inbounds %struct.Reg, %struct.Reg* %7848, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %7849 to i64*
  %7850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7851 = getelementptr inbounds %struct.GPR, %struct.GPR* %7850, i32 0, i32 19
  %7852 = getelementptr inbounds %struct.Reg, %struct.Reg* %7851, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %7852 to i32*
  %7853 = load i32, i32* %R9D.i
  %7854 = zext i32 %7853 to i64
  %7855 = load i64, i64* %PC.i114
  %7856 = add i64 %7855, 3
  store i64 %7856, i64* %PC.i114
  %7857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7858 = bitcast %union.anon* %7857 to i32*
  %7859 = load i32, i32* %7858, align 8
  %7860 = zext i32 %7859 to i64
  %7861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %7862 = bitcast %union.anon* %7861 to i32*
  %7863 = load i32, i32* %7862, align 8
  %7864 = zext i32 %7863 to i64
  %7865 = shl i64 %7854, 32
  %7866 = ashr exact i64 %7865, 32
  %7867 = shl i64 %7864, 32
  %7868 = or i64 %7867, %7860
  %7869 = sdiv i64 %7868, %7866
  %7870 = shl i64 %7869, 32
  %7871 = ashr exact i64 %7870, 32
  %7872 = icmp eq i64 %7869, %7871
  br i1 %7872, label %7877, label %7873

; <label>:7873:                                   ; preds = %block_.L_47af54
  %7874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7875 = load i64, i64* %7874, align 8
  %7876 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7875, %struct.Memory* %loadMem_47afb7)
  br label %routine_idivl__r9d.exit

; <label>:7877:                                   ; preds = %block_.L_47af54
  %7878 = srem i64 %7868, %7866
  %7879 = getelementptr inbounds %union.anon, %union.anon* %7857, i64 0, i32 0
  %7880 = and i64 %7869, 4294967295
  store i64 %7880, i64* %7879, align 8
  %7881 = getelementptr inbounds %union.anon, %union.anon* %7861, i64 0, i32 0
  %7882 = and i64 %7878, 4294967295
  store i64 %7882, i64* %7881, align 8
  %7883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7883, align 1
  %7884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %7884, align 1
  %7885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7885, align 1
  %7886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7886, align 1
  %7887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7887, align 1
  %7888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7888, align 1
  br label %routine_idivl__r9d.exit

routine_idivl__r9d.exit:                          ; preds = %7873, %7877
  %7889 = phi %struct.Memory* [ %7876, %7873 ], [ %loadMem_47afb7, %7877 ]
  store %struct.Memory* %7889, %struct.Memory** %MEMORY
  %loadMem_47afba = load %struct.Memory*, %struct.Memory** %MEMORY
  %7890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7891 = getelementptr inbounds %struct.GPR, %struct.GPR* %7890, i32 0, i32 33
  %7892 = getelementptr inbounds %struct.Reg, %struct.Reg* %7891, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %7892 to i64*
  %7893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7894 = getelementptr inbounds %struct.GPR, %struct.GPR* %7893, i32 0, i32 9
  %7895 = getelementptr inbounds %struct.Reg, %struct.Reg* %7894, i32 0, i32 0
  %RSI.i112 = bitcast %union.anon* %7895 to i64*
  %7896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7897 = getelementptr inbounds %struct.GPR, %struct.GPR* %7896, i32 0, i32 15
  %7898 = getelementptr inbounds %struct.Reg, %struct.Reg* %7897, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %7898 to i64*
  %7899 = load i64, i64* %RBP.i113
  %7900 = sub i64 %7899, 12
  %7901 = load i64, i64* %PC.i111
  %7902 = add i64 %7901, 4
  store i64 %7902, i64* %PC.i111
  %7903 = inttoptr i64 %7900 to i32*
  %7904 = load i32, i32* %7903
  %7905 = sext i32 %7904 to i64
  store i64 %7905, i64* %RSI.i112, align 8
  store %struct.Memory* %loadMem_47afba, %struct.Memory** %MEMORY
  %loadMem_47afbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7907 = getelementptr inbounds %struct.GPR, %struct.GPR* %7906, i32 0, i32 33
  %7908 = getelementptr inbounds %struct.Reg, %struct.Reg* %7907, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %7908 to i64*
  %7909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7910 = getelementptr inbounds %struct.GPR, %struct.GPR* %7909, i32 0, i32 9
  %7911 = getelementptr inbounds %struct.Reg, %struct.Reg* %7910, i32 0, i32 0
  %RSI.i110 = bitcast %union.anon* %7911 to i64*
  %7912 = load i64, i64* %RSI.i110
  %7913 = load i64, i64* %PC.i109
  %7914 = add i64 %7913, 4
  store i64 %7914, i64* %PC.i109
  %7915 = shl i64 %7912, 7
  %7916 = icmp slt i64 %7915, 0
  %7917 = shl i64 %7915, 1
  store i64 %7917, i64* %RSI.i110, align 8
  %7918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7919 = zext i1 %7916 to i8
  store i8 %7919, i8* %7918, align 1
  %7920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7921 = trunc i64 %7917 to i32
  store i8 1, i8* %7920, align 1
  %7922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7922, align 1
  %7923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7924 = icmp eq i64 %7917, 0
  %7925 = zext i1 %7924 to i8
  store i8 %7925, i8* %7923, align 1
  %7926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7927 = lshr i64 %7917, 63
  %7928 = trunc i64 %7927 to i8
  store i8 %7928, i8* %7926, align 1
  %7929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7929, align 1
  store %struct.Memory* %loadMem_47afbe, %struct.Memory** %MEMORY
  %loadMem_47afc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7931 = getelementptr inbounds %struct.GPR, %struct.GPR* %7930, i32 0, i32 33
  %7932 = getelementptr inbounds %struct.Reg, %struct.Reg* %7931, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %7932 to i64*
  %7933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7934 = getelementptr inbounds %struct.GPR, %struct.GPR* %7933, i32 0, i32 11
  %7935 = getelementptr inbounds %struct.Reg, %struct.Reg* %7934, i32 0, i32 0
  %RDI.i107 = bitcast %union.anon* %7935 to i64*
  %7936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7937 = getelementptr inbounds %struct.GPR, %struct.GPR* %7936, i32 0, i32 15
  %7938 = getelementptr inbounds %struct.Reg, %struct.Reg* %7937, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %7938 to i64*
  %7939 = load i64, i64* %RBP.i108
  %7940 = sub i64 %7939, 96
  %7941 = load i64, i64* %PC.i106
  %7942 = add i64 %7941, 4
  store i64 %7942, i64* %PC.i106
  %7943 = inttoptr i64 %7940 to i64*
  %7944 = load i64, i64* %7943
  store i64 %7944, i64* %RDI.i107, align 8
  store %struct.Memory* %loadMem_47afc2, %struct.Memory** %MEMORY
  %loadMem_47afc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7946 = getelementptr inbounds %struct.GPR, %struct.GPR* %7945, i32 0, i32 33
  %7947 = getelementptr inbounds %struct.Reg, %struct.Reg* %7946, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %7947 to i64*
  %7948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7949 = getelementptr inbounds %struct.GPR, %struct.GPR* %7948, i32 0, i32 9
  %7950 = getelementptr inbounds %struct.Reg, %struct.Reg* %7949, i32 0, i32 0
  %RSI.i104 = bitcast %union.anon* %7950 to i64*
  %7951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7952 = getelementptr inbounds %struct.GPR, %struct.GPR* %7951, i32 0, i32 11
  %7953 = getelementptr inbounds %struct.Reg, %struct.Reg* %7952, i32 0, i32 0
  %RDI.i105 = bitcast %union.anon* %7953 to i64*
  %7954 = load i64, i64* %RDI.i105
  %7955 = load i64, i64* %RSI.i104
  %7956 = load i64, i64* %PC.i103
  %7957 = add i64 %7956, 3
  store i64 %7957, i64* %PC.i103
  %7958 = add i64 %7955, %7954
  store i64 %7958, i64* %RDI.i105, align 8
  %7959 = icmp ult i64 %7958, %7954
  %7960 = icmp ult i64 %7958, %7955
  %7961 = or i1 %7959, %7960
  %7962 = zext i1 %7961 to i8
  %7963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7962, i8* %7963, align 1
  %7964 = trunc i64 %7958 to i32
  %7965 = and i32 %7964, 255
  %7966 = call i32 @llvm.ctpop.i32(i32 %7965)
  %7967 = trunc i32 %7966 to i8
  %7968 = and i8 %7967, 1
  %7969 = xor i8 %7968, 1
  %7970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7969, i8* %7970, align 1
  %7971 = xor i64 %7955, %7954
  %7972 = xor i64 %7971, %7958
  %7973 = lshr i64 %7972, 4
  %7974 = trunc i64 %7973 to i8
  %7975 = and i8 %7974, 1
  %7976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7975, i8* %7976, align 1
  %7977 = icmp eq i64 %7958, 0
  %7978 = zext i1 %7977 to i8
  %7979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7978, i8* %7979, align 1
  %7980 = lshr i64 %7958, 63
  %7981 = trunc i64 %7980 to i8
  %7982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7981, i8* %7982, align 1
  %7983 = lshr i64 %7954, 63
  %7984 = lshr i64 %7955, 63
  %7985 = xor i64 %7980, %7983
  %7986 = xor i64 %7980, %7984
  %7987 = add i64 %7985, %7986
  %7988 = icmp eq i64 %7987, 2
  %7989 = zext i1 %7988 to i8
  %7990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7989, i8* %7990, align 1
  store %struct.Memory* %loadMem_47afc6, %struct.Memory** %MEMORY
  %loadMem_47afc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7992 = getelementptr inbounds %struct.GPR, %struct.GPR* %7991, i32 0, i32 33
  %7993 = getelementptr inbounds %struct.Reg, %struct.Reg* %7992, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %7993 to i64*
  %7994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7995 = getelementptr inbounds %struct.GPR, %struct.GPR* %7994, i32 0, i32 9
  %7996 = getelementptr inbounds %struct.Reg, %struct.Reg* %7995, i32 0, i32 0
  %RSI.i101 = bitcast %union.anon* %7996 to i64*
  %7997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7998 = getelementptr inbounds %struct.GPR, %struct.GPR* %7997, i32 0, i32 15
  %7999 = getelementptr inbounds %struct.Reg, %struct.Reg* %7998, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %7999 to i64*
  %8000 = load i64, i64* %RBP.i102
  %8001 = sub i64 %8000, 8
  %8002 = load i64, i64* %PC.i100
  %8003 = add i64 %8002, 4
  store i64 %8003, i64* %PC.i100
  %8004 = inttoptr i64 %8001 to i32*
  %8005 = load i32, i32* %8004
  %8006 = sext i32 %8005 to i64
  store i64 %8006, i64* %RSI.i101, align 8
  store %struct.Memory* %loadMem_47afc9, %struct.Memory** %MEMORY
  %loadMem_47afcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %8007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8008 = getelementptr inbounds %struct.GPR, %struct.GPR* %8007, i32 0, i32 33
  %8009 = getelementptr inbounds %struct.Reg, %struct.Reg* %8008, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %8009 to i64*
  %8010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8011 = getelementptr inbounds %struct.GPR, %struct.GPR* %8010, i32 0, i32 9
  %8012 = getelementptr inbounds %struct.Reg, %struct.Reg* %8011, i32 0, i32 0
  %RSI.i99 = bitcast %union.anon* %8012 to i64*
  %8013 = load i64, i64* %RSI.i99
  %8014 = load i64, i64* %PC.i98
  %8015 = add i64 %8014, 4
  store i64 %8015, i64* %PC.i98
  %8016 = shl i64 %8013, 4
  %8017 = icmp slt i64 %8016, 0
  %8018 = shl i64 %8016, 1
  store i64 %8018, i64* %RSI.i99, align 8
  %8019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8020 = zext i1 %8017 to i8
  store i8 %8020, i8* %8019, align 1
  %8021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8022 = trunc i64 %8018 to i32
  %8023 = and i32 %8022, 254
  %8024 = call i32 @llvm.ctpop.i32(i32 %8023)
  %8025 = trunc i32 %8024 to i8
  %8026 = and i8 %8025, 1
  %8027 = xor i8 %8026, 1
  store i8 %8027, i8* %8021, align 1
  %8028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8028, align 1
  %8029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8030 = icmp eq i64 %8018, 0
  %8031 = zext i1 %8030 to i8
  store i8 %8031, i8* %8029, align 1
  %8032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8033 = lshr i64 %8018, 63
  %8034 = trunc i64 %8033 to i8
  store i8 %8034, i8* %8032, align 1
  %8035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8035, align 1
  store %struct.Memory* %loadMem_47afcd, %struct.Memory** %MEMORY
  %loadMem_47afd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8037 = getelementptr inbounds %struct.GPR, %struct.GPR* %8036, i32 0, i32 33
  %8038 = getelementptr inbounds %struct.Reg, %struct.Reg* %8037, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %8038 to i64*
  %8039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8040 = getelementptr inbounds %struct.GPR, %struct.GPR* %8039, i32 0, i32 9
  %8041 = getelementptr inbounds %struct.Reg, %struct.Reg* %8040, i32 0, i32 0
  %RSI.i96 = bitcast %union.anon* %8041 to i64*
  %8042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8043 = getelementptr inbounds %struct.GPR, %struct.GPR* %8042, i32 0, i32 11
  %8044 = getelementptr inbounds %struct.Reg, %struct.Reg* %8043, i32 0, i32 0
  %RDI.i97 = bitcast %union.anon* %8044 to i64*
  %8045 = load i64, i64* %RDI.i97
  %8046 = load i64, i64* %RSI.i96
  %8047 = load i64, i64* %PC.i95
  %8048 = add i64 %8047, 3
  store i64 %8048, i64* %PC.i95
  %8049 = add i64 %8046, %8045
  store i64 %8049, i64* %RDI.i97, align 8
  %8050 = icmp ult i64 %8049, %8045
  %8051 = icmp ult i64 %8049, %8046
  %8052 = or i1 %8050, %8051
  %8053 = zext i1 %8052 to i8
  %8054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8053, i8* %8054, align 1
  %8055 = trunc i64 %8049 to i32
  %8056 = and i32 %8055, 255
  %8057 = call i32 @llvm.ctpop.i32(i32 %8056)
  %8058 = trunc i32 %8057 to i8
  %8059 = and i8 %8058, 1
  %8060 = xor i8 %8059, 1
  %8061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8060, i8* %8061, align 1
  %8062 = xor i64 %8046, %8045
  %8063 = xor i64 %8062, %8049
  %8064 = lshr i64 %8063, 4
  %8065 = trunc i64 %8064 to i8
  %8066 = and i8 %8065, 1
  %8067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8066, i8* %8067, align 1
  %8068 = icmp eq i64 %8049, 0
  %8069 = zext i1 %8068 to i8
  %8070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8069, i8* %8070, align 1
  %8071 = lshr i64 %8049, 63
  %8072 = trunc i64 %8071 to i8
  %8073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8072, i8* %8073, align 1
  %8074 = lshr i64 %8045, 63
  %8075 = lshr i64 %8046, 63
  %8076 = xor i64 %8071, %8074
  %8077 = xor i64 %8071, %8075
  %8078 = add i64 %8076, %8077
  %8079 = icmp eq i64 %8078, 2
  %8080 = zext i1 %8079 to i8
  %8081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8080, i8* %8081, align 1
  store %struct.Memory* %loadMem_47afd1, %struct.Memory** %MEMORY
  %loadMem_47afd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8083 = getelementptr inbounds %struct.GPR, %struct.GPR* %8082, i32 0, i32 33
  %8084 = getelementptr inbounds %struct.Reg, %struct.Reg* %8083, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %8084 to i64*
  %8085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8086 = getelementptr inbounds %struct.GPR, %struct.GPR* %8085, i32 0, i32 9
  %8087 = getelementptr inbounds %struct.Reg, %struct.Reg* %8086, i32 0, i32 0
  %RSI.i93 = bitcast %union.anon* %8087 to i64*
  %8088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8089 = getelementptr inbounds %struct.GPR, %struct.GPR* %8088, i32 0, i32 15
  %8090 = getelementptr inbounds %struct.Reg, %struct.Reg* %8089, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %8090 to i64*
  %8091 = load i64, i64* %RBP.i94
  %8092 = sub i64 %8091, 4
  %8093 = load i64, i64* %PC.i92
  %8094 = add i64 %8093, 4
  store i64 %8094, i64* %PC.i92
  %8095 = inttoptr i64 %8092 to i32*
  %8096 = load i32, i32* %8095
  %8097 = sext i32 %8096 to i64
  store i64 %8097, i64* %RSI.i93, align 8
  store %struct.Memory* %loadMem_47afd4, %struct.Memory** %MEMORY
  %loadMem_47afd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8099 = getelementptr inbounds %struct.GPR, %struct.GPR* %8098, i32 0, i32 33
  %8100 = getelementptr inbounds %struct.Reg, %struct.Reg* %8099, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %8100 to i64*
  %8101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8102 = getelementptr inbounds %struct.GPR, %struct.GPR* %8101, i32 0, i32 1
  %8103 = getelementptr inbounds %struct.Reg, %struct.Reg* %8102, i32 0, i32 0
  %EAX.i90 = bitcast %union.anon* %8103 to i32*
  %8104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8105 = getelementptr inbounds %struct.GPR, %struct.GPR* %8104, i32 0, i32 9
  %8106 = getelementptr inbounds %struct.Reg, %struct.Reg* %8105, i32 0, i32 0
  %RSI.i91 = bitcast %union.anon* %8106 to i64*
  %8107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8108 = getelementptr inbounds %struct.GPR, %struct.GPR* %8107, i32 0, i32 11
  %8109 = getelementptr inbounds %struct.Reg, %struct.Reg* %8108, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %8109 to i64*
  %8110 = load i64, i64* %RDI.i
  %8111 = load i64, i64* %RSI.i91
  %8112 = mul i64 %8111, 4
  %8113 = add i64 %8112, %8110
  %8114 = load i32, i32* %EAX.i90
  %8115 = zext i32 %8114 to i64
  %8116 = load i64, i64* %PC.i89
  %8117 = add i64 %8116, 3
  store i64 %8117, i64* %PC.i89
  %8118 = inttoptr i64 %8113 to i32*
  store i32 %8114, i32* %8118
  store %struct.Memory* %loadMem_47afd8, %struct.Memory** %MEMORY
  %loadMem_47afdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8120 = getelementptr inbounds %struct.GPR, %struct.GPR* %8119, i32 0, i32 33
  %8121 = getelementptr inbounds %struct.Reg, %struct.Reg* %8120, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %8121 to i64*
  %8122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8123 = getelementptr inbounds %struct.GPR, %struct.GPR* %8122, i32 0, i32 9
  %8124 = getelementptr inbounds %struct.Reg, %struct.Reg* %8123, i32 0, i32 0
  %RSI.i87 = bitcast %union.anon* %8124 to i64*
  %8125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8126 = getelementptr inbounds %struct.GPR, %struct.GPR* %8125, i32 0, i32 15
  %8127 = getelementptr inbounds %struct.Reg, %struct.Reg* %8126, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %8127 to i64*
  %8128 = load i64, i64* %RBP.i88
  %8129 = sub i64 %8128, 12
  %8130 = load i64, i64* %PC.i86
  %8131 = add i64 %8130, 4
  store i64 %8131, i64* %PC.i86
  %8132 = inttoptr i64 %8129 to i32*
  %8133 = load i32, i32* %8132
  %8134 = sext i32 %8133 to i64
  store i64 %8134, i64* %RSI.i87, align 8
  store %struct.Memory* %loadMem_47afdb, %struct.Memory** %MEMORY
  %loadMem_47afdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %8135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8136 = getelementptr inbounds %struct.GPR, %struct.GPR* %8135, i32 0, i32 33
  %8137 = getelementptr inbounds %struct.Reg, %struct.Reg* %8136, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %8137 to i64*
  %8138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8139 = getelementptr inbounds %struct.GPR, %struct.GPR* %8138, i32 0, i32 9
  %8140 = getelementptr inbounds %struct.Reg, %struct.Reg* %8139, i32 0, i32 0
  %RSI.i85 = bitcast %union.anon* %8140 to i64*
  %8141 = load i64, i64* %RSI.i85
  %8142 = load i64, i64* %PC.i84
  %8143 = add i64 %8142, 4
  store i64 %8143, i64* %PC.i84
  %8144 = shl i64 %8141, 7
  %8145 = icmp slt i64 %8144, 0
  %8146 = shl i64 %8144, 1
  store i64 %8146, i64* %RSI.i85, align 8
  %8147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8148 = zext i1 %8145 to i8
  store i8 %8148, i8* %8147, align 1
  %8149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8150 = trunc i64 %8146 to i32
  store i8 1, i8* %8149, align 1
  %8151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8151, align 1
  %8152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8153 = icmp eq i64 %8146, 0
  %8154 = zext i1 %8153 to i8
  store i8 %8154, i8* %8152, align 1
  %8155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8156 = lshr i64 %8146, 63
  %8157 = trunc i64 %8156 to i8
  store i8 %8157, i8* %8155, align 1
  %8158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8158, align 1
  store %struct.Memory* %loadMem_47afdf, %struct.Memory** %MEMORY
  %loadMem_47afe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8160 = getelementptr inbounds %struct.GPR, %struct.GPR* %8159, i32 0, i32 33
  %8161 = getelementptr inbounds %struct.Reg, %struct.Reg* %8160, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %8161 to i64*
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8163 = getelementptr inbounds %struct.GPR, %struct.GPR* %8162, i32 0, i32 5
  %8164 = getelementptr inbounds %struct.Reg, %struct.Reg* %8163, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %8164 to i64*
  %8165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8166 = getelementptr inbounds %struct.GPR, %struct.GPR* %8165, i32 0, i32 9
  %8167 = getelementptr inbounds %struct.Reg, %struct.Reg* %8166, i32 0, i32 0
  %RSI.i83 = bitcast %union.anon* %8167 to i64*
  %8168 = load i64, i64* %RCX.i82
  %8169 = load i64, i64* %RSI.i83
  %8170 = load i64, i64* %PC.i81
  %8171 = add i64 %8170, 3
  store i64 %8171, i64* %PC.i81
  %8172 = add i64 %8169, %8168
  store i64 %8172, i64* %RCX.i82, align 8
  %8173 = icmp ult i64 %8172, %8168
  %8174 = icmp ult i64 %8172, %8169
  %8175 = or i1 %8173, %8174
  %8176 = zext i1 %8175 to i8
  %8177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8176, i8* %8177, align 1
  %8178 = trunc i64 %8172 to i32
  %8179 = and i32 %8178, 255
  %8180 = call i32 @llvm.ctpop.i32(i32 %8179)
  %8181 = trunc i32 %8180 to i8
  %8182 = and i8 %8181, 1
  %8183 = xor i8 %8182, 1
  %8184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8183, i8* %8184, align 1
  %8185 = xor i64 %8169, %8168
  %8186 = xor i64 %8185, %8172
  %8187 = lshr i64 %8186, 4
  %8188 = trunc i64 %8187 to i8
  %8189 = and i8 %8188, 1
  %8190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8189, i8* %8190, align 1
  %8191 = icmp eq i64 %8172, 0
  %8192 = zext i1 %8191 to i8
  %8193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8192, i8* %8193, align 1
  %8194 = lshr i64 %8172, 63
  %8195 = trunc i64 %8194 to i8
  %8196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8195, i8* %8196, align 1
  %8197 = lshr i64 %8168, 63
  %8198 = lshr i64 %8169, 63
  %8199 = xor i64 %8194, %8197
  %8200 = xor i64 %8194, %8198
  %8201 = add i64 %8199, %8200
  %8202 = icmp eq i64 %8201, 2
  %8203 = zext i1 %8202 to i8
  %8204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8203, i8* %8204, align 1
  store %struct.Memory* %loadMem_47afe3, %struct.Memory** %MEMORY
  %loadMem_47afe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8206 = getelementptr inbounds %struct.GPR, %struct.GPR* %8205, i32 0, i32 33
  %8207 = getelementptr inbounds %struct.Reg, %struct.Reg* %8206, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %8207 to i64*
  %8208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8209 = getelementptr inbounds %struct.GPR, %struct.GPR* %8208, i32 0, i32 9
  %8210 = getelementptr inbounds %struct.Reg, %struct.Reg* %8209, i32 0, i32 0
  %RSI.i79 = bitcast %union.anon* %8210 to i64*
  %8211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8212 = getelementptr inbounds %struct.GPR, %struct.GPR* %8211, i32 0, i32 15
  %8213 = getelementptr inbounds %struct.Reg, %struct.Reg* %8212, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %8213 to i64*
  %8214 = load i64, i64* %RBP.i80
  %8215 = sub i64 %8214, 8
  %8216 = load i64, i64* %PC.i78
  %8217 = add i64 %8216, 4
  store i64 %8217, i64* %PC.i78
  %8218 = inttoptr i64 %8215 to i32*
  %8219 = load i32, i32* %8218
  %8220 = sext i32 %8219 to i64
  store i64 %8220, i64* %RSI.i79, align 8
  store %struct.Memory* %loadMem_47afe6, %struct.Memory** %MEMORY
  %loadMem_47afea = load %struct.Memory*, %struct.Memory** %MEMORY
  %8221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8222 = getelementptr inbounds %struct.GPR, %struct.GPR* %8221, i32 0, i32 33
  %8223 = getelementptr inbounds %struct.Reg, %struct.Reg* %8222, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %8223 to i64*
  %8224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8225 = getelementptr inbounds %struct.GPR, %struct.GPR* %8224, i32 0, i32 9
  %8226 = getelementptr inbounds %struct.Reg, %struct.Reg* %8225, i32 0, i32 0
  %RSI.i77 = bitcast %union.anon* %8226 to i64*
  %8227 = load i64, i64* %RSI.i77
  %8228 = load i64, i64* %PC.i76
  %8229 = add i64 %8228, 4
  store i64 %8229, i64* %PC.i76
  %8230 = shl i64 %8227, 4
  %8231 = icmp slt i64 %8230, 0
  %8232 = shl i64 %8230, 1
  store i64 %8232, i64* %RSI.i77, align 8
  %8233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8234 = zext i1 %8231 to i8
  store i8 %8234, i8* %8233, align 1
  %8235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8236 = trunc i64 %8232 to i32
  %8237 = and i32 %8236, 254
  %8238 = call i32 @llvm.ctpop.i32(i32 %8237)
  %8239 = trunc i32 %8238 to i8
  %8240 = and i8 %8239, 1
  %8241 = xor i8 %8240, 1
  store i8 %8241, i8* %8235, align 1
  %8242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8242, align 1
  %8243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8244 = icmp eq i64 %8232, 0
  %8245 = zext i1 %8244 to i8
  store i8 %8245, i8* %8243, align 1
  %8246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8247 = lshr i64 %8232, 63
  %8248 = trunc i64 %8247 to i8
  store i8 %8248, i8* %8246, align 1
  %8249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8249, align 1
  store %struct.Memory* %loadMem_47afea, %struct.Memory** %MEMORY
  %loadMem_47afee = load %struct.Memory*, %struct.Memory** %MEMORY
  %8250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8251 = getelementptr inbounds %struct.GPR, %struct.GPR* %8250, i32 0, i32 33
  %8252 = getelementptr inbounds %struct.Reg, %struct.Reg* %8251, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %8252 to i64*
  %8253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8254 = getelementptr inbounds %struct.GPR, %struct.GPR* %8253, i32 0, i32 5
  %8255 = getelementptr inbounds %struct.Reg, %struct.Reg* %8254, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %8255 to i64*
  %8256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8257 = getelementptr inbounds %struct.GPR, %struct.GPR* %8256, i32 0, i32 9
  %8258 = getelementptr inbounds %struct.Reg, %struct.Reg* %8257, i32 0, i32 0
  %RSI.i75 = bitcast %union.anon* %8258 to i64*
  %8259 = load i64, i64* %RCX.i74
  %8260 = load i64, i64* %RSI.i75
  %8261 = load i64, i64* %PC.i73
  %8262 = add i64 %8261, 3
  store i64 %8262, i64* %PC.i73
  %8263 = add i64 %8260, %8259
  store i64 %8263, i64* %RCX.i74, align 8
  %8264 = icmp ult i64 %8263, %8259
  %8265 = icmp ult i64 %8263, %8260
  %8266 = or i1 %8264, %8265
  %8267 = zext i1 %8266 to i8
  %8268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8267, i8* %8268, align 1
  %8269 = trunc i64 %8263 to i32
  %8270 = and i32 %8269, 255
  %8271 = call i32 @llvm.ctpop.i32(i32 %8270)
  %8272 = trunc i32 %8271 to i8
  %8273 = and i8 %8272, 1
  %8274 = xor i8 %8273, 1
  %8275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8274, i8* %8275, align 1
  %8276 = xor i64 %8260, %8259
  %8277 = xor i64 %8276, %8263
  %8278 = lshr i64 %8277, 4
  %8279 = trunc i64 %8278 to i8
  %8280 = and i8 %8279, 1
  %8281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8280, i8* %8281, align 1
  %8282 = icmp eq i64 %8263, 0
  %8283 = zext i1 %8282 to i8
  %8284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8283, i8* %8284, align 1
  %8285 = lshr i64 %8263, 63
  %8286 = trunc i64 %8285 to i8
  %8287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8286, i8* %8287, align 1
  %8288 = lshr i64 %8259, 63
  %8289 = lshr i64 %8260, 63
  %8290 = xor i64 %8285, %8288
  %8291 = xor i64 %8285, %8289
  %8292 = add i64 %8290, %8291
  %8293 = icmp eq i64 %8292, 2
  %8294 = zext i1 %8293 to i8
  %8295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8294, i8* %8295, align 1
  store %struct.Memory* %loadMem_47afee, %struct.Memory** %MEMORY
  %loadMem_47aff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8297 = getelementptr inbounds %struct.GPR, %struct.GPR* %8296, i32 0, i32 33
  %8298 = getelementptr inbounds %struct.Reg, %struct.Reg* %8297, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %8298 to i64*
  %8299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8300 = getelementptr inbounds %struct.GPR, %struct.GPR* %8299, i32 0, i32 9
  %8301 = getelementptr inbounds %struct.Reg, %struct.Reg* %8300, i32 0, i32 0
  %RSI.i71 = bitcast %union.anon* %8301 to i64*
  %8302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8303 = getelementptr inbounds %struct.GPR, %struct.GPR* %8302, i32 0, i32 15
  %8304 = getelementptr inbounds %struct.Reg, %struct.Reg* %8303, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %8304 to i64*
  %8305 = load i64, i64* %RBP.i72
  %8306 = sub i64 %8305, 4
  %8307 = load i64, i64* %PC.i70
  %8308 = add i64 %8307, 4
  store i64 %8308, i64* %PC.i70
  %8309 = inttoptr i64 %8306 to i32*
  %8310 = load i32, i32* %8309
  %8311 = sext i32 %8310 to i64
  store i64 %8311, i64* %RSI.i71, align 8
  store %struct.Memory* %loadMem_47aff1, %struct.Memory** %MEMORY
  %loadMem_47aff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8313 = getelementptr inbounds %struct.GPR, %struct.GPR* %8312, i32 0, i32 33
  %8314 = getelementptr inbounds %struct.Reg, %struct.Reg* %8313, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %8314 to i64*
  %8315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8316 = getelementptr inbounds %struct.GPR, %struct.GPR* %8315, i32 0, i32 1
  %8317 = getelementptr inbounds %struct.Reg, %struct.Reg* %8316, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %8317 to i64*
  %8318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8319 = getelementptr inbounds %struct.GPR, %struct.GPR* %8318, i32 0, i32 5
  %8320 = getelementptr inbounds %struct.Reg, %struct.Reg* %8319, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %8320 to i64*
  %8321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8322 = getelementptr inbounds %struct.GPR, %struct.GPR* %8321, i32 0, i32 9
  %8323 = getelementptr inbounds %struct.Reg, %struct.Reg* %8322, i32 0, i32 0
  %RSI.i69 = bitcast %union.anon* %8323 to i64*
  %8324 = load i64, i64* %RCX.i68
  %8325 = load i64, i64* %RSI.i69
  %8326 = mul i64 %8325, 4
  %8327 = add i64 %8326, %8324
  %8328 = load i64, i64* %PC.i66
  %8329 = add i64 %8328, 3
  store i64 %8329, i64* %PC.i66
  %8330 = inttoptr i64 %8327 to i32*
  %8331 = load i32, i32* %8330
  %8332 = zext i32 %8331 to i64
  store i64 %8332, i64* %RAX.i67, align 8
  store %struct.Memory* %loadMem_47aff5, %struct.Memory** %MEMORY
  %loadMem_47aff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8334 = getelementptr inbounds %struct.GPR, %struct.GPR* %8333, i32 0, i32 33
  %8335 = getelementptr inbounds %struct.Reg, %struct.Reg* %8334, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %8335 to i64*
  %8336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8337 = getelementptr inbounds %struct.GPR, %struct.GPR* %8336, i32 0, i32 5
  %8338 = getelementptr inbounds %struct.Reg, %struct.Reg* %8337, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %8338 to i64*
  %8339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8340 = getelementptr inbounds %struct.GPR, %struct.GPR* %8339, i32 0, i32 15
  %8341 = getelementptr inbounds %struct.Reg, %struct.Reg* %8340, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %8341 to i64*
  %8342 = load i64, i64* %RBP.i65
  %8343 = sub i64 %8342, 16
  %8344 = load i64, i64* %PC.i63
  %8345 = add i64 %8344, 4
  store i64 %8345, i64* %PC.i63
  %8346 = inttoptr i64 %8343 to i32*
  %8347 = load i32, i32* %8346
  %8348 = sext i32 %8347 to i64
  store i64 %8348, i64* %RCX.i64, align 8
  store %struct.Memory* %loadMem_47aff8, %struct.Memory** %MEMORY
  %loadMem_47affc = load %struct.Memory*, %struct.Memory** %MEMORY
  %8349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8350 = getelementptr inbounds %struct.GPR, %struct.GPR* %8349, i32 0, i32 33
  %8351 = getelementptr inbounds %struct.Reg, %struct.Reg* %8350, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %8351 to i64*
  %8352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8353 = getelementptr inbounds %struct.GPR, %struct.GPR* %8352, i32 0, i32 17
  %8354 = getelementptr inbounds %struct.Reg, %struct.Reg* %8353, i32 0, i32 0
  %R8D.i61 = bitcast %union.anon* %8354 to i32*
  %8355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8356 = getelementptr inbounds %struct.GPR, %struct.GPR* %8355, i32 0, i32 5
  %8357 = getelementptr inbounds %struct.Reg, %struct.Reg* %8356, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %8357 to i64*
  %8358 = bitcast i32* %R8D.i61 to i64*
  %8359 = load i64, i64* %RCX.i62
  %8360 = mul i64 %8359, 2
  %8361 = add i64 %8360, 7302816
  %8362 = load i64, i64* %PC.i60
  %8363 = add i64 %8362, 9
  store i64 %8363, i64* %PC.i60
  %8364 = inttoptr i64 %8361 to i16*
  %8365 = load i16, i16* %8364
  %8366 = sext i16 %8365 to i64
  %8367 = and i64 %8366, 4294967295
  store i64 %8367, i64* %8358, align 8
  store %struct.Memory* %loadMem_47affc, %struct.Memory** %MEMORY
  %loadMem_47b005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8369 = getelementptr inbounds %struct.GPR, %struct.GPR* %8368, i32 0, i32 33
  %8370 = getelementptr inbounds %struct.Reg, %struct.Reg* %8369, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %8370 to i64*
  %8371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8372 = getelementptr inbounds %struct.GPR, %struct.GPR* %8371, i32 0, i32 17
  %8373 = getelementptr inbounds %struct.Reg, %struct.Reg* %8372, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %8373 to i32*
  %8374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8375 = getelementptr inbounds %struct.GPR, %struct.GPR* %8374, i32 0, i32 1
  %8376 = getelementptr inbounds %struct.Reg, %struct.Reg* %8375, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %8376 to i64*
  %8377 = load i64, i64* %RAX.i59
  %8378 = load i32, i32* %R8D.i
  %8379 = zext i32 %8378 to i64
  %8380 = load i64, i64* %PC.i58
  %8381 = add i64 %8380, 4
  store i64 %8381, i64* %PC.i58
  %8382 = shl i64 %8377, 32
  %8383 = ashr exact i64 %8382, 32
  %8384 = shl i64 %8379, 32
  %8385 = ashr exact i64 %8384, 32
  %8386 = mul i64 %8385, %8383
  %8387 = trunc i64 %8386 to i32
  %8388 = and i64 %8386, 4294967295
  store i64 %8388, i64* %RAX.i59, align 8
  %8389 = shl i64 %8386, 32
  %8390 = ashr exact i64 %8389, 32
  %8391 = icmp ne i64 %8390, %8386
  %8392 = zext i1 %8391 to i8
  %8393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8392, i8* %8393, align 1
  %8394 = and i32 %8387, 255
  %8395 = call i32 @llvm.ctpop.i32(i32 %8394)
  %8396 = trunc i32 %8395 to i8
  %8397 = and i8 %8396, 1
  %8398 = xor i8 %8397, 1
  %8399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8398, i8* %8399, align 1
  %8400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8400, align 1
  %8401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8401, align 1
  %8402 = lshr i32 %8387, 31
  %8403 = trunc i32 %8402 to i8
  %8404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8403, i8* %8404, align 1
  %8405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8392, i8* %8405, align 1
  store %struct.Memory* %loadMem_47b005, %struct.Memory** %MEMORY
  %loadMem_47b009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8407 = getelementptr inbounds %struct.GPR, %struct.GPR* %8406, i32 0, i32 33
  %8408 = getelementptr inbounds %struct.Reg, %struct.Reg* %8407, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %8408 to i64*
  %8409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8410 = getelementptr inbounds %struct.GPR, %struct.GPR* %8409, i32 0, i32 5
  %8411 = getelementptr inbounds %struct.Reg, %struct.Reg* %8410, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %8411 to i64*
  %8412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8413 = getelementptr inbounds %struct.GPR, %struct.GPR* %8412, i32 0, i32 15
  %8414 = getelementptr inbounds %struct.Reg, %struct.Reg* %8413, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %8414 to i64*
  %8415 = load i64, i64* %RBP.i57
  %8416 = sub i64 %8415, 12
  %8417 = load i64, i64* %PC.i55
  %8418 = add i64 %8417, 4
  store i64 %8418, i64* %PC.i55
  %8419 = inttoptr i64 %8416 to i32*
  %8420 = load i32, i32* %8419
  %8421 = sext i32 %8420 to i64
  store i64 %8421, i64* %RCX.i56, align 8
  store %struct.Memory* %loadMem_47b009, %struct.Memory** %MEMORY
  %loadMem_47b00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8423 = getelementptr inbounds %struct.GPR, %struct.GPR* %8422, i32 0, i32 33
  %8424 = getelementptr inbounds %struct.Reg, %struct.Reg* %8423, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %8424 to i64*
  %8425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8426 = getelementptr inbounds %struct.GPR, %struct.GPR* %8425, i32 0, i32 5
  %8427 = getelementptr inbounds %struct.Reg, %struct.Reg* %8426, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %8427 to i64*
  %8428 = load i64, i64* %RCX.i54
  %8429 = load i64, i64* %PC.i53
  %8430 = add i64 %8429, 4
  store i64 %8430, i64* %PC.i53
  %8431 = shl i64 %8428, 7
  %8432 = icmp slt i64 %8431, 0
  %8433 = shl i64 %8431, 1
  store i64 %8433, i64* %RCX.i54, align 8
  %8434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8435 = zext i1 %8432 to i8
  store i8 %8435, i8* %8434, align 1
  %8436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8437 = trunc i64 %8433 to i32
  store i8 1, i8* %8436, align 1
  %8438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8438, align 1
  %8439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8440 = icmp eq i64 %8433, 0
  %8441 = zext i1 %8440 to i8
  store i8 %8441, i8* %8439, align 1
  %8442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8443 = lshr i64 %8433, 63
  %8444 = trunc i64 %8443 to i8
  store i8 %8444, i8* %8442, align 1
  %8445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8445, align 1
  store %struct.Memory* %loadMem_47b00d, %struct.Memory** %MEMORY
  %loadMem_47b011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8447 = getelementptr inbounds %struct.GPR, %struct.GPR* %8446, i32 0, i32 33
  %8448 = getelementptr inbounds %struct.Reg, %struct.Reg* %8447, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %8448 to i64*
  %8449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8450 = getelementptr inbounds %struct.GPR, %struct.GPR* %8449, i32 0, i32 9
  %8451 = getelementptr inbounds %struct.Reg, %struct.Reg* %8450, i32 0, i32 0
  %RSI.i51 = bitcast %union.anon* %8451 to i64*
  %8452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8453 = getelementptr inbounds %struct.GPR, %struct.GPR* %8452, i32 0, i32 15
  %8454 = getelementptr inbounds %struct.Reg, %struct.Reg* %8453, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %8454 to i64*
  %8455 = load i64, i64* %RBP.i52
  %8456 = sub i64 %8455, 88
  %8457 = load i64, i64* %PC.i50
  %8458 = add i64 %8457, 4
  store i64 %8458, i64* %PC.i50
  %8459 = inttoptr i64 %8456 to i64*
  %8460 = load i64, i64* %8459
  store i64 %8460, i64* %RSI.i51, align 8
  store %struct.Memory* %loadMem_47b011, %struct.Memory** %MEMORY
  %loadMem_47b015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8462 = getelementptr inbounds %struct.GPR, %struct.GPR* %8461, i32 0, i32 33
  %8463 = getelementptr inbounds %struct.Reg, %struct.Reg* %8462, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %8463 to i64*
  %8464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8465 = getelementptr inbounds %struct.GPR, %struct.GPR* %8464, i32 0, i32 5
  %8466 = getelementptr inbounds %struct.Reg, %struct.Reg* %8465, i32 0, i32 0
  %RCX.i48 = bitcast %union.anon* %8466 to i64*
  %8467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8468 = getelementptr inbounds %struct.GPR, %struct.GPR* %8467, i32 0, i32 9
  %8469 = getelementptr inbounds %struct.Reg, %struct.Reg* %8468, i32 0, i32 0
  %RSI.i49 = bitcast %union.anon* %8469 to i64*
  %8470 = load i64, i64* %RSI.i49
  %8471 = load i64, i64* %RCX.i48
  %8472 = load i64, i64* %PC.i47
  %8473 = add i64 %8472, 3
  store i64 %8473, i64* %PC.i47
  %8474 = add i64 %8471, %8470
  store i64 %8474, i64* %RSI.i49, align 8
  %8475 = icmp ult i64 %8474, %8470
  %8476 = icmp ult i64 %8474, %8471
  %8477 = or i1 %8475, %8476
  %8478 = zext i1 %8477 to i8
  %8479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8478, i8* %8479, align 1
  %8480 = trunc i64 %8474 to i32
  %8481 = and i32 %8480, 255
  %8482 = call i32 @llvm.ctpop.i32(i32 %8481)
  %8483 = trunc i32 %8482 to i8
  %8484 = and i8 %8483, 1
  %8485 = xor i8 %8484, 1
  %8486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8485, i8* %8486, align 1
  %8487 = xor i64 %8471, %8470
  %8488 = xor i64 %8487, %8474
  %8489 = lshr i64 %8488, 4
  %8490 = trunc i64 %8489 to i8
  %8491 = and i8 %8490, 1
  %8492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8491, i8* %8492, align 1
  %8493 = icmp eq i64 %8474, 0
  %8494 = zext i1 %8493 to i8
  %8495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8494, i8* %8495, align 1
  %8496 = lshr i64 %8474, 63
  %8497 = trunc i64 %8496 to i8
  %8498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8497, i8* %8498, align 1
  %8499 = lshr i64 %8470, 63
  %8500 = lshr i64 %8471, 63
  %8501 = xor i64 %8496, %8499
  %8502 = xor i64 %8496, %8500
  %8503 = add i64 %8501, %8502
  %8504 = icmp eq i64 %8503, 2
  %8505 = zext i1 %8504 to i8
  %8506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8505, i8* %8506, align 1
  store %struct.Memory* %loadMem_47b015, %struct.Memory** %MEMORY
  %loadMem_47b018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8508 = getelementptr inbounds %struct.GPR, %struct.GPR* %8507, i32 0, i32 33
  %8509 = getelementptr inbounds %struct.Reg, %struct.Reg* %8508, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %8509 to i64*
  %8510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8511 = getelementptr inbounds %struct.GPR, %struct.GPR* %8510, i32 0, i32 5
  %8512 = getelementptr inbounds %struct.Reg, %struct.Reg* %8511, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %8512 to i64*
  %8513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8514 = getelementptr inbounds %struct.GPR, %struct.GPR* %8513, i32 0, i32 15
  %8515 = getelementptr inbounds %struct.Reg, %struct.Reg* %8514, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %8515 to i64*
  %8516 = load i64, i64* %RBP.i46
  %8517 = sub i64 %8516, 8
  %8518 = load i64, i64* %PC.i44
  %8519 = add i64 %8518, 4
  store i64 %8519, i64* %PC.i44
  %8520 = inttoptr i64 %8517 to i32*
  %8521 = load i32, i32* %8520
  %8522 = sext i32 %8521 to i64
  store i64 %8522, i64* %RCX.i45, align 8
  store %struct.Memory* %loadMem_47b018, %struct.Memory** %MEMORY
  %loadMem_47b01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8524 = getelementptr inbounds %struct.GPR, %struct.GPR* %8523, i32 0, i32 33
  %8525 = getelementptr inbounds %struct.Reg, %struct.Reg* %8524, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %8525 to i64*
  %8526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8527 = getelementptr inbounds %struct.GPR, %struct.GPR* %8526, i32 0, i32 5
  %8528 = getelementptr inbounds %struct.Reg, %struct.Reg* %8527, i32 0, i32 0
  %RCX.i43 = bitcast %union.anon* %8528 to i64*
  %8529 = load i64, i64* %RCX.i43
  %8530 = load i64, i64* %PC.i42
  %8531 = add i64 %8530, 4
  store i64 %8531, i64* %PC.i42
  %8532 = shl i64 %8529, 4
  %8533 = icmp slt i64 %8532, 0
  %8534 = shl i64 %8532, 1
  store i64 %8534, i64* %RCX.i43, align 8
  %8535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8536 = zext i1 %8533 to i8
  store i8 %8536, i8* %8535, align 1
  %8537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8538 = trunc i64 %8534 to i32
  %8539 = and i32 %8538, 254
  %8540 = call i32 @llvm.ctpop.i32(i32 %8539)
  %8541 = trunc i32 %8540 to i8
  %8542 = and i8 %8541, 1
  %8543 = xor i8 %8542, 1
  store i8 %8543, i8* %8537, align 1
  %8544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8544, align 1
  %8545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8546 = icmp eq i64 %8534, 0
  %8547 = zext i1 %8546 to i8
  store i8 %8547, i8* %8545, align 1
  %8548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8549 = lshr i64 %8534, 63
  %8550 = trunc i64 %8549 to i8
  store i8 %8550, i8* %8548, align 1
  %8551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %8551, align 1
  store %struct.Memory* %loadMem_47b01c, %struct.Memory** %MEMORY
  %loadMem_47b020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8553 = getelementptr inbounds %struct.GPR, %struct.GPR* %8552, i32 0, i32 33
  %8554 = getelementptr inbounds %struct.Reg, %struct.Reg* %8553, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %8554 to i64*
  %8555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8556 = getelementptr inbounds %struct.GPR, %struct.GPR* %8555, i32 0, i32 5
  %8557 = getelementptr inbounds %struct.Reg, %struct.Reg* %8556, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %8557 to i64*
  %8558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8559 = getelementptr inbounds %struct.GPR, %struct.GPR* %8558, i32 0, i32 9
  %8560 = getelementptr inbounds %struct.Reg, %struct.Reg* %8559, i32 0, i32 0
  %RSI.i41 = bitcast %union.anon* %8560 to i64*
  %8561 = load i64, i64* %RSI.i41
  %8562 = load i64, i64* %RCX.i40
  %8563 = load i64, i64* %PC.i39
  %8564 = add i64 %8563, 3
  store i64 %8564, i64* %PC.i39
  %8565 = add i64 %8562, %8561
  store i64 %8565, i64* %RSI.i41, align 8
  %8566 = icmp ult i64 %8565, %8561
  %8567 = icmp ult i64 %8565, %8562
  %8568 = or i1 %8566, %8567
  %8569 = zext i1 %8568 to i8
  %8570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8569, i8* %8570, align 1
  %8571 = trunc i64 %8565 to i32
  %8572 = and i32 %8571, 255
  %8573 = call i32 @llvm.ctpop.i32(i32 %8572)
  %8574 = trunc i32 %8573 to i8
  %8575 = and i8 %8574, 1
  %8576 = xor i8 %8575, 1
  %8577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8576, i8* %8577, align 1
  %8578 = xor i64 %8562, %8561
  %8579 = xor i64 %8578, %8565
  %8580 = lshr i64 %8579, 4
  %8581 = trunc i64 %8580 to i8
  %8582 = and i8 %8581, 1
  %8583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8582, i8* %8583, align 1
  %8584 = icmp eq i64 %8565, 0
  %8585 = zext i1 %8584 to i8
  %8586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8585, i8* %8586, align 1
  %8587 = lshr i64 %8565, 63
  %8588 = trunc i64 %8587 to i8
  %8589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8588, i8* %8589, align 1
  %8590 = lshr i64 %8561, 63
  %8591 = lshr i64 %8562, 63
  %8592 = xor i64 %8587, %8590
  %8593 = xor i64 %8587, %8591
  %8594 = add i64 %8592, %8593
  %8595 = icmp eq i64 %8594, 2
  %8596 = zext i1 %8595 to i8
  %8597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8596, i8* %8597, align 1
  store %struct.Memory* %loadMem_47b020, %struct.Memory** %MEMORY
  %loadMem_47b023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8599 = getelementptr inbounds %struct.GPR, %struct.GPR* %8598, i32 0, i32 33
  %8600 = getelementptr inbounds %struct.Reg, %struct.Reg* %8599, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %8600 to i64*
  %8601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8602 = getelementptr inbounds %struct.GPR, %struct.GPR* %8601, i32 0, i32 5
  %8603 = getelementptr inbounds %struct.Reg, %struct.Reg* %8602, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %8603 to i64*
  %8604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8605 = getelementptr inbounds %struct.GPR, %struct.GPR* %8604, i32 0, i32 15
  %8606 = getelementptr inbounds %struct.Reg, %struct.Reg* %8605, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %8606 to i64*
  %8607 = load i64, i64* %RBP.i38
  %8608 = sub i64 %8607, 4
  %8609 = load i64, i64* %PC.i36
  %8610 = add i64 %8609, 4
  store i64 %8610, i64* %PC.i36
  %8611 = inttoptr i64 %8608 to i32*
  %8612 = load i32, i32* %8611
  %8613 = sext i32 %8612 to i64
  store i64 %8613, i64* %RCX.i37, align 8
  store %struct.Memory* %loadMem_47b023, %struct.Memory** %MEMORY
  %loadMem_47b027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8615 = getelementptr inbounds %struct.GPR, %struct.GPR* %8614, i32 0, i32 33
  %8616 = getelementptr inbounds %struct.Reg, %struct.Reg* %8615, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %8616 to i64*
  %8617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8618 = getelementptr inbounds %struct.GPR, %struct.GPR* %8617, i32 0, i32 1
  %8619 = getelementptr inbounds %struct.Reg, %struct.Reg* %8618, i32 0, i32 0
  %EAX.i35 = bitcast %union.anon* %8619 to i32*
  %8620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8621 = getelementptr inbounds %struct.GPR, %struct.GPR* %8620, i32 0, i32 5
  %8622 = getelementptr inbounds %struct.Reg, %struct.Reg* %8621, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8622 to i64*
  %8623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8624 = getelementptr inbounds %struct.GPR, %struct.GPR* %8623, i32 0, i32 9
  %8625 = getelementptr inbounds %struct.Reg, %struct.Reg* %8624, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %8625 to i64*
  %8626 = load i64, i64* %RSI.i
  %8627 = load i64, i64* %RCX.i
  %8628 = mul i64 %8627, 4
  %8629 = add i64 %8628, %8626
  %8630 = load i32, i32* %EAX.i35
  %8631 = zext i32 %8630 to i64
  %8632 = load i64, i64* %PC.i34
  %8633 = add i64 %8632, 3
  store i64 %8633, i64* %PC.i34
  %8634 = inttoptr i64 %8629 to i32*
  store i32 %8630, i32* %8634
  store %struct.Memory* %loadMem_47b027, %struct.Memory** %MEMORY
  br label %block_.L_47b02a

block_.L_47b02a:                                  ; preds = %routine_idivl__r9d.exit, %routine_idivl__r9d.exit253
  %loadMem_47b02a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8636 = getelementptr inbounds %struct.GPR, %struct.GPR* %8635, i32 0, i32 33
  %8637 = getelementptr inbounds %struct.Reg, %struct.Reg* %8636, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %8637 to i64*
  %8638 = load i64, i64* %PC.i33
  %8639 = add i64 %8638, 5
  %8640 = load i64, i64* %PC.i33
  %8641 = add i64 %8640, 5
  store i64 %8641, i64* %PC.i33
  %8642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8639, i64* %8642, align 8
  store %struct.Memory* %loadMem_47b02a, %struct.Memory** %MEMORY
  br label %block_.L_47b02f

block_.L_47b02f:                                  ; preds = %block_.L_47b02a
  %loadMem_47b02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8644 = getelementptr inbounds %struct.GPR, %struct.GPR* %8643, i32 0, i32 33
  %8645 = getelementptr inbounds %struct.Reg, %struct.Reg* %8644, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %8645 to i64*
  %8646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8647 = getelementptr inbounds %struct.GPR, %struct.GPR* %8646, i32 0, i32 1
  %8648 = getelementptr inbounds %struct.Reg, %struct.Reg* %8647, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %8648 to i64*
  %8649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8650 = getelementptr inbounds %struct.GPR, %struct.GPR* %8649, i32 0, i32 15
  %8651 = getelementptr inbounds %struct.Reg, %struct.Reg* %8650, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %8651 to i64*
  %8652 = load i64, i64* %RBP.i32
  %8653 = sub i64 %8652, 4
  %8654 = load i64, i64* %PC.i30
  %8655 = add i64 %8654, 3
  store i64 %8655, i64* %PC.i30
  %8656 = inttoptr i64 %8653 to i32*
  %8657 = load i32, i32* %8656
  %8658 = zext i32 %8657 to i64
  store i64 %8658, i64* %RAX.i31, align 8
  store %struct.Memory* %loadMem_47b02f, %struct.Memory** %MEMORY
  %loadMem_47b032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8660 = getelementptr inbounds %struct.GPR, %struct.GPR* %8659, i32 0, i32 33
  %8661 = getelementptr inbounds %struct.Reg, %struct.Reg* %8660, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %8661 to i64*
  %8662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8663 = getelementptr inbounds %struct.GPR, %struct.GPR* %8662, i32 0, i32 1
  %8664 = getelementptr inbounds %struct.Reg, %struct.Reg* %8663, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %8664 to i64*
  %8665 = load i64, i64* %RAX.i29
  %8666 = load i64, i64* %PC.i28
  %8667 = add i64 %8666, 3
  store i64 %8667, i64* %PC.i28
  %8668 = trunc i64 %8665 to i32
  %8669 = add i32 1, %8668
  %8670 = zext i32 %8669 to i64
  store i64 %8670, i64* %RAX.i29, align 8
  %8671 = icmp ult i32 %8669, %8668
  %8672 = icmp ult i32 %8669, 1
  %8673 = or i1 %8671, %8672
  %8674 = zext i1 %8673 to i8
  %8675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8674, i8* %8675, align 1
  %8676 = and i32 %8669, 255
  %8677 = call i32 @llvm.ctpop.i32(i32 %8676)
  %8678 = trunc i32 %8677 to i8
  %8679 = and i8 %8678, 1
  %8680 = xor i8 %8679, 1
  %8681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8680, i8* %8681, align 1
  %8682 = xor i64 1, %8665
  %8683 = trunc i64 %8682 to i32
  %8684 = xor i32 %8683, %8669
  %8685 = lshr i32 %8684, 4
  %8686 = trunc i32 %8685 to i8
  %8687 = and i8 %8686, 1
  %8688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8687, i8* %8688, align 1
  %8689 = icmp eq i32 %8669, 0
  %8690 = zext i1 %8689 to i8
  %8691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8690, i8* %8691, align 1
  %8692 = lshr i32 %8669, 31
  %8693 = trunc i32 %8692 to i8
  %8694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8693, i8* %8694, align 1
  %8695 = lshr i32 %8668, 31
  %8696 = xor i32 %8692, %8695
  %8697 = add i32 %8696, %8692
  %8698 = icmp eq i32 %8697, 2
  %8699 = zext i1 %8698 to i8
  %8700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8699, i8* %8700, align 1
  store %struct.Memory* %loadMem_47b032, %struct.Memory** %MEMORY
  %loadMem_47b035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8702 = getelementptr inbounds %struct.GPR, %struct.GPR* %8701, i32 0, i32 33
  %8703 = getelementptr inbounds %struct.Reg, %struct.Reg* %8702, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %8703 to i64*
  %8704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8705 = getelementptr inbounds %struct.GPR, %struct.GPR* %8704, i32 0, i32 1
  %8706 = getelementptr inbounds %struct.Reg, %struct.Reg* %8705, i32 0, i32 0
  %EAX.i26 = bitcast %union.anon* %8706 to i32*
  %8707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8708 = getelementptr inbounds %struct.GPR, %struct.GPR* %8707, i32 0, i32 15
  %8709 = getelementptr inbounds %struct.Reg, %struct.Reg* %8708, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %8709 to i64*
  %8710 = load i64, i64* %RBP.i27
  %8711 = sub i64 %8710, 4
  %8712 = load i32, i32* %EAX.i26
  %8713 = zext i32 %8712 to i64
  %8714 = load i64, i64* %PC.i25
  %8715 = add i64 %8714, 3
  store i64 %8715, i64* %PC.i25
  %8716 = inttoptr i64 %8711 to i32*
  store i32 %8712, i32* %8716
  store %struct.Memory* %loadMem_47b035, %struct.Memory** %MEMORY
  %loadMem_47b038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8718 = getelementptr inbounds %struct.GPR, %struct.GPR* %8717, i32 0, i32 33
  %8719 = getelementptr inbounds %struct.Reg, %struct.Reg* %8718, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %8719 to i64*
  %8720 = load i64, i64* %PC.i24
  %8721 = add i64 %8720, -956
  %8722 = load i64, i64* %PC.i24
  %8723 = add i64 %8722, 5
  store i64 %8723, i64* %PC.i24
  %8724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8721, i64* %8724, align 8
  store %struct.Memory* %loadMem_47b038, %struct.Memory** %MEMORY
  br label %block_.L_47ac7c

block_.L_47b03d:                                  ; preds = %block_.L_47ac7c
  %loadMem_47b03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8726 = getelementptr inbounds %struct.GPR, %struct.GPR* %8725, i32 0, i32 33
  %8727 = getelementptr inbounds %struct.Reg, %struct.Reg* %8726, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %8727 to i64*
  %8728 = load i64, i64* %PC.i23
  %8729 = add i64 %8728, 5
  %8730 = load i64, i64* %PC.i23
  %8731 = add i64 %8730, 5
  store i64 %8731, i64* %PC.i23
  %8732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8729, i64* %8732, align 8
  store %struct.Memory* %loadMem_47b03d, %struct.Memory** %MEMORY
  br label %block_.L_47b042

block_.L_47b042:                                  ; preds = %block_.L_47b03d
  %loadMem_47b042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8734 = getelementptr inbounds %struct.GPR, %struct.GPR* %8733, i32 0, i32 33
  %8735 = getelementptr inbounds %struct.Reg, %struct.Reg* %8734, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %8735 to i64*
  %8736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8737 = getelementptr inbounds %struct.GPR, %struct.GPR* %8736, i32 0, i32 1
  %8738 = getelementptr inbounds %struct.Reg, %struct.Reg* %8737, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %8738 to i64*
  %8739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8740 = getelementptr inbounds %struct.GPR, %struct.GPR* %8739, i32 0, i32 15
  %8741 = getelementptr inbounds %struct.Reg, %struct.Reg* %8740, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %8741 to i64*
  %8742 = load i64, i64* %RBP.i22
  %8743 = sub i64 %8742, 8
  %8744 = load i64, i64* %PC.i20
  %8745 = add i64 %8744, 3
  store i64 %8745, i64* %PC.i20
  %8746 = inttoptr i64 %8743 to i32*
  %8747 = load i32, i32* %8746
  %8748 = zext i32 %8747 to i64
  store i64 %8748, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_47b042, %struct.Memory** %MEMORY
  %loadMem_47b045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8750 = getelementptr inbounds %struct.GPR, %struct.GPR* %8749, i32 0, i32 33
  %8751 = getelementptr inbounds %struct.Reg, %struct.Reg* %8750, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %8751 to i64*
  %8752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8753 = getelementptr inbounds %struct.GPR, %struct.GPR* %8752, i32 0, i32 1
  %8754 = getelementptr inbounds %struct.Reg, %struct.Reg* %8753, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %8754 to i64*
  %8755 = load i64, i64* %RAX.i19
  %8756 = load i64, i64* %PC.i18
  %8757 = add i64 %8756, 3
  store i64 %8757, i64* %PC.i18
  %8758 = trunc i64 %8755 to i32
  %8759 = add i32 1, %8758
  %8760 = zext i32 %8759 to i64
  store i64 %8760, i64* %RAX.i19, align 8
  %8761 = icmp ult i32 %8759, %8758
  %8762 = icmp ult i32 %8759, 1
  %8763 = or i1 %8761, %8762
  %8764 = zext i1 %8763 to i8
  %8765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8764, i8* %8765, align 1
  %8766 = and i32 %8759, 255
  %8767 = call i32 @llvm.ctpop.i32(i32 %8766)
  %8768 = trunc i32 %8767 to i8
  %8769 = and i8 %8768, 1
  %8770 = xor i8 %8769, 1
  %8771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8770, i8* %8771, align 1
  %8772 = xor i64 1, %8755
  %8773 = trunc i64 %8772 to i32
  %8774 = xor i32 %8773, %8759
  %8775 = lshr i32 %8774, 4
  %8776 = trunc i32 %8775 to i8
  %8777 = and i8 %8776, 1
  %8778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8777, i8* %8778, align 1
  %8779 = icmp eq i32 %8759, 0
  %8780 = zext i1 %8779 to i8
  %8781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8780, i8* %8781, align 1
  %8782 = lshr i32 %8759, 31
  %8783 = trunc i32 %8782 to i8
  %8784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8783, i8* %8784, align 1
  %8785 = lshr i32 %8758, 31
  %8786 = xor i32 %8782, %8785
  %8787 = add i32 %8786, %8782
  %8788 = icmp eq i32 %8787, 2
  %8789 = zext i1 %8788 to i8
  %8790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8789, i8* %8790, align 1
  store %struct.Memory* %loadMem_47b045, %struct.Memory** %MEMORY
  %loadMem_47b048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8792 = getelementptr inbounds %struct.GPR, %struct.GPR* %8791, i32 0, i32 33
  %8793 = getelementptr inbounds %struct.Reg, %struct.Reg* %8792, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %8793 to i64*
  %8794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8795 = getelementptr inbounds %struct.GPR, %struct.GPR* %8794, i32 0, i32 1
  %8796 = getelementptr inbounds %struct.Reg, %struct.Reg* %8795, i32 0, i32 0
  %EAX.i16 = bitcast %union.anon* %8796 to i32*
  %8797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8798 = getelementptr inbounds %struct.GPR, %struct.GPR* %8797, i32 0, i32 15
  %8799 = getelementptr inbounds %struct.Reg, %struct.Reg* %8798, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %8799 to i64*
  %8800 = load i64, i64* %RBP.i17
  %8801 = sub i64 %8800, 8
  %8802 = load i32, i32* %EAX.i16
  %8803 = zext i32 %8802 to i64
  %8804 = load i64, i64* %PC.i15
  %8805 = add i64 %8804, 3
  store i64 %8805, i64* %PC.i15
  %8806 = inttoptr i64 %8801 to i32*
  store i32 %8802, i32* %8806
  store %struct.Memory* %loadMem_47b048, %struct.Memory** %MEMORY
  %loadMem_47b04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8808 = getelementptr inbounds %struct.GPR, %struct.GPR* %8807, i32 0, i32 33
  %8809 = getelementptr inbounds %struct.Reg, %struct.Reg* %8808, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8809 to i64*
  %8810 = load i64, i64* %PC.i14
  %8811 = add i64 %8810, -992
  %8812 = load i64, i64* %PC.i14
  %8813 = add i64 %8812, 5
  store i64 %8813, i64* %PC.i14
  %8814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8811, i64* %8814, align 8
  store %struct.Memory* %loadMem_47b04b, %struct.Memory** %MEMORY
  br label %block_.L_47ac6b

block_.L_47b050:                                  ; preds = %block_.L_47ac6b
  %loadMem_47b050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8816 = getelementptr inbounds %struct.GPR, %struct.GPR* %8815, i32 0, i32 33
  %8817 = getelementptr inbounds %struct.Reg, %struct.Reg* %8816, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8817 to i64*
  %8818 = load i64, i64* %PC.i13
  %8819 = add i64 %8818, 5
  %8820 = load i64, i64* %PC.i13
  %8821 = add i64 %8820, 5
  store i64 %8821, i64* %PC.i13
  %8822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8819, i64* %8822, align 8
  store %struct.Memory* %loadMem_47b050, %struct.Memory** %MEMORY
  br label %block_.L_47b055

block_.L_47b055:                                  ; preds = %block_.L_47b050
  %loadMem_47b055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8824 = getelementptr inbounds %struct.GPR, %struct.GPR* %8823, i32 0, i32 33
  %8825 = getelementptr inbounds %struct.Reg, %struct.Reg* %8824, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %8825 to i64*
  %8826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8827 = getelementptr inbounds %struct.GPR, %struct.GPR* %8826, i32 0, i32 1
  %8828 = getelementptr inbounds %struct.Reg, %struct.Reg* %8827, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %8828 to i64*
  %8829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8830 = getelementptr inbounds %struct.GPR, %struct.GPR* %8829, i32 0, i32 15
  %8831 = getelementptr inbounds %struct.Reg, %struct.Reg* %8830, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %8831 to i64*
  %8832 = load i64, i64* %RBP.i12
  %8833 = sub i64 %8832, 12
  %8834 = load i64, i64* %PC.i10
  %8835 = add i64 %8834, 3
  store i64 %8835, i64* %PC.i10
  %8836 = inttoptr i64 %8833 to i32*
  %8837 = load i32, i32* %8836
  %8838 = zext i32 %8837 to i64
  store i64 %8838, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_47b055, %struct.Memory** %MEMORY
  %loadMem_47b058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8840 = getelementptr inbounds %struct.GPR, %struct.GPR* %8839, i32 0, i32 33
  %8841 = getelementptr inbounds %struct.Reg, %struct.Reg* %8840, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8841 to i64*
  %8842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8843 = getelementptr inbounds %struct.GPR, %struct.GPR* %8842, i32 0, i32 1
  %8844 = getelementptr inbounds %struct.Reg, %struct.Reg* %8843, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8844 to i64*
  %8845 = load i64, i64* %RAX.i
  %8846 = load i64, i64* %PC.i9
  %8847 = add i64 %8846, 3
  store i64 %8847, i64* %PC.i9
  %8848 = trunc i64 %8845 to i32
  %8849 = add i32 1, %8848
  %8850 = zext i32 %8849 to i64
  store i64 %8850, i64* %RAX.i, align 8
  %8851 = icmp ult i32 %8849, %8848
  %8852 = icmp ult i32 %8849, 1
  %8853 = or i1 %8851, %8852
  %8854 = zext i1 %8853 to i8
  %8855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8854, i8* %8855, align 1
  %8856 = and i32 %8849, 255
  %8857 = call i32 @llvm.ctpop.i32(i32 %8856)
  %8858 = trunc i32 %8857 to i8
  %8859 = and i8 %8858, 1
  %8860 = xor i8 %8859, 1
  %8861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8860, i8* %8861, align 1
  %8862 = xor i64 1, %8845
  %8863 = trunc i64 %8862 to i32
  %8864 = xor i32 %8863, %8849
  %8865 = lshr i32 %8864, 4
  %8866 = trunc i32 %8865 to i8
  %8867 = and i8 %8866, 1
  %8868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8867, i8* %8868, align 1
  %8869 = icmp eq i32 %8849, 0
  %8870 = zext i1 %8869 to i8
  %8871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8870, i8* %8871, align 1
  %8872 = lshr i32 %8849, 31
  %8873 = trunc i32 %8872 to i8
  %8874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8873, i8* %8874, align 1
  %8875 = lshr i32 %8848, 31
  %8876 = xor i32 %8872, %8875
  %8877 = add i32 %8876, %8872
  %8878 = icmp eq i32 %8877, 2
  %8879 = zext i1 %8878 to i8
  %8880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8879, i8* %8880, align 1
  store %struct.Memory* %loadMem_47b058, %struct.Memory** %MEMORY
  %loadMem_47b05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8882 = getelementptr inbounds %struct.GPR, %struct.GPR* %8881, i32 0, i32 33
  %8883 = getelementptr inbounds %struct.Reg, %struct.Reg* %8882, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %8883 to i64*
  %8884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8885 = getelementptr inbounds %struct.GPR, %struct.GPR* %8884, i32 0, i32 1
  %8886 = getelementptr inbounds %struct.Reg, %struct.Reg* %8885, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8886 to i32*
  %8887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8888 = getelementptr inbounds %struct.GPR, %struct.GPR* %8887, i32 0, i32 15
  %8889 = getelementptr inbounds %struct.Reg, %struct.Reg* %8888, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %8889 to i64*
  %8890 = load i64, i64* %RBP.i8
  %8891 = sub i64 %8890, 12
  %8892 = load i32, i32* %EAX.i
  %8893 = zext i32 %8892 to i64
  %8894 = load i64, i64* %PC.i7
  %8895 = add i64 %8894, 3
  store i64 %8895, i64* %PC.i7
  %8896 = inttoptr i64 %8891 to i32*
  store i32 %8892, i32* %8896
  store %struct.Memory* %loadMem_47b05b, %struct.Memory** %MEMORY
  %loadMem_47b05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8898 = getelementptr inbounds %struct.GPR, %struct.GPR* %8897, i32 0, i32 33
  %8899 = getelementptr inbounds %struct.Reg, %struct.Reg* %8898, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8899 to i64*
  %8900 = load i64, i64* %PC.i6
  %8901 = add i64 %8900, -1028
  %8902 = load i64, i64* %PC.i6
  %8903 = add i64 %8902, 5
  store i64 %8903, i64* %PC.i6
  %8904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8901, i64* %8904, align 8
  store %struct.Memory* %loadMem_47b05e, %struct.Memory** %MEMORY
  br label %block_.L_47ac5a

block_.L_47b063:                                  ; preds = %block_.L_47ac5a
  %loadMem_47b063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8906 = getelementptr inbounds %struct.GPR, %struct.GPR* %8905, i32 0, i32 33
  %8907 = getelementptr inbounds %struct.Reg, %struct.Reg* %8906, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8907 to i64*
  %8908 = load i64, i64* %PC.i5
  %8909 = add i64 %8908, 5
  %8910 = load i64, i64* %PC.i5
  %8911 = add i64 %8910, 5
  store i64 %8911, i64* %PC.i5
  %8912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8909, i64* %8912, align 8
  store %struct.Memory* %loadMem_47b063, %struct.Memory** %MEMORY
  br label %block_.L_47b068

block_.L_47b068:                                  ; preds = %block_.L_47b063, %block_.L_47ac4e
  %loadMem_47b068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8914 = getelementptr inbounds %struct.GPR, %struct.GPR* %8913, i32 0, i32 33
  %8915 = getelementptr inbounds %struct.Reg, %struct.Reg* %8914, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8915 to i64*
  %8916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8917 = getelementptr inbounds %struct.GPR, %struct.GPR* %8916, i32 0, i32 13
  %8918 = getelementptr inbounds %struct.Reg, %struct.Reg* %8917, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8918 to i64*
  %8919 = load i64, i64* %RSP.i
  %8920 = load i64, i64* %PC.i4
  %8921 = add i64 %8920, 4
  store i64 %8921, i64* %PC.i4
  %8922 = add i64 96, %8919
  store i64 %8922, i64* %RSP.i, align 8
  %8923 = icmp ult i64 %8922, %8919
  %8924 = icmp ult i64 %8922, 96
  %8925 = or i1 %8923, %8924
  %8926 = zext i1 %8925 to i8
  %8927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8926, i8* %8927, align 1
  %8928 = trunc i64 %8922 to i32
  %8929 = and i32 %8928, 255
  %8930 = call i32 @llvm.ctpop.i32(i32 %8929)
  %8931 = trunc i32 %8930 to i8
  %8932 = and i8 %8931, 1
  %8933 = xor i8 %8932, 1
  %8934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8933, i8* %8934, align 1
  %8935 = xor i64 96, %8919
  %8936 = xor i64 %8935, %8922
  %8937 = lshr i64 %8936, 4
  %8938 = trunc i64 %8937 to i8
  %8939 = and i8 %8938, 1
  %8940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8939, i8* %8940, align 1
  %8941 = icmp eq i64 %8922, 0
  %8942 = zext i1 %8941 to i8
  %8943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8942, i8* %8943, align 1
  %8944 = lshr i64 %8922, 63
  %8945 = trunc i64 %8944 to i8
  %8946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8945, i8* %8946, align 1
  %8947 = lshr i64 %8919, 63
  %8948 = xor i64 %8944, %8947
  %8949 = add i64 %8948, %8944
  %8950 = icmp eq i64 %8949, 2
  %8951 = zext i1 %8950 to i8
  %8952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8951, i8* %8952, align 1
  store %struct.Memory* %loadMem_47b068, %struct.Memory** %MEMORY
  %loadMem_47b06c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8954 = getelementptr inbounds %struct.GPR, %struct.GPR* %8953, i32 0, i32 33
  %8955 = getelementptr inbounds %struct.Reg, %struct.Reg* %8954, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8955 to i64*
  %8956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8957 = getelementptr inbounds %struct.GPR, %struct.GPR* %8956, i32 0, i32 15
  %8958 = getelementptr inbounds %struct.Reg, %struct.Reg* %8957, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8958 to i64*
  %8959 = load i64, i64* %PC.i2
  %8960 = add i64 %8959, 1
  store i64 %8960, i64* %PC.i2
  %8961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8962 = load i64, i64* %8961, align 8
  %8963 = add i64 %8962, 8
  %8964 = inttoptr i64 %8962 to i64*
  %8965 = load i64, i64* %8964
  store i64 %8965, i64* %RBP.i3, align 8
  store i64 %8963, i64* %8961, align 8
  store %struct.Memory* %loadMem_47b06c, %struct.Memory** %MEMORY
  %loadMem_47b06d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8967 = getelementptr inbounds %struct.GPR, %struct.GPR* %8966, i32 0, i32 33
  %8968 = getelementptr inbounds %struct.Reg, %struct.Reg* %8967, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8968 to i64*
  %8969 = load i64, i64* %PC.i1
  %8970 = add i64 %8969, 1
  store i64 %8970, i64* %PC.i1
  %8971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8973 = load i64, i64* %8972, align 8
  %8974 = inttoptr i64 %8973 to i64*
  %8975 = load i64, i64* %8974
  store i64 %8975, i64* %8971, align 8
  %8976 = add i64 %8973, 8
  store i64 %8976, i64* %8972, align 8
  store %struct.Memory* %loadMem_47b06d, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_47b06d
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

define %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x24__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 36
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

define %struct.Memory* @routine_jne_.L_47a9df(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x14__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47aaa3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_0x722cb0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x24__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 36
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

define %struct.Memory* @routine_je_.L_47aa47(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_47aa42(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x6___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 6, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 6
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
  %26 = xor i64 6, %9
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

define %struct.Memory* @routine_movl_0x28__rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 40
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -24
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
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

define %struct.Memory* @routine_jmpq_.L_47aa0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47aa47(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_47aa9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_47aa99(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x18__rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 24
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl_MINUS0x18__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -24
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = trunc i64 %15 to i32
  %24 = inttoptr i64 %20 to i32*
  %25 = load i32, i32* %24
  %26 = or i32 %25, %23
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %RCX, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %28, align 1
  %29 = and i32 %26, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %26, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %26, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47aa60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47aa9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_47ac53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x6__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 6
  %16 = icmp ult i32 %14, 6
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
  %25 = xor i32 %14, 6
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

define %struct.Memory* @routine_jge_.L_47ac4e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_47ac3b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_47ac28(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x6d12c0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6d12c0_type* @G__0x6d12c0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4b9d50___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x4b9d50_type* @G__0x4b9d50 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x70f6e0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x70f6e0_type* @G__0x70f6e0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4b9750___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x4b9750_type* @G__0x4b9750 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6cfc70___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6cfc70_type* @G__0x6cfc70 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6d0bc0___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x6d0bc0_type* @G__0x6d0bc0 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x8___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R9
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 7
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %R9, align 8
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

define %struct.Memory* @routine_movq__rsi___r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__r9___r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %R9
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %R10, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x5___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R9
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 4
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %R9, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___r10__r9_4____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 21
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R10 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R11D to i64*
  %16 = load i64, i64* %R10
  %17 = load i64, i64* %R9
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__r9___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %R9
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %R8, align 8
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

define %struct.Memory* @routine_movl__r11d____r8__r9_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R8
  %16 = load i64, i64* %R9
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R11D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x8___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 7
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %R8, align 8
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

define %struct.Memory* @routine_movq__rcx___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__r8___r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %R9, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x5___r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 4
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %R8, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___r9__r8_4____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R11D to i64*
  %16 = load i64, i64* %R9
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x4___r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R11D to i64*
  %10 = load i32, i32* %R11D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = and i64 %11, 4294967295
  %15 = shl i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 0
  %18 = shl i32 %16, 1
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %9, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %21 = zext i1 %17 to i8
  store i8 %21, i8* %20, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %23 = and i32 %18, 254
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  store i8 %27, i8* %22, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %30 = icmp eq i32 %18, 0
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %29, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %33 = lshr i32 %18, 31
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %32, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
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

define %struct.Memory* @routine_movl__r11d____rdi__r8_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R11D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x8___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 7
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x5___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 4
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rsi__rdi_4____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R11D to i64*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %15, align 8
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

define %struct.Memory* @routine_shlq__0x8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 7
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

define %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 4
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d____rdx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R11D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 7
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 4
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl___rcx__rdx_4____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R11D to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %15, align 8
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

define %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 7
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 4
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__r11d____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R11D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47aad6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47ac2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47aac5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47ac40(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47aab4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47b068(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_47b063(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_47b050(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_47b03d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_shll__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = shl i64 %12, 2
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %16, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %16, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_47acad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movswl_0x6d1f9c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i16, i16* bitcast (%G_0x6d1f9c_type* @G_0x6d1f9c to i16*)
  %12 = sext i16 %11 to i64
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_47ad88(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x6cfc70___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x6cfc70_type* @G__0x6cfc70 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x6d0bc0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x6d0bc0_type* @G__0x6d0bc0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rsi__rdi_4____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x4___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = and i64 %11, 4294967295
  %15 = shl i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 0
  %18 = shl i32 %16, 1
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %9, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %21 = zext i1 %17 to i8
  store i8 %21, i8* %20, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %23 = and i32 %18, 254
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  store i8 %27, i8* %22, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %30 = icmp eq i32 %18, 0
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %29, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %33 = lshr i32 %18, 31
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %32, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
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

define %struct.Memory* @routine_movswl_0x4b9300___rsi_2____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 4952832
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i16*
  %19 = load i16, i16* %18
  %20 = sext i16 %19 to i64
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %12, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_idivl__r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R9D
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

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rsi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movl__eax____rdi__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
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

define %struct.Memory* @routine_movl___rcx__rsi_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RAX, align 8
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

define %struct.Memory* @routine_movswl_0x4b9300___rcx_2____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 4952832
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i16*
  %19 = load i16, i16* %18
  %20 = sext i16 %19 to i64
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__r8d___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax____rsi__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47ae5e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movswl_0x6f6e20___rsi_2____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 7302688
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i16*
  %19 = load i16, i16* %18
  %20 = sext i16 %19 to i64
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %12, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x6f6e20___rcx_2____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 7302688
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i16*
  %19 = load i16, i16* %18
  %20 = sext i16 %19 to i64
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %12, align 8
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

define %struct.Memory* @routine_je_.L_47ae79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movswl_0x6d1f9e___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i16, i16* bitcast (%G_0x6d1f9e_type* @G_0x6d1f9e to i16*)
  %12 = sext i16 %11 to i64
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_47af54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movswl_0x4b9280___rsi_2____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 4952704
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i16*
  %19 = load i16, i16* %18
  %20 = sext i16 %19 to i64
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x4b9280___rcx_2____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 4952704
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i16*
  %19 = load i16, i16* %18
  %20 = sext i16 %19 to i64
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47b02a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movswl_0x6f6ea0___rsi_2____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 7302816
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i16*
  %19 = load i16, i16* %18
  %20 = sext i16 %19 to i64
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl_0x6f6ea0___rcx_2____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 7302816
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i16*
  %19 = load i16, i16* %18
  %20 = sext i16 %19 to i64
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_47b02f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47ac7c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47b042(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47ac6b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47b055(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_47ac5a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
