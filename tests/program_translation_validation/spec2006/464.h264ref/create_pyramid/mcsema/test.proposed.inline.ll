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
%G_0x6d0278_type = type <{ [8 x i8] }>
%G__0x4bf5b7_type = type <{ [8 x i8] }>
%G__0x4bf5d5_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = global %G_0x6cb8f8_type zeroinitializer
@G_0x6d0278 = global %G_0x6d0278_type zeroinitializer
@G__0x4bf5b7 = global %G__0x4bf5b7_type zeroinitializer
@G__0x4bf5d5 = global %G__0x4bf5d5_type zeroinitializer

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

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_41e380.gop_pyramid(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @create_pyramid(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_41dcf0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41dcf0, %struct.Memory** %MEMORY
  %loadMem_41dcf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i543 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i543
  %27 = load i64, i64* %PC.i542
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i542
  store i64 %26, i64* %RBP.i544, align 8
  store %struct.Memory* %loadMem_41dcf1, %struct.Memory** %MEMORY
  %loadMem_41dcf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i611 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i611
  %36 = load i64, i64* %PC.i610
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i610
  %38 = sub i64 %35, 80
  store i64 %38, i64* %RSP.i611, align 8
  %39 = icmp ult i64 %35, 80
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
  %49 = xor i64 80, %35
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
  store %struct.Memory* %loadMem_41dcf4, %struct.Memory** %MEMORY
  %loadMem_41dcf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i648 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i647
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i647
  store i64 2, i64* %RAX.i648, align 8
  store %struct.Memory* %loadMem_41dcf8, %struct.Memory** %MEMORY
  %loadMem_41dcfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RCX.i729 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %PC.i728
  %82 = add i64 %81, 8
  store i64 %82, i64* %PC.i728
  %83 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %83, i64* %RCX.i729, align 8
  store %struct.Memory* %loadMem_41dcfd, %struct.Memory** %MEMORY
  %loadMem_41dd05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 33
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %86 to i64*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %RCX.i761 = bitcast %union.anon* %89 to i64*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %RDX.i762 = bitcast %union.anon* %92 to i64*
  %93 = load i64, i64* %RCX.i761
  %94 = add i64 %93, 1236
  %95 = load i64, i64* %PC.i760
  %96 = add i64 %95, 6
  store i64 %96, i64* %PC.i760
  %97 = inttoptr i64 %94 to i32*
  %98 = load i32, i32* %97
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RDX.i762, align 8
  store %struct.Memory* %loadMem_41dd05, %struct.Memory** %MEMORY
  %loadMem_41dd0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 33
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %EAX.i799 = bitcast %union.anon* %105 to i32*
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 15
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %RBP.i800 = bitcast %union.anon* %108 to i64*
  %109 = load i64, i64* %RBP.i800
  %110 = sub i64 %109, 64
  %111 = load i32, i32* %EAX.i799
  %112 = zext i32 %111 to i64
  %113 = load i64, i64* %PC.i798
  %114 = add i64 %113, 3
  store i64 %114, i64* %PC.i798
  %115 = inttoptr i64 %110 to i32*
  store i32 %111, i32* %115
  store %struct.Memory* %loadMem_41dd0b, %struct.Memory** %MEMORY
  %loadMem_41dd0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %PC.i1005 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %EDX.i1006 = bitcast %union.anon* %121 to i32*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RAX.i1007 = bitcast %union.anon* %124 to i64*
  %125 = load i32, i32* %EDX.i1006
  %126 = zext i32 %125 to i64
  %127 = load i64, i64* %PC.i1005
  %128 = add i64 %127, 2
  store i64 %128, i64* %PC.i1005
  %129 = and i64 %126, 4294967295
  store i64 %129, i64* %RAX.i1007, align 8
  store %struct.Memory* %loadMem_41dd0e, %struct.Memory** %MEMORY
  %loadMem_41dd10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 33
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %PC.i1011 = bitcast %union.anon* %132 to i64*
  %133 = load i64, i64* %PC.i1011
  %134 = add i64 %133, 1
  store i64 %134, i64* %PC.i1011
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %137 = bitcast %union.anon* %136 to i32*
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = lshr i64 %139, 32
  store i64 %140, i64* %135, align 8
  store %struct.Memory* %loadMem_41dd10, %struct.Memory** %MEMORY
  %loadMem_41dd11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 33
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %PC.i1008 = bitcast %union.anon* %143 to i64*
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %RSI.i1009 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 15
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RBP.i1010 = bitcast %union.anon* %149 to i64*
  %150 = load i64, i64* %RBP.i1010
  %151 = sub i64 %150, 64
  %152 = load i64, i64* %PC.i1008
  %153 = add i64 %152, 3
  store i64 %153, i64* %PC.i1008
  %154 = inttoptr i64 %151 to i32*
  %155 = load i32, i32* %154
  %156 = zext i32 %155 to i64
  store i64 %156, i64* %RSI.i1009, align 8
  store %struct.Memory* %loadMem_41dd11, %struct.Memory** %MEMORY
  %loadMem_41dd14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 33
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %PC.i1002 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 9
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %ESI.i1003 = bitcast %union.anon* %162 to i32*
  %163 = load i32, i32* %ESI.i1003
  %164 = zext i32 %163 to i64
  %165 = load i64, i64* %PC.i1002
  %166 = add i64 %165, 2
  store i64 %166, i64* %PC.i1002
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %168 = bitcast %union.anon* %167 to i32*
  %169 = load i32, i32* %168, align 8
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %172 = bitcast %union.anon* %171 to i32*
  %173 = load i32, i32* %172, align 8
  %174 = zext i32 %173 to i64
  %175 = shl i64 %164, 32
  %176 = ashr exact i64 %175, 32
  %177 = shl i64 %174, 32
  %178 = or i64 %177, %170
  %179 = sdiv i64 %178, %176
  %180 = shl i64 %179, 32
  %181 = ashr exact i64 %180, 32
  %182 = icmp eq i64 %179, %181
  br i1 %182, label %187, label %183

; <label>:183:                                    ; preds = %entry
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %185, %struct.Memory* %loadMem_41dd14)
  br label %routine_idivl__esi.exit1004

; <label>:187:                                    ; preds = %entry
  %188 = srem i64 %178, %176
  %189 = getelementptr inbounds %union.anon, %union.anon* %167, i64 0, i32 0
  %190 = and i64 %179, 4294967295
  store i64 %190, i64* %189, align 8
  %191 = getelementptr inbounds %union.anon, %union.anon* %171, i64 0, i32 0
  %192 = and i64 %188, 4294967295
  store i64 %192, i64* %191, align 8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %193, align 1
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %194, align 1
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %195, align 1
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %196, align 1
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %197, align 1
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %198, align 1
  br label %routine_idivl__esi.exit1004

routine_idivl__esi.exit1004:                      ; preds = %183, %187
  %199 = phi %struct.Memory* [ %186, %183 ], [ %loadMem_41dd14, %187 ]
  store %struct.Memory* %199, %struct.Memory** %MEMORY
  %loadMem_41dd16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i999 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %EAX.i1000 = bitcast %union.anon* %205 to i32*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 15
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %RBP.i1001 = bitcast %union.anon* %208 to i64*
  %209 = load i64, i64* %RBP.i1001
  %210 = sub i64 %209, 12
  %211 = load i32, i32* %EAX.i1000
  %212 = zext i32 %211 to i64
  %213 = load i64, i64* %PC.i999
  %214 = add i64 %213, 3
  store i64 %214, i64* %PC.i999
  %215 = inttoptr i64 %210 to i32*
  store i32 %211, i32* %215
  store %struct.Memory* %loadMem_41dd16, %struct.Memory** %MEMORY
  %loadMem_41dd19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 33
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %RCX.i998 = bitcast %union.anon* %221 to i64*
  %222 = load i64, i64* %PC.i997
  %223 = add i64 %222, 8
  store i64 %223, i64* %PC.i997
  %224 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %224, i64* %RCX.i998, align 8
  store %struct.Memory* %loadMem_41dd19, %struct.Memory** %MEMORY
  %loadMem_41dd21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 33
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %PC.i995 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RCX.i996 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RCX.i996
  %232 = add i64 %231, 1320
  %233 = load i64, i64* %PC.i995
  %234 = add i64 %233, 7
  store i64 %234, i64* %PC.i995
  %235 = inttoptr i64 %232 to i32*
  %236 = load i32, i32* %235
  %237 = sub i32 %236, 1
  %238 = icmp ult i32 %236, 1
  %239 = zext i1 %238 to i8
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %239, i8* %240, align 1
  %241 = and i32 %237, 255
  %242 = call i32 @llvm.ctpop.i32(i32 %241)
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %245, i8* %246, align 1
  %247 = xor i32 %236, 1
  %248 = xor i32 %247, %237
  %249 = lshr i32 %248, 4
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %251, i8* %252, align 1
  %253 = icmp eq i32 %237, 0
  %254 = zext i1 %253 to i8
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %254, i8* %255, align 1
  %256 = lshr i32 %237, 31
  %257 = trunc i32 %256 to i8
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %257, i8* %258, align 1
  %259 = lshr i32 %236, 31
  %260 = xor i32 %256, %259
  %261 = add i32 %260, %259
  %262 = icmp eq i32 %261, 2
  %263 = zext i1 %262 to i8
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %263, i8* %264, align 1
  store %struct.Memory* %loadMem_41dd21, %struct.Memory** %MEMORY
  %loadMem_41dd28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i994 = bitcast %union.anon* %267 to i64*
  %268 = load i64, i64* %PC.i994
  %269 = add i64 %268, 293
  %270 = load i64, i64* %PC.i994
  %271 = add i64 %270, 6
  %272 = load i64, i64* %PC.i994
  %273 = add i64 %272, 6
  store i64 %273, i64* %PC.i994
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %275 = load i8, i8* %274, align 1
  %276 = icmp eq i8 %275, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %BRANCH_TAKEN, align 1
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %279 = select i1 %276, i64 %269, i64 %271
  store i64 %279, i64* %278, align 8
  store %struct.Memory* %loadMem_41dd28, %struct.Memory** %MEMORY
  %loadBr_41dd28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dd28 = icmp eq i8 %loadBr_41dd28, 1
  br i1 %cmpBr_41dd28, label %block_.L_41de4d, label %block_41dd2e

block_41dd2e:                                     ; preds = %routine_idivl__esi.exit1004
  %loadMem_41dd2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 33
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %PC.i992 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 15
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %RBP.i993 = bitcast %union.anon* %285 to i64*
  %286 = load i64, i64* %RBP.i993
  %287 = sub i64 %286, 4
  %288 = load i64, i64* %PC.i992
  %289 = add i64 %288, 7
  store i64 %289, i64* %PC.i992
  %290 = inttoptr i64 %287 to i32*
  store i32 0, i32* %290
  store %struct.Memory* %loadMem_41dd2e, %struct.Memory** %MEMORY
  br label %block_.L_41dd35

block_.L_41dd35:                                  ; preds = %block_.L_41de3a, %block_41dd2e
  %loadMem_41dd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 33
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %PC.i989 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RAX.i990 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 15
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RBP.i991 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %RBP.i991
  %301 = sub i64 %300, 4
  %302 = load i64, i64* %PC.i989
  %303 = add i64 %302, 3
  store i64 %303, i64* %PC.i989
  %304 = inttoptr i64 %301 to i32*
  %305 = load i32, i32* %304
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RAX.i990, align 8
  store %struct.Memory* %loadMem_41dd35, %struct.Memory** %MEMORY
  %loadMem_41dd38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i987 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 5
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RCX.i988 = bitcast %union.anon* %312 to i64*
  %313 = load i64, i64* %PC.i987
  %314 = add i64 %313, 8
  store i64 %314, i64* %PC.i987
  %315 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %315, i64* %RCX.i988, align 8
  store %struct.Memory* %loadMem_41dd38, %struct.Memory** %MEMORY
  %loadMem_41dd40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 33
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %PC.i984 = bitcast %union.anon* %318 to i64*
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %EAX.i985 = bitcast %union.anon* %321 to i32*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 5
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RCX.i986 = bitcast %union.anon* %324 to i64*
  %325 = load i32, i32* %EAX.i985
  %326 = zext i32 %325 to i64
  %327 = load i64, i64* %RCX.i986
  %328 = add i64 %327, 1236
  %329 = load i64, i64* %PC.i984
  %330 = add i64 %329, 6
  store i64 %330, i64* %PC.i984
  %331 = inttoptr i64 %328 to i32*
  %332 = load i32, i32* %331
  %333 = sub i32 %325, %332
  %334 = icmp ult i32 %325, %332
  %335 = zext i1 %334 to i8
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %335, i8* %336, align 1
  %337 = and i32 %333, 255
  %338 = call i32 @llvm.ctpop.i32(i32 %337)
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = xor i8 %340, 1
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %341, i8* %342, align 1
  %343 = xor i32 %332, %325
  %344 = xor i32 %343, %333
  %345 = lshr i32 %344, 4
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %347, i8* %348, align 1
  %349 = icmp eq i32 %333, 0
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %350, i8* %351, align 1
  %352 = lshr i32 %333, 31
  %353 = trunc i32 %352 to i8
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %353, i8* %354, align 1
  %355 = lshr i32 %325, 31
  %356 = lshr i32 %332, 31
  %357 = xor i32 %356, %355
  %358 = xor i32 %352, %355
  %359 = add i32 %358, %357
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %361, i8* %362, align 1
  store %struct.Memory* %loadMem_41dd40, %struct.Memory** %MEMORY
  %loadMem_41dd46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 33
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %PC.i983 = bitcast %union.anon* %365 to i64*
  %366 = load i64, i64* %PC.i983
  %367 = add i64 %366, 258
  %368 = load i64, i64* %PC.i983
  %369 = add i64 %368, 6
  %370 = load i64, i64* %PC.i983
  %371 = add i64 %370, 6
  store i64 %371, i64* %PC.i983
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %373 = load i8, i8* %372, align 1
  %374 = icmp ne i8 %373, 0
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %376 = load i8, i8* %375, align 1
  %377 = icmp ne i8 %376, 0
  %378 = xor i1 %374, %377
  %379 = xor i1 %378, true
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %BRANCH_TAKEN, align 1
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %382 = select i1 %378, i64 %369, i64 %367
  store i64 %382, i64* %381, align 8
  store %struct.Memory* %loadMem_41dd46, %struct.Memory** %MEMORY
  %loadBr_41dd46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dd46 = icmp eq i8 %loadBr_41dd46, 1
  br i1 %cmpBr_41dd46, label %block_.L_41de48, label %block_41dd4c

block_41dd4c:                                     ; preds = %block_.L_41dd35
  %loadMem_41dd4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i980 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RAX.i981 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 15
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %RBP.i982 = bitcast %union.anon* %391 to i64*
  %392 = load i64, i64* %RBP.i982
  %393 = sub i64 %392, 4
  %394 = load i64, i64* %PC.i980
  %395 = add i64 %394, 3
  store i64 %395, i64* %PC.i980
  %396 = inttoptr i64 %393 to i32*
  %397 = load i32, i32* %396
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RAX.i981, align 8
  store %struct.Memory* %loadMem_41dd4c, %struct.Memory** %MEMORY
  %loadMem_41dd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 33
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %PC.i977 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %EAX.i978 = bitcast %union.anon* %404 to i32*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 15
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %RBP.i979 = bitcast %union.anon* %407 to i64*
  %408 = load i32, i32* %EAX.i978
  %409 = zext i32 %408 to i64
  %410 = load i64, i64* %RBP.i979
  %411 = sub i64 %410, 12
  %412 = load i64, i64* %PC.i977
  %413 = add i64 %412, 3
  store i64 %413, i64* %PC.i977
  %414 = inttoptr i64 %411 to i32*
  %415 = load i32, i32* %414
  %416 = sub i32 %408, %415
  %417 = icmp ult i32 %408, %415
  %418 = zext i1 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %418, i8* %419, align 1
  %420 = and i32 %416, 255
  %421 = call i32 @llvm.ctpop.i32(i32 %420)
  %422 = trunc i32 %421 to i8
  %423 = and i8 %422, 1
  %424 = xor i8 %423, 1
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %424, i8* %425, align 1
  %426 = xor i32 %415, %408
  %427 = xor i32 %426, %416
  %428 = lshr i32 %427, 4
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %430, i8* %431, align 1
  %432 = icmp eq i32 %416, 0
  %433 = zext i1 %432 to i8
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %433, i8* %434, align 1
  %435 = lshr i32 %416, 31
  %436 = trunc i32 %435 to i8
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %436, i8* %437, align 1
  %438 = lshr i32 %408, 31
  %439 = lshr i32 %415, 31
  %440 = xor i32 %439, %438
  %441 = xor i32 %435, %438
  %442 = add i32 %441, %440
  %443 = icmp eq i32 %442, 2
  %444 = zext i1 %443 to i8
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %444, i8* %445, align 1
  store %struct.Memory* %loadMem_41dd4f, %struct.Memory** %MEMORY
  %loadMem_41dd52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 33
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %PC.i976
  %450 = add i64 %449, 119
  %451 = load i64, i64* %PC.i976
  %452 = add i64 %451, 6
  %453 = load i64, i64* %PC.i976
  %454 = add i64 %453, 6
  store i64 %454, i64* %PC.i976
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %456 = load i8, i8* %455, align 1
  %457 = icmp ne i8 %456, 0
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %459 = load i8, i8* %458, align 1
  %460 = icmp ne i8 %459, 0
  %461 = xor i1 %457, %460
  %462 = xor i1 %461, true
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %BRANCH_TAKEN, align 1
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %465 = select i1 %461, i64 %452, i64 %450
  store i64 %465, i64* %464, align 8
  store %struct.Memory* %loadMem_41dd52, %struct.Memory** %MEMORY
  %loadBr_41dd52 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dd52 = icmp eq i8 %loadBr_41dd52, 1
  br i1 %cmpBr_41dd52, label %block_.L_41ddc9, label %block_41dd58

block_41dd58:                                     ; preds = %block_41dd4c
  %loadMem_41dd58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i974 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RAX.i975 = bitcast %union.anon* %471 to i64*
  %472 = load i64, i64* %PC.i974
  %473 = add i64 %472, 8
  store i64 %473, i64* %PC.i974
  %474 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %474, i64* %RAX.i975, align 8
  store %struct.Memory* %loadMem_41dd58, %struct.Memory** %MEMORY
  %loadMem_41dd60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 33
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %PC.i971 = bitcast %union.anon* %477 to i64*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 5
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RCX.i972 = bitcast %union.anon* %480 to i64*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 15
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %RBP.i973 = bitcast %union.anon* %483 to i64*
  %484 = load i64, i64* %RBP.i973
  %485 = sub i64 %484, 4
  %486 = load i64, i64* %PC.i971
  %487 = add i64 %486, 4
  store i64 %487, i64* %PC.i971
  %488 = inttoptr i64 %485 to i32*
  %489 = load i32, i32* %488
  %490 = sext i32 %489 to i64
  store i64 %490, i64* %RCX.i972, align 8
  store %struct.Memory* %loadMem_41dd60, %struct.Memory** %MEMORY
  %loadMem_41dd64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i969 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 5
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RCX.i970 = bitcast %union.anon* %496 to i64*
  %497 = load i64, i64* %RCX.i970
  %498 = load i64, i64* %PC.i969
  %499 = add i64 %498, 4
  store i64 %499, i64* %PC.i969
  %500 = sext i64 %497 to i128
  %501 = and i128 %500, -18446744073709551616
  %502 = zext i64 %497 to i128
  %503 = or i128 %501, %502
  %504 = mul i128 24, %503
  %505 = trunc i128 %504 to i64
  store i64 %505, i64* %RCX.i970, align 8
  %506 = sext i64 %505 to i128
  %507 = icmp ne i128 %506, %504
  %508 = zext i1 %507 to i8
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %508, i8* %509, align 1
  %510 = trunc i128 %504 to i32
  %511 = and i32 %510, 255
  %512 = call i32 @llvm.ctpop.i32(i32 %511)
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %515, i8* %516, align 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %517, align 1
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %518, align 1
  %519 = lshr i64 %505, 63
  %520 = trunc i64 %519 to i8
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %520, i8* %521, align 1
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %508, i8* %522, align 1
  store %struct.Memory* %loadMem_41dd64, %struct.Memory** %MEMORY
  %loadMem_41dd68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 33
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %PC.i966 = bitcast %union.anon* %525 to i64*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %RAX.i967 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 5
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %RCX.i968 = bitcast %union.anon* %531 to i64*
  %532 = load i64, i64* %RAX.i967
  %533 = load i64, i64* %RCX.i968
  %534 = load i64, i64* %PC.i966
  %535 = add i64 %534, 3
  store i64 %535, i64* %PC.i966
  %536 = add i64 %533, %532
  store i64 %536, i64* %RAX.i967, align 8
  %537 = icmp ult i64 %536, %532
  %538 = icmp ult i64 %536, %533
  %539 = or i1 %537, %538
  %540 = zext i1 %539 to i8
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %540, i8* %541, align 1
  %542 = trunc i64 %536 to i32
  %543 = and i32 %542, 255
  %544 = call i32 @llvm.ctpop.i32(i32 %543)
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %547, i8* %548, align 1
  %549 = xor i64 %533, %532
  %550 = xor i64 %549, %536
  %551 = lshr i64 %550, 4
  %552 = trunc i64 %551 to i8
  %553 = and i8 %552, 1
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %553, i8* %554, align 1
  %555 = icmp eq i64 %536, 0
  %556 = zext i1 %555 to i8
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %556, i8* %557, align 1
  %558 = lshr i64 %536, 63
  %559 = trunc i64 %558 to i8
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %559, i8* %560, align 1
  %561 = lshr i64 %532, 63
  %562 = lshr i64 %533, 63
  %563 = xor i64 %558, %561
  %564 = xor i64 %558, %562
  %565 = add i64 %563, %564
  %566 = icmp eq i64 %565, 2
  %567 = zext i1 %566 to i8
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %567, i8* %568, align 1
  store %struct.Memory* %loadMem_41dd68, %struct.Memory** %MEMORY
  %loadMem_41dd6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 33
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 1
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %RAX.i965 = bitcast %union.anon* %574 to i64*
  %575 = load i64, i64* %RAX.i965
  %576 = load i64, i64* %PC.i964
  %577 = add i64 %576, 6
  store i64 %577, i64* %PC.i964
  %578 = inttoptr i64 %575 to i32*
  store i32 1, i32* %578
  store %struct.Memory* %loadMem_41dd6b, %struct.Memory** %MEMORY
  %loadMem_41dd71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 33
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %581 to i64*
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 7
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %RDX.i962 = bitcast %union.anon* %584 to i64*
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 15
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %RBP.i963 = bitcast %union.anon* %587 to i64*
  %588 = load i64, i64* %RBP.i963
  %589 = sub i64 %588, 4
  %590 = load i64, i64* %PC.i961
  %591 = add i64 %590, 3
  store i64 %591, i64* %PC.i961
  %592 = inttoptr i64 %589 to i32*
  %593 = load i32, i32* %592
  %594 = zext i32 %593 to i64
  store i64 %594, i64* %RDX.i962, align 8
  store %struct.Memory* %loadMem_41dd71, %struct.Memory** %MEMORY
  %loadMem_41dd74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 33
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %PC.i959 = bitcast %union.anon* %597 to i64*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 7
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %RDX.i960 = bitcast %union.anon* %600 to i64*
  %601 = load i64, i64* %RDX.i960
  %602 = load i64, i64* %PC.i959
  %603 = add i64 %602, 2
  store i64 %603, i64* %PC.i959
  %604 = trunc i64 %601 to i32
  %605 = shl i32 %604, 1
  %606 = icmp slt i32 %604, 0
  %607 = icmp slt i32 %605, 0
  %608 = xor i1 %606, %607
  %609 = zext i32 %605 to i64
  store i64 %609, i64* %RDX.i960, align 8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %611 = zext i1 %606 to i8
  store i8 %611, i8* %610, align 1
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %613 = and i32 %605, 254
  %614 = call i32 @llvm.ctpop.i32(i32 %613)
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  %617 = xor i8 %616, 1
  store i8 %617, i8* %612, align 1
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %618, align 1
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %620 = icmp eq i32 %605, 0
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %619, align 1
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %623 = lshr i32 %605, 31
  %624 = trunc i32 %623 to i8
  store i8 %624, i8* %622, align 1
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %626 = zext i1 %608 to i8
  store i8 %626, i8* %625, align 1
  store %struct.Memory* %loadMem_41dd74, %struct.Memory** %MEMORY
  %loadMem_41dd77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %628 = getelementptr inbounds %struct.GPR, %struct.GPR* %627, i32 0, i32 33
  %629 = getelementptr inbounds %struct.Reg, %struct.Reg* %628, i32 0, i32 0
  %PC.i957 = bitcast %union.anon* %629 to i64*
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 7
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %RDX.i958 = bitcast %union.anon* %632 to i64*
  %633 = load i64, i64* %RDX.i958
  %634 = load i64, i64* %PC.i957
  %635 = add i64 %634, 3
  store i64 %635, i64* %PC.i957
  %636 = trunc i64 %633 to i32
  %637 = add i32 1, %636
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RDX.i958, align 8
  %639 = icmp ult i32 %637, %636
  %640 = icmp ult i32 %637, 1
  %641 = or i1 %639, %640
  %642 = zext i1 %641 to i8
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %642, i8* %643, align 1
  %644 = and i32 %637, 255
  %645 = call i32 @llvm.ctpop.i32(i32 %644)
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  %648 = xor i8 %647, 1
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %648, i8* %649, align 1
  %650 = xor i64 1, %633
  %651 = trunc i64 %650 to i32
  %652 = xor i32 %651, %637
  %653 = lshr i32 %652, 4
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %655, i8* %656, align 1
  %657 = icmp eq i32 %637, 0
  %658 = zext i1 %657 to i8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %658, i8* %659, align 1
  %660 = lshr i32 %637, 31
  %661 = trunc i32 %660 to i8
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %661, i8* %662, align 1
  %663 = lshr i32 %636, 31
  %664 = xor i32 %660, %663
  %665 = add i32 %664, %660
  %666 = icmp eq i32 %665, 2
  %667 = zext i1 %666 to i8
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %667, i8* %668, align 1
  store %struct.Memory* %loadMem_41dd77, %struct.Memory** %MEMORY
  %loadMem_41dd7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 33
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %671 to i64*
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 1
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %RAX.i956 = bitcast %union.anon* %674 to i64*
  %675 = load i64, i64* %PC.i955
  %676 = add i64 %675, 8
  store i64 %676, i64* %PC.i955
  %677 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %677, i64* %RAX.i956, align 8
  store %struct.Memory* %loadMem_41dd7a, %struct.Memory** %MEMORY
  %loadMem_41dd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 33
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %680 to i64*
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 5
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %RCX.i953 = bitcast %union.anon* %683 to i64*
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %685 = getelementptr inbounds %struct.GPR, %struct.GPR* %684, i32 0, i32 15
  %686 = getelementptr inbounds %struct.Reg, %struct.Reg* %685, i32 0, i32 0
  %RBP.i954 = bitcast %union.anon* %686 to i64*
  %687 = load i64, i64* %RBP.i954
  %688 = sub i64 %687, 4
  %689 = load i64, i64* %PC.i952
  %690 = add i64 %689, 4
  store i64 %690, i64* %PC.i952
  %691 = inttoptr i64 %688 to i32*
  %692 = load i32, i32* %691
  %693 = sext i32 %692 to i64
  store i64 %693, i64* %RCX.i953, align 8
  store %struct.Memory* %loadMem_41dd82, %struct.Memory** %MEMORY
  %loadMem_41dd86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 33
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %PC.i950 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 5
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %RCX.i951 = bitcast %union.anon* %699 to i64*
  %700 = load i64, i64* %RCX.i951
  %701 = load i64, i64* %PC.i950
  %702 = add i64 %701, 4
  store i64 %702, i64* %PC.i950
  %703 = sext i64 %700 to i128
  %704 = and i128 %703, -18446744073709551616
  %705 = zext i64 %700 to i128
  %706 = or i128 %704, %705
  %707 = mul i128 24, %706
  %708 = trunc i128 %707 to i64
  store i64 %708, i64* %RCX.i951, align 8
  %709 = sext i64 %708 to i128
  %710 = icmp ne i128 %709, %707
  %711 = zext i1 %710 to i8
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %711, i8* %712, align 1
  %713 = trunc i128 %707 to i32
  %714 = and i32 %713, 255
  %715 = call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %718, i8* %719, align 1
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %720, align 1
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %721, align 1
  %722 = lshr i64 %708, 63
  %723 = trunc i64 %722 to i8
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %723, i8* %724, align 1
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %711, i8* %725, align 1
  store %struct.Memory* %loadMem_41dd86, %struct.Memory** %MEMORY
  %loadMem_41dd8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 33
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %PC.i947 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 1
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RAX.i948 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 5
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RCX.i949 = bitcast %union.anon* %734 to i64*
  %735 = load i64, i64* %RAX.i948
  %736 = load i64, i64* %RCX.i949
  %737 = load i64, i64* %PC.i947
  %738 = add i64 %737, 3
  store i64 %738, i64* %PC.i947
  %739 = add i64 %736, %735
  store i64 %739, i64* %RAX.i948, align 8
  %740 = icmp ult i64 %739, %735
  %741 = icmp ult i64 %739, %736
  %742 = or i1 %740, %741
  %743 = zext i1 %742 to i8
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %743, i8* %744, align 1
  %745 = trunc i64 %739 to i32
  %746 = and i32 %745, 255
  %747 = call i32 @llvm.ctpop.i32(i32 %746)
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  %750 = xor i8 %749, 1
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %750, i8* %751, align 1
  %752 = xor i64 %736, %735
  %753 = xor i64 %752, %739
  %754 = lshr i64 %753, 4
  %755 = trunc i64 %754 to i8
  %756 = and i8 %755, 1
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %756, i8* %757, align 1
  %758 = icmp eq i64 %739, 0
  %759 = zext i1 %758 to i8
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %759, i8* %760, align 1
  %761 = lshr i64 %739, 63
  %762 = trunc i64 %761 to i8
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %762, i8* %763, align 1
  %764 = lshr i64 %735, 63
  %765 = lshr i64 %736, 63
  %766 = xor i64 %761, %764
  %767 = xor i64 %761, %765
  %768 = add i64 %766, %767
  %769 = icmp eq i64 %768, 2
  %770 = zext i1 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %770, i8* %771, align 1
  store %struct.Memory* %loadMem_41dd8a, %struct.Memory** %MEMORY
  %loadMem_41dd8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 33
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %PC.i944 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 7
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %EDX.i945 = bitcast %union.anon* %777 to i32*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 1
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %RAX.i946 = bitcast %union.anon* %780 to i64*
  %781 = load i64, i64* %RAX.i946
  %782 = add i64 %781, 4
  %783 = load i32, i32* %EDX.i945
  %784 = zext i32 %783 to i64
  %785 = load i64, i64* %PC.i944
  %786 = add i64 %785, 3
  store i64 %786, i64* %PC.i944
  %787 = inttoptr i64 %782 to i32*
  store i32 %783, i32* %787
  store %struct.Memory* %loadMem_41dd8d, %struct.Memory** %MEMORY
  %loadMem_41dd90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i942 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 1
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %RAX.i943 = bitcast %union.anon* %793 to i64*
  %794 = load i64, i64* %PC.i942
  %795 = add i64 %794, 8
  store i64 %795, i64* %PC.i942
  %796 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %796, i64* %RAX.i943, align 8
  store %struct.Memory* %loadMem_41dd90, %struct.Memory** %MEMORY
  %loadMem_41dd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 33
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %PC.i939 = bitcast %union.anon* %799 to i64*
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 5
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %RCX.i940 = bitcast %union.anon* %802 to i64*
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 15
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %RBP.i941 = bitcast %union.anon* %805 to i64*
  %806 = load i64, i64* %RBP.i941
  %807 = sub i64 %806, 4
  %808 = load i64, i64* %PC.i939
  %809 = add i64 %808, 4
  store i64 %809, i64* %PC.i939
  %810 = inttoptr i64 %807 to i32*
  %811 = load i32, i32* %810
  %812 = sext i32 %811 to i64
  store i64 %812, i64* %RCX.i940, align 8
  store %struct.Memory* %loadMem_41dd98, %struct.Memory** %MEMORY
  %loadMem_41dd9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 33
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %815 to i64*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 5
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %RCX.i938 = bitcast %union.anon* %818 to i64*
  %819 = load i64, i64* %RCX.i938
  %820 = load i64, i64* %PC.i937
  %821 = add i64 %820, 4
  store i64 %821, i64* %PC.i937
  %822 = sext i64 %819 to i128
  %823 = and i128 %822, -18446744073709551616
  %824 = zext i64 %819 to i128
  %825 = or i128 %823, %824
  %826 = mul i128 24, %825
  %827 = trunc i128 %826 to i64
  store i64 %827, i64* %RCX.i938, align 8
  %828 = sext i64 %827 to i128
  %829 = icmp ne i128 %828, %826
  %830 = zext i1 %829 to i8
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %830, i8* %831, align 1
  %832 = trunc i128 %826 to i32
  %833 = and i32 %832, 255
  %834 = call i32 @llvm.ctpop.i32(i32 %833)
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  %837 = xor i8 %836, 1
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %837, i8* %838, align 1
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %839, align 1
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %840, align 1
  %841 = lshr i64 %827, 63
  %842 = trunc i64 %841 to i8
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %842, i8* %843, align 1
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %830, i8* %844, align 1
  store %struct.Memory* %loadMem_41dd9c, %struct.Memory** %MEMORY
  %loadMem_41dda0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 33
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 1
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RAX.i935 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 5
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %RCX.i936 = bitcast %union.anon* %853 to i64*
  %854 = load i64, i64* %RAX.i935
  %855 = load i64, i64* %RCX.i936
  %856 = load i64, i64* %PC.i934
  %857 = add i64 %856, 3
  store i64 %857, i64* %PC.i934
  %858 = add i64 %855, %854
  store i64 %858, i64* %RAX.i935, align 8
  %859 = icmp ult i64 %858, %854
  %860 = icmp ult i64 %858, %855
  %861 = or i1 %859, %860
  %862 = zext i1 %861 to i8
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %862, i8* %863, align 1
  %864 = trunc i64 %858 to i32
  %865 = and i32 %864, 255
  %866 = call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %869, i8* %870, align 1
  %871 = xor i64 %855, %854
  %872 = xor i64 %871, %858
  %873 = lshr i64 %872, 4
  %874 = trunc i64 %873 to i8
  %875 = and i8 %874, 1
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %875, i8* %876, align 1
  %877 = icmp eq i64 %858, 0
  %878 = zext i1 %877 to i8
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %878, i8* %879, align 1
  %880 = lshr i64 %858, 63
  %881 = trunc i64 %880 to i8
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %881, i8* %882, align 1
  %883 = lshr i64 %854, 63
  %884 = lshr i64 %855, 63
  %885 = xor i64 %880, %883
  %886 = xor i64 %880, %884
  %887 = add i64 %885, %886
  %888 = icmp eq i64 %887, 2
  %889 = zext i1 %888 to i8
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %889, i8* %890, align 1
  store %struct.Memory* %loadMem_41dda0, %struct.Memory** %MEMORY
  %loadMem_41dda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 33
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 1
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %RAX.i933 = bitcast %union.anon* %896 to i64*
  %897 = load i64, i64* %RAX.i933
  %898 = add i64 %897, 16
  %899 = load i64, i64* %PC.i932
  %900 = add i64 %899, 7
  store i64 %900, i64* %PC.i932
  %901 = inttoptr i64 %898 to i32*
  store i32 0, i32* %901
  store %struct.Memory* %loadMem_41dda3, %struct.Memory** %MEMORY
  %loadMem_41ddaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 33
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 1
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %RAX.i931 = bitcast %union.anon* %907 to i64*
  %908 = load i64, i64* %PC.i930
  %909 = add i64 %908, 8
  store i64 %909, i64* %PC.i930
  %910 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %910, i64* %RAX.i931, align 8
  store %struct.Memory* %loadMem_41ddaa, %struct.Memory** %MEMORY
  %loadMem_41ddb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 33
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %913 to i64*
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 5
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %RCX.i928 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 15
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %RBP.i929 = bitcast %union.anon* %919 to i64*
  %920 = load i64, i64* %RBP.i929
  %921 = sub i64 %920, 4
  %922 = load i64, i64* %PC.i927
  %923 = add i64 %922, 4
  store i64 %923, i64* %PC.i927
  %924 = inttoptr i64 %921 to i32*
  %925 = load i32, i32* %924
  %926 = sext i32 %925 to i64
  store i64 %926, i64* %RCX.i928, align 8
  store %struct.Memory* %loadMem_41ddb2, %struct.Memory** %MEMORY
  %loadMem_41ddb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 33
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %929 to i64*
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 5
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %RCX.i926 = bitcast %union.anon* %932 to i64*
  %933 = load i64, i64* %RCX.i926
  %934 = load i64, i64* %PC.i925
  %935 = add i64 %934, 4
  store i64 %935, i64* %PC.i925
  %936 = sext i64 %933 to i128
  %937 = and i128 %936, -18446744073709551616
  %938 = zext i64 %933 to i128
  %939 = or i128 %937, %938
  %940 = mul i128 24, %939
  %941 = trunc i128 %940 to i64
  store i64 %941, i64* %RCX.i926, align 8
  %942 = sext i64 %941 to i128
  %943 = icmp ne i128 %942, %940
  %944 = zext i1 %943 to i8
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %944, i8* %945, align 1
  %946 = trunc i128 %940 to i32
  %947 = and i32 %946, 255
  %948 = call i32 @llvm.ctpop.i32(i32 %947)
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %951, i8* %952, align 1
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %953, align 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %954, align 1
  %955 = lshr i64 %941, 63
  %956 = trunc i64 %955 to i8
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %956, i8* %957, align 1
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %944, i8* %958, align 1
  store %struct.Memory* %loadMem_41ddb6, %struct.Memory** %MEMORY
  %loadMem_41ddba = load %struct.Memory*, %struct.Memory** %MEMORY
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 33
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %961 to i64*
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 1
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %RAX.i923 = bitcast %union.anon* %964 to i64*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 5
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %RCX.i924 = bitcast %union.anon* %967 to i64*
  %968 = load i64, i64* %RAX.i923
  %969 = load i64, i64* %RCX.i924
  %970 = load i64, i64* %PC.i922
  %971 = add i64 %970, 3
  store i64 %971, i64* %PC.i922
  %972 = add i64 %969, %968
  store i64 %972, i64* %RAX.i923, align 8
  %973 = icmp ult i64 %972, %968
  %974 = icmp ult i64 %972, %969
  %975 = or i1 %973, %974
  %976 = zext i1 %975 to i8
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %976, i8* %977, align 1
  %978 = trunc i64 %972 to i32
  %979 = and i32 %978, 255
  %980 = call i32 @llvm.ctpop.i32(i32 %979)
  %981 = trunc i32 %980 to i8
  %982 = and i8 %981, 1
  %983 = xor i8 %982, 1
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %983, i8* %984, align 1
  %985 = xor i64 %969, %968
  %986 = xor i64 %985, %972
  %987 = lshr i64 %986, 4
  %988 = trunc i64 %987 to i8
  %989 = and i8 %988, 1
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %989, i8* %990, align 1
  %991 = icmp eq i64 %972, 0
  %992 = zext i1 %991 to i8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %992, i8* %993, align 1
  %994 = lshr i64 %972, 63
  %995 = trunc i64 %994 to i8
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %995, i8* %996, align 1
  %997 = lshr i64 %968, 63
  %998 = lshr i64 %969, 63
  %999 = xor i64 %994, %997
  %1000 = xor i64 %994, %998
  %1001 = add i64 %999, %1000
  %1002 = icmp eq i64 %1001, 2
  %1003 = zext i1 %1002 to i8
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1003, i8* %1004, align 1
  store %struct.Memory* %loadMem_41ddba, %struct.Memory** %MEMORY
  %loadMem_41ddbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i920 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 1
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RAX.i921 = bitcast %union.anon* %1010 to i64*
  %1011 = load i64, i64* %RAX.i921
  %1012 = add i64 %1011, 8
  %1013 = load i64, i64* %PC.i920
  %1014 = add i64 %1013, 7
  store i64 %1014, i64* %PC.i920
  %1015 = inttoptr i64 %1012 to i32*
  store i32 2, i32* %1015
  store %struct.Memory* %loadMem_41ddbd, %struct.Memory** %MEMORY
  %loadMem_41ddc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 33
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %1018 to i64*
  %1019 = load i64, i64* %PC.i919
  %1020 = add i64 %1019, 113
  %1021 = load i64, i64* %PC.i919
  %1022 = add i64 %1021, 5
  store i64 %1022, i64* %PC.i919
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1020, i64* %1023, align 8
  store %struct.Memory* %loadMem_41ddc4, %struct.Memory** %MEMORY
  br label %block_.L_41de35

block_.L_41ddc9:                                  ; preds = %block_41dd4c
  %loadMem_41ddc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 33
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %1026 to i64*
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 1
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %RAX.i918 = bitcast %union.anon* %1029 to i64*
  %1030 = load i64, i64* %PC.i917
  %1031 = add i64 %1030, 8
  store i64 %1031, i64* %PC.i917
  %1032 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %1032, i64* %RAX.i918, align 8
  store %struct.Memory* %loadMem_41ddc9, %struct.Memory** %MEMORY
  %loadMem_41ddd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1034 = getelementptr inbounds %struct.GPR, %struct.GPR* %1033, i32 0, i32 33
  %1035 = getelementptr inbounds %struct.Reg, %struct.Reg* %1034, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %1035 to i64*
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 5
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %RCX.i915 = bitcast %union.anon* %1038 to i64*
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 15
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %RBP.i916 = bitcast %union.anon* %1041 to i64*
  %1042 = load i64, i64* %RBP.i916
  %1043 = sub i64 %1042, 4
  %1044 = load i64, i64* %PC.i914
  %1045 = add i64 %1044, 4
  store i64 %1045, i64* %PC.i914
  %1046 = inttoptr i64 %1043 to i32*
  %1047 = load i32, i32* %1046
  %1048 = sext i32 %1047 to i64
  store i64 %1048, i64* %RCX.i915, align 8
  store %struct.Memory* %loadMem_41ddd1, %struct.Memory** %MEMORY
  %loadMem_41ddd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 33
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %PC.i912 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 5
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RCX.i913 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %RCX.i913
  %1056 = load i64, i64* %PC.i912
  %1057 = add i64 %1056, 4
  store i64 %1057, i64* %PC.i912
  %1058 = sext i64 %1055 to i128
  %1059 = and i128 %1058, -18446744073709551616
  %1060 = zext i64 %1055 to i128
  %1061 = or i128 %1059, %1060
  %1062 = mul i128 24, %1061
  %1063 = trunc i128 %1062 to i64
  store i64 %1063, i64* %RCX.i913, align 8
  %1064 = sext i64 %1063 to i128
  %1065 = icmp ne i128 %1064, %1062
  %1066 = zext i1 %1065 to i8
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1066, i8* %1067, align 1
  %1068 = trunc i128 %1062 to i32
  %1069 = and i32 %1068, 255
  %1070 = call i32 @llvm.ctpop.i32(i32 %1069)
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  %1073 = xor i8 %1072, 1
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1073, i8* %1074, align 1
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1075, align 1
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1076, align 1
  %1077 = lshr i64 %1063, 63
  %1078 = trunc i64 %1077 to i8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1078, i8* %1079, align 1
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1066, i8* %1080, align 1
  store %struct.Memory* %loadMem_41ddd5, %struct.Memory** %MEMORY
  %loadMem_41ddd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i909 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 1
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %RAX.i910 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 5
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %RCX.i911 = bitcast %union.anon* %1089 to i64*
  %1090 = load i64, i64* %RAX.i910
  %1091 = load i64, i64* %RCX.i911
  %1092 = load i64, i64* %PC.i909
  %1093 = add i64 %1092, 3
  store i64 %1093, i64* %PC.i909
  %1094 = add i64 %1091, %1090
  store i64 %1094, i64* %RAX.i910, align 8
  %1095 = icmp ult i64 %1094, %1090
  %1096 = icmp ult i64 %1094, %1091
  %1097 = or i1 %1095, %1096
  %1098 = zext i1 %1097 to i8
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1098, i8* %1099, align 1
  %1100 = trunc i64 %1094 to i32
  %1101 = and i32 %1100, 255
  %1102 = call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1105, i8* %1106, align 1
  %1107 = xor i64 %1091, %1090
  %1108 = xor i64 %1107, %1094
  %1109 = lshr i64 %1108, 4
  %1110 = trunc i64 %1109 to i8
  %1111 = and i8 %1110, 1
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1111, i8* %1112, align 1
  %1113 = icmp eq i64 %1094, 0
  %1114 = zext i1 %1113 to i8
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1114, i8* %1115, align 1
  %1116 = lshr i64 %1094, 63
  %1117 = trunc i64 %1116 to i8
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1117, i8* %1118, align 1
  %1119 = lshr i64 %1090, 63
  %1120 = lshr i64 %1091, 63
  %1121 = xor i64 %1116, %1119
  %1122 = xor i64 %1116, %1120
  %1123 = add i64 %1121, %1122
  %1124 = icmp eq i64 %1123, 2
  %1125 = zext i1 %1124 to i8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1125, i8* %1126, align 1
  store %struct.Memory* %loadMem_41ddd9, %struct.Memory** %MEMORY
  %loadMem_41dddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 1
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RAX.i908 = bitcast %union.anon* %1132 to i64*
  %1133 = load i64, i64* %RAX.i908
  %1134 = load i64, i64* %PC.i907
  %1135 = add i64 %1134, 6
  store i64 %1135, i64* %PC.i907
  %1136 = inttoptr i64 %1133 to i32*
  store i32 1, i32* %1136
  store %struct.Memory* %loadMem_41dddc, %struct.Memory** %MEMORY
  %loadMem_41dde2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 33
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 7
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %RDX.i905 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 15
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RBP.i906 = bitcast %union.anon* %1145 to i64*
  %1146 = load i64, i64* %RBP.i906
  %1147 = sub i64 %1146, 4
  %1148 = load i64, i64* %PC.i904
  %1149 = add i64 %1148, 3
  store i64 %1149, i64* %PC.i904
  %1150 = inttoptr i64 %1147 to i32*
  %1151 = load i32, i32* %1150
  %1152 = zext i32 %1151 to i64
  store i64 %1152, i64* %RDX.i905, align 8
  store %struct.Memory* %loadMem_41dde2, %struct.Memory** %MEMORY
  %loadMem_41dde5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 33
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 7
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RDX.i902 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 15
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RBP.i903 = bitcast %union.anon* %1161 to i64*
  %1162 = load i64, i64* %RDX.i902
  %1163 = load i64, i64* %RBP.i903
  %1164 = sub i64 %1163, 12
  %1165 = load i64, i64* %PC.i901
  %1166 = add i64 %1165, 3
  store i64 %1166, i64* %PC.i901
  %1167 = trunc i64 %1162 to i32
  %1168 = inttoptr i64 %1164 to i32*
  %1169 = load i32, i32* %1168
  %1170 = sub i32 %1167, %1169
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %RDX.i902, align 8
  %1172 = icmp ult i32 %1167, %1169
  %1173 = zext i1 %1172 to i8
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1173, i8* %1174, align 1
  %1175 = and i32 %1170, 255
  %1176 = call i32 @llvm.ctpop.i32(i32 %1175)
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  %1179 = xor i8 %1178, 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1179, i8* %1180, align 1
  %1181 = xor i32 %1169, %1167
  %1182 = xor i32 %1181, %1170
  %1183 = lshr i32 %1182, 4
  %1184 = trunc i32 %1183 to i8
  %1185 = and i8 %1184, 1
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1185, i8* %1186, align 1
  %1187 = icmp eq i32 %1170, 0
  %1188 = zext i1 %1187 to i8
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1188, i8* %1189, align 1
  %1190 = lshr i32 %1170, 31
  %1191 = trunc i32 %1190 to i8
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1191, i8* %1192, align 1
  %1193 = lshr i32 %1167, 31
  %1194 = lshr i32 %1169, 31
  %1195 = xor i32 %1194, %1193
  %1196 = xor i32 %1190, %1193
  %1197 = add i32 %1196, %1195
  %1198 = icmp eq i32 %1197, 2
  %1199 = zext i1 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1199, i8* %1200, align 1
  store %struct.Memory* %loadMem_41dde5, %struct.Memory** %MEMORY
  %loadMem_41dde8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 7
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %RDX.i900 = bitcast %union.anon* %1206 to i64*
  %1207 = load i64, i64* %RDX.i900
  %1208 = load i64, i64* %PC.i899
  %1209 = add i64 %1208, 2
  store i64 %1209, i64* %PC.i899
  %1210 = trunc i64 %1207 to i32
  %1211 = shl i32 %1210, 1
  %1212 = icmp slt i32 %1210, 0
  %1213 = icmp slt i32 %1211, 0
  %1214 = xor i1 %1212, %1213
  %1215 = zext i32 %1211 to i64
  store i64 %1215, i64* %RDX.i900, align 8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1217 = zext i1 %1212 to i8
  store i8 %1217, i8* %1216, align 1
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1219 = and i32 %1211, 254
  %1220 = call i32 @llvm.ctpop.i32(i32 %1219)
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  store i8 %1223, i8* %1218, align 1
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1224, align 1
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1226 = icmp eq i32 %1211, 0
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %1225, align 1
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1229 = lshr i32 %1211, 31
  %1230 = trunc i32 %1229 to i8
  store i8 %1230, i8* %1228, align 1
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1232 = zext i1 %1214 to i8
  store i8 %1232, i8* %1231, align 1
  store %struct.Memory* %loadMem_41dde8, %struct.Memory** %MEMORY
  %loadMem_41ddeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 1
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RAX.i898 = bitcast %union.anon* %1238 to i64*
  %1239 = load i64, i64* %PC.i897
  %1240 = add i64 %1239, 8
  store i64 %1240, i64* %PC.i897
  %1241 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %1241, i64* %RAX.i898, align 8
  store %struct.Memory* %loadMem_41ddeb, %struct.Memory** %MEMORY
  %loadMem_41ddf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 33
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 5
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RCX.i895 = bitcast %union.anon* %1247 to i64*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 15
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %RBP.i896 = bitcast %union.anon* %1250 to i64*
  %1251 = load i64, i64* %RBP.i896
  %1252 = sub i64 %1251, 4
  %1253 = load i64, i64* %PC.i894
  %1254 = add i64 %1253, 4
  store i64 %1254, i64* %PC.i894
  %1255 = inttoptr i64 %1252 to i32*
  %1256 = load i32, i32* %1255
  %1257 = sext i32 %1256 to i64
  store i64 %1257, i64* %RCX.i895, align 8
  store %struct.Memory* %loadMem_41ddf3, %struct.Memory** %MEMORY
  %loadMem_41ddf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 5
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RCX.i893 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RCX.i893
  %1265 = load i64, i64* %PC.i892
  %1266 = add i64 %1265, 4
  store i64 %1266, i64* %PC.i892
  %1267 = sext i64 %1264 to i128
  %1268 = and i128 %1267, -18446744073709551616
  %1269 = zext i64 %1264 to i128
  %1270 = or i128 %1268, %1269
  %1271 = mul i128 24, %1270
  %1272 = trunc i128 %1271 to i64
  store i64 %1272, i64* %RCX.i893, align 8
  %1273 = sext i64 %1272 to i128
  %1274 = icmp ne i128 %1273, %1271
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1275, i8* %1276, align 1
  %1277 = trunc i128 %1271 to i32
  %1278 = and i32 %1277, 255
  %1279 = call i32 @llvm.ctpop.i32(i32 %1278)
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  %1282 = xor i8 %1281, 1
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1282, i8* %1283, align 1
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1284, align 1
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1285, align 1
  %1286 = lshr i64 %1272, 63
  %1287 = trunc i64 %1286 to i8
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1287, i8* %1288, align 1
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1275, i8* %1289, align 1
  store %struct.Memory* %loadMem_41ddf7, %struct.Memory** %MEMORY
  %loadMem_41ddfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 33
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 1
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RAX.i890 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 5
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RCX.i891 = bitcast %union.anon* %1298 to i64*
  %1299 = load i64, i64* %RAX.i890
  %1300 = load i64, i64* %RCX.i891
  %1301 = load i64, i64* %PC.i889
  %1302 = add i64 %1301, 3
  store i64 %1302, i64* %PC.i889
  %1303 = add i64 %1300, %1299
  store i64 %1303, i64* %RAX.i890, align 8
  %1304 = icmp ult i64 %1303, %1299
  %1305 = icmp ult i64 %1303, %1300
  %1306 = or i1 %1304, %1305
  %1307 = zext i1 %1306 to i8
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1307, i8* %1308, align 1
  %1309 = trunc i64 %1303 to i32
  %1310 = and i32 %1309, 255
  %1311 = call i32 @llvm.ctpop.i32(i32 %1310)
  %1312 = trunc i32 %1311 to i8
  %1313 = and i8 %1312, 1
  %1314 = xor i8 %1313, 1
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1314, i8* %1315, align 1
  %1316 = xor i64 %1300, %1299
  %1317 = xor i64 %1316, %1303
  %1318 = lshr i64 %1317, 4
  %1319 = trunc i64 %1318 to i8
  %1320 = and i8 %1319, 1
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1320, i8* %1321, align 1
  %1322 = icmp eq i64 %1303, 0
  %1323 = zext i1 %1322 to i8
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1323, i8* %1324, align 1
  %1325 = lshr i64 %1303, 63
  %1326 = trunc i64 %1325 to i8
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1326, i8* %1327, align 1
  %1328 = lshr i64 %1299, 63
  %1329 = lshr i64 %1300, 63
  %1330 = xor i64 %1325, %1328
  %1331 = xor i64 %1325, %1329
  %1332 = add i64 %1330, %1331
  %1333 = icmp eq i64 %1332, 2
  %1334 = zext i1 %1333 to i8
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1334, i8* %1335, align 1
  store %struct.Memory* %loadMem_41ddfb, %struct.Memory** %MEMORY
  %loadMem_41ddfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 33
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %1338 to i64*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 7
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %EDX.i887 = bitcast %union.anon* %1341 to i32*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 1
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %RAX.i888 = bitcast %union.anon* %1344 to i64*
  %1345 = load i64, i64* %RAX.i888
  %1346 = add i64 %1345, 4
  %1347 = load i32, i32* %EDX.i887
  %1348 = zext i32 %1347 to i64
  %1349 = load i64, i64* %PC.i886
  %1350 = add i64 %1349, 3
  store i64 %1350, i64* %PC.i886
  %1351 = inttoptr i64 %1346 to i32*
  store i32 %1347, i32* %1351
  store %struct.Memory* %loadMem_41ddfe, %struct.Memory** %MEMORY
  %loadMem_41de01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 1
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RAX.i885 = bitcast %union.anon* %1357 to i64*
  %1358 = load i64, i64* %PC.i884
  %1359 = add i64 %1358, 8
  store i64 %1359, i64* %PC.i884
  %1360 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %1360, i64* %RAX.i885, align 8
  store %struct.Memory* %loadMem_41de01, %struct.Memory** %MEMORY
  %loadMem_41de09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 33
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 5
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %RCX.i882 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 15
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %RBP.i883 = bitcast %union.anon* %1369 to i64*
  %1370 = load i64, i64* %RBP.i883
  %1371 = sub i64 %1370, 4
  %1372 = load i64, i64* %PC.i881
  %1373 = add i64 %1372, 4
  store i64 %1373, i64* %PC.i881
  %1374 = inttoptr i64 %1371 to i32*
  %1375 = load i32, i32* %1374
  %1376 = sext i32 %1375 to i64
  store i64 %1376, i64* %RCX.i882, align 8
  store %struct.Memory* %loadMem_41de09, %struct.Memory** %MEMORY
  %loadMem_41de0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 33
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %1379 to i64*
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 5
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %RCX.i880 = bitcast %union.anon* %1382 to i64*
  %1383 = load i64, i64* %RCX.i880
  %1384 = load i64, i64* %PC.i879
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %PC.i879
  %1386 = sext i64 %1383 to i128
  %1387 = and i128 %1386, -18446744073709551616
  %1388 = zext i64 %1383 to i128
  %1389 = or i128 %1387, %1388
  %1390 = mul i128 24, %1389
  %1391 = trunc i128 %1390 to i64
  store i64 %1391, i64* %RCX.i880, align 8
  %1392 = sext i64 %1391 to i128
  %1393 = icmp ne i128 %1392, %1390
  %1394 = zext i1 %1393 to i8
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1394, i8* %1395, align 1
  %1396 = trunc i128 %1390 to i32
  %1397 = and i32 %1396, 255
  %1398 = call i32 @llvm.ctpop.i32(i32 %1397)
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = xor i8 %1400, 1
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1401, i8* %1402, align 1
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1403, align 1
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1404, align 1
  %1405 = lshr i64 %1391, 63
  %1406 = trunc i64 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1406, i8* %1407, align 1
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1394, i8* %1408, align 1
  store %struct.Memory* %loadMem_41de0d, %struct.Memory** %MEMORY
  %loadMem_41de11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 1
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RAX.i877 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 5
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RCX.i878 = bitcast %union.anon* %1417 to i64*
  %1418 = load i64, i64* %RAX.i877
  %1419 = load i64, i64* %RCX.i878
  %1420 = load i64, i64* %PC.i876
  %1421 = add i64 %1420, 3
  store i64 %1421, i64* %PC.i876
  %1422 = add i64 %1419, %1418
  store i64 %1422, i64* %RAX.i877, align 8
  %1423 = icmp ult i64 %1422, %1418
  %1424 = icmp ult i64 %1422, %1419
  %1425 = or i1 %1423, %1424
  %1426 = zext i1 %1425 to i8
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1426, i8* %1427, align 1
  %1428 = trunc i64 %1422 to i32
  %1429 = and i32 %1428, 255
  %1430 = call i32 @llvm.ctpop.i32(i32 %1429)
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  %1433 = xor i8 %1432, 1
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1433, i8* %1434, align 1
  %1435 = xor i64 %1419, %1418
  %1436 = xor i64 %1435, %1422
  %1437 = lshr i64 %1436, 4
  %1438 = trunc i64 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1439, i8* %1440, align 1
  %1441 = icmp eq i64 %1422, 0
  %1442 = zext i1 %1441 to i8
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1442, i8* %1443, align 1
  %1444 = lshr i64 %1422, 63
  %1445 = trunc i64 %1444 to i8
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1445, i8* %1446, align 1
  %1447 = lshr i64 %1418, 63
  %1448 = lshr i64 %1419, 63
  %1449 = xor i64 %1444, %1447
  %1450 = xor i64 %1444, %1448
  %1451 = add i64 %1449, %1450
  %1452 = icmp eq i64 %1451, 2
  %1453 = zext i1 %1452 to i8
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1453, i8* %1454, align 1
  store %struct.Memory* %loadMem_41de11, %struct.Memory** %MEMORY
  %loadMem_41de14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 33
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %1457 to i64*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 1
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %RAX.i875 = bitcast %union.anon* %1460 to i64*
  %1461 = load i64, i64* %RAX.i875
  %1462 = add i64 %1461, 16
  %1463 = load i64, i64* %PC.i874
  %1464 = add i64 %1463, 7
  store i64 %1464, i64* %PC.i874
  %1465 = inttoptr i64 %1462 to i32*
  store i32 1, i32* %1465
  store %struct.Memory* %loadMem_41de14, %struct.Memory** %MEMORY
  %loadMem_41de1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i872 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 1
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %RAX.i873 = bitcast %union.anon* %1471 to i64*
  %1472 = load i64, i64* %PC.i872
  %1473 = add i64 %1472, 8
  store i64 %1473, i64* %PC.i872
  %1474 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %1474, i64* %RAX.i873, align 8
  store %struct.Memory* %loadMem_41de1b, %struct.Memory** %MEMORY
  %loadMem_41de23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 33
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %1477 to i64*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 5
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %RCX.i870 = bitcast %union.anon* %1480 to i64*
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 15
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %RBP.i871 = bitcast %union.anon* %1483 to i64*
  %1484 = load i64, i64* %RBP.i871
  %1485 = sub i64 %1484, 4
  %1486 = load i64, i64* %PC.i869
  %1487 = add i64 %1486, 4
  store i64 %1487, i64* %PC.i869
  %1488 = inttoptr i64 %1485 to i32*
  %1489 = load i32, i32* %1488
  %1490 = sext i32 %1489 to i64
  store i64 %1490, i64* %RCX.i870, align 8
  store %struct.Memory* %loadMem_41de23, %struct.Memory** %MEMORY
  %loadMem_41de27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 33
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %1493 to i64*
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 5
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %RCX.i868 = bitcast %union.anon* %1496 to i64*
  %1497 = load i64, i64* %RCX.i868
  %1498 = load i64, i64* %PC.i867
  %1499 = add i64 %1498, 4
  store i64 %1499, i64* %PC.i867
  %1500 = sext i64 %1497 to i128
  %1501 = and i128 %1500, -18446744073709551616
  %1502 = zext i64 %1497 to i128
  %1503 = or i128 %1501, %1502
  %1504 = mul i128 24, %1503
  %1505 = trunc i128 %1504 to i64
  store i64 %1505, i64* %RCX.i868, align 8
  %1506 = sext i64 %1505 to i128
  %1507 = icmp ne i128 %1506, %1504
  %1508 = zext i1 %1507 to i8
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1508, i8* %1509, align 1
  %1510 = trunc i128 %1504 to i32
  %1511 = and i32 %1510, 255
  %1512 = call i32 @llvm.ctpop.i32(i32 %1511)
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = xor i8 %1514, 1
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1515, i8* %1516, align 1
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1517, align 1
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1518, align 1
  %1519 = lshr i64 %1505, 63
  %1520 = trunc i64 %1519 to i8
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1520, i8* %1521, align 1
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1508, i8* %1522, align 1
  store %struct.Memory* %loadMem_41de27, %struct.Memory** %MEMORY
  %loadMem_41de2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 33
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %PC.i864 = bitcast %union.anon* %1525 to i64*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 1
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %RAX.i865 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 5
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RCX.i866 = bitcast %union.anon* %1531 to i64*
  %1532 = load i64, i64* %RAX.i865
  %1533 = load i64, i64* %RCX.i866
  %1534 = load i64, i64* %PC.i864
  %1535 = add i64 %1534, 3
  store i64 %1535, i64* %PC.i864
  %1536 = add i64 %1533, %1532
  store i64 %1536, i64* %RAX.i865, align 8
  %1537 = icmp ult i64 %1536, %1532
  %1538 = icmp ult i64 %1536, %1533
  %1539 = or i1 %1537, %1538
  %1540 = zext i1 %1539 to i8
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1540, i8* %1541, align 1
  %1542 = trunc i64 %1536 to i32
  %1543 = and i32 %1542, 255
  %1544 = call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1547, i8* %1548, align 1
  %1549 = xor i64 %1533, %1532
  %1550 = xor i64 %1549, %1536
  %1551 = lshr i64 %1550, 4
  %1552 = trunc i64 %1551 to i8
  %1553 = and i8 %1552, 1
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1553, i8* %1554, align 1
  %1555 = icmp eq i64 %1536, 0
  %1556 = zext i1 %1555 to i8
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1556, i8* %1557, align 1
  %1558 = lshr i64 %1536, 63
  %1559 = trunc i64 %1558 to i8
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1559, i8* %1560, align 1
  %1561 = lshr i64 %1532, 63
  %1562 = lshr i64 %1533, 63
  %1563 = xor i64 %1558, %1561
  %1564 = xor i64 %1558, %1562
  %1565 = add i64 %1563, %1564
  %1566 = icmp eq i64 %1565, 2
  %1567 = zext i1 %1566 to i8
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1567, i8* %1568, align 1
  store %struct.Memory* %loadMem_41de2b, %struct.Memory** %MEMORY
  %loadMem_41de2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 33
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %1571 to i64*
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 1
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %RAX.i863 = bitcast %union.anon* %1574 to i64*
  %1575 = load i64, i64* %RAX.i863
  %1576 = add i64 %1575, 8
  %1577 = load i64, i64* %PC.i862
  %1578 = add i64 %1577, 7
  store i64 %1578, i64* %PC.i862
  %1579 = inttoptr i64 %1576 to i32*
  store i32 0, i32* %1579
  store %struct.Memory* %loadMem_41de2e, %struct.Memory** %MEMORY
  br label %block_.L_41de35

block_.L_41de35:                                  ; preds = %block_.L_41ddc9, %block_41dd58
  %loadMem_41de35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 33
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %1582 to i64*
  %1583 = load i64, i64* %PC.i861
  %1584 = add i64 %1583, 5
  %1585 = load i64, i64* %PC.i861
  %1586 = add i64 %1585, 5
  store i64 %1586, i64* %PC.i861
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1584, i64* %1587, align 8
  store %struct.Memory* %loadMem_41de35, %struct.Memory** %MEMORY
  br label %block_.L_41de3a

block_.L_41de3a:                                  ; preds = %block_.L_41de35
  %loadMem_41de3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 33
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %1590 to i64*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 1
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RAX.i859 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 15
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %1596 to i64*
  %1597 = load i64, i64* %RBP.i860
  %1598 = sub i64 %1597, 4
  %1599 = load i64, i64* %PC.i858
  %1600 = add i64 %1599, 3
  store i64 %1600, i64* %PC.i858
  %1601 = inttoptr i64 %1598 to i32*
  %1602 = load i32, i32* %1601
  %1603 = zext i32 %1602 to i64
  store i64 %1603, i64* %RAX.i859, align 8
  store %struct.Memory* %loadMem_41de3a, %struct.Memory** %MEMORY
  %loadMem_41de3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 33
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 1
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %RAX.i857 = bitcast %union.anon* %1609 to i64*
  %1610 = load i64, i64* %RAX.i857
  %1611 = load i64, i64* %PC.i856
  %1612 = add i64 %1611, 3
  store i64 %1612, i64* %PC.i856
  %1613 = trunc i64 %1610 to i32
  %1614 = add i32 1, %1613
  %1615 = zext i32 %1614 to i64
  store i64 %1615, i64* %RAX.i857, align 8
  %1616 = icmp ult i32 %1614, %1613
  %1617 = icmp ult i32 %1614, 1
  %1618 = or i1 %1616, %1617
  %1619 = zext i1 %1618 to i8
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1619, i8* %1620, align 1
  %1621 = and i32 %1614, 255
  %1622 = call i32 @llvm.ctpop.i32(i32 %1621)
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  %1625 = xor i8 %1624, 1
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1625, i8* %1626, align 1
  %1627 = xor i64 1, %1610
  %1628 = trunc i64 %1627 to i32
  %1629 = xor i32 %1628, %1614
  %1630 = lshr i32 %1629, 4
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1632, i8* %1633, align 1
  %1634 = icmp eq i32 %1614, 0
  %1635 = zext i1 %1634 to i8
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1635, i8* %1636, align 1
  %1637 = lshr i32 %1614, 31
  %1638 = trunc i32 %1637 to i8
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1638, i8* %1639, align 1
  %1640 = lshr i32 %1613, 31
  %1641 = xor i32 %1637, %1640
  %1642 = add i32 %1641, %1637
  %1643 = icmp eq i32 %1642, 2
  %1644 = zext i1 %1643 to i8
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1644, i8* %1645, align 1
  store %struct.Memory* %loadMem_41de3d, %struct.Memory** %MEMORY
  %loadMem_41de40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 33
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %1648 to i64*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 1
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %EAX.i854 = bitcast %union.anon* %1651 to i32*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 15
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %RBP.i855 = bitcast %union.anon* %1654 to i64*
  %1655 = load i64, i64* %RBP.i855
  %1656 = sub i64 %1655, 4
  %1657 = load i32, i32* %EAX.i854
  %1658 = zext i32 %1657 to i64
  %1659 = load i64, i64* %PC.i853
  %1660 = add i64 %1659, 3
  store i64 %1660, i64* %PC.i853
  %1661 = inttoptr i64 %1656 to i32*
  store i32 %1657, i32* %1661
  store %struct.Memory* %loadMem_41de40, %struct.Memory** %MEMORY
  %loadMem_41de43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 33
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %1664 to i64*
  %1665 = load i64, i64* %PC.i852
  %1666 = add i64 %1665, -270
  %1667 = load i64, i64* %PC.i852
  %1668 = add i64 %1667, 5
  store i64 %1668, i64* %PC.i852
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1666, i64* %1669, align 8
  store %struct.Memory* %loadMem_41de43, %struct.Memory** %MEMORY
  br label %block_.L_41dd35

block_.L_41de48:                                  ; preds = %block_.L_41dd35
  %loadMem_41de48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1671 = getelementptr inbounds %struct.GPR, %struct.GPR* %1670, i32 0, i32 33
  %1672 = getelementptr inbounds %struct.Reg, %struct.Reg* %1671, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %1672 to i64*
  %1673 = load i64, i64* %PC.i851
  %1674 = add i64 %1673, 1324
  %1675 = load i64, i64* %PC.i851
  %1676 = add i64 %1675, 5
  store i64 %1676, i64* %PC.i851
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1674, i64* %1677, align 8
  store %struct.Memory* %loadMem_41de48, %struct.Memory** %MEMORY
  br label %block_.L_41e374

block_.L_41de4d:                                  ; preds = %routine_idivl__esi.exit1004
  %loadMem_41de4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 33
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 15
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %RBP.i850 = bitcast %union.anon* %1683 to i64*
  %1684 = load i64, i64* %RBP.i850
  %1685 = sub i64 %1684, 16
  %1686 = load i64, i64* %PC.i849
  %1687 = add i64 %1686, 7
  store i64 %1687, i64* %PC.i849
  %1688 = inttoptr i64 %1685 to i32*
  store i32 0, i32* %1688
  store %struct.Memory* %loadMem_41de4d, %struct.Memory** %MEMORY
  %loadMem_41de54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 33
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %1691 to i64*
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 1
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %RAX.i848 = bitcast %union.anon* %1694 to i64*
  %1695 = load i64, i64* %PC.i847
  %1696 = add i64 %1695, 8
  store i64 %1696, i64* %PC.i847
  %1697 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1697, i64* %RAX.i848, align 8
  store %struct.Memory* %loadMem_41de54, %struct.Memory** %MEMORY
  %loadMem_41de5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %1700 to i64*
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1702 = getelementptr inbounds %struct.GPR, %struct.GPR* %1701, i32 0, i32 1
  %1703 = getelementptr inbounds %struct.Reg, %struct.Reg* %1702, i32 0, i32 0
  %RAX.i845 = bitcast %union.anon* %1703 to i64*
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 5
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %RCX.i846 = bitcast %union.anon* %1706 to i64*
  %1707 = load i64, i64* %RAX.i845
  %1708 = add i64 %1707, 1236
  %1709 = load i64, i64* %PC.i844
  %1710 = add i64 %1709, 6
  store i64 %1710, i64* %PC.i844
  %1711 = inttoptr i64 %1708 to i32*
  %1712 = load i32, i32* %1711
  %1713 = zext i32 %1712 to i64
  store i64 %1713, i64* %RCX.i846, align 8
  store %struct.Memory* %loadMem_41de5c, %struct.Memory** %MEMORY
  %loadMem_41de62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1715 = getelementptr inbounds %struct.GPR, %struct.GPR* %1714, i32 0, i32 33
  %1716 = getelementptr inbounds %struct.Reg, %struct.Reg* %1715, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %1716 to i64*
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1718 = getelementptr inbounds %struct.GPR, %struct.GPR* %1717, i32 0, i32 5
  %1719 = getelementptr inbounds %struct.Reg, %struct.Reg* %1718, i32 0, i32 0
  %ECX.i842 = bitcast %union.anon* %1719 to i32*
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 15
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %RBP.i843 = bitcast %union.anon* %1722 to i64*
  %1723 = load i64, i64* %RBP.i843
  %1724 = sub i64 %1723, 20
  %1725 = load i32, i32* %ECX.i842
  %1726 = zext i32 %1725 to i64
  %1727 = load i64, i64* %PC.i841
  %1728 = add i64 %1727, 3
  store i64 %1728, i64* %PC.i841
  %1729 = inttoptr i64 %1724 to i32*
  store i32 %1725, i32* %1729
  store %struct.Memory* %loadMem_41de62, %struct.Memory** %MEMORY
  %loadMem_41de65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 33
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 5
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %RCX.i839 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 15
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RBP.i840 = bitcast %union.anon* %1738 to i64*
  %1739 = load i64, i64* %RBP.i840
  %1740 = sub i64 %1739, 16
  %1741 = load i64, i64* %PC.i838
  %1742 = add i64 %1741, 3
  store i64 %1742, i64* %PC.i838
  %1743 = inttoptr i64 %1740 to i32*
  %1744 = load i32, i32* %1743
  %1745 = zext i32 %1744 to i64
  store i64 %1745, i64* %RCX.i839, align 8
  store %struct.Memory* %loadMem_41de65, %struct.Memory** %MEMORY
  %loadMem_41de68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 5
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %ECX.i836 = bitcast %union.anon* %1751 to i32*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 15
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %RBP.i837
  %1756 = sub i64 %1755, 44
  %1757 = load i32, i32* %ECX.i836
  %1758 = zext i32 %1757 to i64
  %1759 = load i64, i64* %PC.i835
  %1760 = add i64 %1759, 3
  store i64 %1760, i64* %PC.i835
  %1761 = inttoptr i64 %1756 to i32*
  store i32 %1757, i32* %1761
  store %struct.Memory* %loadMem_41de68, %struct.Memory** %MEMORY
  %loadMem_41de6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 1
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %RAX.i834 = bitcast %union.anon* %1767 to i64*
  %1768 = load i64, i64* %PC.i833
  %1769 = add i64 %1768, 8
  store i64 %1769, i64* %PC.i833
  %1770 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1770, i64* %RAX.i834, align 8
  store %struct.Memory* %loadMem_41de6b, %struct.Memory** %MEMORY
  %loadMem_41de73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 33
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %1773 to i64*
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 1
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %RAX.i831 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 5
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %RCX.i832 = bitcast %union.anon* %1779 to i64*
  %1780 = load i64, i64* %RAX.i831
  %1781 = add i64 %1780, 1236
  %1782 = load i64, i64* %PC.i830
  %1783 = add i64 %1782, 6
  store i64 %1783, i64* %PC.i830
  %1784 = inttoptr i64 %1781 to i32*
  %1785 = load i32, i32* %1784
  %1786 = zext i32 %1785 to i64
  store i64 %1786, i64* %RCX.i832, align 8
  store %struct.Memory* %loadMem_41de73, %struct.Memory** %MEMORY
  %loadMem_41de79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 5
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %ECX.i828 = bitcast %union.anon* %1792 to i32*
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 15
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %RBP.i829 = bitcast %union.anon* %1795 to i64*
  %1796 = load i64, i64* %RBP.i829
  %1797 = sub i64 %1796, 48
  %1798 = load i32, i32* %ECX.i828
  %1799 = zext i32 %1798 to i64
  %1800 = load i64, i64* %PC.i827
  %1801 = add i64 %1800, 3
  store i64 %1801, i64* %PC.i827
  %1802 = inttoptr i64 %1797 to i32*
  store i32 %1798, i32* %1802
  store %struct.Memory* %loadMem_41de79, %struct.Memory** %MEMORY
  %loadMem_41de7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 33
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 1
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %RAX.i826 = bitcast %union.anon* %1808 to i64*
  %1809 = load i64, i64* %PC.i825
  %1810 = add i64 %1809, 8
  store i64 %1810, i64* %PC.i825
  %1811 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %1811, i64* %RAX.i826, align 8
  store %struct.Memory* %loadMem_41de7c, %struct.Memory** %MEMORY
  %loadMem_41de84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 1
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RAX.i823 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 5
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RCX.i824 = bitcast %union.anon* %1820 to i64*
  %1821 = load i64, i64* %RAX.i823
  %1822 = add i64 %1821, 1236
  %1823 = load i64, i64* %PC.i822
  %1824 = add i64 %1823, 6
  store i64 %1824, i64* %PC.i822
  %1825 = inttoptr i64 %1822 to i32*
  %1826 = load i32, i32* %1825
  %1827 = zext i32 %1826 to i64
  store i64 %1827, i64* %RCX.i824, align 8
  store %struct.Memory* %loadMem_41de84, %struct.Memory** %MEMORY
  %loadMem_41de8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 5
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %ECX.i820 = bitcast %union.anon* %1833 to i32*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 15
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %1836 to i64*
  %1837 = load i64, i64* %RBP.i821
  %1838 = sub i64 %1837, 52
  %1839 = load i32, i32* %ECX.i820
  %1840 = zext i32 %1839 to i64
  %1841 = load i64, i64* %PC.i819
  %1842 = add i64 %1841, 3
  store i64 %1842, i64* %PC.i819
  %1843 = inttoptr i64 %1838 to i32*
  store i32 %1839, i32* %1843
  store %struct.Memory* %loadMem_41de8a, %struct.Memory** %MEMORY
  br label %block_.L_41de8d

block_.L_41de8d:                                  ; preds = %routine_idivl__ecx.exit797, %block_.L_41de4d
  %loadMem_41de8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1845 = getelementptr inbounds %struct.GPR, %struct.GPR* %1844, i32 0, i32 33
  %1846 = getelementptr inbounds %struct.Reg, %struct.Reg* %1845, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1846 to i64*
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 15
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %1849 to i64*
  %1850 = load i64, i64* %RBP.i818
  %1851 = sub i64 %1850, 20
  %1852 = load i64, i64* %PC.i817
  %1853 = add i64 %1852, 4
  store i64 %1853, i64* %PC.i817
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
  store %struct.Memory* %loadMem_41de8d, %struct.Memory** %MEMORY
  %loadMem_41de91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 33
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %1886 to i64*
  %1887 = load i64, i64* %PC.i816
  %1888 = add i64 %1887, 42
  %1889 = load i64, i64* %PC.i816
  %1890 = add i64 %1889, 6
  %1891 = load i64, i64* %PC.i816
  %1892 = add i64 %1891, 6
  store i64 %1892, i64* %PC.i816
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1894 = load i8, i8* %1893, align 1
  %1895 = icmp ne i8 %1894, 0
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1897 = load i8, i8* %1896, align 1
  %1898 = icmp ne i8 %1897, 0
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1900 = load i8, i8* %1899, align 1
  %1901 = icmp ne i8 %1900, 0
  %1902 = xor i1 %1898, %1901
  %1903 = or i1 %1895, %1902
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %BRANCH_TAKEN, align 1
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1906 = select i1 %1903, i64 %1888, i64 %1890
  store i64 %1906, i64* %1905, align 8
  store %struct.Memory* %loadMem_41de91, %struct.Memory** %MEMORY
  %loadBr_41de91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41de91 = icmp eq i8 %loadBr_41de91, 1
  br i1 %cmpBr_41de91, label %block_.L_41debb, label %block_41de97

block_41de97:                                     ; preds = %block_.L_41de8d
  %loadMem_41de97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 1
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %RAX.i815 = bitcast %union.anon* %1912 to i64*
  %1913 = load i64, i64* %PC.i814
  %1914 = add i64 %1913, 5
  store i64 %1914, i64* %PC.i814
  store i64 2, i64* %RAX.i815, align 8
  store %struct.Memory* %loadMem_41de97, %struct.Memory** %MEMORY
  %loadMem_41de9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 33
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 5
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RCX.i812 = bitcast %union.anon* %1920 to i64*
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 15
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %RBP.i813 = bitcast %union.anon* %1923 to i64*
  %1924 = load i64, i64* %RBP.i813
  %1925 = sub i64 %1924, 20
  %1926 = load i64, i64* %PC.i811
  %1927 = add i64 %1926, 3
  store i64 %1927, i64* %PC.i811
  %1928 = inttoptr i64 %1925 to i32*
  %1929 = load i32, i32* %1928
  %1930 = zext i32 %1929 to i64
  store i64 %1930, i64* %RCX.i812, align 8
  store %struct.Memory* %loadMem_41de9c, %struct.Memory** %MEMORY
  %loadMem_41de9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 1
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %EAX.i809 = bitcast %union.anon* %1936 to i32*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 15
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RBP.i810 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %RBP.i810
  %1941 = sub i64 %1940, 68
  %1942 = load i32, i32* %EAX.i809
  %1943 = zext i32 %1942 to i64
  %1944 = load i64, i64* %PC.i808
  %1945 = add i64 %1944, 3
  store i64 %1945, i64* %PC.i808
  %1946 = inttoptr i64 %1941 to i32*
  store i32 %1942, i32* %1946
  store %struct.Memory* %loadMem_41de9f, %struct.Memory** %MEMORY
  %loadMem_41dea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 5
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %ECX.i806 = bitcast %union.anon* %1952 to i32*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 1
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %RAX.i807 = bitcast %union.anon* %1955 to i64*
  %1956 = load i32, i32* %ECX.i806
  %1957 = zext i32 %1956 to i64
  %1958 = load i64, i64* %PC.i805
  %1959 = add i64 %1958, 2
  store i64 %1959, i64* %PC.i805
  %1960 = and i64 %1957, 4294967295
  store i64 %1960, i64* %RAX.i807, align 8
  store %struct.Memory* %loadMem_41dea2, %struct.Memory** %MEMORY
  %loadMem_41dea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 33
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1963 to i64*
  %1964 = load i64, i64* %PC.i804
  %1965 = add i64 %1964, 1
  store i64 %1965, i64* %PC.i804
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1968 = bitcast %union.anon* %1967 to i32*
  %1969 = load i32, i32* %1968, align 8
  %1970 = sext i32 %1969 to i64
  %1971 = lshr i64 %1970, 32
  store i64 %1971, i64* %1966, align 8
  store %struct.Memory* %loadMem_41dea4, %struct.Memory** %MEMORY
  %loadMem_41dea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 33
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %1974 to i64*
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 5
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %RCX.i802 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 15
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %RBP.i803 = bitcast %union.anon* %1980 to i64*
  %1981 = load i64, i64* %RBP.i803
  %1982 = sub i64 %1981, 68
  %1983 = load i64, i64* %PC.i801
  %1984 = add i64 %1983, 3
  store i64 %1984, i64* %PC.i801
  %1985 = inttoptr i64 %1982 to i32*
  %1986 = load i32, i32* %1985
  %1987 = zext i32 %1986 to i64
  store i64 %1987, i64* %RCX.i802, align 8
  store %struct.Memory* %loadMem_41dea5, %struct.Memory** %MEMORY
  %loadMem_41dea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 33
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %1990 to i64*
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 5
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %ECX.i796 = bitcast %union.anon* %1993 to i32*
  %1994 = load i32, i32* %ECX.i796
  %1995 = zext i32 %1994 to i64
  %1996 = load i64, i64* %PC.i795
  %1997 = add i64 %1996, 2
  store i64 %1997, i64* %PC.i795
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1999 = bitcast %union.anon* %1998 to i32*
  %2000 = load i32, i32* %1999, align 8
  %2001 = zext i32 %2000 to i64
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %2003 = bitcast %union.anon* %2002 to i32*
  %2004 = load i32, i32* %2003, align 8
  %2005 = zext i32 %2004 to i64
  %2006 = shl i64 %1995, 32
  %2007 = ashr exact i64 %2006, 32
  %2008 = shl i64 %2005, 32
  %2009 = or i64 %2008, %2001
  %2010 = sdiv i64 %2009, %2007
  %2011 = shl i64 %2010, 32
  %2012 = ashr exact i64 %2011, 32
  %2013 = icmp eq i64 %2010, %2012
  br i1 %2013, label %2018, label %2014

; <label>:2014:                                   ; preds = %block_41de97
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2016 = load i64, i64* %2015, align 8
  %2017 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2016, %struct.Memory* %loadMem_41dea8)
  br label %routine_idivl__ecx.exit797

; <label>:2018:                                   ; preds = %block_41de97
  %2019 = srem i64 %2009, %2007
  %2020 = getelementptr inbounds %union.anon, %union.anon* %1998, i64 0, i32 0
  %2021 = and i64 %2010, 4294967295
  store i64 %2021, i64* %2020, align 8
  %2022 = getelementptr inbounds %union.anon, %union.anon* %2002, i64 0, i32 0
  %2023 = and i64 %2019, 4294967295
  store i64 %2023, i64* %2022, align 8
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2024, align 1
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %2025, align 1
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2026, align 1
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2027, align 1
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2028, align 1
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2029, align 1
  br label %routine_idivl__ecx.exit797

routine_idivl__ecx.exit797:                       ; preds = %2014, %2018
  %2030 = phi %struct.Memory* [ %2017, %2014 ], [ %loadMem_41dea8, %2018 ]
  store %struct.Memory* %2030, %struct.Memory** %MEMORY
  %loadMem_41deaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 33
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %2033 to i64*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 1
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %EAX.i793 = bitcast %union.anon* %2036 to i32*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 15
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %RBP.i794 = bitcast %union.anon* %2039 to i64*
  %2040 = load i64, i64* %RBP.i794
  %2041 = sub i64 %2040, 20
  %2042 = load i32, i32* %EAX.i793
  %2043 = zext i32 %2042 to i64
  %2044 = load i64, i64* %PC.i792
  %2045 = add i64 %2044, 3
  store i64 %2045, i64* %PC.i792
  %2046 = inttoptr i64 %2041 to i32*
  store i32 %2042, i32* %2046
  store %struct.Memory* %loadMem_41deaa, %struct.Memory** %MEMORY
  %loadMem_41dead = load %struct.Memory*, %struct.Memory** %MEMORY
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 33
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %2049 to i64*
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2051 = getelementptr inbounds %struct.GPR, %struct.GPR* %2050, i32 0, i32 1
  %2052 = getelementptr inbounds %struct.Reg, %struct.Reg* %2051, i32 0, i32 0
  %RAX.i790 = bitcast %union.anon* %2052 to i64*
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2054 = getelementptr inbounds %struct.GPR, %struct.GPR* %2053, i32 0, i32 15
  %2055 = getelementptr inbounds %struct.Reg, %struct.Reg* %2054, i32 0, i32 0
  %RBP.i791 = bitcast %union.anon* %2055 to i64*
  %2056 = load i64, i64* %RBP.i791
  %2057 = sub i64 %2056, 16
  %2058 = load i64, i64* %PC.i789
  %2059 = add i64 %2058, 3
  store i64 %2059, i64* %PC.i789
  %2060 = inttoptr i64 %2057 to i32*
  %2061 = load i32, i32* %2060
  %2062 = zext i32 %2061 to i64
  store i64 %2062, i64* %RAX.i790, align 8
  store %struct.Memory* %loadMem_41dead, %struct.Memory** %MEMORY
  %loadMem_41deb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 33
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 1
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %RAX.i788 = bitcast %union.anon* %2068 to i64*
  %2069 = load i64, i64* %RAX.i788
  %2070 = load i64, i64* %PC.i787
  %2071 = add i64 %2070, 3
  store i64 %2071, i64* %PC.i787
  %2072 = trunc i64 %2069 to i32
  %2073 = add i32 1, %2072
  %2074 = zext i32 %2073 to i64
  store i64 %2074, i64* %RAX.i788, align 8
  %2075 = icmp ult i32 %2073, %2072
  %2076 = icmp ult i32 %2073, 1
  %2077 = or i1 %2075, %2076
  %2078 = zext i1 %2077 to i8
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2078, i8* %2079, align 1
  %2080 = and i32 %2073, 255
  %2081 = call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2084, i8* %2085, align 1
  %2086 = xor i64 1, %2069
  %2087 = trunc i64 %2086 to i32
  %2088 = xor i32 %2087, %2073
  %2089 = lshr i32 %2088, 4
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2091, i8* %2092, align 1
  %2093 = icmp eq i32 %2073, 0
  %2094 = zext i1 %2093 to i8
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2094, i8* %2095, align 1
  %2096 = lshr i32 %2073, 31
  %2097 = trunc i32 %2096 to i8
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2097, i8* %2098, align 1
  %2099 = lshr i32 %2072, 31
  %2100 = xor i32 %2096, %2099
  %2101 = add i32 %2100, %2096
  %2102 = icmp eq i32 %2101, 2
  %2103 = zext i1 %2102 to i8
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2103, i8* %2104, align 1
  store %struct.Memory* %loadMem_41deb0, %struct.Memory** %MEMORY
  %loadMem_41deb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 1
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %EAX.i785 = bitcast %union.anon* %2110 to i32*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 15
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RBP.i786 = bitcast %union.anon* %2113 to i64*
  %2114 = load i64, i64* %RBP.i786
  %2115 = sub i64 %2114, 16
  %2116 = load i32, i32* %EAX.i785
  %2117 = zext i32 %2116 to i64
  %2118 = load i64, i64* %PC.i784
  %2119 = add i64 %2118, 3
  store i64 %2119, i64* %PC.i784
  %2120 = inttoptr i64 %2115 to i32*
  store i32 %2116, i32* %2120
  store %struct.Memory* %loadMem_41deb3, %struct.Memory** %MEMORY
  %loadMem_41deb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %2123 to i64*
  %2124 = load i64, i64* %PC.i783
  %2125 = add i64 %2124, -41
  %2126 = load i64, i64* %PC.i783
  %2127 = add i64 %2126, 5
  store i64 %2127, i64* %PC.i783
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2125, i64* %2128, align 8
  store %struct.Memory* %loadMem_41deb6, %struct.Memory** %MEMORY
  br label %block_.L_41de8d

block_.L_41debb:                                  ; preds = %block_.L_41de8d
  %loadMem_41debb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 1
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RAX.i781 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 15
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %2137 to i64*
  %2138 = load i64, i64* %RBP.i782
  %2139 = sub i64 %2138, 16
  %2140 = load i64, i64* %PC.i780
  %2141 = add i64 %2140, 3
  store i64 %2141, i64* %PC.i780
  %2142 = inttoptr i64 %2139 to i32*
  %2143 = load i32, i32* %2142
  %2144 = zext i32 %2143 to i64
  store i64 %2144, i64* %RAX.i781, align 8
  store %struct.Memory* %loadMem_41debb, %struct.Memory** %MEMORY
  %loadMem_41debe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 33
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %2147 to i64*
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 1
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %EAX.i778 = bitcast %union.anon* %2150 to i32*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 15
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %2153 to i64*
  %2154 = load i64, i64* %RBP.i779
  %2155 = sub i64 %2154, 44
  %2156 = load i32, i32* %EAX.i778
  %2157 = zext i32 %2156 to i64
  %2158 = load i64, i64* %PC.i777
  %2159 = add i64 %2158, 3
  store i64 %2159, i64* %PC.i777
  %2160 = inttoptr i64 %2155 to i32*
  store i32 %2156, i32* %2160
  store %struct.Memory* %loadMem_41debe, %struct.Memory** %MEMORY
  %loadMem_41dec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 33
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 1
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RAX.i775 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 15
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %2169 to i64*
  %2170 = load i64, i64* %RBP.i776
  %2171 = sub i64 %2170, 16
  %2172 = load i64, i64* %PC.i774
  %2173 = add i64 %2172, 3
  store i64 %2173, i64* %PC.i774
  %2174 = inttoptr i64 %2171 to i32*
  %2175 = load i32, i32* %2174
  %2176 = zext i32 %2175 to i64
  store i64 %2176, i64* %RAX.i775, align 8
  store %struct.Memory* %loadMem_41dec1, %struct.Memory** %MEMORY
  %loadMem_41dec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 1
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %RAX.i773 = bitcast %union.anon* %2182 to i64*
  %2183 = load i64, i64* %RAX.i773
  %2184 = load i64, i64* %PC.i772
  %2185 = add i64 %2184, 3
  store i64 %2185, i64* %PC.i772
  %2186 = trunc i64 %2183 to i32
  %2187 = add i32 1, %2186
  %2188 = zext i32 %2187 to i64
  store i64 %2188, i64* %RAX.i773, align 8
  %2189 = icmp ult i32 %2187, %2186
  %2190 = icmp ult i32 %2187, 1
  %2191 = or i1 %2189, %2190
  %2192 = zext i1 %2191 to i8
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2192, i8* %2193, align 1
  %2194 = and i32 %2187, 255
  %2195 = call i32 @llvm.ctpop.i32(i32 %2194)
  %2196 = trunc i32 %2195 to i8
  %2197 = and i8 %2196, 1
  %2198 = xor i8 %2197, 1
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2198, i8* %2199, align 1
  %2200 = xor i64 1, %2183
  %2201 = trunc i64 %2200 to i32
  %2202 = xor i32 %2201, %2187
  %2203 = lshr i32 %2202, 4
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2205, i8* %2206, align 1
  %2207 = icmp eq i32 %2187, 0
  %2208 = zext i1 %2207 to i8
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2208, i8* %2209, align 1
  %2210 = lshr i32 %2187, 31
  %2211 = trunc i32 %2210 to i8
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2211, i8* %2212, align 1
  %2213 = lshr i32 %2186, 31
  %2214 = xor i32 %2210, %2213
  %2215 = add i32 %2214, %2210
  %2216 = icmp eq i32 %2215, 2
  %2217 = zext i1 %2216 to i8
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2217, i8* %2218, align 1
  store %struct.Memory* %loadMem_41dec4, %struct.Memory** %MEMORY
  %loadMem_41dec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 33
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 1
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %EAX.i770 = bitcast %union.anon* %2224 to i32*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 5
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %RCX.i771 = bitcast %union.anon* %2227 to i64*
  %2228 = load i32, i32* %EAX.i770
  %2229 = zext i32 %2228 to i64
  %2230 = load i64, i64* %PC.i769
  %2231 = add i64 %2230, 3
  store i64 %2231, i64* %PC.i769
  %2232 = shl i64 %2229, 32
  %2233 = ashr exact i64 %2232, 32
  store i64 %2233, i64* %RCX.i771, align 8
  store %struct.Memory* %loadMem_41dec7, %struct.Memory** %MEMORY
  %loadMem_41deca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 33
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %2236 to i64*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 5
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %RCX.i768 = bitcast %union.anon* %2239 to i64*
  %2240 = load i64, i64* %RCX.i768
  %2241 = load i64, i64* %PC.i767
  %2242 = add i64 %2241, 4
  store i64 %2242, i64* %PC.i767
  %2243 = shl i64 %2240, 1
  %2244 = icmp slt i64 %2243, 0
  %2245 = shl i64 %2243, 1
  store i64 %2245, i64* %RCX.i768, align 8
  %2246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2247 = zext i1 %2244 to i8
  store i8 %2247, i8* %2246, align 1
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2249 = trunc i64 %2245 to i32
  %2250 = and i32 %2249, 254
  %2251 = call i32 @llvm.ctpop.i32(i32 %2250)
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = xor i8 %2253, 1
  store i8 %2254, i8* %2248, align 1
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2255, align 1
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2257 = icmp eq i64 %2245, 0
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %2256, align 1
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2260 = lshr i64 %2245, 63
  %2261 = trunc i64 %2260 to i8
  store i8 %2261, i8* %2259, align 1
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2262, align 1
  store %struct.Memory* %loadMem_41deca, %struct.Memory** %MEMORY
  %loadMem_41dece = load %struct.Memory*, %struct.Memory** %MEMORY
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 33
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %2265 to i64*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 5
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %RCX.i765 = bitcast %union.anon* %2268 to i64*
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 11
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %RDI.i766 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %RCX.i765
  %2273 = load i64, i64* %PC.i764
  %2274 = add i64 %2273, 3
  store i64 %2274, i64* %PC.i764
  store i64 %2272, i64* %RDI.i766, align 8
  store %struct.Memory* %loadMem_41dece, %struct.Memory** %MEMORY
  %loadMem1_41ded1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 33
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %2277 to i64*
  %2278 = load i64, i64* %PC.i763
  %2279 = add i64 %2278, -118145
  %2280 = load i64, i64* %PC.i763
  %2281 = add i64 %2280, 5
  %2282 = load i64, i64* %PC.i763
  %2283 = add i64 %2282, 5
  store i64 %2283, i64* %PC.i763
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2285 = load i64, i64* %2284, align 8
  %2286 = add i64 %2285, -8
  %2287 = inttoptr i64 %2286 to i64*
  store i64 %2281, i64* %2287
  store i64 %2286, i64* %2284, align 8
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2279, i64* %2288, align 8
  store %struct.Memory* %loadMem1_41ded1, %struct.Memory** %MEMORY
  %loadMem2_41ded1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ded1 = load i64, i64* %3
  %2289 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %loadMem2_41ded1)
  store %struct.Memory* %2289, %struct.Memory** %MEMORY
  %loadMem_41ded6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 33
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %2292 to i64*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 7
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %EDX.i758 = bitcast %union.anon* %2295 to i32*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2297 = getelementptr inbounds %struct.GPR, %struct.GPR* %2296, i32 0, i32 7
  %2298 = getelementptr inbounds %struct.Reg, %struct.Reg* %2297, i32 0, i32 0
  %RDX.i759 = bitcast %union.anon* %2298 to i64*
  %2299 = load i64, i64* %RDX.i759
  %2300 = load i32, i32* %EDX.i758
  %2301 = zext i32 %2300 to i64
  %2302 = load i64, i64* %PC.i757
  %2303 = add i64 %2302, 2
  store i64 %2303, i64* %PC.i757
  %2304 = xor i64 %2301, %2299
  %2305 = trunc i64 %2304 to i32
  %2306 = and i64 %2304, 4294967295
  store i64 %2306, i64* %RDX.i759, align 8
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2307, align 1
  %2308 = and i32 %2305, 255
  %2309 = call i32 @llvm.ctpop.i32(i32 %2308)
  %2310 = trunc i32 %2309 to i8
  %2311 = and i8 %2310, 1
  %2312 = xor i8 %2311, 1
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2312, i8* %2313, align 1
  %2314 = icmp eq i32 %2305, 0
  %2315 = zext i1 %2314 to i8
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2315, i8* %2316, align 1
  %2317 = lshr i32 %2305, 31
  %2318 = trunc i32 %2317 to i8
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2318, i8* %2319, align 1
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2320, align 1
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2321, align 1
  store %struct.Memory* %loadMem_41ded6, %struct.Memory** %MEMORY
  %loadMem_41ded8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 33
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %2324 to i64*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2326 = getelementptr inbounds %struct.GPR, %struct.GPR* %2325, i32 0, i32 7
  %2327 = getelementptr inbounds %struct.Reg, %struct.Reg* %2326, i32 0, i32 0
  %EDX.i755 = bitcast %union.anon* %2327 to i32*
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 5
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %RCX.i756 = bitcast %union.anon* %2330 to i64*
  %2331 = load i32, i32* %EDX.i755
  %2332 = zext i32 %2331 to i64
  %2333 = load i64, i64* %PC.i754
  %2334 = add i64 %2333, 2
  store i64 %2334, i64* %PC.i754
  %2335 = and i64 %2332, 4294967295
  store i64 %2335, i64* %RCX.i756, align 8
  store %struct.Memory* %loadMem_41ded8, %struct.Memory** %MEMORY
  %loadMem_41deda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 33
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %2338 to i64*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 1
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %RAX.i752 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 15
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %2344 to i64*
  %2345 = load i64, i64* %RBP.i753
  %2346 = sub i64 %2345, 32
  %2347 = load i64, i64* %RAX.i752
  %2348 = load i64, i64* %PC.i751
  %2349 = add i64 %2348, 4
  store i64 %2349, i64* %PC.i751
  %2350 = inttoptr i64 %2346 to i64*
  store i64 %2347, i64* %2350
  store %struct.Memory* %loadMem_41deda, %struct.Memory** %MEMORY
  %loadMem_41dede = load %struct.Memory*, %struct.Memory** %MEMORY
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 33
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 1
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RAX.i749 = bitcast %union.anon* %2356 to i64*
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 5
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %RCX.i750 = bitcast %union.anon* %2359 to i64*
  %2360 = load i64, i64* %RCX.i750
  %2361 = load i64, i64* %RAX.i749
  %2362 = load i64, i64* %PC.i748
  %2363 = add i64 %2362, 3
  store i64 %2363, i64* %PC.i748
  %2364 = sub i64 %2360, %2361
  %2365 = icmp ult i64 %2360, %2361
  %2366 = zext i1 %2365 to i8
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2366, i8* %2367, align 1
  %2368 = trunc i64 %2364 to i32
  %2369 = and i32 %2368, 255
  %2370 = call i32 @llvm.ctpop.i32(i32 %2369)
  %2371 = trunc i32 %2370 to i8
  %2372 = and i8 %2371, 1
  %2373 = xor i8 %2372, 1
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2373, i8* %2374, align 1
  %2375 = xor i64 %2361, %2360
  %2376 = xor i64 %2375, %2364
  %2377 = lshr i64 %2376, 4
  %2378 = trunc i64 %2377 to i8
  %2379 = and i8 %2378, 1
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2379, i8* %2380, align 1
  %2381 = icmp eq i64 %2364, 0
  %2382 = zext i1 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2382, i8* %2383, align 1
  %2384 = lshr i64 %2364, 63
  %2385 = trunc i64 %2384 to i8
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2385, i8* %2386, align 1
  %2387 = lshr i64 %2360, 63
  %2388 = lshr i64 %2361, 63
  %2389 = xor i64 %2388, %2387
  %2390 = xor i64 %2384, %2387
  %2391 = add i64 %2390, %2389
  %2392 = icmp eq i64 %2391, 2
  %2393 = zext i1 %2392 to i8
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2393, i8* %2394, align 1
  store %struct.Memory* %loadMem_41dede, %struct.Memory** %MEMORY
  %loadMem_41dee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 33
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %2397 to i64*
  %2398 = load i64, i64* %PC.i747
  %2399 = add i64 %2398, 21
  %2400 = load i64, i64* %PC.i747
  %2401 = add i64 %2400, 6
  %2402 = load i64, i64* %PC.i747
  %2403 = add i64 %2402, 6
  store i64 %2403, i64* %PC.i747
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2405 = load i8, i8* %2404, align 1
  %2406 = icmp eq i8 %2405, 0
  %2407 = zext i1 %2406 to i8
  store i8 %2407, i8* %BRANCH_TAKEN, align 1
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2409 = select i1 %2406, i64 %2399, i64 %2401
  store i64 %2409, i64* %2408, align 8
  store %struct.Memory* %loadMem_41dee1, %struct.Memory** %MEMORY
  %loadBr_41dee1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dee1 = icmp eq i8 %loadBr_41dee1, 1
  br i1 %cmpBr_41dee1, label %block_.L_41def6, label %block_41dee7

block_41dee7:                                     ; preds = %block_.L_41debb
  %loadMem_41dee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 33
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %2412 to i64*
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 11
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %RDI.i746 = bitcast %union.anon* %2415 to i64*
  %2416 = load i64, i64* %PC.i745
  %2417 = add i64 %2416, 10
  store i64 %2417, i64* %PC.i745
  store i64 ptrtoint (%G__0x4bf5b7_type* @G__0x4bf5b7 to i64), i64* %RDI.i746, align 8
  store %struct.Memory* %loadMem_41dee7, %struct.Memory** %MEMORY
  %loadMem1_41def1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 33
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %2420 to i64*
  %2421 = load i64, i64* %PC.i744
  %2422 = add i64 %2421, 242943
  %2423 = load i64, i64* %PC.i744
  %2424 = add i64 %2423, 5
  %2425 = load i64, i64* %PC.i744
  %2426 = add i64 %2425, 5
  store i64 %2426, i64* %PC.i744
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2428 = load i64, i64* %2427, align 8
  %2429 = add i64 %2428, -8
  %2430 = inttoptr i64 %2429 to i64*
  store i64 %2424, i64* %2430
  store i64 %2429, i64* %2427, align 8
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2422, i64* %2431, align 8
  store %struct.Memory* %loadMem1_41def1, %struct.Memory** %MEMORY
  %loadMem2_41def1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41def1 = load i64, i64* %3
  %call2_41def1 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_41def1, %struct.Memory* %loadMem2_41def1)
  store %struct.Memory* %call2_41def1, %struct.Memory** %MEMORY
  br label %block_.L_41def6

block_.L_41def6:                                  ; preds = %block_41dee7, %block_.L_41debb
  %loadMem_41def6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 1
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RAX.i742 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 15
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RBP.i743 = bitcast %union.anon* %2440 to i64*
  %2441 = load i64, i64* %RBP.i743
  %2442 = sub i64 %2441, 16
  %2443 = load i64, i64* %PC.i741
  %2444 = add i64 %2443, 3
  store i64 %2444, i64* %PC.i741
  %2445 = inttoptr i64 %2442 to i32*
  %2446 = load i32, i32* %2445
  %2447 = zext i32 %2446 to i64
  store i64 %2447, i64* %RAX.i742, align 8
  store %struct.Memory* %loadMem_41def6, %struct.Memory** %MEMORY
  %loadMem_41def9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 33
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %2450 to i64*
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 1
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %RAX.i740 = bitcast %union.anon* %2453 to i64*
  %2454 = load i64, i64* %RAX.i740
  %2455 = load i64, i64* %PC.i739
  %2456 = add i64 %2455, 3
  store i64 %2456, i64* %PC.i739
  %2457 = trunc i64 %2454 to i32
  %2458 = add i32 1, %2457
  %2459 = zext i32 %2458 to i64
  store i64 %2459, i64* %RAX.i740, align 8
  %2460 = icmp ult i32 %2458, %2457
  %2461 = icmp ult i32 %2458, 1
  %2462 = or i1 %2460, %2461
  %2463 = zext i1 %2462 to i8
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2463, i8* %2464, align 1
  %2465 = and i32 %2458, 255
  %2466 = call i32 @llvm.ctpop.i32(i32 %2465)
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  %2469 = xor i8 %2468, 1
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2469, i8* %2470, align 1
  %2471 = xor i64 1, %2454
  %2472 = trunc i64 %2471 to i32
  %2473 = xor i32 %2472, %2458
  %2474 = lshr i32 %2473, 4
  %2475 = trunc i32 %2474 to i8
  %2476 = and i8 %2475, 1
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2476, i8* %2477, align 1
  %2478 = icmp eq i32 %2458, 0
  %2479 = zext i1 %2478 to i8
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2479, i8* %2480, align 1
  %2481 = lshr i32 %2458, 31
  %2482 = trunc i32 %2481 to i8
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2482, i8* %2483, align 1
  %2484 = lshr i32 %2457, 31
  %2485 = xor i32 %2481, %2484
  %2486 = add i32 %2485, %2481
  %2487 = icmp eq i32 %2486, 2
  %2488 = zext i1 %2487 to i8
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2488, i8* %2489, align 1
  store %struct.Memory* %loadMem_41def9, %struct.Memory** %MEMORY
  %loadMem_41defc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 33
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 1
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %EAX.i737 = bitcast %union.anon* %2495 to i32*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 5
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %RCX.i738 = bitcast %union.anon* %2498 to i64*
  %2499 = load i32, i32* %EAX.i737
  %2500 = zext i32 %2499 to i64
  %2501 = load i64, i64* %PC.i736
  %2502 = add i64 %2501, 3
  store i64 %2502, i64* %PC.i736
  %2503 = shl i64 %2500, 32
  %2504 = ashr exact i64 %2503, 32
  store i64 %2504, i64* %RCX.i738, align 8
  store %struct.Memory* %loadMem_41defc, %struct.Memory** %MEMORY
  %loadMem_41deff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 33
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %2507 to i64*
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 5
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %RCX.i735 = bitcast %union.anon* %2510 to i64*
  %2511 = load i64, i64* %RCX.i735
  %2512 = load i64, i64* %PC.i734
  %2513 = add i64 %2512, 4
  store i64 %2513, i64* %PC.i734
  %2514 = shl i64 %2511, 1
  %2515 = icmp slt i64 %2514, 0
  %2516 = shl i64 %2514, 1
  store i64 %2516, i64* %RCX.i735, align 8
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2518 = zext i1 %2515 to i8
  store i8 %2518, i8* %2517, align 1
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2520 = trunc i64 %2516 to i32
  %2521 = and i32 %2520, 254
  %2522 = call i32 @llvm.ctpop.i32(i32 %2521)
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  %2525 = xor i8 %2524, 1
  store i8 %2525, i8* %2519, align 1
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2526, align 1
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2528 = icmp eq i64 %2516, 0
  %2529 = zext i1 %2528 to i8
  store i8 %2529, i8* %2527, align 1
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2531 = lshr i64 %2516, 63
  %2532 = trunc i64 %2531 to i8
  store i8 %2532, i8* %2530, align 1
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2533, align 1
  store %struct.Memory* %loadMem_41deff, %struct.Memory** %MEMORY
  %loadMem_41df03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 33
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %2536 to i64*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 5
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %RCX.i732 = bitcast %union.anon* %2539 to i64*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 11
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RDI.i733 = bitcast %union.anon* %2542 to i64*
  %2543 = load i64, i64* %RCX.i732
  %2544 = load i64, i64* %PC.i731
  %2545 = add i64 %2544, 3
  store i64 %2545, i64* %PC.i731
  store i64 %2543, i64* %RDI.i733, align 8
  store %struct.Memory* %loadMem_41df03, %struct.Memory** %MEMORY
  %loadMem1_41df06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 33
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %2548 to i64*
  %2549 = load i64, i64* %PC.i730
  %2550 = add i64 %2549, -118198
  %2551 = load i64, i64* %PC.i730
  %2552 = add i64 %2551, 5
  %2553 = load i64, i64* %PC.i730
  %2554 = add i64 %2553, 5
  store i64 %2554, i64* %PC.i730
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2556 = load i64, i64* %2555, align 8
  %2557 = add i64 %2556, -8
  %2558 = inttoptr i64 %2557 to i64*
  store i64 %2552, i64* %2558
  store i64 %2557, i64* %2555, align 8
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2550, i64* %2559, align 8
  store %struct.Memory* %loadMem1_41df06, %struct.Memory** %MEMORY
  %loadMem2_41df06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41df06 = load i64, i64* %3
  %2560 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %loadMem2_41df06)
  store %struct.Memory* %2560, %struct.Memory** %MEMORY
  %loadMem_41df0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 33
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %2563 to i64*
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 7
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %EDX.i726 = bitcast %union.anon* %2566 to i32*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 7
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RDX.i727 = bitcast %union.anon* %2569 to i64*
  %2570 = load i64, i64* %RDX.i727
  %2571 = load i32, i32* %EDX.i726
  %2572 = zext i32 %2571 to i64
  %2573 = load i64, i64* %PC.i725
  %2574 = add i64 %2573, 2
  store i64 %2574, i64* %PC.i725
  %2575 = xor i64 %2572, %2570
  %2576 = trunc i64 %2575 to i32
  %2577 = and i64 %2575, 4294967295
  store i64 %2577, i64* %RDX.i727, align 8
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2578, align 1
  %2579 = and i32 %2576, 255
  %2580 = call i32 @llvm.ctpop.i32(i32 %2579)
  %2581 = trunc i32 %2580 to i8
  %2582 = and i8 %2581, 1
  %2583 = xor i8 %2582, 1
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2583, i8* %2584, align 1
  %2585 = icmp eq i32 %2576, 0
  %2586 = zext i1 %2585 to i8
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2586, i8* %2587, align 1
  %2588 = lshr i32 %2576, 31
  %2589 = trunc i32 %2588 to i8
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2589, i8* %2590, align 1
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2591, align 1
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2592, align 1
  store %struct.Memory* %loadMem_41df0b, %struct.Memory** %MEMORY
  %loadMem_41df0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 33
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %2595 to i64*
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2597 = getelementptr inbounds %struct.GPR, %struct.GPR* %2596, i32 0, i32 7
  %2598 = getelementptr inbounds %struct.Reg, %struct.Reg* %2597, i32 0, i32 0
  %EDX.i723 = bitcast %union.anon* %2598 to i32*
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 5
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %RCX.i724 = bitcast %union.anon* %2601 to i64*
  %2602 = load i32, i32* %EDX.i723
  %2603 = zext i32 %2602 to i64
  %2604 = load i64, i64* %PC.i722
  %2605 = add i64 %2604, 2
  store i64 %2605, i64* %PC.i722
  %2606 = and i64 %2603, 4294967295
  store i64 %2606, i64* %RCX.i724, align 8
  store %struct.Memory* %loadMem_41df0d, %struct.Memory** %MEMORY
  %loadMem_41df0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 33
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 1
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RAX.i720 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 15
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %2615 to i64*
  %2616 = load i64, i64* %RBP.i721
  %2617 = sub i64 %2616, 40
  %2618 = load i64, i64* %RAX.i720
  %2619 = load i64, i64* %PC.i719
  %2620 = add i64 %2619, 4
  store i64 %2620, i64* %PC.i719
  %2621 = inttoptr i64 %2617 to i64*
  store i64 %2618, i64* %2621
  store %struct.Memory* %loadMem_41df0f, %struct.Memory** %MEMORY
  %loadMem_41df13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 33
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %2624 to i64*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 1
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %RAX.i717 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 5
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RCX.i718 = bitcast %union.anon* %2630 to i64*
  %2631 = load i64, i64* %RCX.i718
  %2632 = load i64, i64* %RAX.i717
  %2633 = load i64, i64* %PC.i716
  %2634 = add i64 %2633, 3
  store i64 %2634, i64* %PC.i716
  %2635 = sub i64 %2631, %2632
  %2636 = icmp ult i64 %2631, %2632
  %2637 = zext i1 %2636 to i8
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2637, i8* %2638, align 1
  %2639 = trunc i64 %2635 to i32
  %2640 = and i32 %2639, 255
  %2641 = call i32 @llvm.ctpop.i32(i32 %2640)
  %2642 = trunc i32 %2641 to i8
  %2643 = and i8 %2642, 1
  %2644 = xor i8 %2643, 1
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2644, i8* %2645, align 1
  %2646 = xor i64 %2632, %2631
  %2647 = xor i64 %2646, %2635
  %2648 = lshr i64 %2647, 4
  %2649 = trunc i64 %2648 to i8
  %2650 = and i8 %2649, 1
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2650, i8* %2651, align 1
  %2652 = icmp eq i64 %2635, 0
  %2653 = zext i1 %2652 to i8
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2653, i8* %2654, align 1
  %2655 = lshr i64 %2635, 63
  %2656 = trunc i64 %2655 to i8
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2656, i8* %2657, align 1
  %2658 = lshr i64 %2631, 63
  %2659 = lshr i64 %2632, 63
  %2660 = xor i64 %2659, %2658
  %2661 = xor i64 %2655, %2658
  %2662 = add i64 %2661, %2660
  %2663 = icmp eq i64 %2662, 2
  %2664 = zext i1 %2663 to i8
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2664, i8* %2665, align 1
  store %struct.Memory* %loadMem_41df13, %struct.Memory** %MEMORY
  %loadMem_41df16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 33
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %2668 to i64*
  %2669 = load i64, i64* %PC.i715
  %2670 = add i64 %2669, 21
  %2671 = load i64, i64* %PC.i715
  %2672 = add i64 %2671, 6
  %2673 = load i64, i64* %PC.i715
  %2674 = add i64 %2673, 6
  store i64 %2674, i64* %PC.i715
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2676 = load i8, i8* %2675, align 1
  %2677 = icmp eq i8 %2676, 0
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %BRANCH_TAKEN, align 1
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2680 = select i1 %2677, i64 %2670, i64 %2672
  store i64 %2680, i64* %2679, align 8
  store %struct.Memory* %loadMem_41df16, %struct.Memory** %MEMORY
  %loadBr_41df16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41df16 = icmp eq i8 %loadBr_41df16, 1
  br i1 %cmpBr_41df16, label %block_.L_41df2b, label %block_41df1c

block_41df1c:                                     ; preds = %block_.L_41def6
  %loadMem_41df1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 33
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 11
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %RDI.i714 = bitcast %union.anon* %2686 to i64*
  %2687 = load i64, i64* %PC.i713
  %2688 = add i64 %2687, 10
  store i64 %2688, i64* %PC.i713
  store i64 ptrtoint (%G__0x4bf5d5_type* @G__0x4bf5d5 to i64), i64* %RDI.i714, align 8
  store %struct.Memory* %loadMem_41df1c, %struct.Memory** %MEMORY
  %loadMem1_41df26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 33
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %2691 to i64*
  %2692 = load i64, i64* %PC.i712
  %2693 = add i64 %2692, 242890
  %2694 = load i64, i64* %PC.i712
  %2695 = add i64 %2694, 5
  %2696 = load i64, i64* %PC.i712
  %2697 = add i64 %2696, 5
  store i64 %2697, i64* %PC.i712
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2699 = load i64, i64* %2698, align 8
  %2700 = add i64 %2699, -8
  %2701 = inttoptr i64 %2700 to i64*
  store i64 %2695, i64* %2701
  store i64 %2700, i64* %2698, align 8
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2693, i64* %2702, align 8
  store %struct.Memory* %loadMem1_41df26, %struct.Memory** %MEMORY
  %loadMem2_41df26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41df26 = load i64, i64* %3
  %call2_41df26 = call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* %0, i64 %loadPC_41df26, %struct.Memory* %loadMem2_41df26)
  store %struct.Memory* %call2_41df26, %struct.Memory** %MEMORY
  br label %block_.L_41df2b

block_.L_41df2b:                                  ; preds = %block_41df1c, %block_.L_41def6
  %loadMem_41df2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 33
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %2705 to i64*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 15
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %2708 to i64*
  %2709 = load i64, i64* %RBP.i711
  %2710 = sub i64 %2709, 56
  %2711 = load i64, i64* %PC.i710
  %2712 = add i64 %2711, 7
  store i64 %2712, i64* %PC.i710
  %2713 = inttoptr i64 %2710 to i32*
  store i32 0, i32* %2713
  store %struct.Memory* %loadMem_41df2b, %struct.Memory** %MEMORY
  br label %block_.L_41df32

block_.L_41df32:                                  ; preds = %block_41df49, %block_.L_41df2b
  %loadMem_41df32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 1
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RAX.i708 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 15
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %2722 to i64*
  %2723 = load i64, i64* %RBP.i709
  %2724 = sub i64 %2723, 56
  %2725 = load i64, i64* %PC.i707
  %2726 = add i64 %2725, 3
  store i64 %2726, i64* %PC.i707
  %2727 = inttoptr i64 %2724 to i32*
  %2728 = load i32, i32* %2727
  %2729 = zext i32 %2728 to i64
  store i64 %2729, i64* %RAX.i708, align 8
  store %struct.Memory* %loadMem_41df32, %struct.Memory** %MEMORY
  %loadMem_41df35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 33
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 5
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %RCX.i706 = bitcast %union.anon* %2735 to i64*
  %2736 = load i64, i64* %PC.i705
  %2737 = add i64 %2736, 8
  store i64 %2737, i64* %PC.i705
  %2738 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %2738, i64* %RCX.i706, align 8
  store %struct.Memory* %loadMem_41df35, %struct.Memory** %MEMORY
  %loadMem_41df3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 33
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %2741 to i64*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 1
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %EAX.i703 = bitcast %union.anon* %2744 to i32*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 5
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RCX.i704 = bitcast %union.anon* %2747 to i64*
  %2748 = load i32, i32* %EAX.i703
  %2749 = zext i32 %2748 to i64
  %2750 = load i64, i64* %RCX.i704
  %2751 = add i64 %2750, 1236
  %2752 = load i64, i64* %PC.i702
  %2753 = add i64 %2752, 6
  store i64 %2753, i64* %PC.i702
  %2754 = inttoptr i64 %2751 to i32*
  %2755 = load i32, i32* %2754
  %2756 = sub i32 %2748, %2755
  %2757 = icmp ult i32 %2748, %2755
  %2758 = zext i1 %2757 to i8
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2758, i8* %2759, align 1
  %2760 = and i32 %2756, 255
  %2761 = call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2764, i8* %2765, align 1
  %2766 = xor i32 %2755, %2748
  %2767 = xor i32 %2766, %2756
  %2768 = lshr i32 %2767, 4
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2770, i8* %2771, align 1
  %2772 = icmp eq i32 %2756, 0
  %2773 = zext i1 %2772 to i8
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2773, i8* %2774, align 1
  %2775 = lshr i32 %2756, 31
  %2776 = trunc i32 %2775 to i8
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2776, i8* %2777, align 1
  %2778 = lshr i32 %2748, 31
  %2779 = lshr i32 %2755, 31
  %2780 = xor i32 %2779, %2778
  %2781 = xor i32 %2775, %2778
  %2782 = add i32 %2781, %2780
  %2783 = icmp eq i32 %2782, 2
  %2784 = zext i1 %2783 to i8
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2784, i8* %2785, align 1
  store %struct.Memory* %loadMem_41df3d, %struct.Memory** %MEMORY
  %loadMem_41df43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %2788 to i64*
  %2789 = load i64, i64* %PC.i701
  %2790 = add i64 %2789, 71
  %2791 = load i64, i64* %PC.i701
  %2792 = add i64 %2791, 6
  %2793 = load i64, i64* %PC.i701
  %2794 = add i64 %2793, 6
  store i64 %2794, i64* %PC.i701
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2796 = load i8, i8* %2795, align 1
  %2797 = icmp ne i8 %2796, 0
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2799 = load i8, i8* %2798, align 1
  %2800 = icmp ne i8 %2799, 0
  %2801 = xor i1 %2797, %2800
  %2802 = xor i1 %2801, true
  %2803 = zext i1 %2802 to i8
  store i8 %2803, i8* %BRANCH_TAKEN, align 1
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2805 = select i1 %2801, i64 %2792, i64 %2790
  store i64 %2805, i64* %2804, align 8
  store %struct.Memory* %loadMem_41df43, %struct.Memory** %MEMORY
  %loadBr_41df43 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41df43 = icmp eq i8 %loadBr_41df43, 1
  br i1 %cmpBr_41df43, label %block_.L_41df8a, label %block_41df49

block_41df49:                                     ; preds = %block_.L_41df32
  %loadMem_41df49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 33
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %2808 to i64*
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 1
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %RAX.i700 = bitcast %union.anon* %2811 to i64*
  %2812 = load i64, i64* %PC.i699
  %2813 = add i64 %2812, 8
  store i64 %2813, i64* %PC.i699
  %2814 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %2814, i64* %RAX.i700, align 8
  store %struct.Memory* %loadMem_41df49, %struct.Memory** %MEMORY
  %loadMem_41df51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 33
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 5
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %RCX.i697 = bitcast %union.anon* %2820 to i64*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 15
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %RBP.i698 = bitcast %union.anon* %2823 to i64*
  %2824 = load i64, i64* %RBP.i698
  %2825 = sub i64 %2824, 56
  %2826 = load i64, i64* %PC.i696
  %2827 = add i64 %2826, 4
  store i64 %2827, i64* %PC.i696
  %2828 = inttoptr i64 %2825 to i32*
  %2829 = load i32, i32* %2828
  %2830 = sext i32 %2829 to i64
  store i64 %2830, i64* %RCX.i697, align 8
  store %struct.Memory* %loadMem_41df51, %struct.Memory** %MEMORY
  %loadMem_41df55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 33
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %2833 to i64*
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 5
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %RCX.i695 = bitcast %union.anon* %2836 to i64*
  %2837 = load i64, i64* %RCX.i695
  %2838 = load i64, i64* %PC.i694
  %2839 = add i64 %2838, 4
  store i64 %2839, i64* %PC.i694
  %2840 = sext i64 %2837 to i128
  %2841 = and i128 %2840, -18446744073709551616
  %2842 = zext i64 %2837 to i128
  %2843 = or i128 %2841, %2842
  %2844 = mul i128 24, %2843
  %2845 = trunc i128 %2844 to i64
  store i64 %2845, i64* %RCX.i695, align 8
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
  store %struct.Memory* %loadMem_41df55, %struct.Memory** %MEMORY
  %loadMem_41df59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 1
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %2868 to i64*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 5
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RCX.i693 = bitcast %union.anon* %2871 to i64*
  %2872 = load i64, i64* %RAX.i692
  %2873 = load i64, i64* %RCX.i693
  %2874 = load i64, i64* %PC.i691
  %2875 = add i64 %2874, 3
  store i64 %2875, i64* %PC.i691
  %2876 = add i64 %2873, %2872
  store i64 %2876, i64* %RAX.i692, align 8
  %2877 = icmp ult i64 %2876, %2872
  %2878 = icmp ult i64 %2876, %2873
  %2879 = or i1 %2877, %2878
  %2880 = zext i1 %2879 to i8
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2880, i8* %2881, align 1
  %2882 = trunc i64 %2876 to i32
  %2883 = and i32 %2882, 255
  %2884 = call i32 @llvm.ctpop.i32(i32 %2883)
  %2885 = trunc i32 %2884 to i8
  %2886 = and i8 %2885, 1
  %2887 = xor i8 %2886, 1
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2887, i8* %2888, align 1
  %2889 = xor i64 %2873, %2872
  %2890 = xor i64 %2889, %2876
  %2891 = lshr i64 %2890, 4
  %2892 = trunc i64 %2891 to i8
  %2893 = and i8 %2892, 1
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2893, i8* %2894, align 1
  %2895 = icmp eq i64 %2876, 0
  %2896 = zext i1 %2895 to i8
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2896, i8* %2897, align 1
  %2898 = lshr i64 %2876, 63
  %2899 = trunc i64 %2898 to i8
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2899, i8* %2900, align 1
  %2901 = lshr i64 %2872, 63
  %2902 = lshr i64 %2873, 63
  %2903 = xor i64 %2898, %2901
  %2904 = xor i64 %2898, %2902
  %2905 = add i64 %2903, %2904
  %2906 = icmp eq i64 %2905, 2
  %2907 = zext i1 %2906 to i8
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2907, i8* %2908, align 1
  store %struct.Memory* %loadMem_41df59, %struct.Memory** %MEMORY
  %loadMem_41df5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2910 = getelementptr inbounds %struct.GPR, %struct.GPR* %2909, i32 0, i32 33
  %2911 = getelementptr inbounds %struct.Reg, %struct.Reg* %2910, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %2911 to i64*
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 1
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %RAX.i690 = bitcast %union.anon* %2914 to i64*
  %2915 = load i64, i64* %RAX.i690
  %2916 = add i64 %2915, 4
  %2917 = load i64, i64* %PC.i689
  %2918 = add i64 %2917, 7
  store i64 %2918, i64* %PC.i689
  %2919 = inttoptr i64 %2916 to i32*
  store i32 0, i32* %2919
  store %struct.Memory* %loadMem_41df5c, %struct.Memory** %MEMORY
  %loadMem_41df63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 33
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 1
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %RAX.i688 = bitcast %union.anon* %2925 to i64*
  %2926 = load i64, i64* %PC.i687
  %2927 = add i64 %2926, 8
  store i64 %2927, i64* %PC.i687
  %2928 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %2928, i64* %RAX.i688, align 8
  store %struct.Memory* %loadMem_41df63, %struct.Memory** %MEMORY
  %loadMem_41df6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 33
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2931 to i64*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 5
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %RCX.i685 = bitcast %union.anon* %2934 to i64*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 15
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %2937 to i64*
  %2938 = load i64, i64* %RBP.i686
  %2939 = sub i64 %2938, 56
  %2940 = load i64, i64* %PC.i684
  %2941 = add i64 %2940, 4
  store i64 %2941, i64* %PC.i684
  %2942 = inttoptr i64 %2939 to i32*
  %2943 = load i32, i32* %2942
  %2944 = sext i32 %2943 to i64
  store i64 %2944, i64* %RCX.i685, align 8
  store %struct.Memory* %loadMem_41df6b, %struct.Memory** %MEMORY
  %loadMem_41df6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 33
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2947 to i64*
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 5
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %RCX.i683 = bitcast %union.anon* %2950 to i64*
  %2951 = load i64, i64* %RCX.i683
  %2952 = load i64, i64* %PC.i682
  %2953 = add i64 %2952, 4
  store i64 %2953, i64* %PC.i682
  %2954 = sext i64 %2951 to i128
  %2955 = and i128 %2954, -18446744073709551616
  %2956 = zext i64 %2951 to i128
  %2957 = or i128 %2955, %2956
  %2958 = mul i128 24, %2957
  %2959 = trunc i128 %2958 to i64
  store i64 %2959, i64* %RCX.i683, align 8
  %2960 = sext i64 %2959 to i128
  %2961 = icmp ne i128 %2960, %2958
  %2962 = zext i1 %2961 to i8
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2962, i8* %2963, align 1
  %2964 = trunc i128 %2958 to i32
  %2965 = and i32 %2964, 255
  %2966 = call i32 @llvm.ctpop.i32(i32 %2965)
  %2967 = trunc i32 %2966 to i8
  %2968 = and i8 %2967, 1
  %2969 = xor i8 %2968, 1
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2969, i8* %2970, align 1
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2971, align 1
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2972, align 1
  %2973 = lshr i64 %2959, 63
  %2974 = trunc i64 %2973 to i8
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2974, i8* %2975, align 1
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2962, i8* %2976, align 1
  store %struct.Memory* %loadMem_41df6f, %struct.Memory** %MEMORY
  %loadMem_41df73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 33
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2979 to i64*
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 1
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 5
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RCX.i681 = bitcast %union.anon* %2985 to i64*
  %2986 = load i64, i64* %RAX.i680
  %2987 = load i64, i64* %RCX.i681
  %2988 = load i64, i64* %PC.i679
  %2989 = add i64 %2988, 3
  store i64 %2989, i64* %PC.i679
  %2990 = add i64 %2987, %2986
  store i64 %2990, i64* %RAX.i680, align 8
  %2991 = icmp ult i64 %2990, %2986
  %2992 = icmp ult i64 %2990, %2987
  %2993 = or i1 %2991, %2992
  %2994 = zext i1 %2993 to i8
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2994, i8* %2995, align 1
  %2996 = trunc i64 %2990 to i32
  %2997 = and i32 %2996, 255
  %2998 = call i32 @llvm.ctpop.i32(i32 %2997)
  %2999 = trunc i32 %2998 to i8
  %3000 = and i8 %2999, 1
  %3001 = xor i8 %3000, 1
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3001, i8* %3002, align 1
  %3003 = xor i64 %2987, %2986
  %3004 = xor i64 %3003, %2990
  %3005 = lshr i64 %3004, 4
  %3006 = trunc i64 %3005 to i8
  %3007 = and i8 %3006, 1
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3007, i8* %3008, align 1
  %3009 = icmp eq i64 %2990, 0
  %3010 = zext i1 %3009 to i8
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3010, i8* %3011, align 1
  %3012 = lshr i64 %2990, 63
  %3013 = trunc i64 %3012 to i8
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3013, i8* %3014, align 1
  %3015 = lshr i64 %2986, 63
  %3016 = lshr i64 %2987, 63
  %3017 = xor i64 %3012, %3015
  %3018 = xor i64 %3012, %3016
  %3019 = add i64 %3017, %3018
  %3020 = icmp eq i64 %3019, 2
  %3021 = zext i1 %3020 to i8
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3021, i8* %3022, align 1
  store %struct.Memory* %loadMem_41df73, %struct.Memory** %MEMORY
  %loadMem_41df76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3024 = getelementptr inbounds %struct.GPR, %struct.GPR* %3023, i32 0, i32 33
  %3025 = getelementptr inbounds %struct.Reg, %struct.Reg* %3024, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %3025 to i64*
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 1
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %RAX.i678 = bitcast %union.anon* %3028 to i64*
  %3029 = load i64, i64* %RAX.i678
  %3030 = load i64, i64* %PC.i677
  %3031 = add i64 %3030, 6
  store i64 %3031, i64* %PC.i677
  %3032 = inttoptr i64 %3029 to i32*
  store i32 1, i32* %3032
  store %struct.Memory* %loadMem_41df76, %struct.Memory** %MEMORY
  %loadMem_41df7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 33
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %3035 to i64*
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 1
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %RAX.i675 = bitcast %union.anon* %3038 to i64*
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 15
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %RBP.i676 = bitcast %union.anon* %3041 to i64*
  %3042 = load i64, i64* %RBP.i676
  %3043 = sub i64 %3042, 56
  %3044 = load i64, i64* %PC.i674
  %3045 = add i64 %3044, 3
  store i64 %3045, i64* %PC.i674
  %3046 = inttoptr i64 %3043 to i32*
  %3047 = load i32, i32* %3046
  %3048 = zext i32 %3047 to i64
  store i64 %3048, i64* %RAX.i675, align 8
  store %struct.Memory* %loadMem_41df7c, %struct.Memory** %MEMORY
  %loadMem_41df7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 33
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 1
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %RAX.i673 = bitcast %union.anon* %3054 to i64*
  %3055 = load i64, i64* %RAX.i673
  %3056 = load i64, i64* %PC.i672
  %3057 = add i64 %3056, 3
  store i64 %3057, i64* %PC.i672
  %3058 = trunc i64 %3055 to i32
  %3059 = add i32 1, %3058
  %3060 = zext i32 %3059 to i64
  store i64 %3060, i64* %RAX.i673, align 8
  %3061 = icmp ult i32 %3059, %3058
  %3062 = icmp ult i32 %3059, 1
  %3063 = or i1 %3061, %3062
  %3064 = zext i1 %3063 to i8
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3064, i8* %3065, align 1
  %3066 = and i32 %3059, 255
  %3067 = call i32 @llvm.ctpop.i32(i32 %3066)
  %3068 = trunc i32 %3067 to i8
  %3069 = and i8 %3068, 1
  %3070 = xor i8 %3069, 1
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3070, i8* %3071, align 1
  %3072 = xor i64 1, %3055
  %3073 = trunc i64 %3072 to i32
  %3074 = xor i32 %3073, %3059
  %3075 = lshr i32 %3074, 4
  %3076 = trunc i32 %3075 to i8
  %3077 = and i8 %3076, 1
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3077, i8* %3078, align 1
  %3079 = icmp eq i32 %3059, 0
  %3080 = zext i1 %3079 to i8
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3080, i8* %3081, align 1
  %3082 = lshr i32 %3059, 31
  %3083 = trunc i32 %3082 to i8
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3083, i8* %3084, align 1
  %3085 = lshr i32 %3058, 31
  %3086 = xor i32 %3082, %3085
  %3087 = add i32 %3086, %3082
  %3088 = icmp eq i32 %3087, 2
  %3089 = zext i1 %3088 to i8
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3089, i8* %3090, align 1
  store %struct.Memory* %loadMem_41df7f, %struct.Memory** %MEMORY
  %loadMem_41df82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3092 = getelementptr inbounds %struct.GPR, %struct.GPR* %3091, i32 0, i32 33
  %3093 = getelementptr inbounds %struct.Reg, %struct.Reg* %3092, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %3093 to i64*
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 1
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %EAX.i670 = bitcast %union.anon* %3096 to i32*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 15
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %3099 to i64*
  %3100 = load i64, i64* %RBP.i671
  %3101 = sub i64 %3100, 56
  %3102 = load i32, i32* %EAX.i670
  %3103 = zext i32 %3102 to i64
  %3104 = load i64, i64* %PC.i669
  %3105 = add i64 %3104, 3
  store i64 %3105, i64* %PC.i669
  %3106 = inttoptr i64 %3101 to i32*
  store i32 %3102, i32* %3106
  store %struct.Memory* %loadMem_41df82, %struct.Memory** %MEMORY
  %loadMem_41df85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 33
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %3109 to i64*
  %3110 = load i64, i64* %PC.i668
  %3111 = add i64 %3110, -83
  %3112 = load i64, i64* %PC.i668
  %3113 = add i64 %3112, 5
  store i64 %3113, i64* %PC.i668
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3111, i64* %3114, align 8
  store %struct.Memory* %loadMem_41df85, %struct.Memory** %MEMORY
  br label %block_.L_41df32

block_.L_41df8a:                                  ; preds = %block_.L_41df32
  %loadMem_41df8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 33
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %3117 to i64*
  %3118 = load i64, i64* %PC.i667
  %3119 = add i64 %3118, 5
  %3120 = load i64, i64* %PC.i667
  %3121 = add i64 %3120, 5
  store i64 %3121, i64* %PC.i667
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3119, i64* %3122, align 8
  store %struct.Memory* %loadMem_41df8a, %struct.Memory** %MEMORY
  br label %block_.L_41df8f

block_.L_41df8f:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_41df8a
  %loadMem_41df8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 33
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %3125 to i64*
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 15
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %3128 to i64*
  %3129 = load i64, i64* %RBP.i666
  %3130 = sub i64 %3129, 52
  %3131 = load i64, i64* %PC.i665
  %3132 = add i64 %3131, 4
  store i64 %3132, i64* %PC.i665
  %3133 = inttoptr i64 %3130 to i32*
  %3134 = load i32, i32* %3133
  %3135 = sub i32 %3134, 2
  %3136 = icmp ult i32 %3134, 2
  %3137 = zext i1 %3136 to i8
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3137, i8* %3138, align 1
  %3139 = and i32 %3135, 255
  %3140 = call i32 @llvm.ctpop.i32(i32 %3139)
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  %3143 = xor i8 %3142, 1
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3143, i8* %3144, align 1
  %3145 = xor i32 %3134, 2
  %3146 = xor i32 %3145, %3135
  %3147 = lshr i32 %3146, 4
  %3148 = trunc i32 %3147 to i8
  %3149 = and i8 %3148, 1
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3149, i8* %3150, align 1
  %3151 = icmp eq i32 %3135, 0
  %3152 = zext i1 %3151 to i8
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3152, i8* %3153, align 1
  %3154 = lshr i32 %3135, 31
  %3155 = trunc i32 %3154 to i8
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3155, i8* %3156, align 1
  %3157 = lshr i32 %3134, 31
  %3158 = xor i32 %3154, %3157
  %3159 = add i32 %3158, %3157
  %3160 = icmp eq i32 %3159, 2
  %3161 = zext i1 %3160 to i8
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3161, i8* %3162, align 1
  store %struct.Memory* %loadMem_41df8f, %struct.Memory** %MEMORY
  %loadMem_41df93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 33
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %3165 to i64*
  %3166 = load i64, i64* %PC.i664
  %3167 = add i64 %3166, 105
  %3168 = load i64, i64* %PC.i664
  %3169 = add i64 %3168, 6
  %3170 = load i64, i64* %PC.i664
  %3171 = add i64 %3170, 6
  store i64 %3171, i64* %PC.i664
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3173 = load i8, i8* %3172, align 1
  %3174 = icmp ne i8 %3173, 0
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3176 = load i8, i8* %3175, align 1
  %3177 = icmp ne i8 %3176, 0
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3179 = load i8, i8* %3178, align 1
  %3180 = icmp ne i8 %3179, 0
  %3181 = xor i1 %3177, %3180
  %3182 = or i1 %3174, %3181
  %3183 = zext i1 %3182 to i8
  store i8 %3183, i8* %BRANCH_TAKEN, align 1
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3185 = select i1 %3182, i64 %3167, i64 %3169
  store i64 %3185, i64* %3184, align 8
  store %struct.Memory* %loadMem_41df93, %struct.Memory** %MEMORY
  %loadBr_41df93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41df93 = icmp eq i8 %loadBr_41df93, 1
  br i1 %cmpBr_41df93, label %block_.L_41dffc, label %block_41df99

block_41df99:                                     ; preds = %block_.L_41df8f
  %loadMem_41df99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 33
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 1
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %3191 to i64*
  %3192 = load i64, i64* %PC.i662
  %3193 = add i64 %3192, 5
  store i64 %3193, i64* %PC.i662
  store i64 2, i64* %RAX.i663, align 8
  store %struct.Memory* %loadMem_41df99, %struct.Memory** %MEMORY
  %loadMem_41df9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 5
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RCX.i660 = bitcast %union.anon* %3199 to i64*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 15
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %3202 to i64*
  %3203 = load i64, i64* %RBP.i661
  %3204 = sub i64 %3203, 52
  %3205 = load i64, i64* %PC.i659
  %3206 = add i64 %3205, 3
  store i64 %3206, i64* %PC.i659
  %3207 = inttoptr i64 %3204 to i32*
  %3208 = load i32, i32* %3207
  %3209 = zext i32 %3208 to i64
  store i64 %3209, i64* %RCX.i660, align 8
  store %struct.Memory* %loadMem_41df9e, %struct.Memory** %MEMORY
  %loadMem_41dfa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3211 = getelementptr inbounds %struct.GPR, %struct.GPR* %3210, i32 0, i32 33
  %3212 = getelementptr inbounds %struct.Reg, %struct.Reg* %3211, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %3212 to i64*
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3214 = getelementptr inbounds %struct.GPR, %struct.GPR* %3213, i32 0, i32 1
  %3215 = getelementptr inbounds %struct.Reg, %struct.Reg* %3214, i32 0, i32 0
  %EAX.i657 = bitcast %union.anon* %3215 to i32*
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 15
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %3218 to i64*
  %3219 = load i64, i64* %RBP.i658
  %3220 = sub i64 %3219, 72
  %3221 = load i32, i32* %EAX.i657
  %3222 = zext i32 %3221 to i64
  %3223 = load i64, i64* %PC.i656
  %3224 = add i64 %3223, 3
  store i64 %3224, i64* %PC.i656
  %3225 = inttoptr i64 %3220 to i32*
  store i32 %3221, i32* %3225
  store %struct.Memory* %loadMem_41dfa1, %struct.Memory** %MEMORY
  %loadMem_41dfa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 33
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 5
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %ECX.i654 = bitcast %union.anon* %3231 to i32*
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3233 = getelementptr inbounds %struct.GPR, %struct.GPR* %3232, i32 0, i32 1
  %3234 = getelementptr inbounds %struct.Reg, %struct.Reg* %3233, i32 0, i32 0
  %RAX.i655 = bitcast %union.anon* %3234 to i64*
  %3235 = load i32, i32* %ECX.i654
  %3236 = zext i32 %3235 to i64
  %3237 = load i64, i64* %PC.i653
  %3238 = add i64 %3237, 2
  store i64 %3238, i64* %PC.i653
  %3239 = and i64 %3236, 4294967295
  store i64 %3239, i64* %RAX.i655, align 8
  store %struct.Memory* %loadMem_41dfa4, %struct.Memory** %MEMORY
  %loadMem_41dfa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %3242 to i64*
  %3243 = load i64, i64* %PC.i652
  %3244 = add i64 %3243, 1
  store i64 %3244, i64* %PC.i652
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3247 = bitcast %union.anon* %3246 to i32*
  %3248 = load i32, i32* %3247, align 8
  %3249 = sext i32 %3248 to i64
  %3250 = lshr i64 %3249, 32
  store i64 %3250, i64* %3245, align 8
  store %struct.Memory* %loadMem_41dfa6, %struct.Memory** %MEMORY
  %loadMem_41dfa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 33
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 5
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %3256 to i64*
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 15
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %3259 to i64*
  %3260 = load i64, i64* %RBP.i651
  %3261 = sub i64 %3260, 72
  %3262 = load i64, i64* %PC.i649
  %3263 = add i64 %3262, 3
  store i64 %3263, i64* %PC.i649
  %3264 = inttoptr i64 %3261 to i32*
  %3265 = load i32, i32* %3264
  %3266 = zext i32 %3265 to i64
  store i64 %3266, i64* %RCX.i650, align 8
  store %struct.Memory* %loadMem_41dfa7, %struct.Memory** %MEMORY
  %loadMem_41dfaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 33
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3271 = getelementptr inbounds %struct.GPR, %struct.GPR* %3270, i32 0, i32 5
  %3272 = getelementptr inbounds %struct.Reg, %struct.Reg* %3271, i32 0, i32 0
  %ECX.i645 = bitcast %union.anon* %3272 to i32*
  %3273 = load i32, i32* %ECX.i645
  %3274 = zext i32 %3273 to i64
  %3275 = load i64, i64* %PC.i644
  %3276 = add i64 %3275, 2
  store i64 %3276, i64* %PC.i644
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3278 = bitcast %union.anon* %3277 to i32*
  %3279 = load i32, i32* %3278, align 8
  %3280 = zext i32 %3279 to i64
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3282 = bitcast %union.anon* %3281 to i32*
  %3283 = load i32, i32* %3282, align 8
  %3284 = zext i32 %3283 to i64
  %3285 = shl i64 %3274, 32
  %3286 = ashr exact i64 %3285, 32
  %3287 = shl i64 %3284, 32
  %3288 = or i64 %3287, %3280
  %3289 = sdiv i64 %3288, %3286
  %3290 = shl i64 %3289, 32
  %3291 = ashr exact i64 %3290, 32
  %3292 = icmp eq i64 %3289, %3291
  br i1 %3292, label %3297, label %3293

; <label>:3293:                                   ; preds = %block_41df99
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3295 = load i64, i64* %3294, align 8
  %3296 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3295, %struct.Memory* %loadMem_41dfaa)
  br label %routine_idivl__ecx.exit646

; <label>:3297:                                   ; preds = %block_41df99
  %3298 = srem i64 %3288, %3286
  %3299 = getelementptr inbounds %union.anon, %union.anon* %3277, i64 0, i32 0
  %3300 = and i64 %3289, 4294967295
  store i64 %3300, i64* %3299, align 8
  %3301 = getelementptr inbounds %union.anon, %union.anon* %3281, i64 0, i32 0
  %3302 = and i64 %3298, 4294967295
  store i64 %3302, i64* %3301, align 8
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3303, align 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3304, align 1
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3305, align 1
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3306, align 1
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3307, align 1
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3308, align 1
  br label %routine_idivl__ecx.exit646

routine_idivl__ecx.exit646:                       ; preds = %3293, %3297
  %3309 = phi %struct.Memory* [ %3296, %3293 ], [ %loadMem_41dfaa, %3297 ]
  store %struct.Memory* %3309, %struct.Memory** %MEMORY
  %loadMem_41dfac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3311 = getelementptr inbounds %struct.GPR, %struct.GPR* %3310, i32 0, i32 33
  %3312 = getelementptr inbounds %struct.Reg, %struct.Reg* %3311, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %3312 to i64*
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 1
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %EAX.i642 = bitcast %union.anon* %3315 to i32*
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3317 = getelementptr inbounds %struct.GPR, %struct.GPR* %3316, i32 0, i32 15
  %3318 = getelementptr inbounds %struct.Reg, %struct.Reg* %3317, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %3318 to i64*
  %3319 = load i64, i64* %RBP.i643
  %3320 = sub i64 %3319, 52
  %3321 = load i32, i32* %EAX.i642
  %3322 = zext i32 %3321 to i64
  %3323 = load i64, i64* %PC.i641
  %3324 = add i64 %3323, 3
  store i64 %3324, i64* %PC.i641
  %3325 = inttoptr i64 %3320 to i32*
  store i32 %3321, i32* %3325
  store %struct.Memory* %loadMem_41dfac, %struct.Memory** %MEMORY
  %loadMem_41dfaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 33
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 1
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 15
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %3334 to i64*
  %3335 = load i64, i64* %RBP.i640
  %3336 = sub i64 %3335, 48
  %3337 = load i64, i64* %PC.i638
  %3338 = add i64 %3337, 3
  store i64 %3338, i64* %PC.i638
  %3339 = inttoptr i64 %3336 to i32*
  %3340 = load i32, i32* %3339
  %3341 = zext i32 %3340 to i64
  store i64 %3341, i64* %RAX.i639, align 8
  store %struct.Memory* %loadMem_41dfaf, %struct.Memory** %MEMORY
  %loadMem_41dfb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 33
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %3344 to i64*
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 1
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %RAX.i636 = bitcast %union.anon* %3347 to i64*
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 15
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %3350 to i64*
  %3351 = load i64, i64* %RAX.i636
  %3352 = load i64, i64* %RBP.i637
  %3353 = sub i64 %3352, 52
  %3354 = load i64, i64* %PC.i635
  %3355 = add i64 %3354, 3
  store i64 %3355, i64* %PC.i635
  %3356 = trunc i64 %3351 to i32
  %3357 = inttoptr i64 %3353 to i32*
  %3358 = load i32, i32* %3357
  %3359 = sub i32 %3356, %3358
  %3360 = zext i32 %3359 to i64
  store i64 %3360, i64* %RAX.i636, align 8
  %3361 = icmp ult i32 %3356, %3358
  %3362 = zext i1 %3361 to i8
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3362, i8* %3363, align 1
  %3364 = and i32 %3359, 255
  %3365 = call i32 @llvm.ctpop.i32(i32 %3364)
  %3366 = trunc i32 %3365 to i8
  %3367 = and i8 %3366, 1
  %3368 = xor i8 %3367, 1
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3368, i8* %3369, align 1
  %3370 = xor i32 %3358, %3356
  %3371 = xor i32 %3370, %3359
  %3372 = lshr i32 %3371, 4
  %3373 = trunc i32 %3372 to i8
  %3374 = and i8 %3373, 1
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3374, i8* %3375, align 1
  %3376 = icmp eq i32 %3359, 0
  %3377 = zext i1 %3376 to i8
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3377, i8* %3378, align 1
  %3379 = lshr i32 %3359, 31
  %3380 = trunc i32 %3379 to i8
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3380, i8* %3381, align 1
  %3382 = lshr i32 %3356, 31
  %3383 = lshr i32 %3358, 31
  %3384 = xor i32 %3383, %3382
  %3385 = xor i32 %3379, %3382
  %3386 = add i32 %3385, %3384
  %3387 = icmp eq i32 %3386, 2
  %3388 = zext i1 %3387 to i8
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3388, i8* %3389, align 1
  store %struct.Memory* %loadMem_41dfb2, %struct.Memory** %MEMORY
  %loadMem_41dfb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 33
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %3392 to i64*
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 9
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %RSI.i633 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 15
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %3398 to i64*
  %3399 = load i64, i64* %RBP.i634
  %3400 = sub i64 %3399, 32
  %3401 = load i64, i64* %PC.i632
  %3402 = add i64 %3401, 4
  store i64 %3402, i64* %PC.i632
  %3403 = inttoptr i64 %3400 to i64*
  %3404 = load i64, i64* %3403
  store i64 %3404, i64* %RSI.i633, align 8
  store %struct.Memory* %loadMem_41dfb5, %struct.Memory** %MEMORY
  %loadMem_41dfb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 11
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RDI.i630 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 15
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RBP.i631 = bitcast %union.anon* %3413 to i64*
  %3414 = load i64, i64* %RBP.i631
  %3415 = sub i64 %3414, 44
  %3416 = load i64, i64* %PC.i629
  %3417 = add i64 %3416, 4
  store i64 %3417, i64* %PC.i629
  %3418 = inttoptr i64 %3415 to i32*
  %3419 = load i32, i32* %3418
  %3420 = sext i32 %3419 to i64
  store i64 %3420, i64* %RDI.i630, align 8
  store %struct.Memory* %loadMem_41dfb9, %struct.Memory** %MEMORY
  %loadMem_41dfbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 33
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %3423 to i64*
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3425 = getelementptr inbounds %struct.GPR, %struct.GPR* %3424, i32 0, i32 1
  %3426 = getelementptr inbounds %struct.Reg, %struct.Reg* %3425, i32 0, i32 0
  %EAX.i626 = bitcast %union.anon* %3426 to i32*
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 9
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %RSI.i627 = bitcast %union.anon* %3429 to i64*
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 11
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %RDI.i628 = bitcast %union.anon* %3432 to i64*
  %3433 = load i64, i64* %RSI.i627
  %3434 = load i64, i64* %RDI.i628
  %3435 = mul i64 %3434, 4
  %3436 = add i64 %3435, %3433
  %3437 = load i32, i32* %EAX.i626
  %3438 = zext i32 %3437 to i64
  %3439 = load i64, i64* %PC.i625
  %3440 = add i64 %3439, 3
  store i64 %3440, i64* %PC.i625
  %3441 = inttoptr i64 %3436 to i32*
  store i32 %3437, i32* %3441
  store %struct.Memory* %loadMem_41dfbd, %struct.Memory** %MEMORY
  %loadMem_41dfc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 33
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %3444 to i64*
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 1
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %RAX.i623 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 15
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %3450 to i64*
  %3451 = load i64, i64* %RBP.i624
  %3452 = sub i64 %3451, 52
  %3453 = load i64, i64* %PC.i622
  %3454 = add i64 %3453, 3
  store i64 %3454, i64* %PC.i622
  %3455 = inttoptr i64 %3452 to i32*
  %3456 = load i32, i32* %3455
  %3457 = zext i32 %3456 to i64
  store i64 %3457, i64* %RAX.i623, align 8
  store %struct.Memory* %loadMem_41dfc0, %struct.Memory** %MEMORY
  %loadMem_41dfc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3459 = getelementptr inbounds %struct.GPR, %struct.GPR* %3458, i32 0, i32 33
  %3460 = getelementptr inbounds %struct.Reg, %struct.Reg* %3459, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %3460 to i64*
  %3461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3462 = getelementptr inbounds %struct.GPR, %struct.GPR* %3461, i32 0, i32 17
  %3463 = getelementptr inbounds %struct.Reg, %struct.Reg* %3462, i32 0, i32 0
  %R8D.i620 = bitcast %union.anon* %3463 to i32*
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3465 = getelementptr inbounds %struct.GPR, %struct.GPR* %3464, i32 0, i32 15
  %3466 = getelementptr inbounds %struct.Reg, %struct.Reg* %3465, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %3466 to i64*
  %3467 = bitcast i32* %R8D.i620 to i64*
  %3468 = load i64, i64* %RBP.i621
  %3469 = sub i64 %3468, 52
  %3470 = load i64, i64* %PC.i619
  %3471 = add i64 %3470, 4
  store i64 %3471, i64* %PC.i619
  %3472 = inttoptr i64 %3469 to i32*
  %3473 = load i32, i32* %3472
  %3474 = zext i32 %3473 to i64
  store i64 %3474, i64* %3467, align 8
  store %struct.Memory* %loadMem_41dfc3, %struct.Memory** %MEMORY
  %loadMem_41dfc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 1
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %EAX.i617 = bitcast %union.anon* %3480 to i32*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 15
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %3483 to i64*
  %3484 = load i64, i64* %RBP.i618
  %3485 = sub i64 %3484, 76
  %3486 = load i32, i32* %EAX.i617
  %3487 = zext i32 %3486 to i64
  %3488 = load i64, i64* %PC.i616
  %3489 = add i64 %3488, 3
  store i64 %3489, i64* %PC.i616
  %3490 = inttoptr i64 %3485 to i32*
  store i32 %3486, i32* %3490
  store %struct.Memory* %loadMem_41dfc7, %struct.Memory** %MEMORY
  %loadMem_41dfca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 33
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %3493 to i64*
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 17
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %R8D.i614 = bitcast %union.anon* %3496 to i32*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 1
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %3499 to i64*
  %3500 = load i32, i32* %R8D.i614
  %3501 = zext i32 %3500 to i64
  %3502 = load i64, i64* %PC.i613
  %3503 = add i64 %3502, 3
  store i64 %3503, i64* %PC.i613
  %3504 = and i64 %3501, 4294967295
  store i64 %3504, i64* %RAX.i615, align 8
  store %struct.Memory* %loadMem_41dfca, %struct.Memory** %MEMORY
  %loadMem_41dfcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 33
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %3507 to i64*
  %3508 = load i64, i64* %PC.i612
  %3509 = add i64 %3508, 1
  store i64 %3509, i64* %PC.i612
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3512 = bitcast %union.anon* %3511 to i32*
  %3513 = load i32, i32* %3512, align 8
  %3514 = sext i32 %3513 to i64
  %3515 = lshr i64 %3514, 32
  store i64 %3515, i64* %3510, align 8
  store %struct.Memory* %loadMem_41dfcd, %struct.Memory** %MEMORY
  %loadMem_41dfce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 33
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 5
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %ECX.i609 = bitcast %union.anon* %3521 to i32*
  %3522 = load i32, i32* %ECX.i609
  %3523 = zext i32 %3522 to i64
  %3524 = load i64, i64* %PC.i608
  %3525 = add i64 %3524, 2
  store i64 %3525, i64* %PC.i608
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3527 = bitcast %union.anon* %3526 to i32*
  %3528 = load i32, i32* %3527, align 8
  %3529 = zext i32 %3528 to i64
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3531 = bitcast %union.anon* %3530 to i32*
  %3532 = load i32, i32* %3531, align 8
  %3533 = zext i32 %3532 to i64
  %3534 = shl i64 %3523, 32
  %3535 = ashr exact i64 %3534, 32
  %3536 = shl i64 %3533, 32
  %3537 = or i64 %3536, %3529
  %3538 = sdiv i64 %3537, %3535
  %3539 = shl i64 %3538, 32
  %3540 = ashr exact i64 %3539, 32
  %3541 = icmp eq i64 %3538, %3540
  br i1 %3541, label %3546, label %3542

; <label>:3542:                                   ; preds = %routine_idivl__ecx.exit646
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3544 = load i64, i64* %3543, align 8
  %3545 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3544, %struct.Memory* %loadMem_41dfce)
  br label %routine_idivl__ecx.exit

; <label>:3546:                                   ; preds = %routine_idivl__ecx.exit646
  %3547 = srem i64 %3537, %3535
  %3548 = getelementptr inbounds %union.anon, %union.anon* %3526, i64 0, i32 0
  %3549 = and i64 %3538, 4294967295
  store i64 %3549, i64* %3548, align 8
  %3550 = getelementptr inbounds %union.anon, %union.anon* %3530, i64 0, i32 0
  %3551 = and i64 %3547, 4294967295
  store i64 %3551, i64* %3550, align 8
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3552, align 1
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3553, align 1
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3554, align 1
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3555, align 1
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3556, align 1
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3557, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3542, %3546
  %3558 = phi %struct.Memory* [ %3545, %3542 ], [ %loadMem_41dfce, %3546 ]
  store %struct.Memory* %3558, %struct.Memory** %MEMORY
  %loadMem_41dfd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 33
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %3561 to i64*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 17
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %R8D.i606 = bitcast %union.anon* %3564 to i32*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 15
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %3567 to i64*
  %3568 = bitcast i32* %R8D.i606 to i64*
  %3569 = load i64, i64* %RBP.i607
  %3570 = sub i64 %3569, 76
  %3571 = load i64, i64* %PC.i605
  %3572 = add i64 %3571, 4
  store i64 %3572, i64* %PC.i605
  %3573 = inttoptr i64 %3570 to i32*
  %3574 = load i32, i32* %3573
  %3575 = zext i32 %3574 to i64
  store i64 %3575, i64* %3568, align 8
  store %struct.Memory* %loadMem_41dfd0, %struct.Memory** %MEMORY
  %loadMem_41dfd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 33
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %3578 to i64*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 7
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %EDX.i603 = bitcast %union.anon* %3581 to i32*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 17
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %R8D.i604 = bitcast %union.anon* %3584 to i32*
  %3585 = bitcast i32* %R8D.i604 to i64*
  %3586 = load i32, i32* %R8D.i604
  %3587 = zext i32 %3586 to i64
  %3588 = load i32, i32* %EDX.i603
  %3589 = zext i32 %3588 to i64
  %3590 = load i64, i64* %PC.i602
  %3591 = add i64 %3590, 3
  store i64 %3591, i64* %PC.i602
  %3592 = add i32 %3588, %3586
  %3593 = zext i32 %3592 to i64
  store i64 %3593, i64* %3585, align 8
  %3594 = icmp ult i32 %3592, %3586
  %3595 = icmp ult i32 %3592, %3588
  %3596 = or i1 %3594, %3595
  %3597 = zext i1 %3596 to i8
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3597, i8* %3598, align 1
  %3599 = and i32 %3592, 255
  %3600 = call i32 @llvm.ctpop.i32(i32 %3599)
  %3601 = trunc i32 %3600 to i8
  %3602 = and i8 %3601, 1
  %3603 = xor i8 %3602, 1
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3603, i8* %3604, align 1
  %3605 = xor i64 %3589, %3587
  %3606 = trunc i64 %3605 to i32
  %3607 = xor i32 %3606, %3592
  %3608 = lshr i32 %3607, 4
  %3609 = trunc i32 %3608 to i8
  %3610 = and i8 %3609, 1
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3610, i8* %3611, align 1
  %3612 = icmp eq i32 %3592, 0
  %3613 = zext i1 %3612 to i8
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3613, i8* %3614, align 1
  %3615 = lshr i32 %3592, 31
  %3616 = trunc i32 %3615 to i8
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3616, i8* %3617, align 1
  %3618 = lshr i32 %3586, 31
  %3619 = lshr i32 %3588, 31
  %3620 = xor i32 %3615, %3618
  %3621 = xor i32 %3615, %3619
  %3622 = add i32 %3620, %3621
  %3623 = icmp eq i32 %3622, 2
  %3624 = zext i1 %3623 to i8
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3624, i8* %3625, align 1
  store %struct.Memory* %loadMem_41dfd4, %struct.Memory** %MEMORY
  %loadMem_41dfd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 33
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %3628 to i64*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 9
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %RSI.i600 = bitcast %union.anon* %3631 to i64*
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 15
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %RBP.i601 = bitcast %union.anon* %3634 to i64*
  %3635 = load i64, i64* %RBP.i601
  %3636 = sub i64 %3635, 40
  %3637 = load i64, i64* %PC.i599
  %3638 = add i64 %3637, 4
  store i64 %3638, i64* %PC.i599
  %3639 = inttoptr i64 %3636 to i64*
  %3640 = load i64, i64* %3639
  store i64 %3640, i64* %RSI.i600, align 8
  store %struct.Memory* %loadMem_41dfd7, %struct.Memory** %MEMORY
  %loadMem_41dfdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 33
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %3643 to i64*
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 7
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %RDX.i597 = bitcast %union.anon* %3646 to i64*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 15
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %3649 to i64*
  %3650 = load i64, i64* %RBP.i598
  %3651 = sub i64 %3650, 16
  %3652 = load i64, i64* %PC.i596
  %3653 = add i64 %3652, 3
  store i64 %3653, i64* %PC.i596
  %3654 = inttoptr i64 %3651 to i32*
  %3655 = load i32, i32* %3654
  %3656 = zext i32 %3655 to i64
  store i64 %3656, i64* %RDX.i597, align 8
  store %struct.Memory* %loadMem_41dfdb, %struct.Memory** %MEMORY
  %loadMem_41dfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 33
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %3659 to i64*
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3661 = getelementptr inbounds %struct.GPR, %struct.GPR* %3660, i32 0, i32 7
  %3662 = getelementptr inbounds %struct.Reg, %struct.Reg* %3661, i32 0, i32 0
  %RDX.i594 = bitcast %union.anon* %3662 to i64*
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3664 = getelementptr inbounds %struct.GPR, %struct.GPR* %3663, i32 0, i32 15
  %3665 = getelementptr inbounds %struct.Reg, %struct.Reg* %3664, i32 0, i32 0
  %RBP.i595 = bitcast %union.anon* %3665 to i64*
  %3666 = load i64, i64* %RDX.i594
  %3667 = load i64, i64* %RBP.i595
  %3668 = sub i64 %3667, 44
  %3669 = load i64, i64* %PC.i593
  %3670 = add i64 %3669, 3
  store i64 %3670, i64* %PC.i593
  %3671 = trunc i64 %3666 to i32
  %3672 = inttoptr i64 %3668 to i32*
  %3673 = load i32, i32* %3672
  %3674 = sub i32 %3671, %3673
  %3675 = zext i32 %3674 to i64
  store i64 %3675, i64* %RDX.i594, align 8
  %3676 = icmp ult i32 %3671, %3673
  %3677 = zext i1 %3676 to i8
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3677, i8* %3678, align 1
  %3679 = and i32 %3674, 255
  %3680 = call i32 @llvm.ctpop.i32(i32 %3679)
  %3681 = trunc i32 %3680 to i8
  %3682 = and i8 %3681, 1
  %3683 = xor i8 %3682, 1
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3683, i8* %3684, align 1
  %3685 = xor i32 %3673, %3671
  %3686 = xor i32 %3685, %3674
  %3687 = lshr i32 %3686, 4
  %3688 = trunc i32 %3687 to i8
  %3689 = and i8 %3688, 1
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3689, i8* %3690, align 1
  %3691 = icmp eq i32 %3674, 0
  %3692 = zext i1 %3691 to i8
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3692, i8* %3693, align 1
  %3694 = lshr i32 %3674, 31
  %3695 = trunc i32 %3694 to i8
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3695, i8* %3696, align 1
  %3697 = lshr i32 %3671, 31
  %3698 = lshr i32 %3673, 31
  %3699 = xor i32 %3698, %3697
  %3700 = xor i32 %3694, %3697
  %3701 = add i32 %3700, %3699
  %3702 = icmp eq i32 %3701, 2
  %3703 = zext i1 %3702 to i8
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3703, i8* %3704, align 1
  store %struct.Memory* %loadMem_41dfde, %struct.Memory** %MEMORY
  %loadMem_41dfe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 33
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %3707 to i64*
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 7
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %EDX.i591 = bitcast %union.anon* %3710 to i32*
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 11
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %RDI.i592 = bitcast %union.anon* %3713 to i64*
  %3714 = load i32, i32* %EDX.i591
  %3715 = zext i32 %3714 to i64
  %3716 = load i64, i64* %PC.i590
  %3717 = add i64 %3716, 3
  store i64 %3717, i64* %PC.i590
  %3718 = shl i64 %3715, 32
  %3719 = ashr exact i64 %3718, 32
  store i64 %3719, i64* %RDI.i592, align 8
  store %struct.Memory* %loadMem_41dfe1, %struct.Memory** %MEMORY
  %loadMem_41dfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3721 = getelementptr inbounds %struct.GPR, %struct.GPR* %3720, i32 0, i32 33
  %3722 = getelementptr inbounds %struct.Reg, %struct.Reg* %3721, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %3722 to i64*
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3724 = getelementptr inbounds %struct.GPR, %struct.GPR* %3723, i32 0, i32 17
  %3725 = getelementptr inbounds %struct.Reg, %struct.Reg* %3724, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3725 to i32*
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3727 = getelementptr inbounds %struct.GPR, %struct.GPR* %3726, i32 0, i32 9
  %3728 = getelementptr inbounds %struct.Reg, %struct.Reg* %3727, i32 0, i32 0
  %RSI.i588 = bitcast %union.anon* %3728 to i64*
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 11
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %RDI.i589 = bitcast %union.anon* %3731 to i64*
  %3732 = load i64, i64* %RSI.i588
  %3733 = load i64, i64* %RDI.i589
  %3734 = mul i64 %3733, 4
  %3735 = add i64 %3734, %3732
  %3736 = load i32, i32* %R8D.i
  %3737 = zext i32 %3736 to i64
  %3738 = load i64, i64* %PC.i587
  %3739 = add i64 %3738, 4
  store i64 %3739, i64* %PC.i587
  %3740 = inttoptr i64 %3735 to i32*
  store i32 %3736, i32* %3740
  store %struct.Memory* %loadMem_41dfe4, %struct.Memory** %MEMORY
  %loadMem_41dfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 33
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %3743 to i64*
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3745 = getelementptr inbounds %struct.GPR, %struct.GPR* %3744, i32 0, i32 7
  %3746 = getelementptr inbounds %struct.Reg, %struct.Reg* %3745, i32 0, i32 0
  %RDX.i585 = bitcast %union.anon* %3746 to i64*
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3748 = getelementptr inbounds %struct.GPR, %struct.GPR* %3747, i32 0, i32 15
  %3749 = getelementptr inbounds %struct.Reg, %struct.Reg* %3748, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %3749 to i64*
  %3750 = load i64, i64* %RBP.i586
  %3751 = sub i64 %3750, 52
  %3752 = load i64, i64* %PC.i584
  %3753 = add i64 %3752, 3
  store i64 %3753, i64* %PC.i584
  %3754 = inttoptr i64 %3751 to i32*
  %3755 = load i32, i32* %3754
  %3756 = zext i32 %3755 to i64
  store i64 %3756, i64* %RDX.i585, align 8
  store %struct.Memory* %loadMem_41dfe8, %struct.Memory** %MEMORY
  %loadMem_41dfeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3758 = getelementptr inbounds %struct.GPR, %struct.GPR* %3757, i32 0, i32 33
  %3759 = getelementptr inbounds %struct.Reg, %struct.Reg* %3758, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %3759 to i64*
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3761 = getelementptr inbounds %struct.GPR, %struct.GPR* %3760, i32 0, i32 7
  %3762 = getelementptr inbounds %struct.Reg, %struct.Reg* %3761, i32 0, i32 0
  %EDX.i582 = bitcast %union.anon* %3762 to i32*
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 15
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %3765 to i64*
  %3766 = load i64, i64* %RBP.i583
  %3767 = sub i64 %3766, 48
  %3768 = load i32, i32* %EDX.i582
  %3769 = zext i32 %3768 to i64
  %3770 = load i64, i64* %PC.i581
  %3771 = add i64 %3770, 3
  store i64 %3771, i64* %PC.i581
  %3772 = inttoptr i64 %3767 to i32*
  store i32 %3768, i32* %3772
  store %struct.Memory* %loadMem_41dfeb, %struct.Memory** %MEMORY
  %loadMem_41dfee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3774 = getelementptr inbounds %struct.GPR, %struct.GPR* %3773, i32 0, i32 33
  %3775 = getelementptr inbounds %struct.Reg, %struct.Reg* %3774, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %3775 to i64*
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 7
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %RDX.i579 = bitcast %union.anon* %3778 to i64*
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 15
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %3781 to i64*
  %3782 = load i64, i64* %RBP.i580
  %3783 = sub i64 %3782, 44
  %3784 = load i64, i64* %PC.i578
  %3785 = add i64 %3784, 3
  store i64 %3785, i64* %PC.i578
  %3786 = inttoptr i64 %3783 to i32*
  %3787 = load i32, i32* %3786
  %3788 = zext i32 %3787 to i64
  store i64 %3788, i64* %RDX.i579, align 8
  store %struct.Memory* %loadMem_41dfee, %struct.Memory** %MEMORY
  %loadMem_41dff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3790 = getelementptr inbounds %struct.GPR, %struct.GPR* %3789, i32 0, i32 33
  %3791 = getelementptr inbounds %struct.Reg, %struct.Reg* %3790, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %3791 to i64*
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 7
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %RDX.i577 = bitcast %union.anon* %3794 to i64*
  %3795 = load i64, i64* %RDX.i577
  %3796 = load i64, i64* %PC.i576
  %3797 = add i64 %3796, 3
  store i64 %3797, i64* %PC.i576
  %3798 = trunc i64 %3795 to i32
  %3799 = add i32 -1, %3798
  %3800 = zext i32 %3799 to i64
  store i64 %3800, i64* %RDX.i577, align 8
  %3801 = icmp ult i32 %3799, %3798
  %3802 = icmp ult i32 %3799, -1
  %3803 = or i1 %3801, %3802
  %3804 = zext i1 %3803 to i8
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3804, i8* %3805, align 1
  %3806 = and i32 %3799, 255
  %3807 = call i32 @llvm.ctpop.i32(i32 %3806)
  %3808 = trunc i32 %3807 to i8
  %3809 = and i8 %3808, 1
  %3810 = xor i8 %3809, 1
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3810, i8* %3811, align 1
  %3812 = xor i64 -1, %3795
  %3813 = trunc i64 %3812 to i32
  %3814 = xor i32 %3813, %3799
  %3815 = lshr i32 %3814, 4
  %3816 = trunc i32 %3815 to i8
  %3817 = and i8 %3816, 1
  %3818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3817, i8* %3818, align 1
  %3819 = icmp eq i32 %3799, 0
  %3820 = zext i1 %3819 to i8
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3820, i8* %3821, align 1
  %3822 = lshr i32 %3799, 31
  %3823 = trunc i32 %3822 to i8
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3823, i8* %3824, align 1
  %3825 = lshr i32 %3798, 31
  %3826 = xor i32 %3822, %3825
  %3827 = xor i32 %3822, 1
  %3828 = add i32 %3826, %3827
  %3829 = icmp eq i32 %3828, 2
  %3830 = zext i1 %3829 to i8
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3830, i8* %3831, align 1
  store %struct.Memory* %loadMem_41dff1, %struct.Memory** %MEMORY
  %loadMem_41dff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 33
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %3834 to i64*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 7
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %EDX.i574 = bitcast %union.anon* %3837 to i32*
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 15
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %3840 to i64*
  %3841 = load i64, i64* %RBP.i575
  %3842 = sub i64 %3841, 44
  %3843 = load i32, i32* %EDX.i574
  %3844 = zext i32 %3843 to i64
  %3845 = load i64, i64* %PC.i573
  %3846 = add i64 %3845, 3
  store i64 %3846, i64* %PC.i573
  %3847 = inttoptr i64 %3842 to i32*
  store i32 %3843, i32* %3847
  store %struct.Memory* %loadMem_41dff4, %struct.Memory** %MEMORY
  %loadMem_41dff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 33
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %3850 to i64*
  %3851 = load i64, i64* %PC.i572
  %3852 = add i64 %3851, -104
  %3853 = load i64, i64* %PC.i572
  %3854 = add i64 %3853, 5
  store i64 %3854, i64* %PC.i572
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3852, i64* %3855, align 8
  store %struct.Memory* %loadMem_41dff7, %struct.Memory** %MEMORY
  br label %block_.L_41df8f

block_.L_41dffc:                                  ; preds = %block_.L_41df8f
  %loadMem_41dffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3857 = getelementptr inbounds %struct.GPR, %struct.GPR* %3856, i32 0, i32 33
  %3858 = getelementptr inbounds %struct.Reg, %struct.Reg* %3857, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %3858 to i64*
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3860 = getelementptr inbounds %struct.GPR, %struct.GPR* %3859, i32 0, i32 1
  %3861 = getelementptr inbounds %struct.Reg, %struct.Reg* %3860, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %3861 to i64*
  %3862 = load i64, i64* %PC.i570
  %3863 = add i64 %3862, 5
  store i64 %3863, i64* %PC.i570
  store i64 2, i64* %RAX.i571, align 8
  store %struct.Memory* %loadMem_41dffc, %struct.Memory** %MEMORY
  %loadMem_41e001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 33
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %3866 to i64*
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 5
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %3869 to i64*
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 15
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %3872 to i64*
  %3873 = load i64, i64* %RBP.i569
  %3874 = sub i64 %3873, 52
  %3875 = load i64, i64* %PC.i567
  %3876 = add i64 %3875, 3
  store i64 %3876, i64* %PC.i567
  %3877 = inttoptr i64 %3874 to i32*
  %3878 = load i32, i32* %3877
  %3879 = zext i32 %3878 to i64
  store i64 %3879, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_41e001, %struct.Memory** %MEMORY
  %loadMem_41e004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 33
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %3882 to i64*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 7
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %RDX.i565 = bitcast %union.anon* %3885 to i64*
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3887 = getelementptr inbounds %struct.GPR, %struct.GPR* %3886, i32 0, i32 15
  %3888 = getelementptr inbounds %struct.Reg, %struct.Reg* %3887, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %3888 to i64*
  %3889 = load i64, i64* %RBP.i566
  %3890 = sub i64 %3889, 32
  %3891 = load i64, i64* %PC.i564
  %3892 = add i64 %3891, 4
  store i64 %3892, i64* %PC.i564
  %3893 = inttoptr i64 %3890 to i64*
  %3894 = load i64, i64* %3893
  store i64 %3894, i64* %RDX.i565, align 8
  store %struct.Memory* %loadMem_41e004, %struct.Memory** %MEMORY
  %loadMem_41e008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 33
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %3897 to i64*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 5
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %ECX.i562 = bitcast %union.anon* %3900 to i32*
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 7
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %RDX.i563 = bitcast %union.anon* %3903 to i64*
  %3904 = load i64, i64* %RDX.i563
  %3905 = load i32, i32* %ECX.i562
  %3906 = zext i32 %3905 to i64
  %3907 = load i64, i64* %PC.i561
  %3908 = add i64 %3907, 2
  store i64 %3908, i64* %PC.i561
  %3909 = inttoptr i64 %3904 to i32*
  store i32 %3905, i32* %3909
  store %struct.Memory* %loadMem_41e008, %struct.Memory** %MEMORY
  %loadMem_41e00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3911 = getelementptr inbounds %struct.GPR, %struct.GPR* %3910, i32 0, i32 33
  %3912 = getelementptr inbounds %struct.Reg, %struct.Reg* %3911, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3912 to i64*
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3914 = getelementptr inbounds %struct.GPR, %struct.GPR* %3913, i32 0, i32 5
  %3915 = getelementptr inbounds %struct.Reg, %struct.Reg* %3914, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %3915 to i64*
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3917 = getelementptr inbounds %struct.GPR, %struct.GPR* %3916, i32 0, i32 15
  %3918 = getelementptr inbounds %struct.Reg, %struct.Reg* %3917, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %3918 to i64*
  %3919 = load i64, i64* %RBP.i560
  %3920 = sub i64 %3919, 52
  %3921 = load i64, i64* %PC.i558
  %3922 = add i64 %3921, 3
  store i64 %3922, i64* %PC.i558
  %3923 = inttoptr i64 %3920 to i32*
  %3924 = load i32, i32* %3923
  %3925 = zext i32 %3924 to i64
  store i64 %3925, i64* %RCX.i559, align 8
  store %struct.Memory* %loadMem_41e00a, %struct.Memory** %MEMORY
  %loadMem_41e00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 33
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %3928 to i64*
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 9
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %RSI.i556 = bitcast %union.anon* %3931 to i64*
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 15
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %3934 to i64*
  %3935 = load i64, i64* %RBP.i557
  %3936 = sub i64 %3935, 52
  %3937 = load i64, i64* %PC.i555
  %3938 = add i64 %3937, 3
  store i64 %3938, i64* %PC.i555
  %3939 = inttoptr i64 %3936 to i32*
  %3940 = load i32, i32* %3939
  %3941 = zext i32 %3940 to i64
  store i64 %3941, i64* %RSI.i556, align 8
  store %struct.Memory* %loadMem_41e00d, %struct.Memory** %MEMORY
  %loadMem_41e010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 33
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 1
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %EAX.i553 = bitcast %union.anon* %3947 to i32*
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 15
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %3950 to i64*
  %3951 = load i64, i64* %RBP.i554
  %3952 = sub i64 %3951, 80
  %3953 = load i32, i32* %EAX.i553
  %3954 = zext i32 %3953 to i64
  %3955 = load i64, i64* %PC.i552
  %3956 = add i64 %3955, 3
  store i64 %3956, i64* %PC.i552
  %3957 = inttoptr i64 %3952 to i32*
  store i32 %3953, i32* %3957
  store %struct.Memory* %loadMem_41e010, %struct.Memory** %MEMORY
  %loadMem_41e013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 33
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3960 to i64*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 9
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %ESI.i550 = bitcast %union.anon* %3963 to i32*
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 1
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %3966 to i64*
  %3967 = load i32, i32* %ESI.i550
  %3968 = zext i32 %3967 to i64
  %3969 = load i64, i64* %PC.i549
  %3970 = add i64 %3969, 2
  store i64 %3970, i64* %PC.i549
  %3971 = and i64 %3968, 4294967295
  store i64 %3971, i64* %RAX.i551, align 8
  store %struct.Memory* %loadMem_41e013, %struct.Memory** %MEMORY
  %loadMem_41e015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 33
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3974 to i64*
  %3975 = load i64, i64* %PC.i548
  %3976 = add i64 %3975, 1
  store i64 %3976, i64* %PC.i548
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3979 = bitcast %union.anon* %3978 to i32*
  %3980 = load i32, i32* %3979, align 8
  %3981 = sext i32 %3980 to i64
  %3982 = lshr i64 %3981, 32
  store i64 %3982, i64* %3977, align 8
  store %struct.Memory* %loadMem_41e015, %struct.Memory** %MEMORY
  %loadMem_41e016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3984 = getelementptr inbounds %struct.GPR, %struct.GPR* %3983, i32 0, i32 33
  %3985 = getelementptr inbounds %struct.Reg, %struct.Reg* %3984, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3985 to i64*
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3987 = getelementptr inbounds %struct.GPR, %struct.GPR* %3986, i32 0, i32 9
  %3988 = getelementptr inbounds %struct.Reg, %struct.Reg* %3987, i32 0, i32 0
  %RSI.i546 = bitcast %union.anon* %3988 to i64*
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 15
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %3991 to i64*
  %3992 = load i64, i64* %RBP.i547
  %3993 = sub i64 %3992, 80
  %3994 = load i64, i64* %PC.i545
  %3995 = add i64 %3994, 3
  store i64 %3995, i64* %PC.i545
  %3996 = inttoptr i64 %3993 to i32*
  %3997 = load i32, i32* %3996
  %3998 = zext i32 %3997 to i64
  store i64 %3998, i64* %RSI.i546, align 8
  store %struct.Memory* %loadMem_41e016, %struct.Memory** %MEMORY
  %loadMem_41e019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 33
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 9
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %ESI.i541 = bitcast %union.anon* %4004 to i32*
  %4005 = load i32, i32* %ESI.i541
  %4006 = zext i32 %4005 to i64
  %4007 = load i64, i64* %PC.i540
  %4008 = add i64 %4007, 2
  store i64 %4008, i64* %PC.i540
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4010 = bitcast %union.anon* %4009 to i32*
  %4011 = load i32, i32* %4010, align 8
  %4012 = zext i32 %4011 to i64
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4014 = bitcast %union.anon* %4013 to i32*
  %4015 = load i32, i32* %4014, align 8
  %4016 = zext i32 %4015 to i64
  %4017 = shl i64 %4006, 32
  %4018 = ashr exact i64 %4017, 32
  %4019 = shl i64 %4016, 32
  %4020 = or i64 %4019, %4012
  %4021 = sdiv i64 %4020, %4018
  %4022 = shl i64 %4021, 32
  %4023 = ashr exact i64 %4022, 32
  %4024 = icmp eq i64 %4021, %4023
  br i1 %4024, label %4029, label %4025

; <label>:4025:                                   ; preds = %block_.L_41dffc
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4027 = load i64, i64* %4026, align 8
  %4028 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4027, %struct.Memory* %loadMem_41e019)
  br label %routine_idivl__esi.exit

; <label>:4029:                                   ; preds = %block_.L_41dffc
  %4030 = srem i64 %4020, %4018
  %4031 = getelementptr inbounds %union.anon, %union.anon* %4009, i64 0, i32 0
  %4032 = and i64 %4021, 4294967295
  store i64 %4032, i64* %4031, align 8
  %4033 = getelementptr inbounds %union.anon, %union.anon* %4013, i64 0, i32 0
  %4034 = and i64 %4030, 4294967295
  store i64 %4034, i64* %4033, align 8
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4035, align 1
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4036, align 1
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4037, align 1
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4038, align 1
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4039, align 1
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4040, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %4025, %4029
  %4041 = phi %struct.Memory* [ %4028, %4025 ], [ %loadMem_41e019, %4029 ]
  store %struct.Memory* %4041, %struct.Memory** %MEMORY
  %loadMem_41e01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4043 = getelementptr inbounds %struct.GPR, %struct.GPR* %4042, i32 0, i32 33
  %4044 = getelementptr inbounds %struct.Reg, %struct.Reg* %4043, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %4044 to i64*
  %4045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4046 = getelementptr inbounds %struct.GPR, %struct.GPR* %4045, i32 0, i32 7
  %4047 = getelementptr inbounds %struct.Reg, %struct.Reg* %4046, i32 0, i32 0
  %EDX.i538 = bitcast %union.anon* %4047 to i32*
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 5
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %RCX.i539 = bitcast %union.anon* %4050 to i64*
  %4051 = load i64, i64* %RCX.i539
  %4052 = load i32, i32* %EDX.i538
  %4053 = zext i32 %4052 to i64
  %4054 = load i64, i64* %PC.i537
  %4055 = add i64 %4054, 2
  store i64 %4055, i64* %PC.i537
  %4056 = trunc i64 %4051 to i32
  %4057 = add i32 %4052, %4056
  %4058 = zext i32 %4057 to i64
  store i64 %4058, i64* %RCX.i539, align 8
  %4059 = icmp ult i32 %4057, %4056
  %4060 = icmp ult i32 %4057, %4052
  %4061 = or i1 %4059, %4060
  %4062 = zext i1 %4061 to i8
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4062, i8* %4063, align 1
  %4064 = and i32 %4057, 255
  %4065 = call i32 @llvm.ctpop.i32(i32 %4064)
  %4066 = trunc i32 %4065 to i8
  %4067 = and i8 %4066, 1
  %4068 = xor i8 %4067, 1
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4068, i8* %4069, align 1
  %4070 = xor i64 %4053, %4051
  %4071 = trunc i64 %4070 to i32
  %4072 = xor i32 %4071, %4057
  %4073 = lshr i32 %4072, 4
  %4074 = trunc i32 %4073 to i8
  %4075 = and i8 %4074, 1
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4075, i8* %4076, align 1
  %4077 = icmp eq i32 %4057, 0
  %4078 = zext i1 %4077 to i8
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4078, i8* %4079, align 1
  %4080 = lshr i32 %4057, 31
  %4081 = trunc i32 %4080 to i8
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4081, i8* %4082, align 1
  %4083 = lshr i32 %4056, 31
  %4084 = lshr i32 %4052, 31
  %4085 = xor i32 %4080, %4083
  %4086 = xor i32 %4080, %4084
  %4087 = add i32 %4085, %4086
  %4088 = icmp eq i32 %4087, 2
  %4089 = zext i1 %4088 to i8
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4089, i8* %4090, align 1
  store %struct.Memory* %loadMem_41e01b, %struct.Memory** %MEMORY
  %loadMem_41e01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4092 = getelementptr inbounds %struct.GPR, %struct.GPR* %4091, i32 0, i32 33
  %4093 = getelementptr inbounds %struct.Reg, %struct.Reg* %4092, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %4093 to i64*
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 11
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %RDI.i535 = bitcast %union.anon* %4096 to i64*
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4098 = getelementptr inbounds %struct.GPR, %struct.GPR* %4097, i32 0, i32 15
  %4099 = getelementptr inbounds %struct.Reg, %struct.Reg* %4098, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %4099 to i64*
  %4100 = load i64, i64* %RBP.i536
  %4101 = sub i64 %4100, 40
  %4102 = load i64, i64* %PC.i534
  %4103 = add i64 %4102, 4
  store i64 %4103, i64* %PC.i534
  %4104 = inttoptr i64 %4101 to i64*
  %4105 = load i64, i64* %4104
  store i64 %4105, i64* %RDI.i535, align 8
  store %struct.Memory* %loadMem_41e01d, %struct.Memory** %MEMORY
  %loadMem_41e021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 33
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %4108 to i64*
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 15
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %4111 to i64*
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 17
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %R8.i533 = bitcast %union.anon* %4114 to i64*
  %4115 = load i64, i64* %RBP.i532
  %4116 = sub i64 %4115, 16
  %4117 = load i64, i64* %PC.i531
  %4118 = add i64 %4117, 4
  store i64 %4118, i64* %PC.i531
  %4119 = inttoptr i64 %4116 to i32*
  %4120 = load i32, i32* %4119
  %4121 = sext i32 %4120 to i64
  store i64 %4121, i64* %R8.i533, align 8
  store %struct.Memory* %loadMem_41e021, %struct.Memory** %MEMORY
  %loadMem_41e025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 33
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %4124 to i64*
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 5
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %ECX.i529 = bitcast %union.anon* %4127 to i32*
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 11
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %RDI.i530 = bitcast %union.anon* %4130 to i64*
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 17
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %R8.i = bitcast %union.anon* %4133 to i64*
  %4134 = load i64, i64* %RDI.i530
  %4135 = load i64, i64* %R8.i
  %4136 = mul i64 %4135, 4
  %4137 = add i64 %4136, %4134
  %4138 = load i32, i32* %ECX.i529
  %4139 = zext i32 %4138 to i64
  %4140 = load i64, i64* %PC.i528
  %4141 = add i64 %4140, 4
  store i64 %4141, i64* %PC.i528
  %4142 = inttoptr i64 %4137 to i32*
  store i32 %4138, i32* %4142
  store %struct.Memory* %loadMem_41e025, %struct.Memory** %MEMORY
  %loadMem_41e029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4144 = getelementptr inbounds %struct.GPR, %struct.GPR* %4143, i32 0, i32 33
  %4145 = getelementptr inbounds %struct.Reg, %struct.Reg* %4144, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %4145 to i64*
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4147 = getelementptr inbounds %struct.GPR, %struct.GPR* %4146, i32 0, i32 15
  %4148 = getelementptr inbounds %struct.Reg, %struct.Reg* %4147, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %4148 to i64*
  %4149 = load i64, i64* %RBP.i527
  %4150 = sub i64 %4149, 8
  %4151 = load i64, i64* %PC.i526
  %4152 = add i64 %4151, 7
  store i64 %4152, i64* %PC.i526
  %4153 = inttoptr i64 %4150 to i32*
  store i32 0, i32* %4153
  store %struct.Memory* %loadMem_41e029, %struct.Memory** %MEMORY
  br label %block_.L_41e030

block_.L_41e030:                                  ; preds = %block_41e03f, %routine_idivl__esi.exit
  %loadMem_41e030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 33
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %4156 to i64*
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4158 = getelementptr inbounds %struct.GPR, %struct.GPR* %4157, i32 0, i32 1
  %4159 = getelementptr inbounds %struct.Reg, %struct.Reg* %4158, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %4159 to i64*
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 15
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %4162 to i64*
  %4163 = load i64, i64* %RBP.i525
  %4164 = sub i64 %4163, 8
  %4165 = load i64, i64* %PC.i523
  %4166 = add i64 %4165, 3
  store i64 %4166, i64* %PC.i523
  %4167 = inttoptr i64 %4164 to i32*
  %4168 = load i32, i32* %4167
  %4169 = zext i32 %4168 to i64
  store i64 %4169, i64* %RAX.i524, align 8
  store %struct.Memory* %loadMem_41e030, %struct.Memory** %MEMORY
  %loadMem_41e033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 33
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %4172 to i64*
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 5
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %4175 to i64*
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 15
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %4178 to i64*
  %4179 = load i64, i64* %RBP.i522
  %4180 = sub i64 %4179, 32
  %4181 = load i64, i64* %PC.i520
  %4182 = add i64 %4181, 4
  store i64 %4182, i64* %PC.i520
  %4183 = inttoptr i64 %4180 to i64*
  %4184 = load i64, i64* %4183
  store i64 %4184, i64* %RCX.i521, align 8
  store %struct.Memory* %loadMem_41e033, %struct.Memory** %MEMORY
  %loadMem_41e037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4186 = getelementptr inbounds %struct.GPR, %struct.GPR* %4185, i32 0, i32 33
  %4187 = getelementptr inbounds %struct.Reg, %struct.Reg* %4186, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %4187 to i64*
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4189 = getelementptr inbounds %struct.GPR, %struct.GPR* %4188, i32 0, i32 1
  %4190 = getelementptr inbounds %struct.Reg, %struct.Reg* %4189, i32 0, i32 0
  %EAX.i518 = bitcast %union.anon* %4190 to i32*
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 5
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %RCX.i519 = bitcast %union.anon* %4193 to i64*
  %4194 = load i32, i32* %EAX.i518
  %4195 = zext i32 %4194 to i64
  %4196 = load i64, i64* %RCX.i519
  %4197 = load i64, i64* %PC.i517
  %4198 = add i64 %4197, 2
  store i64 %4198, i64* %PC.i517
  %4199 = inttoptr i64 %4196 to i32*
  %4200 = load i32, i32* %4199
  %4201 = sub i32 %4194, %4200
  %4202 = icmp ult i32 %4194, %4200
  %4203 = zext i1 %4202 to i8
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4203, i8* %4204, align 1
  %4205 = and i32 %4201, 255
  %4206 = call i32 @llvm.ctpop.i32(i32 %4205)
  %4207 = trunc i32 %4206 to i8
  %4208 = and i8 %4207, 1
  %4209 = xor i8 %4208, 1
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4209, i8* %4210, align 1
  %4211 = xor i32 %4200, %4194
  %4212 = xor i32 %4211, %4201
  %4213 = lshr i32 %4212, 4
  %4214 = trunc i32 %4213 to i8
  %4215 = and i8 %4214, 1
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4215, i8* %4216, align 1
  %4217 = icmp eq i32 %4201, 0
  %4218 = zext i1 %4217 to i8
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4218, i8* %4219, align 1
  %4220 = lshr i32 %4201, 31
  %4221 = trunc i32 %4220 to i8
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4221, i8* %4222, align 1
  %4223 = lshr i32 %4194, 31
  %4224 = lshr i32 %4200, 31
  %4225 = xor i32 %4224, %4223
  %4226 = xor i32 %4220, %4223
  %4227 = add i32 %4226, %4225
  %4228 = icmp eq i32 %4227, 2
  %4229 = zext i1 %4228 to i8
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4229, i8* %4230, align 1
  store %struct.Memory* %loadMem_41e037, %struct.Memory** %MEMORY
  %loadMem_41e039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 33
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %4233 to i64*
  %4234 = load i64, i64* %PC.i516
  %4235 = add i64 %4234, 63
  %4236 = load i64, i64* %PC.i516
  %4237 = add i64 %4236, 6
  %4238 = load i64, i64* %PC.i516
  %4239 = add i64 %4238, 6
  store i64 %4239, i64* %PC.i516
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4241 = load i8, i8* %4240, align 1
  %4242 = icmp ne i8 %4241, 0
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4244 = load i8, i8* %4243, align 1
  %4245 = icmp ne i8 %4244, 0
  %4246 = xor i1 %4242, %4245
  %4247 = xor i1 %4246, true
  %4248 = zext i1 %4247 to i8
  store i8 %4248, i8* %BRANCH_TAKEN, align 1
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4250 = select i1 %4246, i64 %4237, i64 %4235
  store i64 %4250, i64* %4249, align 8
  store %struct.Memory* %loadMem_41e039, %struct.Memory** %MEMORY
  %loadBr_41e039 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e039 = icmp eq i8 %loadBr_41e039, 1
  br i1 %cmpBr_41e039, label %block_.L_41e078, label %block_41e03f

block_41e03f:                                     ; preds = %block_.L_41e030
  %loadMem_41e03f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 33
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %4253 to i64*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 11
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 15
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %4259 to i64*
  %4260 = load i64, i64* %RBP.i515
  %4261 = sub i64 %4260, 16
  %4262 = load i64, i64* %PC.i514
  %4263 = add i64 %4262, 3
  store i64 %4263, i64* %PC.i514
  %4264 = inttoptr i64 %4261 to i32*
  %4265 = load i32, i32* %4264
  %4266 = zext i32 %4265 to i64
  store i64 %4266, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_41e03f, %struct.Memory** %MEMORY
  %loadMem_41e042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 33
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %4269 to i64*
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 1
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %4272 to i64*
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 15
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %4275 to i64*
  %4276 = load i64, i64* %RBP.i513
  %4277 = sub i64 %4276, 8
  %4278 = load i64, i64* %PC.i511
  %4279 = add i64 %4278, 3
  store i64 %4279, i64* %PC.i511
  %4280 = inttoptr i64 %4277 to i32*
  %4281 = load i32, i32* %4280
  %4282 = zext i32 %4281 to i64
  store i64 %4282, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_41e042, %struct.Memory** %MEMORY
  %loadMem_41e045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4284 = getelementptr inbounds %struct.GPR, %struct.GPR* %4283, i32 0, i32 33
  %4285 = getelementptr inbounds %struct.Reg, %struct.Reg* %4284, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %4285 to i64*
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 1
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %4288 to i64*
  %4289 = load i64, i64* %RAX.i510
  %4290 = load i64, i64* %PC.i509
  %4291 = add i64 %4290, 3
  store i64 %4291, i64* %PC.i509
  %4292 = trunc i64 %4289 to i32
  %4293 = add i32 1, %4292
  %4294 = zext i32 %4293 to i64
  store i64 %4294, i64* %RAX.i510, align 8
  %4295 = icmp ult i32 %4293, %4292
  %4296 = icmp ult i32 %4293, 1
  %4297 = or i1 %4295, %4296
  %4298 = zext i1 %4297 to i8
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4298, i8* %4299, align 1
  %4300 = and i32 %4293, 255
  %4301 = call i32 @llvm.ctpop.i32(i32 %4300)
  %4302 = trunc i32 %4301 to i8
  %4303 = and i8 %4302, 1
  %4304 = xor i8 %4303, 1
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4304, i8* %4305, align 1
  %4306 = xor i64 1, %4289
  %4307 = trunc i64 %4306 to i32
  %4308 = xor i32 %4307, %4293
  %4309 = lshr i32 %4308, 4
  %4310 = trunc i32 %4309 to i8
  %4311 = and i8 %4310, 1
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4311, i8* %4312, align 1
  %4313 = icmp eq i32 %4293, 0
  %4314 = zext i1 %4313 to i8
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4314, i8* %4315, align 1
  %4316 = lshr i32 %4293, 31
  %4317 = trunc i32 %4316 to i8
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4317, i8* %4318, align 1
  %4319 = lshr i32 %4292, 31
  %4320 = xor i32 %4316, %4319
  %4321 = add i32 %4320, %4316
  %4322 = icmp eq i32 %4321, 2
  %4323 = zext i1 %4322 to i8
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4323, i8* %4324, align 1
  store %struct.Memory* %loadMem_41e045, %struct.Memory** %MEMORY
  %loadMem_41e048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 33
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %4327 to i64*
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 5
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %RCX.i507 = bitcast %union.anon* %4330 to i64*
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 15
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %4333 to i64*
  %4334 = load i64, i64* %RBP.i508
  %4335 = sub i64 %4334, 40
  %4336 = load i64, i64* %PC.i506
  %4337 = add i64 %4336, 4
  store i64 %4337, i64* %PC.i506
  %4338 = inttoptr i64 %4335 to i64*
  %4339 = load i64, i64* %4338
  store i64 %4339, i64* %RCX.i507, align 8
  store %struct.Memory* %loadMem_41e048, %struct.Memory** %MEMORY
  %loadMem_41e04c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4341 = getelementptr inbounds %struct.GPR, %struct.GPR* %4340, i32 0, i32 33
  %4342 = getelementptr inbounds %struct.Reg, %struct.Reg* %4341, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %4342 to i64*
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 1
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %4345 to i64*
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 5
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %RCX.i505 = bitcast %union.anon* %4348 to i64*
  %4349 = load i64, i64* %RAX.i504
  %4350 = load i64, i64* %RCX.i505
  %4351 = load i64, i64* %PC.i503
  %4352 = add i64 %4351, 3
  store i64 %4352, i64* %PC.i503
  %4353 = inttoptr i64 %4350 to i32*
  %4354 = load i32, i32* %4353
  %4355 = shl i64 %4349, 32
  %4356 = ashr exact i64 %4355, 32
  %4357 = sext i32 %4354 to i64
  %4358 = mul i64 %4357, %4356
  %4359 = trunc i64 %4358 to i32
  %4360 = and i64 %4358, 4294967295
  store i64 %4360, i64* %RAX.i504, align 8
  %4361 = shl i64 %4358, 32
  %4362 = ashr exact i64 %4361, 32
  %4363 = icmp ne i64 %4362, %4358
  %4364 = zext i1 %4363 to i8
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4364, i8* %4365, align 1
  %4366 = and i32 %4359, 255
  %4367 = call i32 @llvm.ctpop.i32(i32 %4366)
  %4368 = trunc i32 %4367 to i8
  %4369 = and i8 %4368, 1
  %4370 = xor i8 %4369, 1
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4370, i8* %4371, align 1
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4372, align 1
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4373, align 1
  %4374 = lshr i32 %4359, 31
  %4375 = trunc i32 %4374 to i8
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4375, i8* %4376, align 1
  %4377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4364, i8* %4377, align 1
  store %struct.Memory* %loadMem_41e04c, %struct.Memory** %MEMORY
  %loadMem_41e04f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 33
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 1
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %4383 to i64*
  %4384 = load i64, i64* %RAX.i502
  %4385 = load i64, i64* %PC.i501
  %4386 = add i64 %4385, 3
  store i64 %4386, i64* %PC.i501
  %4387 = trunc i64 %4384 to i32
  %4388 = sub i32 %4387, 1
  %4389 = zext i32 %4388 to i64
  store i64 %4389, i64* %RAX.i502, align 8
  %4390 = icmp ult i32 %4387, 1
  %4391 = zext i1 %4390 to i8
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4391, i8* %4392, align 1
  %4393 = and i32 %4388, 255
  %4394 = call i32 @llvm.ctpop.i32(i32 %4393)
  %4395 = trunc i32 %4394 to i8
  %4396 = and i8 %4395, 1
  %4397 = xor i8 %4396, 1
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4397, i8* %4398, align 1
  %4399 = xor i64 1, %4384
  %4400 = trunc i64 %4399 to i32
  %4401 = xor i32 %4400, %4388
  %4402 = lshr i32 %4401, 4
  %4403 = trunc i32 %4402 to i8
  %4404 = and i8 %4403, 1
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4404, i8* %4405, align 1
  %4406 = icmp eq i32 %4388, 0
  %4407 = zext i1 %4406 to i8
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4407, i8* %4408, align 1
  %4409 = lshr i32 %4388, 31
  %4410 = trunc i32 %4409 to i8
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4410, i8* %4411, align 1
  %4412 = lshr i32 %4387, 31
  %4413 = xor i32 %4409, %4412
  %4414 = add i32 %4413, %4412
  %4415 = icmp eq i32 %4414, 2
  %4416 = zext i1 %4415 to i8
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4416, i8* %4417, align 1
  store %struct.Memory* %loadMem_41e04f, %struct.Memory** %MEMORY
  %loadMem_41e052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4419 = getelementptr inbounds %struct.GPR, %struct.GPR* %4418, i32 0, i32 33
  %4420 = getelementptr inbounds %struct.Reg, %struct.Reg* %4419, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %4420 to i64*
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 5
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %RCX.i499 = bitcast %union.anon* %4423 to i64*
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 15
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %4426 to i64*
  %4427 = load i64, i64* %RBP.i500
  %4428 = sub i64 %4427, 40
  %4429 = load i64, i64* %PC.i498
  %4430 = add i64 %4429, 4
  store i64 %4430, i64* %PC.i498
  %4431 = inttoptr i64 %4428 to i64*
  %4432 = load i64, i64* %4431
  store i64 %4432, i64* %RCX.i499, align 8
  store %struct.Memory* %loadMem_41e052, %struct.Memory** %MEMORY
  %loadMem_41e056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 33
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %4435 to i64*
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 5
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %4438 to i64*
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 7
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %RDX.i497 = bitcast %union.anon* %4441 to i64*
  %4442 = load i64, i64* %RCX.i496
  %4443 = load i64, i64* %PC.i495
  %4444 = add i64 %4443, 2
  store i64 %4444, i64* %PC.i495
  %4445 = inttoptr i64 %4442 to i32*
  %4446 = load i32, i32* %4445
  %4447 = zext i32 %4446 to i64
  store i64 %4447, i64* %RDX.i497, align 8
  store %struct.Memory* %loadMem_41e056, %struct.Memory** %MEMORY
  %loadMem_41e058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 33
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %4450 to i64*
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 7
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %RDX.i494 = bitcast %union.anon* %4453 to i64*
  %4454 = load i64, i64* %RDX.i494
  %4455 = load i64, i64* %PC.i493
  %4456 = add i64 %4455, 3
  store i64 %4456, i64* %PC.i493
  %4457 = trunc i64 %4454 to i32
  %4458 = sub i32 %4457, 1
  %4459 = zext i32 %4458 to i64
  store i64 %4459, i64* %RDX.i494, align 8
  %4460 = icmp ult i32 %4457, 1
  %4461 = zext i1 %4460 to i8
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4461, i8* %4462, align 1
  %4463 = and i32 %4458, 255
  %4464 = call i32 @llvm.ctpop.i32(i32 %4463)
  %4465 = trunc i32 %4464 to i8
  %4466 = and i8 %4465, 1
  %4467 = xor i8 %4466, 1
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4467, i8* %4468, align 1
  %4469 = xor i64 1, %4454
  %4470 = trunc i64 %4469 to i32
  %4471 = xor i32 %4470, %4458
  %4472 = lshr i32 %4471, 4
  %4473 = trunc i32 %4472 to i8
  %4474 = and i8 %4473, 1
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4474, i8* %4475, align 1
  %4476 = icmp eq i32 %4458, 0
  %4477 = zext i1 %4476 to i8
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4477, i8* %4478, align 1
  %4479 = lshr i32 %4458, 31
  %4480 = trunc i32 %4479 to i8
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4480, i8* %4481, align 1
  %4482 = lshr i32 %4457, 31
  %4483 = xor i32 %4479, %4482
  %4484 = add i32 %4483, %4482
  %4485 = icmp eq i32 %4484, 2
  %4486 = zext i1 %4485 to i8
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4486, i8* %4487, align 1
  store %struct.Memory* %loadMem_41e058, %struct.Memory** %MEMORY
  %loadMem_41e05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 33
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %4490 to i64*
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 5
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %4493 to i64*
  %4494 = load i64, i64* %PC.i491
  %4495 = add i64 %4494, 8
  store i64 %4495, i64* %PC.i491
  %4496 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %4496, i64* %RCX.i492, align 8
  store %struct.Memory* %loadMem_41e05b, %struct.Memory** %MEMORY
  %loadMem_41e063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 33
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %4499 to i64*
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4501 = getelementptr inbounds %struct.GPR, %struct.GPR* %4500, i32 0, i32 1
  %4502 = getelementptr inbounds %struct.Reg, %struct.Reg* %4501, i32 0, i32 0
  %EAX.i489 = bitcast %union.anon* %4502 to i32*
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4504 = getelementptr inbounds %struct.GPR, %struct.GPR* %4503, i32 0, i32 9
  %4505 = getelementptr inbounds %struct.Reg, %struct.Reg* %4504, i32 0, i32 0
  %RSI.i490 = bitcast %union.anon* %4505 to i64*
  %4506 = load i32, i32* %EAX.i489
  %4507 = zext i32 %4506 to i64
  %4508 = load i64, i64* %PC.i488
  %4509 = add i64 %4508, 2
  store i64 %4509, i64* %PC.i488
  %4510 = and i64 %4507, 4294967295
  store i64 %4510, i64* %RSI.i490, align 8
  store %struct.Memory* %loadMem_41e063, %struct.Memory** %MEMORY
  %loadMem1_41e065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 33
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %4513 to i64*
  %4514 = load i64, i64* %PC.i487
  %4515 = add i64 %4514, 795
  %4516 = load i64, i64* %PC.i487
  %4517 = add i64 %4516, 5
  %4518 = load i64, i64* %PC.i487
  %4519 = add i64 %4518, 5
  store i64 %4519, i64* %PC.i487
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4521 = load i64, i64* %4520, align 8
  %4522 = add i64 %4521, -8
  %4523 = inttoptr i64 %4522 to i64*
  store i64 %4517, i64* %4523
  store i64 %4522, i64* %4520, align 8
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4515, i64* %4524, align 8
  store %struct.Memory* %loadMem1_41e065, %struct.Memory** %MEMORY
  %loadMem2_41e065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e065 = load i64, i64* %3
  %call2_41e065 = call %struct.Memory* @sub_41e380.gop_pyramid(%struct.State* %0, i64 %loadPC_41e065, %struct.Memory* %loadMem2_41e065)
  store %struct.Memory* %call2_41e065, %struct.Memory** %MEMORY
  %loadMem_41e06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 33
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %4527 to i64*
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4529 = getelementptr inbounds %struct.GPR, %struct.GPR* %4528, i32 0, i32 1
  %4530 = getelementptr inbounds %struct.Reg, %struct.Reg* %4529, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %4530 to i64*
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4532 = getelementptr inbounds %struct.GPR, %struct.GPR* %4531, i32 0, i32 15
  %4533 = getelementptr inbounds %struct.Reg, %struct.Reg* %4532, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %4533 to i64*
  %4534 = load i64, i64* %RBP.i486
  %4535 = sub i64 %4534, 8
  %4536 = load i64, i64* %PC.i484
  %4537 = add i64 %4536, 3
  store i64 %4537, i64* %PC.i484
  %4538 = inttoptr i64 %4535 to i32*
  %4539 = load i32, i32* %4538
  %4540 = zext i32 %4539 to i64
  store i64 %4540, i64* %RAX.i485, align 8
  store %struct.Memory* %loadMem_41e06a, %struct.Memory** %MEMORY
  %loadMem_41e06d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 33
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %4543 to i64*
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4545 = getelementptr inbounds %struct.GPR, %struct.GPR* %4544, i32 0, i32 1
  %4546 = getelementptr inbounds %struct.Reg, %struct.Reg* %4545, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %4546 to i64*
  %4547 = load i64, i64* %RAX.i483
  %4548 = load i64, i64* %PC.i482
  %4549 = add i64 %4548, 3
  store i64 %4549, i64* %PC.i482
  %4550 = trunc i64 %4547 to i32
  %4551 = add i32 1, %4550
  %4552 = zext i32 %4551 to i64
  store i64 %4552, i64* %RAX.i483, align 8
  %4553 = icmp ult i32 %4551, %4550
  %4554 = icmp ult i32 %4551, 1
  %4555 = or i1 %4553, %4554
  %4556 = zext i1 %4555 to i8
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4556, i8* %4557, align 1
  %4558 = and i32 %4551, 255
  %4559 = call i32 @llvm.ctpop.i32(i32 %4558)
  %4560 = trunc i32 %4559 to i8
  %4561 = and i8 %4560, 1
  %4562 = xor i8 %4561, 1
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4562, i8* %4563, align 1
  %4564 = xor i64 1, %4547
  %4565 = trunc i64 %4564 to i32
  %4566 = xor i32 %4565, %4551
  %4567 = lshr i32 %4566, 4
  %4568 = trunc i32 %4567 to i8
  %4569 = and i8 %4568, 1
  %4570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4569, i8* %4570, align 1
  %4571 = icmp eq i32 %4551, 0
  %4572 = zext i1 %4571 to i8
  %4573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4572, i8* %4573, align 1
  %4574 = lshr i32 %4551, 31
  %4575 = trunc i32 %4574 to i8
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4575, i8* %4576, align 1
  %4577 = lshr i32 %4550, 31
  %4578 = xor i32 %4574, %4577
  %4579 = add i32 %4578, %4574
  %4580 = icmp eq i32 %4579, 2
  %4581 = zext i1 %4580 to i8
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4581, i8* %4582, align 1
  store %struct.Memory* %loadMem_41e06d, %struct.Memory** %MEMORY
  %loadMem_41e070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4584 = getelementptr inbounds %struct.GPR, %struct.GPR* %4583, i32 0, i32 33
  %4585 = getelementptr inbounds %struct.Reg, %struct.Reg* %4584, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %4585 to i64*
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 1
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %EAX.i480 = bitcast %union.anon* %4588 to i32*
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4590 = getelementptr inbounds %struct.GPR, %struct.GPR* %4589, i32 0, i32 15
  %4591 = getelementptr inbounds %struct.Reg, %struct.Reg* %4590, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %4591 to i64*
  %4592 = load i64, i64* %RBP.i481
  %4593 = sub i64 %4592, 8
  %4594 = load i32, i32* %EAX.i480
  %4595 = zext i32 %4594 to i64
  %4596 = load i64, i64* %PC.i479
  %4597 = add i64 %4596, 3
  store i64 %4597, i64* %PC.i479
  %4598 = inttoptr i64 %4593 to i32*
  store i32 %4594, i32* %4598
  store %struct.Memory* %loadMem_41e070, %struct.Memory** %MEMORY
  %loadMem_41e073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4600 = getelementptr inbounds %struct.GPR, %struct.GPR* %4599, i32 0, i32 33
  %4601 = getelementptr inbounds %struct.Reg, %struct.Reg* %4600, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %4601 to i64*
  %4602 = load i64, i64* %PC.i478
  %4603 = add i64 %4602, -67
  %4604 = load i64, i64* %PC.i478
  %4605 = add i64 %4604, 5
  store i64 %4605, i64* %PC.i478
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4603, i64* %4606, align 8
  store %struct.Memory* %loadMem_41e073, %struct.Memory** %MEMORY
  br label %block_.L_41e030

block_.L_41e078:                                  ; preds = %block_.L_41e030
  %loadMem_41e078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 33
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 1
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %4612 to i64*
  %4613 = load i64, i64* %PC.i476
  %4614 = add i64 %4613, 8
  store i64 %4614, i64* %PC.i476
  %4615 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*)
  store i64 %4615, i64* %RAX.i477, align 8
  store %struct.Memory* %loadMem_41e078, %struct.Memory** %MEMORY
  %loadMem_41e080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4617 = getelementptr inbounds %struct.GPR, %struct.GPR* %4616, i32 0, i32 33
  %4618 = getelementptr inbounds %struct.Reg, %struct.Reg* %4617, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %4618 to i64*
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 1
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %4621 to i64*
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 5
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %4624 to i64*
  %4625 = load i64, i64* %RAX.i474
  %4626 = add i64 %4625, 1236
  %4627 = load i64, i64* %PC.i473
  %4628 = add i64 %4627, 6
  store i64 %4628, i64* %PC.i473
  %4629 = inttoptr i64 %4626 to i32*
  %4630 = load i32, i32* %4629
  %4631 = zext i32 %4630 to i64
  store i64 %4631, i64* %RCX.i475, align 8
  store %struct.Memory* %loadMem_41e080, %struct.Memory** %MEMORY
  %loadMem_41e086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 33
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %4634 to i64*
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 5
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %ECX.i471 = bitcast %union.anon* %4637 to i32*
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4639 = getelementptr inbounds %struct.GPR, %struct.GPR* %4638, i32 0, i32 15
  %4640 = getelementptr inbounds %struct.Reg, %struct.Reg* %4639, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %4640 to i64*
  %4641 = load i64, i64* %RBP.i472
  %4642 = sub i64 %4641, 8
  %4643 = load i32, i32* %ECX.i471
  %4644 = zext i32 %4643 to i64
  %4645 = load i64, i64* %PC.i470
  %4646 = add i64 %4645, 3
  store i64 %4646, i64* %PC.i470
  %4647 = inttoptr i64 %4642 to i32*
  store i32 %4643, i32* %4647
  store %struct.Memory* %loadMem_41e086, %struct.Memory** %MEMORY
  br label %block_.L_41e089

block_.L_41e089:                                  ; preds = %block_.L_41e361, %block_.L_41e078
  %loadMem_41e089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 33
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %4650 to i64*
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 15
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %4653 to i64*
  %4654 = load i64, i64* %RBP.i469
  %4655 = sub i64 %4654, 8
  %4656 = load i64, i64* %PC.i468
  %4657 = add i64 %4656, 4
  store i64 %4657, i64* %PC.i468
  %4658 = inttoptr i64 %4655 to i32*
  %4659 = load i32, i32* %4658
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4660, align 1
  %4661 = and i32 %4659, 255
  %4662 = call i32 @llvm.ctpop.i32(i32 %4661)
  %4663 = trunc i32 %4662 to i8
  %4664 = and i8 %4663, 1
  %4665 = xor i8 %4664, 1
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4665, i8* %4666, align 1
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4667, align 1
  %4668 = icmp eq i32 %4659, 0
  %4669 = zext i1 %4668 to i8
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4669, i8* %4670, align 1
  %4671 = lshr i32 %4659, 31
  %4672 = trunc i32 %4671 to i8
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4672, i8* %4673, align 1
  %4674 = lshr i32 %4659, 31
  %4675 = xor i32 %4671, %4674
  %4676 = add i32 %4675, %4674
  %4677 = icmp eq i32 %4676, 2
  %4678 = zext i1 %4677 to i8
  %4679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4678, i8* %4679, align 1
  store %struct.Memory* %loadMem_41e089, %struct.Memory** %MEMORY
  %loadMem_41e08d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 33
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %4682 to i64*
  %4683 = load i64, i64* %PC.i467
  %4684 = add i64 %4683, 738
  %4685 = load i64, i64* %PC.i467
  %4686 = add i64 %4685, 6
  %4687 = load i64, i64* %PC.i467
  %4688 = add i64 %4687, 6
  store i64 %4688, i64* %PC.i467
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4690 = load i8, i8* %4689, align 1
  %4691 = icmp ne i8 %4690, 0
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4693 = load i8, i8* %4692, align 1
  %4694 = icmp ne i8 %4693, 0
  %4695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4696 = load i8, i8* %4695, align 1
  %4697 = icmp ne i8 %4696, 0
  %4698 = xor i1 %4694, %4697
  %4699 = or i1 %4691, %4698
  %4700 = zext i1 %4699 to i8
  store i8 %4700, i8* %BRANCH_TAKEN, align 1
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4702 = select i1 %4699, i64 %4684, i64 %4686
  store i64 %4702, i64* %4701, align 8
  store %struct.Memory* %loadMem_41e08d, %struct.Memory** %MEMORY
  %loadBr_41e08d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e08d = icmp eq i8 %loadBr_41e08d, 1
  br i1 %cmpBr_41e08d, label %block_.L_41e36f, label %block_41e093

block_41e093:                                     ; preds = %block_.L_41e089
  %loadMem_41e093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4704 = getelementptr inbounds %struct.GPR, %struct.GPR* %4703, i32 0, i32 33
  %4705 = getelementptr inbounds %struct.Reg, %struct.Reg* %4704, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %4705 to i64*
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 15
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %4708 to i64*
  %4709 = load i64, i64* %RBP.i466
  %4710 = sub i64 %4709, 56
  %4711 = load i64, i64* %PC.i465
  %4712 = add i64 %4711, 7
  store i64 %4712, i64* %PC.i465
  %4713 = inttoptr i64 %4710 to i32*
  store i32 1, i32* %4713
  store %struct.Memory* %loadMem_41e093, %struct.Memory** %MEMORY
  br label %block_.L_41e09a

block_.L_41e09a:                                  ; preds = %block_.L_41e34e, %block_41e093
  %loadMem_41e09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 33
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %4716 to i64*
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 1
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %4719 to i64*
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 15
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %4722 to i64*
  %4723 = load i64, i64* %RBP.i464
  %4724 = sub i64 %4723, 56
  %4725 = load i64, i64* %PC.i462
  %4726 = add i64 %4725, 3
  store i64 %4726, i64* %PC.i462
  %4727 = inttoptr i64 %4724 to i32*
  %4728 = load i32, i32* %4727
  %4729 = zext i32 %4728 to i64
  store i64 %4729, i64* %RAX.i463, align 8
  store %struct.Memory* %loadMem_41e09a, %struct.Memory** %MEMORY
  %loadMem_41e09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4731 = getelementptr inbounds %struct.GPR, %struct.GPR* %4730, i32 0, i32 33
  %4732 = getelementptr inbounds %struct.Reg, %struct.Reg* %4731, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %4732 to i64*
  %4733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4734 = getelementptr inbounds %struct.GPR, %struct.GPR* %4733, i32 0, i32 1
  %4735 = getelementptr inbounds %struct.Reg, %struct.Reg* %4734, i32 0, i32 0
  %EAX.i460 = bitcast %union.anon* %4735 to i32*
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4737 = getelementptr inbounds %struct.GPR, %struct.GPR* %4736, i32 0, i32 15
  %4738 = getelementptr inbounds %struct.Reg, %struct.Reg* %4737, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %4738 to i64*
  %4739 = load i32, i32* %EAX.i460
  %4740 = zext i32 %4739 to i64
  %4741 = load i64, i64* %RBP.i461
  %4742 = sub i64 %4741, 8
  %4743 = load i64, i64* %PC.i459
  %4744 = add i64 %4743, 3
  store i64 %4744, i64* %PC.i459
  %4745 = inttoptr i64 %4742 to i32*
  %4746 = load i32, i32* %4745
  %4747 = sub i32 %4739, %4746
  %4748 = icmp ult i32 %4739, %4746
  %4749 = zext i1 %4748 to i8
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4749, i8* %4750, align 1
  %4751 = and i32 %4747, 255
  %4752 = call i32 @llvm.ctpop.i32(i32 %4751)
  %4753 = trunc i32 %4752 to i8
  %4754 = and i8 %4753, 1
  %4755 = xor i8 %4754, 1
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4755, i8* %4756, align 1
  %4757 = xor i32 %4746, %4739
  %4758 = xor i32 %4757, %4747
  %4759 = lshr i32 %4758, 4
  %4760 = trunc i32 %4759 to i8
  %4761 = and i8 %4760, 1
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4761, i8* %4762, align 1
  %4763 = icmp eq i32 %4747, 0
  %4764 = zext i1 %4763 to i8
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4764, i8* %4765, align 1
  %4766 = lshr i32 %4747, 31
  %4767 = trunc i32 %4766 to i8
  %4768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4767, i8* %4768, align 1
  %4769 = lshr i32 %4739, 31
  %4770 = lshr i32 %4746, 31
  %4771 = xor i32 %4770, %4769
  %4772 = xor i32 %4766, %4769
  %4773 = add i32 %4772, %4771
  %4774 = icmp eq i32 %4773, 2
  %4775 = zext i1 %4774 to i8
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4775, i8* %4776, align 1
  store %struct.Memory* %loadMem_41e09d, %struct.Memory** %MEMORY
  %loadMem_41e0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 33
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %4779 to i64*
  %4780 = load i64, i64* %PC.i458
  %4781 = add i64 %4780, 700
  %4782 = load i64, i64* %PC.i458
  %4783 = add i64 %4782, 6
  %4784 = load i64, i64* %PC.i458
  %4785 = add i64 %4784, 6
  store i64 %4785, i64* %PC.i458
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4787 = load i8, i8* %4786, align 1
  %4788 = icmp ne i8 %4787, 0
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4790 = load i8, i8* %4789, align 1
  %4791 = icmp ne i8 %4790, 0
  %4792 = xor i1 %4788, %4791
  %4793 = xor i1 %4792, true
  %4794 = zext i1 %4793 to i8
  store i8 %4794, i8* %BRANCH_TAKEN, align 1
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4796 = select i1 %4792, i64 %4783, i64 %4781
  store i64 %4796, i64* %4795, align 8
  store %struct.Memory* %loadMem_41e0a0, %struct.Memory** %MEMORY
  %loadBr_41e0a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e0a0 = icmp eq i8 %loadBr_41e0a0, 1
  br i1 %cmpBr_41e0a0, label %block_.L_41e35c, label %block_41e0a6

block_41e0a6:                                     ; preds = %block_.L_41e09a
  %loadMem_41e0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4798 = getelementptr inbounds %struct.GPR, %struct.GPR* %4797, i32 0, i32 33
  %4799 = getelementptr inbounds %struct.Reg, %struct.Reg* %4798, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %4799 to i64*
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4801 = getelementptr inbounds %struct.GPR, %struct.GPR* %4800, i32 0, i32 1
  %4802 = getelementptr inbounds %struct.Reg, %struct.Reg* %4801, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %4802 to i64*
  %4803 = load i64, i64* %PC.i456
  %4804 = add i64 %4803, 8
  store i64 %4804, i64* %PC.i456
  %4805 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %4805, i64* %RAX.i457, align 8
  store %struct.Memory* %loadMem_41e0a6, %struct.Memory** %MEMORY
  %loadMem_41e0ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 33
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 5
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %4811 to i64*
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4813 = getelementptr inbounds %struct.GPR, %struct.GPR* %4812, i32 0, i32 15
  %4814 = getelementptr inbounds %struct.Reg, %struct.Reg* %4813, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %4814 to i64*
  %4815 = load i64, i64* %RBP.i455
  %4816 = sub i64 %4815, 56
  %4817 = load i64, i64* %PC.i453
  %4818 = add i64 %4817, 4
  store i64 %4818, i64* %PC.i453
  %4819 = inttoptr i64 %4816 to i32*
  %4820 = load i32, i32* %4819
  %4821 = sext i32 %4820 to i64
  store i64 %4821, i64* %RCX.i454, align 8
  store %struct.Memory* %loadMem_41e0ae, %struct.Memory** %MEMORY
  %loadMem_41e0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 33
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %4824 to i64*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 5
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %RCX.i452 = bitcast %union.anon* %4827 to i64*
  %4828 = load i64, i64* %RCX.i452
  %4829 = load i64, i64* %PC.i451
  %4830 = add i64 %4829, 4
  store i64 %4830, i64* %PC.i451
  %4831 = sext i64 %4828 to i128
  %4832 = and i128 %4831, -18446744073709551616
  %4833 = zext i64 %4828 to i128
  %4834 = or i128 %4832, %4833
  %4835 = mul i128 24, %4834
  %4836 = trunc i128 %4835 to i64
  store i64 %4836, i64* %RCX.i452, align 8
  %4837 = sext i64 %4836 to i128
  %4838 = icmp ne i128 %4837, %4835
  %4839 = zext i1 %4838 to i8
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4839, i8* %4840, align 1
  %4841 = trunc i128 %4835 to i32
  %4842 = and i32 %4841, 255
  %4843 = call i32 @llvm.ctpop.i32(i32 %4842)
  %4844 = trunc i32 %4843 to i8
  %4845 = and i8 %4844, 1
  %4846 = xor i8 %4845, 1
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4846, i8* %4847, align 1
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4848, align 1
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4849, align 1
  %4850 = lshr i64 %4836, 63
  %4851 = trunc i64 %4850 to i8
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4851, i8* %4852, align 1
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4839, i8* %4853, align 1
  store %struct.Memory* %loadMem_41e0b2, %struct.Memory** %MEMORY
  %loadMem_41e0b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4855 = getelementptr inbounds %struct.GPR, %struct.GPR* %4854, i32 0, i32 33
  %4856 = getelementptr inbounds %struct.Reg, %struct.Reg* %4855, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %4856 to i64*
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4858 = getelementptr inbounds %struct.GPR, %struct.GPR* %4857, i32 0, i32 1
  %4859 = getelementptr inbounds %struct.Reg, %struct.Reg* %4858, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %4859 to i64*
  %4860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4861 = getelementptr inbounds %struct.GPR, %struct.GPR* %4860, i32 0, i32 5
  %4862 = getelementptr inbounds %struct.Reg, %struct.Reg* %4861, i32 0, i32 0
  %RCX.i450 = bitcast %union.anon* %4862 to i64*
  %4863 = load i64, i64* %RAX.i449
  %4864 = load i64, i64* %RCX.i450
  %4865 = load i64, i64* %PC.i448
  %4866 = add i64 %4865, 3
  store i64 %4866, i64* %PC.i448
  %4867 = add i64 %4864, %4863
  store i64 %4867, i64* %RAX.i449, align 8
  %4868 = icmp ult i64 %4867, %4863
  %4869 = icmp ult i64 %4867, %4864
  %4870 = or i1 %4868, %4869
  %4871 = zext i1 %4870 to i8
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4871, i8* %4872, align 1
  %4873 = trunc i64 %4867 to i32
  %4874 = and i32 %4873, 255
  %4875 = call i32 @llvm.ctpop.i32(i32 %4874)
  %4876 = trunc i32 %4875 to i8
  %4877 = and i8 %4876, 1
  %4878 = xor i8 %4877, 1
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4878, i8* %4879, align 1
  %4880 = xor i64 %4864, %4863
  %4881 = xor i64 %4880, %4867
  %4882 = lshr i64 %4881, 4
  %4883 = trunc i64 %4882 to i8
  %4884 = and i8 %4883, 1
  %4885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4884, i8* %4885, align 1
  %4886 = icmp eq i64 %4867, 0
  %4887 = zext i1 %4886 to i8
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4887, i8* %4888, align 1
  %4889 = lshr i64 %4867, 63
  %4890 = trunc i64 %4889 to i8
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4890, i8* %4891, align 1
  %4892 = lshr i64 %4863, 63
  %4893 = lshr i64 %4864, 63
  %4894 = xor i64 %4889, %4892
  %4895 = xor i64 %4889, %4893
  %4896 = add i64 %4894, %4895
  %4897 = icmp eq i64 %4896, 2
  %4898 = zext i1 %4897 to i8
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4898, i8* %4899, align 1
  store %struct.Memory* %loadMem_41e0b6, %struct.Memory** %MEMORY
  %loadMem_41e0b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 33
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4902 to i64*
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 1
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %4905 to i64*
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 7
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %RDX.i447 = bitcast %union.anon* %4908 to i64*
  %4909 = load i64, i64* %RAX.i446
  %4910 = add i64 %4909, 16
  %4911 = load i64, i64* %PC.i445
  %4912 = add i64 %4911, 3
  store i64 %4912, i64* %PC.i445
  %4913 = inttoptr i64 %4910 to i32*
  %4914 = load i32, i32* %4913
  %4915 = zext i32 %4914 to i64
  store i64 %4915, i64* %RDX.i447, align 8
  store %struct.Memory* %loadMem_41e0b9, %struct.Memory** %MEMORY
  %loadMem_41e0bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 33
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %4918 to i64*
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 1
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %RAX.i444 = bitcast %union.anon* %4921 to i64*
  %4922 = load i64, i64* %PC.i443
  %4923 = add i64 %4922, 8
  store i64 %4923, i64* %PC.i443
  %4924 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %4924, i64* %RAX.i444, align 8
  store %struct.Memory* %loadMem_41e0bc, %struct.Memory** %MEMORY
  %loadMem_41e0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 33
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %4927 to i64*
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 9
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %RSI.i441 = bitcast %union.anon* %4930 to i64*
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 15
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %4933 to i64*
  %4934 = load i64, i64* %RBP.i442
  %4935 = sub i64 %4934, 56
  %4936 = load i64, i64* %PC.i440
  %4937 = add i64 %4936, 3
  store i64 %4937, i64* %PC.i440
  %4938 = inttoptr i64 %4935 to i32*
  %4939 = load i32, i32* %4938
  %4940 = zext i32 %4939 to i64
  store i64 %4940, i64* %RSI.i441, align 8
  store %struct.Memory* %loadMem_41e0c4, %struct.Memory** %MEMORY
  %loadMem_41e0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4942 = getelementptr inbounds %struct.GPR, %struct.GPR* %4941, i32 0, i32 33
  %4943 = getelementptr inbounds %struct.Reg, %struct.Reg* %4942, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %4943 to i64*
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4945 = getelementptr inbounds %struct.GPR, %struct.GPR* %4944, i32 0, i32 9
  %4946 = getelementptr inbounds %struct.Reg, %struct.Reg* %4945, i32 0, i32 0
  %RSI.i439 = bitcast %union.anon* %4946 to i64*
  %4947 = load i64, i64* %RSI.i439
  %4948 = load i64, i64* %PC.i438
  %4949 = add i64 %4948, 3
  store i64 %4949, i64* %PC.i438
  %4950 = trunc i64 %4947 to i32
  %4951 = sub i32 %4950, 1
  %4952 = zext i32 %4951 to i64
  store i64 %4952, i64* %RSI.i439, align 8
  %4953 = icmp ult i32 %4950, 1
  %4954 = zext i1 %4953 to i8
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4954, i8* %4955, align 1
  %4956 = and i32 %4951, 255
  %4957 = call i32 @llvm.ctpop.i32(i32 %4956)
  %4958 = trunc i32 %4957 to i8
  %4959 = and i8 %4958, 1
  %4960 = xor i8 %4959, 1
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4960, i8* %4961, align 1
  %4962 = xor i64 1, %4947
  %4963 = trunc i64 %4962 to i32
  %4964 = xor i32 %4963, %4951
  %4965 = lshr i32 %4964, 4
  %4966 = trunc i32 %4965 to i8
  %4967 = and i8 %4966, 1
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4967, i8* %4968, align 1
  %4969 = icmp eq i32 %4951, 0
  %4970 = zext i1 %4969 to i8
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4970, i8* %4971, align 1
  %4972 = lshr i32 %4951, 31
  %4973 = trunc i32 %4972 to i8
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4973, i8* %4974, align 1
  %4975 = lshr i32 %4950, 31
  %4976 = xor i32 %4972, %4975
  %4977 = add i32 %4976, %4975
  %4978 = icmp eq i32 %4977, 2
  %4979 = zext i1 %4978 to i8
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4979, i8* %4980, align 1
  store %struct.Memory* %loadMem_41e0c7, %struct.Memory** %MEMORY
  %loadMem_41e0ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 33
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %4983 to i64*
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4985 = getelementptr inbounds %struct.GPR, %struct.GPR* %4984, i32 0, i32 9
  %4986 = getelementptr inbounds %struct.Reg, %struct.Reg* %4985, i32 0, i32 0
  %ESI.i436 = bitcast %union.anon* %4986 to i32*
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 5
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %4989 to i64*
  %4990 = load i32, i32* %ESI.i436
  %4991 = zext i32 %4990 to i64
  %4992 = load i64, i64* %PC.i435
  %4993 = add i64 %4992, 3
  store i64 %4993, i64* %PC.i435
  %4994 = shl i64 %4991, 32
  %4995 = ashr exact i64 %4994, 32
  store i64 %4995, i64* %RCX.i437, align 8
  store %struct.Memory* %loadMem_41e0ca, %struct.Memory** %MEMORY
  %loadMem_41e0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 33
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %4998 to i64*
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5000 = getelementptr inbounds %struct.GPR, %struct.GPR* %4999, i32 0, i32 5
  %5001 = getelementptr inbounds %struct.Reg, %struct.Reg* %5000, i32 0, i32 0
  %RCX.i434 = bitcast %union.anon* %5001 to i64*
  %5002 = load i64, i64* %RCX.i434
  %5003 = load i64, i64* %PC.i433
  %5004 = add i64 %5003, 4
  store i64 %5004, i64* %PC.i433
  %5005 = sext i64 %5002 to i128
  %5006 = and i128 %5005, -18446744073709551616
  %5007 = zext i64 %5002 to i128
  %5008 = or i128 %5006, %5007
  %5009 = mul i128 24, %5008
  %5010 = trunc i128 %5009 to i64
  store i64 %5010, i64* %RCX.i434, align 8
  %5011 = sext i64 %5010 to i128
  %5012 = icmp ne i128 %5011, %5009
  %5013 = zext i1 %5012 to i8
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5013, i8* %5014, align 1
  %5015 = trunc i128 %5009 to i32
  %5016 = and i32 %5015, 255
  %5017 = call i32 @llvm.ctpop.i32(i32 %5016)
  %5018 = trunc i32 %5017 to i8
  %5019 = and i8 %5018, 1
  %5020 = xor i8 %5019, 1
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5020, i8* %5021, align 1
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5022, align 1
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5023, align 1
  %5024 = lshr i64 %5010, 63
  %5025 = trunc i64 %5024 to i8
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5025, i8* %5026, align 1
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5013, i8* %5027, align 1
  store %struct.Memory* %loadMem_41e0cd, %struct.Memory** %MEMORY
  %loadMem_41e0d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5029 = getelementptr inbounds %struct.GPR, %struct.GPR* %5028, i32 0, i32 33
  %5030 = getelementptr inbounds %struct.Reg, %struct.Reg* %5029, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %5030 to i64*
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5032 = getelementptr inbounds %struct.GPR, %struct.GPR* %5031, i32 0, i32 1
  %5033 = getelementptr inbounds %struct.Reg, %struct.Reg* %5032, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %5033 to i64*
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5035 = getelementptr inbounds %struct.GPR, %struct.GPR* %5034, i32 0, i32 5
  %5036 = getelementptr inbounds %struct.Reg, %struct.Reg* %5035, i32 0, i32 0
  %RCX.i432 = bitcast %union.anon* %5036 to i64*
  %5037 = load i64, i64* %RAX.i431
  %5038 = load i64, i64* %RCX.i432
  %5039 = load i64, i64* %PC.i430
  %5040 = add i64 %5039, 3
  store i64 %5040, i64* %PC.i430
  %5041 = add i64 %5038, %5037
  store i64 %5041, i64* %RAX.i431, align 8
  %5042 = icmp ult i64 %5041, %5037
  %5043 = icmp ult i64 %5041, %5038
  %5044 = or i1 %5042, %5043
  %5045 = zext i1 %5044 to i8
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5045, i8* %5046, align 1
  %5047 = trunc i64 %5041 to i32
  %5048 = and i32 %5047, 255
  %5049 = call i32 @llvm.ctpop.i32(i32 %5048)
  %5050 = trunc i32 %5049 to i8
  %5051 = and i8 %5050, 1
  %5052 = xor i8 %5051, 1
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5052, i8* %5053, align 1
  %5054 = xor i64 %5038, %5037
  %5055 = xor i64 %5054, %5041
  %5056 = lshr i64 %5055, 4
  %5057 = trunc i64 %5056 to i8
  %5058 = and i8 %5057, 1
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5058, i8* %5059, align 1
  %5060 = icmp eq i64 %5041, 0
  %5061 = zext i1 %5060 to i8
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5061, i8* %5062, align 1
  %5063 = lshr i64 %5041, 63
  %5064 = trunc i64 %5063 to i8
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5064, i8* %5065, align 1
  %5066 = lshr i64 %5037, 63
  %5067 = lshr i64 %5038, 63
  %5068 = xor i64 %5063, %5066
  %5069 = xor i64 %5063, %5067
  %5070 = add i64 %5068, %5069
  %5071 = icmp eq i64 %5070, 2
  %5072 = zext i1 %5071 to i8
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5072, i8* %5073, align 1
  store %struct.Memory* %loadMem_41e0d1, %struct.Memory** %MEMORY
  %loadMem_41e0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5075 = getelementptr inbounds %struct.GPR, %struct.GPR* %5074, i32 0, i32 33
  %5076 = getelementptr inbounds %struct.Reg, %struct.Reg* %5075, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %5076 to i64*
  %5077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5078 = getelementptr inbounds %struct.GPR, %struct.GPR* %5077, i32 0, i32 7
  %5079 = getelementptr inbounds %struct.Reg, %struct.Reg* %5078, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5079 to i32*
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5081 = getelementptr inbounds %struct.GPR, %struct.GPR* %5080, i32 0, i32 1
  %5082 = getelementptr inbounds %struct.Reg, %struct.Reg* %5081, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %5082 to i64*
  %5083 = load i32, i32* %EDX.i
  %5084 = zext i32 %5083 to i64
  %5085 = load i64, i64* %RAX.i429
  %5086 = add i64 %5085, 16
  %5087 = load i64, i64* %PC.i428
  %5088 = add i64 %5087, 3
  store i64 %5088, i64* %PC.i428
  %5089 = inttoptr i64 %5086 to i32*
  %5090 = load i32, i32* %5089
  %5091 = sub i32 %5083, %5090
  %5092 = icmp ult i32 %5083, %5090
  %5093 = zext i1 %5092 to i8
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5093, i8* %5094, align 1
  %5095 = and i32 %5091, 255
  %5096 = call i32 @llvm.ctpop.i32(i32 %5095)
  %5097 = trunc i32 %5096 to i8
  %5098 = and i8 %5097, 1
  %5099 = xor i8 %5098, 1
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5099, i8* %5100, align 1
  %5101 = xor i32 %5090, %5083
  %5102 = xor i32 %5101, %5091
  %5103 = lshr i32 %5102, 4
  %5104 = trunc i32 %5103 to i8
  %5105 = and i8 %5104, 1
  %5106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5105, i8* %5106, align 1
  %5107 = icmp eq i32 %5091, 0
  %5108 = zext i1 %5107 to i8
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5108, i8* %5109, align 1
  %5110 = lshr i32 %5091, 31
  %5111 = trunc i32 %5110 to i8
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5111, i8* %5112, align 1
  %5113 = lshr i32 %5083, 31
  %5114 = lshr i32 %5090, 31
  %5115 = xor i32 %5114, %5113
  %5116 = xor i32 %5110, %5113
  %5117 = add i32 %5116, %5115
  %5118 = icmp eq i32 %5117, 2
  %5119 = zext i1 %5118 to i8
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5119, i8* %5120, align 1
  store %struct.Memory* %loadMem_41e0d4, %struct.Memory** %MEMORY
  %loadMem_41e0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5122 = getelementptr inbounds %struct.GPR, %struct.GPR* %5121, i32 0, i32 33
  %5123 = getelementptr inbounds %struct.Reg, %struct.Reg* %5122, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %5123 to i64*
  %5124 = load i64, i64* %PC.i427
  %5125 = add i64 %5124, 626
  %5126 = load i64, i64* %PC.i427
  %5127 = add i64 %5126, 6
  %5128 = load i64, i64* %PC.i427
  %5129 = add i64 %5128, 6
  store i64 %5129, i64* %PC.i427
  %5130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5131 = load i8, i8* %5130, align 1
  %5132 = icmp ne i8 %5131, 0
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5134 = load i8, i8* %5133, align 1
  %5135 = icmp ne i8 %5134, 0
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5137 = load i8, i8* %5136, align 1
  %5138 = icmp ne i8 %5137, 0
  %5139 = xor i1 %5135, %5138
  %5140 = or i1 %5132, %5139
  %5141 = zext i1 %5140 to i8
  store i8 %5141, i8* %BRANCH_TAKEN, align 1
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5143 = select i1 %5140, i64 %5125, i64 %5127
  store i64 %5143, i64* %5142, align 8
  store %struct.Memory* %loadMem_41e0d7, %struct.Memory** %MEMORY
  %loadBr_41e0d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e0d7 = icmp eq i8 %loadBr_41e0d7, 1
  br i1 %cmpBr_41e0d7, label %block_.L_41e349, label %block_41e0dd

block_41e0dd:                                     ; preds = %block_41e0a6
  %loadMem_41e0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 33
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %5146 to i64*
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 1
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %5149 to i64*
  %5150 = load i64, i64* %PC.i425
  %5151 = add i64 %5150, 8
  store i64 %5151, i64* %PC.i425
  %5152 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %5152, i64* %RAX.i426, align 8
  store %struct.Memory* %loadMem_41e0dd, %struct.Memory** %MEMORY
  %loadMem_41e0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 33
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %5155 to i64*
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5157 = getelementptr inbounds %struct.GPR, %struct.GPR* %5156, i32 0, i32 5
  %5158 = getelementptr inbounds %struct.Reg, %struct.Reg* %5157, i32 0, i32 0
  %RCX.i423 = bitcast %union.anon* %5158 to i64*
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5160 = getelementptr inbounds %struct.GPR, %struct.GPR* %5159, i32 0, i32 15
  %5161 = getelementptr inbounds %struct.Reg, %struct.Reg* %5160, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %5161 to i64*
  %5162 = load i64, i64* %RBP.i424
  %5163 = sub i64 %5162, 56
  %5164 = load i64, i64* %PC.i422
  %5165 = add i64 %5164, 3
  store i64 %5165, i64* %PC.i422
  %5166 = inttoptr i64 %5163 to i32*
  %5167 = load i32, i32* %5166
  %5168 = zext i32 %5167 to i64
  store i64 %5168, i64* %RCX.i423, align 8
  store %struct.Memory* %loadMem_41e0e5, %struct.Memory** %MEMORY
  %loadMem_41e0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5170 = getelementptr inbounds %struct.GPR, %struct.GPR* %5169, i32 0, i32 33
  %5171 = getelementptr inbounds %struct.Reg, %struct.Reg* %5170, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %5171 to i64*
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 5
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %RCX.i421 = bitcast %union.anon* %5174 to i64*
  %5175 = load i64, i64* %RCX.i421
  %5176 = load i64, i64* %PC.i420
  %5177 = add i64 %5176, 3
  store i64 %5177, i64* %PC.i420
  %5178 = trunc i64 %5175 to i32
  %5179 = sub i32 %5178, 1
  %5180 = zext i32 %5179 to i64
  store i64 %5180, i64* %RCX.i421, align 8
  %5181 = icmp ult i32 %5178, 1
  %5182 = zext i1 %5181 to i8
  %5183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5182, i8* %5183, align 1
  %5184 = and i32 %5179, 255
  %5185 = call i32 @llvm.ctpop.i32(i32 %5184)
  %5186 = trunc i32 %5185 to i8
  %5187 = and i8 %5186, 1
  %5188 = xor i8 %5187, 1
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5188, i8* %5189, align 1
  %5190 = xor i64 1, %5175
  %5191 = trunc i64 %5190 to i32
  %5192 = xor i32 %5191, %5179
  %5193 = lshr i32 %5192, 4
  %5194 = trunc i32 %5193 to i8
  %5195 = and i8 %5194, 1
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5195, i8* %5196, align 1
  %5197 = icmp eq i32 %5179, 0
  %5198 = zext i1 %5197 to i8
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5198, i8* %5199, align 1
  %5200 = lshr i32 %5179, 31
  %5201 = trunc i32 %5200 to i8
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5201, i8* %5202, align 1
  %5203 = lshr i32 %5178, 31
  %5204 = xor i32 %5200, %5203
  %5205 = add i32 %5204, %5203
  %5206 = icmp eq i32 %5205, 2
  %5207 = zext i1 %5206 to i8
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5207, i8* %5208, align 1
  store %struct.Memory* %loadMem_41e0e8, %struct.Memory** %MEMORY
  %loadMem_41e0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5210 = getelementptr inbounds %struct.GPR, %struct.GPR* %5209, i32 0, i32 33
  %5211 = getelementptr inbounds %struct.Reg, %struct.Reg* %5210, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %5211 to i64*
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 5
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %ECX.i418 = bitcast %union.anon* %5214 to i32*
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 7
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %RDX.i419 = bitcast %union.anon* %5217 to i64*
  %5218 = load i32, i32* %ECX.i418
  %5219 = zext i32 %5218 to i64
  %5220 = load i64, i64* %PC.i417
  %5221 = add i64 %5220, 3
  store i64 %5221, i64* %PC.i417
  %5222 = shl i64 %5219, 32
  %5223 = ashr exact i64 %5222, 32
  store i64 %5223, i64* %RDX.i419, align 8
  store %struct.Memory* %loadMem_41e0eb, %struct.Memory** %MEMORY
  %loadMem_41e0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5225 = getelementptr inbounds %struct.GPR, %struct.GPR* %5224, i32 0, i32 33
  %5226 = getelementptr inbounds %struct.Reg, %struct.Reg* %5225, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %5226 to i64*
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5228 = getelementptr inbounds %struct.GPR, %struct.GPR* %5227, i32 0, i32 7
  %5229 = getelementptr inbounds %struct.Reg, %struct.Reg* %5228, i32 0, i32 0
  %RDX.i416 = bitcast %union.anon* %5229 to i64*
  %5230 = load i64, i64* %RDX.i416
  %5231 = load i64, i64* %PC.i415
  %5232 = add i64 %5231, 4
  store i64 %5232, i64* %PC.i415
  %5233 = sext i64 %5230 to i128
  %5234 = and i128 %5233, -18446744073709551616
  %5235 = zext i64 %5230 to i128
  %5236 = or i128 %5234, %5235
  %5237 = mul i128 24, %5236
  %5238 = trunc i128 %5237 to i64
  store i64 %5238, i64* %RDX.i416, align 8
  %5239 = sext i64 %5238 to i128
  %5240 = icmp ne i128 %5239, %5237
  %5241 = zext i1 %5240 to i8
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5241, i8* %5242, align 1
  %5243 = trunc i128 %5237 to i32
  %5244 = and i32 %5243, 255
  %5245 = call i32 @llvm.ctpop.i32(i32 %5244)
  %5246 = trunc i32 %5245 to i8
  %5247 = and i8 %5246, 1
  %5248 = xor i8 %5247, 1
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5248, i8* %5249, align 1
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5250, align 1
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5251, align 1
  %5252 = lshr i64 %5238, 63
  %5253 = trunc i64 %5252 to i8
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5253, i8* %5254, align 1
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5241, i8* %5255, align 1
  store %struct.Memory* %loadMem_41e0ee, %struct.Memory** %MEMORY
  %loadMem_41e0f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 33
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %5258 to i64*
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 1
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %5261 to i64*
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5263 = getelementptr inbounds %struct.GPR, %struct.GPR* %5262, i32 0, i32 7
  %5264 = getelementptr inbounds %struct.Reg, %struct.Reg* %5263, i32 0, i32 0
  %RDX.i414 = bitcast %union.anon* %5264 to i64*
  %5265 = load i64, i64* %RAX.i413
  %5266 = load i64, i64* %RDX.i414
  %5267 = load i64, i64* %PC.i412
  %5268 = add i64 %5267, 3
  store i64 %5268, i64* %PC.i412
  %5269 = add i64 %5266, %5265
  store i64 %5269, i64* %RAX.i413, align 8
  %5270 = icmp ult i64 %5269, %5265
  %5271 = icmp ult i64 %5269, %5266
  %5272 = or i1 %5270, %5271
  %5273 = zext i1 %5272 to i8
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5273, i8* %5274, align 1
  %5275 = trunc i64 %5269 to i32
  %5276 = and i32 %5275, 255
  %5277 = call i32 @llvm.ctpop.i32(i32 %5276)
  %5278 = trunc i32 %5277 to i8
  %5279 = and i8 %5278, 1
  %5280 = xor i8 %5279, 1
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5280, i8* %5281, align 1
  %5282 = xor i64 %5266, %5265
  %5283 = xor i64 %5282, %5269
  %5284 = lshr i64 %5283, 4
  %5285 = trunc i64 %5284 to i8
  %5286 = and i8 %5285, 1
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5286, i8* %5287, align 1
  %5288 = icmp eq i64 %5269, 0
  %5289 = zext i1 %5288 to i8
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5289, i8* %5290, align 1
  %5291 = lshr i64 %5269, 63
  %5292 = trunc i64 %5291 to i8
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5292, i8* %5293, align 1
  %5294 = lshr i64 %5265, 63
  %5295 = lshr i64 %5266, 63
  %5296 = xor i64 %5291, %5294
  %5297 = xor i64 %5291, %5295
  %5298 = add i64 %5296, %5297
  %5299 = icmp eq i64 %5298, 2
  %5300 = zext i1 %5299 to i8
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5300, i8* %5301, align 1
  store %struct.Memory* %loadMem_41e0f2, %struct.Memory** %MEMORY
  %loadMem_41e0f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 33
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %5304 to i64*
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 1
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %5307 to i64*
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5309 = getelementptr inbounds %struct.GPR, %struct.GPR* %5308, i32 0, i32 5
  %5310 = getelementptr inbounds %struct.Reg, %struct.Reg* %5309, i32 0, i32 0
  %RCX.i411 = bitcast %union.anon* %5310 to i64*
  %5311 = load i64, i64* %RAX.i410
  %5312 = add i64 %5311, 4
  %5313 = load i64, i64* %PC.i409
  %5314 = add i64 %5313, 3
  store i64 %5314, i64* %PC.i409
  %5315 = inttoptr i64 %5312 to i32*
  %5316 = load i32, i32* %5315
  %5317 = zext i32 %5316 to i64
  store i64 %5317, i64* %RCX.i411, align 8
  store %struct.Memory* %loadMem_41e0f5, %struct.Memory** %MEMORY
  %loadMem_41e0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 33
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %5320 to i64*
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5322 = getelementptr inbounds %struct.GPR, %struct.GPR* %5321, i32 0, i32 5
  %5323 = getelementptr inbounds %struct.Reg, %struct.Reg* %5322, i32 0, i32 0
  %ECX.i407 = bitcast %union.anon* %5323 to i32*
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 15
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %5326 to i64*
  %5327 = load i64, i64* %RBP.i408
  %5328 = sub i64 %5327, 60
  %5329 = load i32, i32* %ECX.i407
  %5330 = zext i32 %5329 to i64
  %5331 = load i64, i64* %PC.i406
  %5332 = add i64 %5331, 3
  store i64 %5332, i64* %PC.i406
  %5333 = inttoptr i64 %5328 to i32*
  store i32 %5329, i32* %5333
  store %struct.Memory* %loadMem_41e0f8, %struct.Memory** %MEMORY
  %loadMem_41e0fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5335 = getelementptr inbounds %struct.GPR, %struct.GPR* %5334, i32 0, i32 33
  %5336 = getelementptr inbounds %struct.Reg, %struct.Reg* %5335, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %5336 to i64*
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5338 = getelementptr inbounds %struct.GPR, %struct.GPR* %5337, i32 0, i32 1
  %5339 = getelementptr inbounds %struct.Reg, %struct.Reg* %5338, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %5339 to i64*
  %5340 = load i64, i64* %PC.i404
  %5341 = add i64 %5340, 8
  store i64 %5341, i64* %PC.i404
  %5342 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %5342, i64* %RAX.i405, align 8
  store %struct.Memory* %loadMem_41e0fb, %struct.Memory** %MEMORY
  %loadMem_41e103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 33
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %5345 to i64*
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5347 = getelementptr inbounds %struct.GPR, %struct.GPR* %5346, i32 0, i32 7
  %5348 = getelementptr inbounds %struct.Reg, %struct.Reg* %5347, i32 0, i32 0
  %RDX.i402 = bitcast %union.anon* %5348 to i64*
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5350 = getelementptr inbounds %struct.GPR, %struct.GPR* %5349, i32 0, i32 15
  %5351 = getelementptr inbounds %struct.Reg, %struct.Reg* %5350, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %5351 to i64*
  %5352 = load i64, i64* %RBP.i403
  %5353 = sub i64 %5352, 56
  %5354 = load i64, i64* %PC.i401
  %5355 = add i64 %5354, 4
  store i64 %5355, i64* %PC.i401
  %5356 = inttoptr i64 %5353 to i32*
  %5357 = load i32, i32* %5356
  %5358 = sext i32 %5357 to i64
  store i64 %5358, i64* %RDX.i402, align 8
  store %struct.Memory* %loadMem_41e103, %struct.Memory** %MEMORY
  %loadMem_41e107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5360 = getelementptr inbounds %struct.GPR, %struct.GPR* %5359, i32 0, i32 33
  %5361 = getelementptr inbounds %struct.Reg, %struct.Reg* %5360, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %5361 to i64*
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5363 = getelementptr inbounds %struct.GPR, %struct.GPR* %5362, i32 0, i32 7
  %5364 = getelementptr inbounds %struct.Reg, %struct.Reg* %5363, i32 0, i32 0
  %RDX.i400 = bitcast %union.anon* %5364 to i64*
  %5365 = load i64, i64* %RDX.i400
  %5366 = load i64, i64* %PC.i399
  %5367 = add i64 %5366, 4
  store i64 %5367, i64* %PC.i399
  %5368 = sext i64 %5365 to i128
  %5369 = and i128 %5368, -18446744073709551616
  %5370 = zext i64 %5365 to i128
  %5371 = or i128 %5369, %5370
  %5372 = mul i128 24, %5371
  %5373 = trunc i128 %5372 to i64
  store i64 %5373, i64* %RDX.i400, align 8
  %5374 = sext i64 %5373 to i128
  %5375 = icmp ne i128 %5374, %5372
  %5376 = zext i1 %5375 to i8
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5376, i8* %5377, align 1
  %5378 = trunc i128 %5372 to i32
  %5379 = and i32 %5378, 255
  %5380 = call i32 @llvm.ctpop.i32(i32 %5379)
  %5381 = trunc i32 %5380 to i8
  %5382 = and i8 %5381, 1
  %5383 = xor i8 %5382, 1
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5383, i8* %5384, align 1
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5385, align 1
  %5386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5386, align 1
  %5387 = lshr i64 %5373, 63
  %5388 = trunc i64 %5387 to i8
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5388, i8* %5389, align 1
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5376, i8* %5390, align 1
  store %struct.Memory* %loadMem_41e107, %struct.Memory** %MEMORY
  %loadMem_41e10b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 33
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %5393 to i64*
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 1
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %5396 to i64*
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 7
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %5399 to i64*
  %5400 = load i64, i64* %RAX.i397
  %5401 = load i64, i64* %RDX.i398
  %5402 = load i64, i64* %PC.i396
  %5403 = add i64 %5402, 3
  store i64 %5403, i64* %PC.i396
  %5404 = add i64 %5401, %5400
  store i64 %5404, i64* %RAX.i397, align 8
  %5405 = icmp ult i64 %5404, %5400
  %5406 = icmp ult i64 %5404, %5401
  %5407 = or i1 %5405, %5406
  %5408 = zext i1 %5407 to i8
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5408, i8* %5409, align 1
  %5410 = trunc i64 %5404 to i32
  %5411 = and i32 %5410, 255
  %5412 = call i32 @llvm.ctpop.i32(i32 %5411)
  %5413 = trunc i32 %5412 to i8
  %5414 = and i8 %5413, 1
  %5415 = xor i8 %5414, 1
  %5416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5415, i8* %5416, align 1
  %5417 = xor i64 %5401, %5400
  %5418 = xor i64 %5417, %5404
  %5419 = lshr i64 %5418, 4
  %5420 = trunc i64 %5419 to i8
  %5421 = and i8 %5420, 1
  %5422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5421, i8* %5422, align 1
  %5423 = icmp eq i64 %5404, 0
  %5424 = zext i1 %5423 to i8
  %5425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5424, i8* %5425, align 1
  %5426 = lshr i64 %5404, 63
  %5427 = trunc i64 %5426 to i8
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5427, i8* %5428, align 1
  %5429 = lshr i64 %5400, 63
  %5430 = lshr i64 %5401, 63
  %5431 = xor i64 %5426, %5429
  %5432 = xor i64 %5426, %5430
  %5433 = add i64 %5431, %5432
  %5434 = icmp eq i64 %5433, 2
  %5435 = zext i1 %5434 to i8
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5435, i8* %5436, align 1
  store %struct.Memory* %loadMem_41e10b, %struct.Memory** %MEMORY
  %loadMem_41e10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5438 = getelementptr inbounds %struct.GPR, %struct.GPR* %5437, i32 0, i32 33
  %5439 = getelementptr inbounds %struct.Reg, %struct.Reg* %5438, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %5439 to i64*
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5441 = getelementptr inbounds %struct.GPR, %struct.GPR* %5440, i32 0, i32 1
  %5442 = getelementptr inbounds %struct.Reg, %struct.Reg* %5441, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %5442 to i64*
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5444 = getelementptr inbounds %struct.GPR, %struct.GPR* %5443, i32 0, i32 5
  %5445 = getelementptr inbounds %struct.Reg, %struct.Reg* %5444, i32 0, i32 0
  %RCX.i395 = bitcast %union.anon* %5445 to i64*
  %5446 = load i64, i64* %RAX.i394
  %5447 = add i64 %5446, 4
  %5448 = load i64, i64* %PC.i393
  %5449 = add i64 %5448, 3
  store i64 %5449, i64* %PC.i393
  %5450 = inttoptr i64 %5447 to i32*
  %5451 = load i32, i32* %5450
  %5452 = zext i32 %5451 to i64
  store i64 %5452, i64* %RCX.i395, align 8
  store %struct.Memory* %loadMem_41e10e, %struct.Memory** %MEMORY
  %loadMem_41e111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5454 = getelementptr inbounds %struct.GPR, %struct.GPR* %5453, i32 0, i32 33
  %5455 = getelementptr inbounds %struct.Reg, %struct.Reg* %5454, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %5455 to i64*
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5457 = getelementptr inbounds %struct.GPR, %struct.GPR* %5456, i32 0, i32 1
  %5458 = getelementptr inbounds %struct.Reg, %struct.Reg* %5457, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %5458 to i64*
  %5459 = load i64, i64* %PC.i391
  %5460 = add i64 %5459, 8
  store i64 %5460, i64* %PC.i391
  %5461 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %5461, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_41e111, %struct.Memory** %MEMORY
  %loadMem_41e119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 33
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %5464 to i64*
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5466 = getelementptr inbounds %struct.GPR, %struct.GPR* %5465, i32 0, i32 9
  %5467 = getelementptr inbounds %struct.Reg, %struct.Reg* %5466, i32 0, i32 0
  %RSI.i389 = bitcast %union.anon* %5467 to i64*
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5469 = getelementptr inbounds %struct.GPR, %struct.GPR* %5468, i32 0, i32 15
  %5470 = getelementptr inbounds %struct.Reg, %struct.Reg* %5469, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %5470 to i64*
  %5471 = load i64, i64* %RBP.i390
  %5472 = sub i64 %5471, 56
  %5473 = load i64, i64* %PC.i388
  %5474 = add i64 %5473, 3
  store i64 %5474, i64* %PC.i388
  %5475 = inttoptr i64 %5472 to i32*
  %5476 = load i32, i32* %5475
  %5477 = zext i32 %5476 to i64
  store i64 %5477, i64* %RSI.i389, align 8
  store %struct.Memory* %loadMem_41e119, %struct.Memory** %MEMORY
  %loadMem_41e11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5479 = getelementptr inbounds %struct.GPR, %struct.GPR* %5478, i32 0, i32 33
  %5480 = getelementptr inbounds %struct.Reg, %struct.Reg* %5479, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %5480 to i64*
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 9
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %RSI.i387 = bitcast %union.anon* %5483 to i64*
  %5484 = load i64, i64* %RSI.i387
  %5485 = load i64, i64* %PC.i386
  %5486 = add i64 %5485, 3
  store i64 %5486, i64* %PC.i386
  %5487 = trunc i64 %5484 to i32
  %5488 = sub i32 %5487, 1
  %5489 = zext i32 %5488 to i64
  store i64 %5489, i64* %RSI.i387, align 8
  %5490 = icmp ult i32 %5487, 1
  %5491 = zext i1 %5490 to i8
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5491, i8* %5492, align 1
  %5493 = and i32 %5488, 255
  %5494 = call i32 @llvm.ctpop.i32(i32 %5493)
  %5495 = trunc i32 %5494 to i8
  %5496 = and i8 %5495, 1
  %5497 = xor i8 %5496, 1
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5497, i8* %5498, align 1
  %5499 = xor i64 1, %5484
  %5500 = trunc i64 %5499 to i32
  %5501 = xor i32 %5500, %5488
  %5502 = lshr i32 %5501, 4
  %5503 = trunc i32 %5502 to i8
  %5504 = and i8 %5503, 1
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5504, i8* %5505, align 1
  %5506 = icmp eq i32 %5488, 0
  %5507 = zext i1 %5506 to i8
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5507, i8* %5508, align 1
  %5509 = lshr i32 %5488, 31
  %5510 = trunc i32 %5509 to i8
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5510, i8* %5511, align 1
  %5512 = lshr i32 %5487, 31
  %5513 = xor i32 %5509, %5512
  %5514 = add i32 %5513, %5512
  %5515 = icmp eq i32 %5514, 2
  %5516 = zext i1 %5515 to i8
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5516, i8* %5517, align 1
  store %struct.Memory* %loadMem_41e11c, %struct.Memory** %MEMORY
  %loadMem_41e11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5519 = getelementptr inbounds %struct.GPR, %struct.GPR* %5518, i32 0, i32 33
  %5520 = getelementptr inbounds %struct.Reg, %struct.Reg* %5519, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %5520 to i64*
  %5521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5522 = getelementptr inbounds %struct.GPR, %struct.GPR* %5521, i32 0, i32 9
  %5523 = getelementptr inbounds %struct.Reg, %struct.Reg* %5522, i32 0, i32 0
  %ESI.i384 = bitcast %union.anon* %5523 to i32*
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5525 = getelementptr inbounds %struct.GPR, %struct.GPR* %5524, i32 0, i32 7
  %5526 = getelementptr inbounds %struct.Reg, %struct.Reg* %5525, i32 0, i32 0
  %RDX.i385 = bitcast %union.anon* %5526 to i64*
  %5527 = load i32, i32* %ESI.i384
  %5528 = zext i32 %5527 to i64
  %5529 = load i64, i64* %PC.i383
  %5530 = add i64 %5529, 3
  store i64 %5530, i64* %PC.i383
  %5531 = shl i64 %5528, 32
  %5532 = ashr exact i64 %5531, 32
  store i64 %5532, i64* %RDX.i385, align 8
  store %struct.Memory* %loadMem_41e11f, %struct.Memory** %MEMORY
  %loadMem_41e122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 33
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %5535 to i64*
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5537 = getelementptr inbounds %struct.GPR, %struct.GPR* %5536, i32 0, i32 7
  %5538 = getelementptr inbounds %struct.Reg, %struct.Reg* %5537, i32 0, i32 0
  %RDX.i382 = bitcast %union.anon* %5538 to i64*
  %5539 = load i64, i64* %RDX.i382
  %5540 = load i64, i64* %PC.i381
  %5541 = add i64 %5540, 4
  store i64 %5541, i64* %PC.i381
  %5542 = sext i64 %5539 to i128
  %5543 = and i128 %5542, -18446744073709551616
  %5544 = zext i64 %5539 to i128
  %5545 = or i128 %5543, %5544
  %5546 = mul i128 24, %5545
  %5547 = trunc i128 %5546 to i64
  store i64 %5547, i64* %RDX.i382, align 8
  %5548 = sext i64 %5547 to i128
  %5549 = icmp ne i128 %5548, %5546
  %5550 = zext i1 %5549 to i8
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5550, i8* %5551, align 1
  %5552 = trunc i128 %5546 to i32
  %5553 = and i32 %5552, 255
  %5554 = call i32 @llvm.ctpop.i32(i32 %5553)
  %5555 = trunc i32 %5554 to i8
  %5556 = and i8 %5555, 1
  %5557 = xor i8 %5556, 1
  %5558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5557, i8* %5558, align 1
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5559, align 1
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5560, align 1
  %5561 = lshr i64 %5547, 63
  %5562 = trunc i64 %5561 to i8
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5562, i8* %5563, align 1
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5550, i8* %5564, align 1
  store %struct.Memory* %loadMem_41e122, %struct.Memory** %MEMORY
  %loadMem_41e126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5566 = getelementptr inbounds %struct.GPR, %struct.GPR* %5565, i32 0, i32 33
  %5567 = getelementptr inbounds %struct.Reg, %struct.Reg* %5566, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %5567 to i64*
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5569 = getelementptr inbounds %struct.GPR, %struct.GPR* %5568, i32 0, i32 1
  %5570 = getelementptr inbounds %struct.Reg, %struct.Reg* %5569, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %5570 to i64*
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5572 = getelementptr inbounds %struct.GPR, %struct.GPR* %5571, i32 0, i32 7
  %5573 = getelementptr inbounds %struct.Reg, %struct.Reg* %5572, i32 0, i32 0
  %RDX.i380 = bitcast %union.anon* %5573 to i64*
  %5574 = load i64, i64* %RAX.i379
  %5575 = load i64, i64* %RDX.i380
  %5576 = load i64, i64* %PC.i378
  %5577 = add i64 %5576, 3
  store i64 %5577, i64* %PC.i378
  %5578 = add i64 %5575, %5574
  store i64 %5578, i64* %RAX.i379, align 8
  %5579 = icmp ult i64 %5578, %5574
  %5580 = icmp ult i64 %5578, %5575
  %5581 = or i1 %5579, %5580
  %5582 = zext i1 %5581 to i8
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5582, i8* %5583, align 1
  %5584 = trunc i64 %5578 to i32
  %5585 = and i32 %5584, 255
  %5586 = call i32 @llvm.ctpop.i32(i32 %5585)
  %5587 = trunc i32 %5586 to i8
  %5588 = and i8 %5587, 1
  %5589 = xor i8 %5588, 1
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5589, i8* %5590, align 1
  %5591 = xor i64 %5575, %5574
  %5592 = xor i64 %5591, %5578
  %5593 = lshr i64 %5592, 4
  %5594 = trunc i64 %5593 to i8
  %5595 = and i8 %5594, 1
  %5596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5595, i8* %5596, align 1
  %5597 = icmp eq i64 %5578, 0
  %5598 = zext i1 %5597 to i8
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5598, i8* %5599, align 1
  %5600 = lshr i64 %5578, 63
  %5601 = trunc i64 %5600 to i8
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5601, i8* %5602, align 1
  %5603 = lshr i64 %5574, 63
  %5604 = lshr i64 %5575, 63
  %5605 = xor i64 %5600, %5603
  %5606 = xor i64 %5600, %5604
  %5607 = add i64 %5605, %5606
  %5608 = icmp eq i64 %5607, 2
  %5609 = zext i1 %5608 to i8
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5609, i8* %5610, align 1
  store %struct.Memory* %loadMem_41e126, %struct.Memory** %MEMORY
  %loadMem_41e129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5612 = getelementptr inbounds %struct.GPR, %struct.GPR* %5611, i32 0, i32 33
  %5613 = getelementptr inbounds %struct.Reg, %struct.Reg* %5612, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %5613 to i64*
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5615 = getelementptr inbounds %struct.GPR, %struct.GPR* %5614, i32 0, i32 5
  %5616 = getelementptr inbounds %struct.Reg, %struct.Reg* %5615, i32 0, i32 0
  %ECX.i376 = bitcast %union.anon* %5616 to i32*
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5618 = getelementptr inbounds %struct.GPR, %struct.GPR* %5617, i32 0, i32 1
  %5619 = getelementptr inbounds %struct.Reg, %struct.Reg* %5618, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %5619 to i64*
  %5620 = load i64, i64* %RAX.i377
  %5621 = add i64 %5620, 4
  %5622 = load i32, i32* %ECX.i376
  %5623 = zext i32 %5622 to i64
  %5624 = load i64, i64* %PC.i375
  %5625 = add i64 %5624, 3
  store i64 %5625, i64* %PC.i375
  %5626 = inttoptr i64 %5621 to i32*
  store i32 %5622, i32* %5626
  store %struct.Memory* %loadMem_41e129, %struct.Memory** %MEMORY
  %loadMem_41e12c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 33
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %5629 to i64*
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 5
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %RCX.i373 = bitcast %union.anon* %5632 to i64*
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 15
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %5635 to i64*
  %5636 = load i64, i64* %RBP.i374
  %5637 = sub i64 %5636, 60
  %5638 = load i64, i64* %PC.i372
  %5639 = add i64 %5638, 3
  store i64 %5639, i64* %PC.i372
  %5640 = inttoptr i64 %5637 to i32*
  %5641 = load i32, i32* %5640
  %5642 = zext i32 %5641 to i64
  store i64 %5642, i64* %RCX.i373, align 8
  store %struct.Memory* %loadMem_41e12c, %struct.Memory** %MEMORY
  %loadMem_41e12f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5644 = getelementptr inbounds %struct.GPR, %struct.GPR* %5643, i32 0, i32 33
  %5645 = getelementptr inbounds %struct.Reg, %struct.Reg* %5644, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %5645 to i64*
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5647 = getelementptr inbounds %struct.GPR, %struct.GPR* %5646, i32 0, i32 1
  %5648 = getelementptr inbounds %struct.Reg, %struct.Reg* %5647, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %5648 to i64*
  %5649 = load i64, i64* %PC.i370
  %5650 = add i64 %5649, 8
  store i64 %5650, i64* %PC.i370
  %5651 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %5651, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_41e12f, %struct.Memory** %MEMORY
  %loadMem_41e137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5653 = getelementptr inbounds %struct.GPR, %struct.GPR* %5652, i32 0, i32 33
  %5654 = getelementptr inbounds %struct.Reg, %struct.Reg* %5653, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %5654 to i64*
  %5655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5656 = getelementptr inbounds %struct.GPR, %struct.GPR* %5655, i32 0, i32 7
  %5657 = getelementptr inbounds %struct.Reg, %struct.Reg* %5656, i32 0, i32 0
  %RDX.i368 = bitcast %union.anon* %5657 to i64*
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 15
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %5660 to i64*
  %5661 = load i64, i64* %RBP.i369
  %5662 = sub i64 %5661, 56
  %5663 = load i64, i64* %PC.i367
  %5664 = add i64 %5663, 4
  store i64 %5664, i64* %PC.i367
  %5665 = inttoptr i64 %5662 to i32*
  %5666 = load i32, i32* %5665
  %5667 = sext i32 %5666 to i64
  store i64 %5667, i64* %RDX.i368, align 8
  store %struct.Memory* %loadMem_41e137, %struct.Memory** %MEMORY
  %loadMem_41e13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5669 = getelementptr inbounds %struct.GPR, %struct.GPR* %5668, i32 0, i32 33
  %5670 = getelementptr inbounds %struct.Reg, %struct.Reg* %5669, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %5670 to i64*
  %5671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5672 = getelementptr inbounds %struct.GPR, %struct.GPR* %5671, i32 0, i32 7
  %5673 = getelementptr inbounds %struct.Reg, %struct.Reg* %5672, i32 0, i32 0
  %RDX.i366 = bitcast %union.anon* %5673 to i64*
  %5674 = load i64, i64* %RDX.i366
  %5675 = load i64, i64* %PC.i365
  %5676 = add i64 %5675, 4
  store i64 %5676, i64* %PC.i365
  %5677 = sext i64 %5674 to i128
  %5678 = and i128 %5677, -18446744073709551616
  %5679 = zext i64 %5674 to i128
  %5680 = or i128 %5678, %5679
  %5681 = mul i128 24, %5680
  %5682 = trunc i128 %5681 to i64
  store i64 %5682, i64* %RDX.i366, align 8
  %5683 = sext i64 %5682 to i128
  %5684 = icmp ne i128 %5683, %5681
  %5685 = zext i1 %5684 to i8
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5685, i8* %5686, align 1
  %5687 = trunc i128 %5681 to i32
  %5688 = and i32 %5687, 255
  %5689 = call i32 @llvm.ctpop.i32(i32 %5688)
  %5690 = trunc i32 %5689 to i8
  %5691 = and i8 %5690, 1
  %5692 = xor i8 %5691, 1
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5692, i8* %5693, align 1
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5694, align 1
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5695, align 1
  %5696 = lshr i64 %5682, 63
  %5697 = trunc i64 %5696 to i8
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5697, i8* %5698, align 1
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5685, i8* %5699, align 1
  store %struct.Memory* %loadMem_41e13b, %struct.Memory** %MEMORY
  %loadMem_41e13f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5701 = getelementptr inbounds %struct.GPR, %struct.GPR* %5700, i32 0, i32 33
  %5702 = getelementptr inbounds %struct.Reg, %struct.Reg* %5701, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %5702 to i64*
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5704 = getelementptr inbounds %struct.GPR, %struct.GPR* %5703, i32 0, i32 1
  %5705 = getelementptr inbounds %struct.Reg, %struct.Reg* %5704, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %5705 to i64*
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5707 = getelementptr inbounds %struct.GPR, %struct.GPR* %5706, i32 0, i32 7
  %5708 = getelementptr inbounds %struct.Reg, %struct.Reg* %5707, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %5708 to i64*
  %5709 = load i64, i64* %RAX.i363
  %5710 = load i64, i64* %RDX.i364
  %5711 = load i64, i64* %PC.i362
  %5712 = add i64 %5711, 3
  store i64 %5712, i64* %PC.i362
  %5713 = add i64 %5710, %5709
  store i64 %5713, i64* %RAX.i363, align 8
  %5714 = icmp ult i64 %5713, %5709
  %5715 = icmp ult i64 %5713, %5710
  %5716 = or i1 %5714, %5715
  %5717 = zext i1 %5716 to i8
  %5718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5717, i8* %5718, align 1
  %5719 = trunc i64 %5713 to i32
  %5720 = and i32 %5719, 255
  %5721 = call i32 @llvm.ctpop.i32(i32 %5720)
  %5722 = trunc i32 %5721 to i8
  %5723 = and i8 %5722, 1
  %5724 = xor i8 %5723, 1
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5724, i8* %5725, align 1
  %5726 = xor i64 %5710, %5709
  %5727 = xor i64 %5726, %5713
  %5728 = lshr i64 %5727, 4
  %5729 = trunc i64 %5728 to i8
  %5730 = and i8 %5729, 1
  %5731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5730, i8* %5731, align 1
  %5732 = icmp eq i64 %5713, 0
  %5733 = zext i1 %5732 to i8
  %5734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5733, i8* %5734, align 1
  %5735 = lshr i64 %5713, 63
  %5736 = trunc i64 %5735 to i8
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5736, i8* %5737, align 1
  %5738 = lshr i64 %5709, 63
  %5739 = lshr i64 %5710, 63
  %5740 = xor i64 %5735, %5738
  %5741 = xor i64 %5735, %5739
  %5742 = add i64 %5740, %5741
  %5743 = icmp eq i64 %5742, 2
  %5744 = zext i1 %5743 to i8
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5744, i8* %5745, align 1
  store %struct.Memory* %loadMem_41e13f, %struct.Memory** %MEMORY
  %loadMem_41e142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 33
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %5748 to i64*
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5750 = getelementptr inbounds %struct.GPR, %struct.GPR* %5749, i32 0, i32 5
  %5751 = getelementptr inbounds %struct.Reg, %struct.Reg* %5750, i32 0, i32 0
  %ECX.i360 = bitcast %union.anon* %5751 to i32*
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5753 = getelementptr inbounds %struct.GPR, %struct.GPR* %5752, i32 0, i32 1
  %5754 = getelementptr inbounds %struct.Reg, %struct.Reg* %5753, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %5754 to i64*
  %5755 = load i64, i64* %RAX.i361
  %5756 = add i64 %5755, 4
  %5757 = load i32, i32* %ECX.i360
  %5758 = zext i32 %5757 to i64
  %5759 = load i64, i64* %PC.i359
  %5760 = add i64 %5759, 3
  store i64 %5760, i64* %PC.i359
  %5761 = inttoptr i64 %5756 to i32*
  store i32 %5757, i32* %5761
  store %struct.Memory* %loadMem_41e142, %struct.Memory** %MEMORY
  %loadMem_41e145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5763 = getelementptr inbounds %struct.GPR, %struct.GPR* %5762, i32 0, i32 33
  %5764 = getelementptr inbounds %struct.Reg, %struct.Reg* %5763, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %5764 to i64*
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5766 = getelementptr inbounds %struct.GPR, %struct.GPR* %5765, i32 0, i32 1
  %5767 = getelementptr inbounds %struct.Reg, %struct.Reg* %5766, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %5767 to i64*
  %5768 = load i64, i64* %PC.i357
  %5769 = add i64 %5768, 8
  store i64 %5769, i64* %PC.i357
  %5770 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %5770, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_41e145, %struct.Memory** %MEMORY
  %loadMem_41e14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5772 = getelementptr inbounds %struct.GPR, %struct.GPR* %5771, i32 0, i32 33
  %5773 = getelementptr inbounds %struct.Reg, %struct.Reg* %5772, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %5773 to i64*
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5775 = getelementptr inbounds %struct.GPR, %struct.GPR* %5774, i32 0, i32 5
  %5776 = getelementptr inbounds %struct.Reg, %struct.Reg* %5775, i32 0, i32 0
  %RCX.i355 = bitcast %union.anon* %5776 to i64*
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5778 = getelementptr inbounds %struct.GPR, %struct.GPR* %5777, i32 0, i32 15
  %5779 = getelementptr inbounds %struct.Reg, %struct.Reg* %5778, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %5779 to i64*
  %5780 = load i64, i64* %RBP.i356
  %5781 = sub i64 %5780, 56
  %5782 = load i64, i64* %PC.i354
  %5783 = add i64 %5782, 3
  store i64 %5783, i64* %PC.i354
  %5784 = inttoptr i64 %5781 to i32*
  %5785 = load i32, i32* %5784
  %5786 = zext i32 %5785 to i64
  store i64 %5786, i64* %RCX.i355, align 8
  store %struct.Memory* %loadMem_41e14d, %struct.Memory** %MEMORY
  %loadMem_41e150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5788 = getelementptr inbounds %struct.GPR, %struct.GPR* %5787, i32 0, i32 33
  %5789 = getelementptr inbounds %struct.Reg, %struct.Reg* %5788, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %5789 to i64*
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5791 = getelementptr inbounds %struct.GPR, %struct.GPR* %5790, i32 0, i32 5
  %5792 = getelementptr inbounds %struct.Reg, %struct.Reg* %5791, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %5792 to i64*
  %5793 = load i64, i64* %RCX.i353
  %5794 = load i64, i64* %PC.i352
  %5795 = add i64 %5794, 3
  store i64 %5795, i64* %PC.i352
  %5796 = trunc i64 %5793 to i32
  %5797 = sub i32 %5796, 1
  %5798 = zext i32 %5797 to i64
  store i64 %5798, i64* %RCX.i353, align 8
  %5799 = icmp ult i32 %5796, 1
  %5800 = zext i1 %5799 to i8
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5800, i8* %5801, align 1
  %5802 = and i32 %5797, 255
  %5803 = call i32 @llvm.ctpop.i32(i32 %5802)
  %5804 = trunc i32 %5803 to i8
  %5805 = and i8 %5804, 1
  %5806 = xor i8 %5805, 1
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5806, i8* %5807, align 1
  %5808 = xor i64 1, %5793
  %5809 = trunc i64 %5808 to i32
  %5810 = xor i32 %5809, %5797
  %5811 = lshr i32 %5810, 4
  %5812 = trunc i32 %5811 to i8
  %5813 = and i8 %5812, 1
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5813, i8* %5814, align 1
  %5815 = icmp eq i32 %5797, 0
  %5816 = zext i1 %5815 to i8
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5816, i8* %5817, align 1
  %5818 = lshr i32 %5797, 31
  %5819 = trunc i32 %5818 to i8
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5819, i8* %5820, align 1
  %5821 = lshr i32 %5796, 31
  %5822 = xor i32 %5818, %5821
  %5823 = add i32 %5822, %5821
  %5824 = icmp eq i32 %5823, 2
  %5825 = zext i1 %5824 to i8
  %5826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5825, i8* %5826, align 1
  store %struct.Memory* %loadMem_41e150, %struct.Memory** %MEMORY
  %loadMem_41e153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5828 = getelementptr inbounds %struct.GPR, %struct.GPR* %5827, i32 0, i32 33
  %5829 = getelementptr inbounds %struct.Reg, %struct.Reg* %5828, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %5829 to i64*
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5831 = getelementptr inbounds %struct.GPR, %struct.GPR* %5830, i32 0, i32 5
  %5832 = getelementptr inbounds %struct.Reg, %struct.Reg* %5831, i32 0, i32 0
  %ECX.i350 = bitcast %union.anon* %5832 to i32*
  %5833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5834 = getelementptr inbounds %struct.GPR, %struct.GPR* %5833, i32 0, i32 7
  %5835 = getelementptr inbounds %struct.Reg, %struct.Reg* %5834, i32 0, i32 0
  %RDX.i351 = bitcast %union.anon* %5835 to i64*
  %5836 = load i32, i32* %ECX.i350
  %5837 = zext i32 %5836 to i64
  %5838 = load i64, i64* %PC.i349
  %5839 = add i64 %5838, 3
  store i64 %5839, i64* %PC.i349
  %5840 = shl i64 %5837, 32
  %5841 = ashr exact i64 %5840, 32
  store i64 %5841, i64* %RDX.i351, align 8
  store %struct.Memory* %loadMem_41e153, %struct.Memory** %MEMORY
  %loadMem_41e156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5843 = getelementptr inbounds %struct.GPR, %struct.GPR* %5842, i32 0, i32 33
  %5844 = getelementptr inbounds %struct.Reg, %struct.Reg* %5843, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %5844 to i64*
  %5845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5846 = getelementptr inbounds %struct.GPR, %struct.GPR* %5845, i32 0, i32 7
  %5847 = getelementptr inbounds %struct.Reg, %struct.Reg* %5846, i32 0, i32 0
  %RDX.i348 = bitcast %union.anon* %5847 to i64*
  %5848 = load i64, i64* %RDX.i348
  %5849 = load i64, i64* %PC.i347
  %5850 = add i64 %5849, 4
  store i64 %5850, i64* %PC.i347
  %5851 = sext i64 %5848 to i128
  %5852 = and i128 %5851, -18446744073709551616
  %5853 = zext i64 %5848 to i128
  %5854 = or i128 %5852, %5853
  %5855 = mul i128 24, %5854
  %5856 = trunc i128 %5855 to i64
  store i64 %5856, i64* %RDX.i348, align 8
  %5857 = sext i64 %5856 to i128
  %5858 = icmp ne i128 %5857, %5855
  %5859 = zext i1 %5858 to i8
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5859, i8* %5860, align 1
  %5861 = trunc i128 %5855 to i32
  %5862 = and i32 %5861, 255
  %5863 = call i32 @llvm.ctpop.i32(i32 %5862)
  %5864 = trunc i32 %5863 to i8
  %5865 = and i8 %5864, 1
  %5866 = xor i8 %5865, 1
  %5867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5866, i8* %5867, align 1
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5868, align 1
  %5869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5869, align 1
  %5870 = lshr i64 %5856, 63
  %5871 = trunc i64 %5870 to i8
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5871, i8* %5872, align 1
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5859, i8* %5873, align 1
  store %struct.Memory* %loadMem_41e156, %struct.Memory** %MEMORY
  %loadMem_41e15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 33
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 1
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RAX.i345 = bitcast %union.anon* %5879 to i64*
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5881 = getelementptr inbounds %struct.GPR, %struct.GPR* %5880, i32 0, i32 7
  %5882 = getelementptr inbounds %struct.Reg, %struct.Reg* %5881, i32 0, i32 0
  %RDX.i346 = bitcast %union.anon* %5882 to i64*
  %5883 = load i64, i64* %RAX.i345
  %5884 = load i64, i64* %RDX.i346
  %5885 = load i64, i64* %PC.i344
  %5886 = add i64 %5885, 3
  store i64 %5886, i64* %PC.i344
  %5887 = add i64 %5884, %5883
  store i64 %5887, i64* %RAX.i345, align 8
  %5888 = icmp ult i64 %5887, %5883
  %5889 = icmp ult i64 %5887, %5884
  %5890 = or i1 %5888, %5889
  %5891 = zext i1 %5890 to i8
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5891, i8* %5892, align 1
  %5893 = trunc i64 %5887 to i32
  %5894 = and i32 %5893, 255
  %5895 = call i32 @llvm.ctpop.i32(i32 %5894)
  %5896 = trunc i32 %5895 to i8
  %5897 = and i8 %5896, 1
  %5898 = xor i8 %5897, 1
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5898, i8* %5899, align 1
  %5900 = xor i64 %5884, %5883
  %5901 = xor i64 %5900, %5887
  %5902 = lshr i64 %5901, 4
  %5903 = trunc i64 %5902 to i8
  %5904 = and i8 %5903, 1
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5904, i8* %5905, align 1
  %5906 = icmp eq i64 %5887, 0
  %5907 = zext i1 %5906 to i8
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5907, i8* %5908, align 1
  %5909 = lshr i64 %5887, 63
  %5910 = trunc i64 %5909 to i8
  %5911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5910, i8* %5911, align 1
  %5912 = lshr i64 %5883, 63
  %5913 = lshr i64 %5884, 63
  %5914 = xor i64 %5909, %5912
  %5915 = xor i64 %5909, %5913
  %5916 = add i64 %5914, %5915
  %5917 = icmp eq i64 %5916, 2
  %5918 = zext i1 %5917 to i8
  %5919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5918, i8* %5919, align 1
  store %struct.Memory* %loadMem_41e15a, %struct.Memory** %MEMORY
  %loadMem_41e15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5921 = getelementptr inbounds %struct.GPR, %struct.GPR* %5920, i32 0, i32 33
  %5922 = getelementptr inbounds %struct.Reg, %struct.Reg* %5921, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %5922 to i64*
  %5923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5924 = getelementptr inbounds %struct.GPR, %struct.GPR* %5923, i32 0, i32 1
  %5925 = getelementptr inbounds %struct.Reg, %struct.Reg* %5924, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %5925 to i64*
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5927 = getelementptr inbounds %struct.GPR, %struct.GPR* %5926, i32 0, i32 5
  %5928 = getelementptr inbounds %struct.Reg, %struct.Reg* %5927, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %5928 to i64*
  %5929 = load i64, i64* %RAX.i342
  %5930 = add i64 %5929, 16
  %5931 = load i64, i64* %PC.i341
  %5932 = add i64 %5931, 3
  store i64 %5932, i64* %PC.i341
  %5933 = inttoptr i64 %5930 to i32*
  %5934 = load i32, i32* %5933
  %5935 = zext i32 %5934 to i64
  store i64 %5935, i64* %RCX.i343, align 8
  store %struct.Memory* %loadMem_41e15d, %struct.Memory** %MEMORY
  %loadMem_41e160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5937 = getelementptr inbounds %struct.GPR, %struct.GPR* %5936, i32 0, i32 33
  %5938 = getelementptr inbounds %struct.Reg, %struct.Reg* %5937, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5938 to i64*
  %5939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5940 = getelementptr inbounds %struct.GPR, %struct.GPR* %5939, i32 0, i32 5
  %5941 = getelementptr inbounds %struct.Reg, %struct.Reg* %5940, i32 0, i32 0
  %ECX.i339 = bitcast %union.anon* %5941 to i32*
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5943 = getelementptr inbounds %struct.GPR, %struct.GPR* %5942, i32 0, i32 15
  %5944 = getelementptr inbounds %struct.Reg, %struct.Reg* %5943, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %5944 to i64*
  %5945 = load i64, i64* %RBP.i340
  %5946 = sub i64 %5945, 60
  %5947 = load i32, i32* %ECX.i339
  %5948 = zext i32 %5947 to i64
  %5949 = load i64, i64* %PC.i338
  %5950 = add i64 %5949, 3
  store i64 %5950, i64* %PC.i338
  %5951 = inttoptr i64 %5946 to i32*
  store i32 %5947, i32* %5951
  store %struct.Memory* %loadMem_41e160, %struct.Memory** %MEMORY
  %loadMem_41e163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5953 = getelementptr inbounds %struct.GPR, %struct.GPR* %5952, i32 0, i32 33
  %5954 = getelementptr inbounds %struct.Reg, %struct.Reg* %5953, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5954 to i64*
  %5955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5956 = getelementptr inbounds %struct.GPR, %struct.GPR* %5955, i32 0, i32 1
  %5957 = getelementptr inbounds %struct.Reg, %struct.Reg* %5956, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %5957 to i64*
  %5958 = load i64, i64* %PC.i336
  %5959 = add i64 %5958, 8
  store i64 %5959, i64* %PC.i336
  %5960 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %5960, i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_41e163, %struct.Memory** %MEMORY
  %loadMem_41e16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5962 = getelementptr inbounds %struct.GPR, %struct.GPR* %5961, i32 0, i32 33
  %5963 = getelementptr inbounds %struct.Reg, %struct.Reg* %5962, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %5963 to i64*
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5965 = getelementptr inbounds %struct.GPR, %struct.GPR* %5964, i32 0, i32 7
  %5966 = getelementptr inbounds %struct.Reg, %struct.Reg* %5965, i32 0, i32 0
  %RDX.i334 = bitcast %union.anon* %5966 to i64*
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 15
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %5969 to i64*
  %5970 = load i64, i64* %RBP.i335
  %5971 = sub i64 %5970, 56
  %5972 = load i64, i64* %PC.i333
  %5973 = add i64 %5972, 4
  store i64 %5973, i64* %PC.i333
  %5974 = inttoptr i64 %5971 to i32*
  %5975 = load i32, i32* %5974
  %5976 = sext i32 %5975 to i64
  store i64 %5976, i64* %RDX.i334, align 8
  store %struct.Memory* %loadMem_41e16b, %struct.Memory** %MEMORY
  %loadMem_41e16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5978 = getelementptr inbounds %struct.GPR, %struct.GPR* %5977, i32 0, i32 33
  %5979 = getelementptr inbounds %struct.Reg, %struct.Reg* %5978, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %5979 to i64*
  %5980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5981 = getelementptr inbounds %struct.GPR, %struct.GPR* %5980, i32 0, i32 7
  %5982 = getelementptr inbounds %struct.Reg, %struct.Reg* %5981, i32 0, i32 0
  %RDX.i332 = bitcast %union.anon* %5982 to i64*
  %5983 = load i64, i64* %RDX.i332
  %5984 = load i64, i64* %PC.i331
  %5985 = add i64 %5984, 4
  store i64 %5985, i64* %PC.i331
  %5986 = sext i64 %5983 to i128
  %5987 = and i128 %5986, -18446744073709551616
  %5988 = zext i64 %5983 to i128
  %5989 = or i128 %5987, %5988
  %5990 = mul i128 24, %5989
  %5991 = trunc i128 %5990 to i64
  store i64 %5991, i64* %RDX.i332, align 8
  %5992 = sext i64 %5991 to i128
  %5993 = icmp ne i128 %5992, %5990
  %5994 = zext i1 %5993 to i8
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5994, i8* %5995, align 1
  %5996 = trunc i128 %5990 to i32
  %5997 = and i32 %5996, 255
  %5998 = call i32 @llvm.ctpop.i32(i32 %5997)
  %5999 = trunc i32 %5998 to i8
  %6000 = and i8 %5999, 1
  %6001 = xor i8 %6000, 1
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6001, i8* %6002, align 1
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6003, align 1
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6004, align 1
  %6005 = lshr i64 %5991, 63
  %6006 = trunc i64 %6005 to i8
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6006, i8* %6007, align 1
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5994, i8* %6008, align 1
  store %struct.Memory* %loadMem_41e16f, %struct.Memory** %MEMORY
  %loadMem_41e173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6010 = getelementptr inbounds %struct.GPR, %struct.GPR* %6009, i32 0, i32 33
  %6011 = getelementptr inbounds %struct.Reg, %struct.Reg* %6010, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %6011 to i64*
  %6012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6013 = getelementptr inbounds %struct.GPR, %struct.GPR* %6012, i32 0, i32 1
  %6014 = getelementptr inbounds %struct.Reg, %struct.Reg* %6013, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %6014 to i64*
  %6015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6016 = getelementptr inbounds %struct.GPR, %struct.GPR* %6015, i32 0, i32 7
  %6017 = getelementptr inbounds %struct.Reg, %struct.Reg* %6016, i32 0, i32 0
  %RDX.i330 = bitcast %union.anon* %6017 to i64*
  %6018 = load i64, i64* %RAX.i329
  %6019 = load i64, i64* %RDX.i330
  %6020 = load i64, i64* %PC.i328
  %6021 = add i64 %6020, 3
  store i64 %6021, i64* %PC.i328
  %6022 = add i64 %6019, %6018
  store i64 %6022, i64* %RAX.i329, align 8
  %6023 = icmp ult i64 %6022, %6018
  %6024 = icmp ult i64 %6022, %6019
  %6025 = or i1 %6023, %6024
  %6026 = zext i1 %6025 to i8
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6026, i8* %6027, align 1
  %6028 = trunc i64 %6022 to i32
  %6029 = and i32 %6028, 255
  %6030 = call i32 @llvm.ctpop.i32(i32 %6029)
  %6031 = trunc i32 %6030 to i8
  %6032 = and i8 %6031, 1
  %6033 = xor i8 %6032, 1
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6033, i8* %6034, align 1
  %6035 = xor i64 %6019, %6018
  %6036 = xor i64 %6035, %6022
  %6037 = lshr i64 %6036, 4
  %6038 = trunc i64 %6037 to i8
  %6039 = and i8 %6038, 1
  %6040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6039, i8* %6040, align 1
  %6041 = icmp eq i64 %6022, 0
  %6042 = zext i1 %6041 to i8
  %6043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6042, i8* %6043, align 1
  %6044 = lshr i64 %6022, 63
  %6045 = trunc i64 %6044 to i8
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6045, i8* %6046, align 1
  %6047 = lshr i64 %6018, 63
  %6048 = lshr i64 %6019, 63
  %6049 = xor i64 %6044, %6047
  %6050 = xor i64 %6044, %6048
  %6051 = add i64 %6049, %6050
  %6052 = icmp eq i64 %6051, 2
  %6053 = zext i1 %6052 to i8
  %6054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6053, i8* %6054, align 1
  store %struct.Memory* %loadMem_41e173, %struct.Memory** %MEMORY
  %loadMem_41e176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6056 = getelementptr inbounds %struct.GPR, %struct.GPR* %6055, i32 0, i32 33
  %6057 = getelementptr inbounds %struct.Reg, %struct.Reg* %6056, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %6057 to i64*
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6059 = getelementptr inbounds %struct.GPR, %struct.GPR* %6058, i32 0, i32 1
  %6060 = getelementptr inbounds %struct.Reg, %struct.Reg* %6059, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %6060 to i64*
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6062 = getelementptr inbounds %struct.GPR, %struct.GPR* %6061, i32 0, i32 5
  %6063 = getelementptr inbounds %struct.Reg, %struct.Reg* %6062, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %6063 to i64*
  %6064 = load i64, i64* %RAX.i326
  %6065 = add i64 %6064, 16
  %6066 = load i64, i64* %PC.i325
  %6067 = add i64 %6066, 3
  store i64 %6067, i64* %PC.i325
  %6068 = inttoptr i64 %6065 to i32*
  %6069 = load i32, i32* %6068
  %6070 = zext i32 %6069 to i64
  store i64 %6070, i64* %RCX.i327, align 8
  store %struct.Memory* %loadMem_41e176, %struct.Memory** %MEMORY
  %loadMem_41e179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6072 = getelementptr inbounds %struct.GPR, %struct.GPR* %6071, i32 0, i32 33
  %6073 = getelementptr inbounds %struct.Reg, %struct.Reg* %6072, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %6073 to i64*
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6075 = getelementptr inbounds %struct.GPR, %struct.GPR* %6074, i32 0, i32 1
  %6076 = getelementptr inbounds %struct.Reg, %struct.Reg* %6075, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %6076 to i64*
  %6077 = load i64, i64* %PC.i323
  %6078 = add i64 %6077, 8
  store i64 %6078, i64* %PC.i323
  %6079 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %6079, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_41e179, %struct.Memory** %MEMORY
  %loadMem_41e181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 33
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %6082 to i64*
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6084 = getelementptr inbounds %struct.GPR, %struct.GPR* %6083, i32 0, i32 9
  %6085 = getelementptr inbounds %struct.Reg, %struct.Reg* %6084, i32 0, i32 0
  %RSI.i321 = bitcast %union.anon* %6085 to i64*
  %6086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6087 = getelementptr inbounds %struct.GPR, %struct.GPR* %6086, i32 0, i32 15
  %6088 = getelementptr inbounds %struct.Reg, %struct.Reg* %6087, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %6088 to i64*
  %6089 = load i64, i64* %RBP.i322
  %6090 = sub i64 %6089, 56
  %6091 = load i64, i64* %PC.i320
  %6092 = add i64 %6091, 3
  store i64 %6092, i64* %PC.i320
  %6093 = inttoptr i64 %6090 to i32*
  %6094 = load i32, i32* %6093
  %6095 = zext i32 %6094 to i64
  store i64 %6095, i64* %RSI.i321, align 8
  store %struct.Memory* %loadMem_41e181, %struct.Memory** %MEMORY
  %loadMem_41e184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 33
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %6098 to i64*
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6100 = getelementptr inbounds %struct.GPR, %struct.GPR* %6099, i32 0, i32 9
  %6101 = getelementptr inbounds %struct.Reg, %struct.Reg* %6100, i32 0, i32 0
  %RSI.i319 = bitcast %union.anon* %6101 to i64*
  %6102 = load i64, i64* %RSI.i319
  %6103 = load i64, i64* %PC.i318
  %6104 = add i64 %6103, 3
  store i64 %6104, i64* %PC.i318
  %6105 = trunc i64 %6102 to i32
  %6106 = sub i32 %6105, 1
  %6107 = zext i32 %6106 to i64
  store i64 %6107, i64* %RSI.i319, align 8
  %6108 = icmp ult i32 %6105, 1
  %6109 = zext i1 %6108 to i8
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6109, i8* %6110, align 1
  %6111 = and i32 %6106, 255
  %6112 = call i32 @llvm.ctpop.i32(i32 %6111)
  %6113 = trunc i32 %6112 to i8
  %6114 = and i8 %6113, 1
  %6115 = xor i8 %6114, 1
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6115, i8* %6116, align 1
  %6117 = xor i64 1, %6102
  %6118 = trunc i64 %6117 to i32
  %6119 = xor i32 %6118, %6106
  %6120 = lshr i32 %6119, 4
  %6121 = trunc i32 %6120 to i8
  %6122 = and i8 %6121, 1
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6122, i8* %6123, align 1
  %6124 = icmp eq i32 %6106, 0
  %6125 = zext i1 %6124 to i8
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6125, i8* %6126, align 1
  %6127 = lshr i32 %6106, 31
  %6128 = trunc i32 %6127 to i8
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6128, i8* %6129, align 1
  %6130 = lshr i32 %6105, 31
  %6131 = xor i32 %6127, %6130
  %6132 = add i32 %6131, %6130
  %6133 = icmp eq i32 %6132, 2
  %6134 = zext i1 %6133 to i8
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6134, i8* %6135, align 1
  store %struct.Memory* %loadMem_41e184, %struct.Memory** %MEMORY
  %loadMem_41e187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 33
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %6138 to i64*
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 9
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %ESI.i316 = bitcast %union.anon* %6141 to i32*
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6143 = getelementptr inbounds %struct.GPR, %struct.GPR* %6142, i32 0, i32 7
  %6144 = getelementptr inbounds %struct.Reg, %struct.Reg* %6143, i32 0, i32 0
  %RDX.i317 = bitcast %union.anon* %6144 to i64*
  %6145 = load i32, i32* %ESI.i316
  %6146 = zext i32 %6145 to i64
  %6147 = load i64, i64* %PC.i315
  %6148 = add i64 %6147, 3
  store i64 %6148, i64* %PC.i315
  %6149 = shl i64 %6146, 32
  %6150 = ashr exact i64 %6149, 32
  store i64 %6150, i64* %RDX.i317, align 8
  store %struct.Memory* %loadMem_41e187, %struct.Memory** %MEMORY
  %loadMem_41e18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 33
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %6153 to i64*
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 7
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %RDX.i314 = bitcast %union.anon* %6156 to i64*
  %6157 = load i64, i64* %RDX.i314
  %6158 = load i64, i64* %PC.i313
  %6159 = add i64 %6158, 4
  store i64 %6159, i64* %PC.i313
  %6160 = sext i64 %6157 to i128
  %6161 = and i128 %6160, -18446744073709551616
  %6162 = zext i64 %6157 to i128
  %6163 = or i128 %6161, %6162
  %6164 = mul i128 24, %6163
  %6165 = trunc i128 %6164 to i64
  store i64 %6165, i64* %RDX.i314, align 8
  %6166 = sext i64 %6165 to i128
  %6167 = icmp ne i128 %6166, %6164
  %6168 = zext i1 %6167 to i8
  %6169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6168, i8* %6169, align 1
  %6170 = trunc i128 %6164 to i32
  %6171 = and i32 %6170, 255
  %6172 = call i32 @llvm.ctpop.i32(i32 %6171)
  %6173 = trunc i32 %6172 to i8
  %6174 = and i8 %6173, 1
  %6175 = xor i8 %6174, 1
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6175, i8* %6176, align 1
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6177, align 1
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6178, align 1
  %6179 = lshr i64 %6165, 63
  %6180 = trunc i64 %6179 to i8
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6180, i8* %6181, align 1
  %6182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6168, i8* %6182, align 1
  store %struct.Memory* %loadMem_41e18a, %struct.Memory** %MEMORY
  %loadMem_41e18e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6184 = getelementptr inbounds %struct.GPR, %struct.GPR* %6183, i32 0, i32 33
  %6185 = getelementptr inbounds %struct.Reg, %struct.Reg* %6184, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %6185 to i64*
  %6186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6187 = getelementptr inbounds %struct.GPR, %struct.GPR* %6186, i32 0, i32 1
  %6188 = getelementptr inbounds %struct.Reg, %struct.Reg* %6187, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %6188 to i64*
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6190 = getelementptr inbounds %struct.GPR, %struct.GPR* %6189, i32 0, i32 7
  %6191 = getelementptr inbounds %struct.Reg, %struct.Reg* %6190, i32 0, i32 0
  %RDX.i312 = bitcast %union.anon* %6191 to i64*
  %6192 = load i64, i64* %RAX.i311
  %6193 = load i64, i64* %RDX.i312
  %6194 = load i64, i64* %PC.i310
  %6195 = add i64 %6194, 3
  store i64 %6195, i64* %PC.i310
  %6196 = add i64 %6193, %6192
  store i64 %6196, i64* %RAX.i311, align 8
  %6197 = icmp ult i64 %6196, %6192
  %6198 = icmp ult i64 %6196, %6193
  %6199 = or i1 %6197, %6198
  %6200 = zext i1 %6199 to i8
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6200, i8* %6201, align 1
  %6202 = trunc i64 %6196 to i32
  %6203 = and i32 %6202, 255
  %6204 = call i32 @llvm.ctpop.i32(i32 %6203)
  %6205 = trunc i32 %6204 to i8
  %6206 = and i8 %6205, 1
  %6207 = xor i8 %6206, 1
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6207, i8* %6208, align 1
  %6209 = xor i64 %6193, %6192
  %6210 = xor i64 %6209, %6196
  %6211 = lshr i64 %6210, 4
  %6212 = trunc i64 %6211 to i8
  %6213 = and i8 %6212, 1
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6213, i8* %6214, align 1
  %6215 = icmp eq i64 %6196, 0
  %6216 = zext i1 %6215 to i8
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6216, i8* %6217, align 1
  %6218 = lshr i64 %6196, 63
  %6219 = trunc i64 %6218 to i8
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6219, i8* %6220, align 1
  %6221 = lshr i64 %6192, 63
  %6222 = lshr i64 %6193, 63
  %6223 = xor i64 %6218, %6221
  %6224 = xor i64 %6218, %6222
  %6225 = add i64 %6223, %6224
  %6226 = icmp eq i64 %6225, 2
  %6227 = zext i1 %6226 to i8
  %6228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6227, i8* %6228, align 1
  store %struct.Memory* %loadMem_41e18e, %struct.Memory** %MEMORY
  %loadMem_41e191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6230 = getelementptr inbounds %struct.GPR, %struct.GPR* %6229, i32 0, i32 33
  %6231 = getelementptr inbounds %struct.Reg, %struct.Reg* %6230, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %6231 to i64*
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6233 = getelementptr inbounds %struct.GPR, %struct.GPR* %6232, i32 0, i32 5
  %6234 = getelementptr inbounds %struct.Reg, %struct.Reg* %6233, i32 0, i32 0
  %ECX.i308 = bitcast %union.anon* %6234 to i32*
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6236 = getelementptr inbounds %struct.GPR, %struct.GPR* %6235, i32 0, i32 1
  %6237 = getelementptr inbounds %struct.Reg, %struct.Reg* %6236, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %6237 to i64*
  %6238 = load i64, i64* %RAX.i309
  %6239 = add i64 %6238, 16
  %6240 = load i32, i32* %ECX.i308
  %6241 = zext i32 %6240 to i64
  %6242 = load i64, i64* %PC.i307
  %6243 = add i64 %6242, 3
  store i64 %6243, i64* %PC.i307
  %6244 = inttoptr i64 %6239 to i32*
  store i32 %6240, i32* %6244
  store %struct.Memory* %loadMem_41e191, %struct.Memory** %MEMORY
  %loadMem_41e194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6246 = getelementptr inbounds %struct.GPR, %struct.GPR* %6245, i32 0, i32 33
  %6247 = getelementptr inbounds %struct.Reg, %struct.Reg* %6246, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %6247 to i64*
  %6248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6249 = getelementptr inbounds %struct.GPR, %struct.GPR* %6248, i32 0, i32 5
  %6250 = getelementptr inbounds %struct.Reg, %struct.Reg* %6249, i32 0, i32 0
  %RCX.i305 = bitcast %union.anon* %6250 to i64*
  %6251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6252 = getelementptr inbounds %struct.GPR, %struct.GPR* %6251, i32 0, i32 15
  %6253 = getelementptr inbounds %struct.Reg, %struct.Reg* %6252, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %6253 to i64*
  %6254 = load i64, i64* %RBP.i306
  %6255 = sub i64 %6254, 60
  %6256 = load i64, i64* %PC.i304
  %6257 = add i64 %6256, 3
  store i64 %6257, i64* %PC.i304
  %6258 = inttoptr i64 %6255 to i32*
  %6259 = load i32, i32* %6258
  %6260 = zext i32 %6259 to i64
  store i64 %6260, i64* %RCX.i305, align 8
  store %struct.Memory* %loadMem_41e194, %struct.Memory** %MEMORY
  %loadMem_41e197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6262 = getelementptr inbounds %struct.GPR, %struct.GPR* %6261, i32 0, i32 33
  %6263 = getelementptr inbounds %struct.Reg, %struct.Reg* %6262, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %6263 to i64*
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6265 = getelementptr inbounds %struct.GPR, %struct.GPR* %6264, i32 0, i32 1
  %6266 = getelementptr inbounds %struct.Reg, %struct.Reg* %6265, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %6266 to i64*
  %6267 = load i64, i64* %PC.i302
  %6268 = add i64 %6267, 8
  store i64 %6268, i64* %PC.i302
  %6269 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %6269, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_41e197, %struct.Memory** %MEMORY
  %loadMem_41e19f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6271 = getelementptr inbounds %struct.GPR, %struct.GPR* %6270, i32 0, i32 33
  %6272 = getelementptr inbounds %struct.Reg, %struct.Reg* %6271, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %6272 to i64*
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6274 = getelementptr inbounds %struct.GPR, %struct.GPR* %6273, i32 0, i32 7
  %6275 = getelementptr inbounds %struct.Reg, %struct.Reg* %6274, i32 0, i32 0
  %RDX.i300 = bitcast %union.anon* %6275 to i64*
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6277 = getelementptr inbounds %struct.GPR, %struct.GPR* %6276, i32 0, i32 15
  %6278 = getelementptr inbounds %struct.Reg, %struct.Reg* %6277, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %6278 to i64*
  %6279 = load i64, i64* %RBP.i301
  %6280 = sub i64 %6279, 56
  %6281 = load i64, i64* %PC.i299
  %6282 = add i64 %6281, 4
  store i64 %6282, i64* %PC.i299
  %6283 = inttoptr i64 %6280 to i32*
  %6284 = load i32, i32* %6283
  %6285 = sext i32 %6284 to i64
  store i64 %6285, i64* %RDX.i300, align 8
  store %struct.Memory* %loadMem_41e19f, %struct.Memory** %MEMORY
  %loadMem_41e1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6287 = getelementptr inbounds %struct.GPR, %struct.GPR* %6286, i32 0, i32 33
  %6288 = getelementptr inbounds %struct.Reg, %struct.Reg* %6287, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %6288 to i64*
  %6289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6290 = getelementptr inbounds %struct.GPR, %struct.GPR* %6289, i32 0, i32 7
  %6291 = getelementptr inbounds %struct.Reg, %struct.Reg* %6290, i32 0, i32 0
  %RDX.i298 = bitcast %union.anon* %6291 to i64*
  %6292 = load i64, i64* %RDX.i298
  %6293 = load i64, i64* %PC.i297
  %6294 = add i64 %6293, 4
  store i64 %6294, i64* %PC.i297
  %6295 = sext i64 %6292 to i128
  %6296 = and i128 %6295, -18446744073709551616
  %6297 = zext i64 %6292 to i128
  %6298 = or i128 %6296, %6297
  %6299 = mul i128 24, %6298
  %6300 = trunc i128 %6299 to i64
  store i64 %6300, i64* %RDX.i298, align 8
  %6301 = sext i64 %6300 to i128
  %6302 = icmp ne i128 %6301, %6299
  %6303 = zext i1 %6302 to i8
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6303, i8* %6304, align 1
  %6305 = trunc i128 %6299 to i32
  %6306 = and i32 %6305, 255
  %6307 = call i32 @llvm.ctpop.i32(i32 %6306)
  %6308 = trunc i32 %6307 to i8
  %6309 = and i8 %6308, 1
  %6310 = xor i8 %6309, 1
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6310, i8* %6311, align 1
  %6312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6312, align 1
  %6313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6313, align 1
  %6314 = lshr i64 %6300, 63
  %6315 = trunc i64 %6314 to i8
  %6316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6315, i8* %6316, align 1
  %6317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6303, i8* %6317, align 1
  store %struct.Memory* %loadMem_41e1a3, %struct.Memory** %MEMORY
  %loadMem_41e1a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6319 = getelementptr inbounds %struct.GPR, %struct.GPR* %6318, i32 0, i32 33
  %6320 = getelementptr inbounds %struct.Reg, %struct.Reg* %6319, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %6320 to i64*
  %6321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6322 = getelementptr inbounds %struct.GPR, %struct.GPR* %6321, i32 0, i32 1
  %6323 = getelementptr inbounds %struct.Reg, %struct.Reg* %6322, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %6323 to i64*
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6325 = getelementptr inbounds %struct.GPR, %struct.GPR* %6324, i32 0, i32 7
  %6326 = getelementptr inbounds %struct.Reg, %struct.Reg* %6325, i32 0, i32 0
  %RDX.i296 = bitcast %union.anon* %6326 to i64*
  %6327 = load i64, i64* %RAX.i295
  %6328 = load i64, i64* %RDX.i296
  %6329 = load i64, i64* %PC.i294
  %6330 = add i64 %6329, 3
  store i64 %6330, i64* %PC.i294
  %6331 = add i64 %6328, %6327
  store i64 %6331, i64* %RAX.i295, align 8
  %6332 = icmp ult i64 %6331, %6327
  %6333 = icmp ult i64 %6331, %6328
  %6334 = or i1 %6332, %6333
  %6335 = zext i1 %6334 to i8
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6335, i8* %6336, align 1
  %6337 = trunc i64 %6331 to i32
  %6338 = and i32 %6337, 255
  %6339 = call i32 @llvm.ctpop.i32(i32 %6338)
  %6340 = trunc i32 %6339 to i8
  %6341 = and i8 %6340, 1
  %6342 = xor i8 %6341, 1
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6342, i8* %6343, align 1
  %6344 = xor i64 %6328, %6327
  %6345 = xor i64 %6344, %6331
  %6346 = lshr i64 %6345, 4
  %6347 = trunc i64 %6346 to i8
  %6348 = and i8 %6347, 1
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6348, i8* %6349, align 1
  %6350 = icmp eq i64 %6331, 0
  %6351 = zext i1 %6350 to i8
  %6352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6351, i8* %6352, align 1
  %6353 = lshr i64 %6331, 63
  %6354 = trunc i64 %6353 to i8
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6354, i8* %6355, align 1
  %6356 = lshr i64 %6327, 63
  %6357 = lshr i64 %6328, 63
  %6358 = xor i64 %6353, %6356
  %6359 = xor i64 %6353, %6357
  %6360 = add i64 %6358, %6359
  %6361 = icmp eq i64 %6360, 2
  %6362 = zext i1 %6361 to i8
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6362, i8* %6363, align 1
  store %struct.Memory* %loadMem_41e1a7, %struct.Memory** %MEMORY
  %loadMem_41e1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6365 = getelementptr inbounds %struct.GPR, %struct.GPR* %6364, i32 0, i32 33
  %6366 = getelementptr inbounds %struct.Reg, %struct.Reg* %6365, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %6366 to i64*
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6368 = getelementptr inbounds %struct.GPR, %struct.GPR* %6367, i32 0, i32 5
  %6369 = getelementptr inbounds %struct.Reg, %struct.Reg* %6368, i32 0, i32 0
  %ECX.i292 = bitcast %union.anon* %6369 to i32*
  %6370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6371 = getelementptr inbounds %struct.GPR, %struct.GPR* %6370, i32 0, i32 1
  %6372 = getelementptr inbounds %struct.Reg, %struct.Reg* %6371, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %6372 to i64*
  %6373 = load i64, i64* %RAX.i293
  %6374 = add i64 %6373, 16
  %6375 = load i32, i32* %ECX.i292
  %6376 = zext i32 %6375 to i64
  %6377 = load i64, i64* %PC.i291
  %6378 = add i64 %6377, 3
  store i64 %6378, i64* %PC.i291
  %6379 = inttoptr i64 %6374 to i32*
  store i32 %6375, i32* %6379
  store %struct.Memory* %loadMem_41e1aa, %struct.Memory** %MEMORY
  %loadMem_41e1ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6381 = getelementptr inbounds %struct.GPR, %struct.GPR* %6380, i32 0, i32 33
  %6382 = getelementptr inbounds %struct.Reg, %struct.Reg* %6381, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %6382 to i64*
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6384 = getelementptr inbounds %struct.GPR, %struct.GPR* %6383, i32 0, i32 1
  %6385 = getelementptr inbounds %struct.Reg, %struct.Reg* %6384, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %6385 to i64*
  %6386 = load i64, i64* %PC.i289
  %6387 = add i64 %6386, 8
  store i64 %6387, i64* %PC.i289
  %6388 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %6388, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_41e1ad, %struct.Memory** %MEMORY
  %loadMem_41e1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6390 = getelementptr inbounds %struct.GPR, %struct.GPR* %6389, i32 0, i32 33
  %6391 = getelementptr inbounds %struct.Reg, %struct.Reg* %6390, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %6391 to i64*
  %6392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6393 = getelementptr inbounds %struct.GPR, %struct.GPR* %6392, i32 0, i32 5
  %6394 = getelementptr inbounds %struct.Reg, %struct.Reg* %6393, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %6394 to i64*
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6396 = getelementptr inbounds %struct.GPR, %struct.GPR* %6395, i32 0, i32 15
  %6397 = getelementptr inbounds %struct.Reg, %struct.Reg* %6396, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %6397 to i64*
  %6398 = load i64, i64* %RBP.i288
  %6399 = sub i64 %6398, 56
  %6400 = load i64, i64* %PC.i286
  %6401 = add i64 %6400, 3
  store i64 %6401, i64* %PC.i286
  %6402 = inttoptr i64 %6399 to i32*
  %6403 = load i32, i32* %6402
  %6404 = zext i32 %6403 to i64
  store i64 %6404, i64* %RCX.i287, align 8
  store %struct.Memory* %loadMem_41e1b5, %struct.Memory** %MEMORY
  %loadMem_41e1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6406 = getelementptr inbounds %struct.GPR, %struct.GPR* %6405, i32 0, i32 33
  %6407 = getelementptr inbounds %struct.Reg, %struct.Reg* %6406, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %6407 to i64*
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6409 = getelementptr inbounds %struct.GPR, %struct.GPR* %6408, i32 0, i32 5
  %6410 = getelementptr inbounds %struct.Reg, %struct.Reg* %6409, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %6410 to i64*
  %6411 = load i64, i64* %RCX.i285
  %6412 = load i64, i64* %PC.i284
  %6413 = add i64 %6412, 3
  store i64 %6413, i64* %PC.i284
  %6414 = trunc i64 %6411 to i32
  %6415 = sub i32 %6414, 1
  %6416 = zext i32 %6415 to i64
  store i64 %6416, i64* %RCX.i285, align 8
  %6417 = icmp ult i32 %6414, 1
  %6418 = zext i1 %6417 to i8
  %6419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6418, i8* %6419, align 1
  %6420 = and i32 %6415, 255
  %6421 = call i32 @llvm.ctpop.i32(i32 %6420)
  %6422 = trunc i32 %6421 to i8
  %6423 = and i8 %6422, 1
  %6424 = xor i8 %6423, 1
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6424, i8* %6425, align 1
  %6426 = xor i64 1, %6411
  %6427 = trunc i64 %6426 to i32
  %6428 = xor i32 %6427, %6415
  %6429 = lshr i32 %6428, 4
  %6430 = trunc i32 %6429 to i8
  %6431 = and i8 %6430, 1
  %6432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6431, i8* %6432, align 1
  %6433 = icmp eq i32 %6415, 0
  %6434 = zext i1 %6433 to i8
  %6435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6434, i8* %6435, align 1
  %6436 = lshr i32 %6415, 31
  %6437 = trunc i32 %6436 to i8
  %6438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6437, i8* %6438, align 1
  %6439 = lshr i32 %6414, 31
  %6440 = xor i32 %6436, %6439
  %6441 = add i32 %6440, %6439
  %6442 = icmp eq i32 %6441, 2
  %6443 = zext i1 %6442 to i8
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6443, i8* %6444, align 1
  store %struct.Memory* %loadMem_41e1b8, %struct.Memory** %MEMORY
  %loadMem_41e1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6446 = getelementptr inbounds %struct.GPR, %struct.GPR* %6445, i32 0, i32 33
  %6447 = getelementptr inbounds %struct.Reg, %struct.Reg* %6446, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %6447 to i64*
  %6448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6449 = getelementptr inbounds %struct.GPR, %struct.GPR* %6448, i32 0, i32 5
  %6450 = getelementptr inbounds %struct.Reg, %struct.Reg* %6449, i32 0, i32 0
  %ECX.i282 = bitcast %union.anon* %6450 to i32*
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6452 = getelementptr inbounds %struct.GPR, %struct.GPR* %6451, i32 0, i32 7
  %6453 = getelementptr inbounds %struct.Reg, %struct.Reg* %6452, i32 0, i32 0
  %RDX.i283 = bitcast %union.anon* %6453 to i64*
  %6454 = load i32, i32* %ECX.i282
  %6455 = zext i32 %6454 to i64
  %6456 = load i64, i64* %PC.i281
  %6457 = add i64 %6456, 3
  store i64 %6457, i64* %PC.i281
  %6458 = shl i64 %6455, 32
  %6459 = ashr exact i64 %6458, 32
  store i64 %6459, i64* %RDX.i283, align 8
  store %struct.Memory* %loadMem_41e1bb, %struct.Memory** %MEMORY
  %loadMem_41e1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %6460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6461 = getelementptr inbounds %struct.GPR, %struct.GPR* %6460, i32 0, i32 33
  %6462 = getelementptr inbounds %struct.Reg, %struct.Reg* %6461, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %6462 to i64*
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6464 = getelementptr inbounds %struct.GPR, %struct.GPR* %6463, i32 0, i32 7
  %6465 = getelementptr inbounds %struct.Reg, %struct.Reg* %6464, i32 0, i32 0
  %RDX.i280 = bitcast %union.anon* %6465 to i64*
  %6466 = load i64, i64* %RDX.i280
  %6467 = load i64, i64* %PC.i279
  %6468 = add i64 %6467, 4
  store i64 %6468, i64* %PC.i279
  %6469 = sext i64 %6466 to i128
  %6470 = and i128 %6469, -18446744073709551616
  %6471 = zext i64 %6466 to i128
  %6472 = or i128 %6470, %6471
  %6473 = mul i128 24, %6472
  %6474 = trunc i128 %6473 to i64
  store i64 %6474, i64* %RDX.i280, align 8
  %6475 = sext i64 %6474 to i128
  %6476 = icmp ne i128 %6475, %6473
  %6477 = zext i1 %6476 to i8
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6477, i8* %6478, align 1
  %6479 = trunc i128 %6473 to i32
  %6480 = and i32 %6479, 255
  %6481 = call i32 @llvm.ctpop.i32(i32 %6480)
  %6482 = trunc i32 %6481 to i8
  %6483 = and i8 %6482, 1
  %6484 = xor i8 %6483, 1
  %6485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6484, i8* %6485, align 1
  %6486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6486, align 1
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6487, align 1
  %6488 = lshr i64 %6474, 63
  %6489 = trunc i64 %6488 to i8
  %6490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6489, i8* %6490, align 1
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6477, i8* %6491, align 1
  store %struct.Memory* %loadMem_41e1be, %struct.Memory** %MEMORY
  %loadMem_41e1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6493 = getelementptr inbounds %struct.GPR, %struct.GPR* %6492, i32 0, i32 33
  %6494 = getelementptr inbounds %struct.Reg, %struct.Reg* %6493, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %6494 to i64*
  %6495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6496 = getelementptr inbounds %struct.GPR, %struct.GPR* %6495, i32 0, i32 1
  %6497 = getelementptr inbounds %struct.Reg, %struct.Reg* %6496, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %6497 to i64*
  %6498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6499 = getelementptr inbounds %struct.GPR, %struct.GPR* %6498, i32 0, i32 7
  %6500 = getelementptr inbounds %struct.Reg, %struct.Reg* %6499, i32 0, i32 0
  %RDX.i278 = bitcast %union.anon* %6500 to i64*
  %6501 = load i64, i64* %RAX.i277
  %6502 = load i64, i64* %RDX.i278
  %6503 = load i64, i64* %PC.i276
  %6504 = add i64 %6503, 3
  store i64 %6504, i64* %PC.i276
  %6505 = add i64 %6502, %6501
  store i64 %6505, i64* %RAX.i277, align 8
  %6506 = icmp ult i64 %6505, %6501
  %6507 = icmp ult i64 %6505, %6502
  %6508 = or i1 %6506, %6507
  %6509 = zext i1 %6508 to i8
  %6510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6509, i8* %6510, align 1
  %6511 = trunc i64 %6505 to i32
  %6512 = and i32 %6511, 255
  %6513 = call i32 @llvm.ctpop.i32(i32 %6512)
  %6514 = trunc i32 %6513 to i8
  %6515 = and i8 %6514, 1
  %6516 = xor i8 %6515, 1
  %6517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6516, i8* %6517, align 1
  %6518 = xor i64 %6502, %6501
  %6519 = xor i64 %6518, %6505
  %6520 = lshr i64 %6519, 4
  %6521 = trunc i64 %6520 to i8
  %6522 = and i8 %6521, 1
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6522, i8* %6523, align 1
  %6524 = icmp eq i64 %6505, 0
  %6525 = zext i1 %6524 to i8
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6525, i8* %6526, align 1
  %6527 = lshr i64 %6505, 63
  %6528 = trunc i64 %6527 to i8
  %6529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6528, i8* %6529, align 1
  %6530 = lshr i64 %6501, 63
  %6531 = lshr i64 %6502, 63
  %6532 = xor i64 %6527, %6530
  %6533 = xor i64 %6527, %6531
  %6534 = add i64 %6532, %6533
  %6535 = icmp eq i64 %6534, 2
  %6536 = zext i1 %6535 to i8
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6536, i8* %6537, align 1
  store %struct.Memory* %loadMem_41e1c2, %struct.Memory** %MEMORY
  %loadMem_41e1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6539 = getelementptr inbounds %struct.GPR, %struct.GPR* %6538, i32 0, i32 33
  %6540 = getelementptr inbounds %struct.Reg, %struct.Reg* %6539, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %6540 to i64*
  %6541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6542 = getelementptr inbounds %struct.GPR, %struct.GPR* %6541, i32 0, i32 1
  %6543 = getelementptr inbounds %struct.Reg, %struct.Reg* %6542, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %6543 to i64*
  %6544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6545 = getelementptr inbounds %struct.GPR, %struct.GPR* %6544, i32 0, i32 5
  %6546 = getelementptr inbounds %struct.Reg, %struct.Reg* %6545, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %6546 to i64*
  %6547 = load i64, i64* %RAX.i274
  %6548 = add i64 %6547, 8
  %6549 = load i64, i64* %PC.i273
  %6550 = add i64 %6549, 3
  store i64 %6550, i64* %PC.i273
  %6551 = inttoptr i64 %6548 to i32*
  %6552 = load i32, i32* %6551
  %6553 = zext i32 %6552 to i64
  store i64 %6553, i64* %RCX.i275, align 8
  store %struct.Memory* %loadMem_41e1c5, %struct.Memory** %MEMORY
  %loadMem_41e1c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6555 = getelementptr inbounds %struct.GPR, %struct.GPR* %6554, i32 0, i32 33
  %6556 = getelementptr inbounds %struct.Reg, %struct.Reg* %6555, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %6556 to i64*
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6558 = getelementptr inbounds %struct.GPR, %struct.GPR* %6557, i32 0, i32 5
  %6559 = getelementptr inbounds %struct.Reg, %struct.Reg* %6558, i32 0, i32 0
  %ECX.i271 = bitcast %union.anon* %6559 to i32*
  %6560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6561 = getelementptr inbounds %struct.GPR, %struct.GPR* %6560, i32 0, i32 15
  %6562 = getelementptr inbounds %struct.Reg, %struct.Reg* %6561, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %6562 to i64*
  %6563 = load i64, i64* %RBP.i272
  %6564 = sub i64 %6563, 60
  %6565 = load i32, i32* %ECX.i271
  %6566 = zext i32 %6565 to i64
  %6567 = load i64, i64* %PC.i270
  %6568 = add i64 %6567, 3
  store i64 %6568, i64* %PC.i270
  %6569 = inttoptr i64 %6564 to i32*
  store i32 %6565, i32* %6569
  store %struct.Memory* %loadMem_41e1c8, %struct.Memory** %MEMORY
  %loadMem_41e1cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6571 = getelementptr inbounds %struct.GPR, %struct.GPR* %6570, i32 0, i32 33
  %6572 = getelementptr inbounds %struct.Reg, %struct.Reg* %6571, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %6572 to i64*
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6574 = getelementptr inbounds %struct.GPR, %struct.GPR* %6573, i32 0, i32 1
  %6575 = getelementptr inbounds %struct.Reg, %struct.Reg* %6574, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %6575 to i64*
  %6576 = load i64, i64* %PC.i268
  %6577 = add i64 %6576, 8
  store i64 %6577, i64* %PC.i268
  %6578 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %6578, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_41e1cb, %struct.Memory** %MEMORY
  %loadMem_41e1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6580 = getelementptr inbounds %struct.GPR, %struct.GPR* %6579, i32 0, i32 33
  %6581 = getelementptr inbounds %struct.Reg, %struct.Reg* %6580, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %6581 to i64*
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6583 = getelementptr inbounds %struct.GPR, %struct.GPR* %6582, i32 0, i32 7
  %6584 = getelementptr inbounds %struct.Reg, %struct.Reg* %6583, i32 0, i32 0
  %RDX.i266 = bitcast %union.anon* %6584 to i64*
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6586 = getelementptr inbounds %struct.GPR, %struct.GPR* %6585, i32 0, i32 15
  %6587 = getelementptr inbounds %struct.Reg, %struct.Reg* %6586, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %6587 to i64*
  %6588 = load i64, i64* %RBP.i267
  %6589 = sub i64 %6588, 56
  %6590 = load i64, i64* %PC.i265
  %6591 = add i64 %6590, 4
  store i64 %6591, i64* %PC.i265
  %6592 = inttoptr i64 %6589 to i32*
  %6593 = load i32, i32* %6592
  %6594 = sext i32 %6593 to i64
  store i64 %6594, i64* %RDX.i266, align 8
  store %struct.Memory* %loadMem_41e1d3, %struct.Memory** %MEMORY
  %loadMem_41e1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6596 = getelementptr inbounds %struct.GPR, %struct.GPR* %6595, i32 0, i32 33
  %6597 = getelementptr inbounds %struct.Reg, %struct.Reg* %6596, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %6597 to i64*
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6599 = getelementptr inbounds %struct.GPR, %struct.GPR* %6598, i32 0, i32 7
  %6600 = getelementptr inbounds %struct.Reg, %struct.Reg* %6599, i32 0, i32 0
  %RDX.i264 = bitcast %union.anon* %6600 to i64*
  %6601 = load i64, i64* %RDX.i264
  %6602 = load i64, i64* %PC.i263
  %6603 = add i64 %6602, 4
  store i64 %6603, i64* %PC.i263
  %6604 = sext i64 %6601 to i128
  %6605 = and i128 %6604, -18446744073709551616
  %6606 = zext i64 %6601 to i128
  %6607 = or i128 %6605, %6606
  %6608 = mul i128 24, %6607
  %6609 = trunc i128 %6608 to i64
  store i64 %6609, i64* %RDX.i264, align 8
  %6610 = sext i64 %6609 to i128
  %6611 = icmp ne i128 %6610, %6608
  %6612 = zext i1 %6611 to i8
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6612, i8* %6613, align 1
  %6614 = trunc i128 %6608 to i32
  %6615 = and i32 %6614, 255
  %6616 = call i32 @llvm.ctpop.i32(i32 %6615)
  %6617 = trunc i32 %6616 to i8
  %6618 = and i8 %6617, 1
  %6619 = xor i8 %6618, 1
  %6620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6619, i8* %6620, align 1
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6621, align 1
  %6622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6622, align 1
  %6623 = lshr i64 %6609, 63
  %6624 = trunc i64 %6623 to i8
  %6625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6624, i8* %6625, align 1
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6612, i8* %6626, align 1
  store %struct.Memory* %loadMem_41e1d7, %struct.Memory** %MEMORY
  %loadMem_41e1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6628 = getelementptr inbounds %struct.GPR, %struct.GPR* %6627, i32 0, i32 33
  %6629 = getelementptr inbounds %struct.Reg, %struct.Reg* %6628, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %6629 to i64*
  %6630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6631 = getelementptr inbounds %struct.GPR, %struct.GPR* %6630, i32 0, i32 1
  %6632 = getelementptr inbounds %struct.Reg, %struct.Reg* %6631, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %6632 to i64*
  %6633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6634 = getelementptr inbounds %struct.GPR, %struct.GPR* %6633, i32 0, i32 7
  %6635 = getelementptr inbounds %struct.Reg, %struct.Reg* %6634, i32 0, i32 0
  %RDX.i262 = bitcast %union.anon* %6635 to i64*
  %6636 = load i64, i64* %RAX.i261
  %6637 = load i64, i64* %RDX.i262
  %6638 = load i64, i64* %PC.i260
  %6639 = add i64 %6638, 3
  store i64 %6639, i64* %PC.i260
  %6640 = add i64 %6637, %6636
  store i64 %6640, i64* %RAX.i261, align 8
  %6641 = icmp ult i64 %6640, %6636
  %6642 = icmp ult i64 %6640, %6637
  %6643 = or i1 %6641, %6642
  %6644 = zext i1 %6643 to i8
  %6645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6644, i8* %6645, align 1
  %6646 = trunc i64 %6640 to i32
  %6647 = and i32 %6646, 255
  %6648 = call i32 @llvm.ctpop.i32(i32 %6647)
  %6649 = trunc i32 %6648 to i8
  %6650 = and i8 %6649, 1
  %6651 = xor i8 %6650, 1
  %6652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6651, i8* %6652, align 1
  %6653 = xor i64 %6637, %6636
  %6654 = xor i64 %6653, %6640
  %6655 = lshr i64 %6654, 4
  %6656 = trunc i64 %6655 to i8
  %6657 = and i8 %6656, 1
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6657, i8* %6658, align 1
  %6659 = icmp eq i64 %6640, 0
  %6660 = zext i1 %6659 to i8
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6660, i8* %6661, align 1
  %6662 = lshr i64 %6640, 63
  %6663 = trunc i64 %6662 to i8
  %6664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6663, i8* %6664, align 1
  %6665 = lshr i64 %6636, 63
  %6666 = lshr i64 %6637, 63
  %6667 = xor i64 %6662, %6665
  %6668 = xor i64 %6662, %6666
  %6669 = add i64 %6667, %6668
  %6670 = icmp eq i64 %6669, 2
  %6671 = zext i1 %6670 to i8
  %6672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6671, i8* %6672, align 1
  store %struct.Memory* %loadMem_41e1db, %struct.Memory** %MEMORY
  %loadMem_41e1de = load %struct.Memory*, %struct.Memory** %MEMORY
  %6673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6674 = getelementptr inbounds %struct.GPR, %struct.GPR* %6673, i32 0, i32 33
  %6675 = getelementptr inbounds %struct.Reg, %struct.Reg* %6674, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %6675 to i64*
  %6676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6677 = getelementptr inbounds %struct.GPR, %struct.GPR* %6676, i32 0, i32 1
  %6678 = getelementptr inbounds %struct.Reg, %struct.Reg* %6677, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %6678 to i64*
  %6679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6680 = getelementptr inbounds %struct.GPR, %struct.GPR* %6679, i32 0, i32 5
  %6681 = getelementptr inbounds %struct.Reg, %struct.Reg* %6680, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %6681 to i64*
  %6682 = load i64, i64* %RAX.i258
  %6683 = add i64 %6682, 8
  %6684 = load i64, i64* %PC.i257
  %6685 = add i64 %6684, 3
  store i64 %6685, i64* %PC.i257
  %6686 = inttoptr i64 %6683 to i32*
  %6687 = load i32, i32* %6686
  %6688 = zext i32 %6687 to i64
  store i64 %6688, i64* %RCX.i259, align 8
  store %struct.Memory* %loadMem_41e1de, %struct.Memory** %MEMORY
  %loadMem_41e1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6690 = getelementptr inbounds %struct.GPR, %struct.GPR* %6689, i32 0, i32 33
  %6691 = getelementptr inbounds %struct.Reg, %struct.Reg* %6690, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %6691 to i64*
  %6692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6693 = getelementptr inbounds %struct.GPR, %struct.GPR* %6692, i32 0, i32 1
  %6694 = getelementptr inbounds %struct.Reg, %struct.Reg* %6693, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %6694 to i64*
  %6695 = load i64, i64* %PC.i255
  %6696 = add i64 %6695, 8
  store i64 %6696, i64* %PC.i255
  %6697 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %6697, i64* %RAX.i256, align 8
  store %struct.Memory* %loadMem_41e1e1, %struct.Memory** %MEMORY
  %loadMem_41e1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6699 = getelementptr inbounds %struct.GPR, %struct.GPR* %6698, i32 0, i32 33
  %6700 = getelementptr inbounds %struct.Reg, %struct.Reg* %6699, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %6700 to i64*
  %6701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6702 = getelementptr inbounds %struct.GPR, %struct.GPR* %6701, i32 0, i32 9
  %6703 = getelementptr inbounds %struct.Reg, %struct.Reg* %6702, i32 0, i32 0
  %RSI.i253 = bitcast %union.anon* %6703 to i64*
  %6704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6705 = getelementptr inbounds %struct.GPR, %struct.GPR* %6704, i32 0, i32 15
  %6706 = getelementptr inbounds %struct.Reg, %struct.Reg* %6705, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %6706 to i64*
  %6707 = load i64, i64* %RBP.i254
  %6708 = sub i64 %6707, 56
  %6709 = load i64, i64* %PC.i252
  %6710 = add i64 %6709, 3
  store i64 %6710, i64* %PC.i252
  %6711 = inttoptr i64 %6708 to i32*
  %6712 = load i32, i32* %6711
  %6713 = zext i32 %6712 to i64
  store i64 %6713, i64* %RSI.i253, align 8
  store %struct.Memory* %loadMem_41e1e9, %struct.Memory** %MEMORY
  %loadMem_41e1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6715 = getelementptr inbounds %struct.GPR, %struct.GPR* %6714, i32 0, i32 33
  %6716 = getelementptr inbounds %struct.Reg, %struct.Reg* %6715, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %6716 to i64*
  %6717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6718 = getelementptr inbounds %struct.GPR, %struct.GPR* %6717, i32 0, i32 9
  %6719 = getelementptr inbounds %struct.Reg, %struct.Reg* %6718, i32 0, i32 0
  %RSI.i251 = bitcast %union.anon* %6719 to i64*
  %6720 = load i64, i64* %RSI.i251
  %6721 = load i64, i64* %PC.i250
  %6722 = add i64 %6721, 3
  store i64 %6722, i64* %PC.i250
  %6723 = trunc i64 %6720 to i32
  %6724 = sub i32 %6723, 1
  %6725 = zext i32 %6724 to i64
  store i64 %6725, i64* %RSI.i251, align 8
  %6726 = icmp ult i32 %6723, 1
  %6727 = zext i1 %6726 to i8
  %6728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6727, i8* %6728, align 1
  %6729 = and i32 %6724, 255
  %6730 = call i32 @llvm.ctpop.i32(i32 %6729)
  %6731 = trunc i32 %6730 to i8
  %6732 = and i8 %6731, 1
  %6733 = xor i8 %6732, 1
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6733, i8* %6734, align 1
  %6735 = xor i64 1, %6720
  %6736 = trunc i64 %6735 to i32
  %6737 = xor i32 %6736, %6724
  %6738 = lshr i32 %6737, 4
  %6739 = trunc i32 %6738 to i8
  %6740 = and i8 %6739, 1
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6740, i8* %6741, align 1
  %6742 = icmp eq i32 %6724, 0
  %6743 = zext i1 %6742 to i8
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6743, i8* %6744, align 1
  %6745 = lshr i32 %6724, 31
  %6746 = trunc i32 %6745 to i8
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6746, i8* %6747, align 1
  %6748 = lshr i32 %6723, 31
  %6749 = xor i32 %6745, %6748
  %6750 = add i32 %6749, %6748
  %6751 = icmp eq i32 %6750, 2
  %6752 = zext i1 %6751 to i8
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6752, i8* %6753, align 1
  store %struct.Memory* %loadMem_41e1ec, %struct.Memory** %MEMORY
  %loadMem_41e1ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 33
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %6756 to i64*
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6758 = getelementptr inbounds %struct.GPR, %struct.GPR* %6757, i32 0, i32 9
  %6759 = getelementptr inbounds %struct.Reg, %struct.Reg* %6758, i32 0, i32 0
  %ESI.i248 = bitcast %union.anon* %6759 to i32*
  %6760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6761 = getelementptr inbounds %struct.GPR, %struct.GPR* %6760, i32 0, i32 7
  %6762 = getelementptr inbounds %struct.Reg, %struct.Reg* %6761, i32 0, i32 0
  %RDX.i249 = bitcast %union.anon* %6762 to i64*
  %6763 = load i32, i32* %ESI.i248
  %6764 = zext i32 %6763 to i64
  %6765 = load i64, i64* %PC.i247
  %6766 = add i64 %6765, 3
  store i64 %6766, i64* %PC.i247
  %6767 = shl i64 %6764, 32
  %6768 = ashr exact i64 %6767, 32
  store i64 %6768, i64* %RDX.i249, align 8
  store %struct.Memory* %loadMem_41e1ef, %struct.Memory** %MEMORY
  %loadMem_41e1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6770 = getelementptr inbounds %struct.GPR, %struct.GPR* %6769, i32 0, i32 33
  %6771 = getelementptr inbounds %struct.Reg, %struct.Reg* %6770, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %6771 to i64*
  %6772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6773 = getelementptr inbounds %struct.GPR, %struct.GPR* %6772, i32 0, i32 7
  %6774 = getelementptr inbounds %struct.Reg, %struct.Reg* %6773, i32 0, i32 0
  %RDX.i246 = bitcast %union.anon* %6774 to i64*
  %6775 = load i64, i64* %RDX.i246
  %6776 = load i64, i64* %PC.i245
  %6777 = add i64 %6776, 4
  store i64 %6777, i64* %PC.i245
  %6778 = sext i64 %6775 to i128
  %6779 = and i128 %6778, -18446744073709551616
  %6780 = zext i64 %6775 to i128
  %6781 = or i128 %6779, %6780
  %6782 = mul i128 24, %6781
  %6783 = trunc i128 %6782 to i64
  store i64 %6783, i64* %RDX.i246, align 8
  %6784 = sext i64 %6783 to i128
  %6785 = icmp ne i128 %6784, %6782
  %6786 = zext i1 %6785 to i8
  %6787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6786, i8* %6787, align 1
  %6788 = trunc i128 %6782 to i32
  %6789 = and i32 %6788, 255
  %6790 = call i32 @llvm.ctpop.i32(i32 %6789)
  %6791 = trunc i32 %6790 to i8
  %6792 = and i8 %6791, 1
  %6793 = xor i8 %6792, 1
  %6794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6793, i8* %6794, align 1
  %6795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6795, align 1
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6796, align 1
  %6797 = lshr i64 %6783, 63
  %6798 = trunc i64 %6797 to i8
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6798, i8* %6799, align 1
  %6800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6786, i8* %6800, align 1
  store %struct.Memory* %loadMem_41e1f2, %struct.Memory** %MEMORY
  %loadMem_41e1f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6802 = getelementptr inbounds %struct.GPR, %struct.GPR* %6801, i32 0, i32 33
  %6803 = getelementptr inbounds %struct.Reg, %struct.Reg* %6802, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %6803 to i64*
  %6804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6805 = getelementptr inbounds %struct.GPR, %struct.GPR* %6804, i32 0, i32 1
  %6806 = getelementptr inbounds %struct.Reg, %struct.Reg* %6805, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %6806 to i64*
  %6807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6808 = getelementptr inbounds %struct.GPR, %struct.GPR* %6807, i32 0, i32 7
  %6809 = getelementptr inbounds %struct.Reg, %struct.Reg* %6808, i32 0, i32 0
  %RDX.i244 = bitcast %union.anon* %6809 to i64*
  %6810 = load i64, i64* %RAX.i243
  %6811 = load i64, i64* %RDX.i244
  %6812 = load i64, i64* %PC.i242
  %6813 = add i64 %6812, 3
  store i64 %6813, i64* %PC.i242
  %6814 = add i64 %6811, %6810
  store i64 %6814, i64* %RAX.i243, align 8
  %6815 = icmp ult i64 %6814, %6810
  %6816 = icmp ult i64 %6814, %6811
  %6817 = or i1 %6815, %6816
  %6818 = zext i1 %6817 to i8
  %6819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6818, i8* %6819, align 1
  %6820 = trunc i64 %6814 to i32
  %6821 = and i32 %6820, 255
  %6822 = call i32 @llvm.ctpop.i32(i32 %6821)
  %6823 = trunc i32 %6822 to i8
  %6824 = and i8 %6823, 1
  %6825 = xor i8 %6824, 1
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6825, i8* %6826, align 1
  %6827 = xor i64 %6811, %6810
  %6828 = xor i64 %6827, %6814
  %6829 = lshr i64 %6828, 4
  %6830 = trunc i64 %6829 to i8
  %6831 = and i8 %6830, 1
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6831, i8* %6832, align 1
  %6833 = icmp eq i64 %6814, 0
  %6834 = zext i1 %6833 to i8
  %6835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6834, i8* %6835, align 1
  %6836 = lshr i64 %6814, 63
  %6837 = trunc i64 %6836 to i8
  %6838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6837, i8* %6838, align 1
  %6839 = lshr i64 %6810, 63
  %6840 = lshr i64 %6811, 63
  %6841 = xor i64 %6836, %6839
  %6842 = xor i64 %6836, %6840
  %6843 = add i64 %6841, %6842
  %6844 = icmp eq i64 %6843, 2
  %6845 = zext i1 %6844 to i8
  %6846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6845, i8* %6846, align 1
  store %struct.Memory* %loadMem_41e1f6, %struct.Memory** %MEMORY
  %loadMem_41e1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6848 = getelementptr inbounds %struct.GPR, %struct.GPR* %6847, i32 0, i32 33
  %6849 = getelementptr inbounds %struct.Reg, %struct.Reg* %6848, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %6849 to i64*
  %6850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6851 = getelementptr inbounds %struct.GPR, %struct.GPR* %6850, i32 0, i32 5
  %6852 = getelementptr inbounds %struct.Reg, %struct.Reg* %6851, i32 0, i32 0
  %ECX.i240 = bitcast %union.anon* %6852 to i32*
  %6853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6854 = getelementptr inbounds %struct.GPR, %struct.GPR* %6853, i32 0, i32 1
  %6855 = getelementptr inbounds %struct.Reg, %struct.Reg* %6854, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %6855 to i64*
  %6856 = load i64, i64* %RAX.i241
  %6857 = add i64 %6856, 8
  %6858 = load i32, i32* %ECX.i240
  %6859 = zext i32 %6858 to i64
  %6860 = load i64, i64* %PC.i239
  %6861 = add i64 %6860, 3
  store i64 %6861, i64* %PC.i239
  %6862 = inttoptr i64 %6857 to i32*
  store i32 %6858, i32* %6862
  store %struct.Memory* %loadMem_41e1f9, %struct.Memory** %MEMORY
  %loadMem_41e1fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6864 = getelementptr inbounds %struct.GPR, %struct.GPR* %6863, i32 0, i32 33
  %6865 = getelementptr inbounds %struct.Reg, %struct.Reg* %6864, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %6865 to i64*
  %6866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6867 = getelementptr inbounds %struct.GPR, %struct.GPR* %6866, i32 0, i32 5
  %6868 = getelementptr inbounds %struct.Reg, %struct.Reg* %6867, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %6868 to i64*
  %6869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6870 = getelementptr inbounds %struct.GPR, %struct.GPR* %6869, i32 0, i32 15
  %6871 = getelementptr inbounds %struct.Reg, %struct.Reg* %6870, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %6871 to i64*
  %6872 = load i64, i64* %RBP.i238
  %6873 = sub i64 %6872, 60
  %6874 = load i64, i64* %PC.i236
  %6875 = add i64 %6874, 3
  store i64 %6875, i64* %PC.i236
  %6876 = inttoptr i64 %6873 to i32*
  %6877 = load i32, i32* %6876
  %6878 = zext i32 %6877 to i64
  store i64 %6878, i64* %RCX.i237, align 8
  store %struct.Memory* %loadMem_41e1fc, %struct.Memory** %MEMORY
  %loadMem_41e1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6880 = getelementptr inbounds %struct.GPR, %struct.GPR* %6879, i32 0, i32 33
  %6881 = getelementptr inbounds %struct.Reg, %struct.Reg* %6880, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %6881 to i64*
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6883 = getelementptr inbounds %struct.GPR, %struct.GPR* %6882, i32 0, i32 1
  %6884 = getelementptr inbounds %struct.Reg, %struct.Reg* %6883, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %6884 to i64*
  %6885 = load i64, i64* %PC.i234
  %6886 = add i64 %6885, 8
  store i64 %6886, i64* %PC.i234
  %6887 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %6887, i64* %RAX.i235, align 8
  store %struct.Memory* %loadMem_41e1ff, %struct.Memory** %MEMORY
  %loadMem_41e207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6889 = getelementptr inbounds %struct.GPR, %struct.GPR* %6888, i32 0, i32 33
  %6890 = getelementptr inbounds %struct.Reg, %struct.Reg* %6889, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %6890 to i64*
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6892 = getelementptr inbounds %struct.GPR, %struct.GPR* %6891, i32 0, i32 7
  %6893 = getelementptr inbounds %struct.Reg, %struct.Reg* %6892, i32 0, i32 0
  %RDX.i232 = bitcast %union.anon* %6893 to i64*
  %6894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6895 = getelementptr inbounds %struct.GPR, %struct.GPR* %6894, i32 0, i32 15
  %6896 = getelementptr inbounds %struct.Reg, %struct.Reg* %6895, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %6896 to i64*
  %6897 = load i64, i64* %RBP.i233
  %6898 = sub i64 %6897, 56
  %6899 = load i64, i64* %PC.i231
  %6900 = add i64 %6899, 4
  store i64 %6900, i64* %PC.i231
  %6901 = inttoptr i64 %6898 to i32*
  %6902 = load i32, i32* %6901
  %6903 = sext i32 %6902 to i64
  store i64 %6903, i64* %RDX.i232, align 8
  store %struct.Memory* %loadMem_41e207, %struct.Memory** %MEMORY
  %loadMem_41e20b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6905 = getelementptr inbounds %struct.GPR, %struct.GPR* %6904, i32 0, i32 33
  %6906 = getelementptr inbounds %struct.Reg, %struct.Reg* %6905, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %6906 to i64*
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6908 = getelementptr inbounds %struct.GPR, %struct.GPR* %6907, i32 0, i32 7
  %6909 = getelementptr inbounds %struct.Reg, %struct.Reg* %6908, i32 0, i32 0
  %RDX.i230 = bitcast %union.anon* %6909 to i64*
  %6910 = load i64, i64* %RDX.i230
  %6911 = load i64, i64* %PC.i229
  %6912 = add i64 %6911, 4
  store i64 %6912, i64* %PC.i229
  %6913 = sext i64 %6910 to i128
  %6914 = and i128 %6913, -18446744073709551616
  %6915 = zext i64 %6910 to i128
  %6916 = or i128 %6914, %6915
  %6917 = mul i128 24, %6916
  %6918 = trunc i128 %6917 to i64
  store i64 %6918, i64* %RDX.i230, align 8
  %6919 = sext i64 %6918 to i128
  %6920 = icmp ne i128 %6919, %6917
  %6921 = zext i1 %6920 to i8
  %6922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6921, i8* %6922, align 1
  %6923 = trunc i128 %6917 to i32
  %6924 = and i32 %6923, 255
  %6925 = call i32 @llvm.ctpop.i32(i32 %6924)
  %6926 = trunc i32 %6925 to i8
  %6927 = and i8 %6926, 1
  %6928 = xor i8 %6927, 1
  %6929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6928, i8* %6929, align 1
  %6930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6930, align 1
  %6931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6931, align 1
  %6932 = lshr i64 %6918, 63
  %6933 = trunc i64 %6932 to i8
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6933, i8* %6934, align 1
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6921, i8* %6935, align 1
  store %struct.Memory* %loadMem_41e20b, %struct.Memory** %MEMORY
  %loadMem_41e20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6937 = getelementptr inbounds %struct.GPR, %struct.GPR* %6936, i32 0, i32 33
  %6938 = getelementptr inbounds %struct.Reg, %struct.Reg* %6937, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %6938 to i64*
  %6939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6940 = getelementptr inbounds %struct.GPR, %struct.GPR* %6939, i32 0, i32 1
  %6941 = getelementptr inbounds %struct.Reg, %struct.Reg* %6940, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %6941 to i64*
  %6942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6943 = getelementptr inbounds %struct.GPR, %struct.GPR* %6942, i32 0, i32 7
  %6944 = getelementptr inbounds %struct.Reg, %struct.Reg* %6943, i32 0, i32 0
  %RDX.i228 = bitcast %union.anon* %6944 to i64*
  %6945 = load i64, i64* %RAX.i227
  %6946 = load i64, i64* %RDX.i228
  %6947 = load i64, i64* %PC.i226
  %6948 = add i64 %6947, 3
  store i64 %6948, i64* %PC.i226
  %6949 = add i64 %6946, %6945
  store i64 %6949, i64* %RAX.i227, align 8
  %6950 = icmp ult i64 %6949, %6945
  %6951 = icmp ult i64 %6949, %6946
  %6952 = or i1 %6950, %6951
  %6953 = zext i1 %6952 to i8
  %6954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6953, i8* %6954, align 1
  %6955 = trunc i64 %6949 to i32
  %6956 = and i32 %6955, 255
  %6957 = call i32 @llvm.ctpop.i32(i32 %6956)
  %6958 = trunc i32 %6957 to i8
  %6959 = and i8 %6958, 1
  %6960 = xor i8 %6959, 1
  %6961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6960, i8* %6961, align 1
  %6962 = xor i64 %6946, %6945
  %6963 = xor i64 %6962, %6949
  %6964 = lshr i64 %6963, 4
  %6965 = trunc i64 %6964 to i8
  %6966 = and i8 %6965, 1
  %6967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6966, i8* %6967, align 1
  %6968 = icmp eq i64 %6949, 0
  %6969 = zext i1 %6968 to i8
  %6970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6969, i8* %6970, align 1
  %6971 = lshr i64 %6949, 63
  %6972 = trunc i64 %6971 to i8
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6972, i8* %6973, align 1
  %6974 = lshr i64 %6945, 63
  %6975 = lshr i64 %6946, 63
  %6976 = xor i64 %6971, %6974
  %6977 = xor i64 %6971, %6975
  %6978 = add i64 %6976, %6977
  %6979 = icmp eq i64 %6978, 2
  %6980 = zext i1 %6979 to i8
  %6981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6980, i8* %6981, align 1
  store %struct.Memory* %loadMem_41e20f, %struct.Memory** %MEMORY
  %loadMem_41e212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6983 = getelementptr inbounds %struct.GPR, %struct.GPR* %6982, i32 0, i32 33
  %6984 = getelementptr inbounds %struct.Reg, %struct.Reg* %6983, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %6984 to i64*
  %6985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6986 = getelementptr inbounds %struct.GPR, %struct.GPR* %6985, i32 0, i32 5
  %6987 = getelementptr inbounds %struct.Reg, %struct.Reg* %6986, i32 0, i32 0
  %ECX.i224 = bitcast %union.anon* %6987 to i32*
  %6988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6989 = getelementptr inbounds %struct.GPR, %struct.GPR* %6988, i32 0, i32 1
  %6990 = getelementptr inbounds %struct.Reg, %struct.Reg* %6989, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %6990 to i64*
  %6991 = load i64, i64* %RAX.i225
  %6992 = add i64 %6991, 8
  %6993 = load i32, i32* %ECX.i224
  %6994 = zext i32 %6993 to i64
  %6995 = load i64, i64* %PC.i223
  %6996 = add i64 %6995, 3
  store i64 %6996, i64* %PC.i223
  %6997 = inttoptr i64 %6992 to i32*
  store i32 %6993, i32* %6997
  store %struct.Memory* %loadMem_41e212, %struct.Memory** %MEMORY
  %loadMem_41e215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6999 = getelementptr inbounds %struct.GPR, %struct.GPR* %6998, i32 0, i32 33
  %7000 = getelementptr inbounds %struct.Reg, %struct.Reg* %6999, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %7000 to i64*
  %7001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7002 = getelementptr inbounds %struct.GPR, %struct.GPR* %7001, i32 0, i32 1
  %7003 = getelementptr inbounds %struct.Reg, %struct.Reg* %7002, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %7003 to i64*
  %7004 = load i64, i64* %PC.i221
  %7005 = add i64 %7004, 8
  store i64 %7005, i64* %PC.i221
  %7006 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %7006, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_41e215, %struct.Memory** %MEMORY
  %loadMem_41e21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7008 = getelementptr inbounds %struct.GPR, %struct.GPR* %7007, i32 0, i32 33
  %7009 = getelementptr inbounds %struct.Reg, %struct.Reg* %7008, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %7009 to i64*
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7011 = getelementptr inbounds %struct.GPR, %struct.GPR* %7010, i32 0, i32 5
  %7012 = getelementptr inbounds %struct.Reg, %struct.Reg* %7011, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %7012 to i64*
  %7013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7014 = getelementptr inbounds %struct.GPR, %struct.GPR* %7013, i32 0, i32 15
  %7015 = getelementptr inbounds %struct.Reg, %struct.Reg* %7014, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %7015 to i64*
  %7016 = load i64, i64* %RBP.i220
  %7017 = sub i64 %7016, 56
  %7018 = load i64, i64* %PC.i218
  %7019 = add i64 %7018, 3
  store i64 %7019, i64* %PC.i218
  %7020 = inttoptr i64 %7017 to i32*
  %7021 = load i32, i32* %7020
  %7022 = zext i32 %7021 to i64
  store i64 %7022, i64* %RCX.i219, align 8
  store %struct.Memory* %loadMem_41e21d, %struct.Memory** %MEMORY
  %loadMem_41e220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7024 = getelementptr inbounds %struct.GPR, %struct.GPR* %7023, i32 0, i32 33
  %7025 = getelementptr inbounds %struct.Reg, %struct.Reg* %7024, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %7025 to i64*
  %7026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7027 = getelementptr inbounds %struct.GPR, %struct.GPR* %7026, i32 0, i32 5
  %7028 = getelementptr inbounds %struct.Reg, %struct.Reg* %7027, i32 0, i32 0
  %RCX.i217 = bitcast %union.anon* %7028 to i64*
  %7029 = load i64, i64* %RCX.i217
  %7030 = load i64, i64* %PC.i216
  %7031 = add i64 %7030, 3
  store i64 %7031, i64* %PC.i216
  %7032 = trunc i64 %7029 to i32
  %7033 = sub i32 %7032, 1
  %7034 = zext i32 %7033 to i64
  store i64 %7034, i64* %RCX.i217, align 8
  %7035 = icmp ult i32 %7032, 1
  %7036 = zext i1 %7035 to i8
  %7037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7036, i8* %7037, align 1
  %7038 = and i32 %7033, 255
  %7039 = call i32 @llvm.ctpop.i32(i32 %7038)
  %7040 = trunc i32 %7039 to i8
  %7041 = and i8 %7040, 1
  %7042 = xor i8 %7041, 1
  %7043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7042, i8* %7043, align 1
  %7044 = xor i64 1, %7029
  %7045 = trunc i64 %7044 to i32
  %7046 = xor i32 %7045, %7033
  %7047 = lshr i32 %7046, 4
  %7048 = trunc i32 %7047 to i8
  %7049 = and i8 %7048, 1
  %7050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7049, i8* %7050, align 1
  %7051 = icmp eq i32 %7033, 0
  %7052 = zext i1 %7051 to i8
  %7053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7052, i8* %7053, align 1
  %7054 = lshr i32 %7033, 31
  %7055 = trunc i32 %7054 to i8
  %7056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7055, i8* %7056, align 1
  %7057 = lshr i32 %7032, 31
  %7058 = xor i32 %7054, %7057
  %7059 = add i32 %7058, %7057
  %7060 = icmp eq i32 %7059, 2
  %7061 = zext i1 %7060 to i8
  %7062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7061, i8* %7062, align 1
  store %struct.Memory* %loadMem_41e220, %struct.Memory** %MEMORY
  %loadMem_41e223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7064 = getelementptr inbounds %struct.GPR, %struct.GPR* %7063, i32 0, i32 33
  %7065 = getelementptr inbounds %struct.Reg, %struct.Reg* %7064, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %7065 to i64*
  %7066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7067 = getelementptr inbounds %struct.GPR, %struct.GPR* %7066, i32 0, i32 5
  %7068 = getelementptr inbounds %struct.Reg, %struct.Reg* %7067, i32 0, i32 0
  %ECX.i214 = bitcast %union.anon* %7068 to i32*
  %7069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7070 = getelementptr inbounds %struct.GPR, %struct.GPR* %7069, i32 0, i32 7
  %7071 = getelementptr inbounds %struct.Reg, %struct.Reg* %7070, i32 0, i32 0
  %RDX.i215 = bitcast %union.anon* %7071 to i64*
  %7072 = load i32, i32* %ECX.i214
  %7073 = zext i32 %7072 to i64
  %7074 = load i64, i64* %PC.i213
  %7075 = add i64 %7074, 3
  store i64 %7075, i64* %PC.i213
  %7076 = shl i64 %7073, 32
  %7077 = ashr exact i64 %7076, 32
  store i64 %7077, i64* %RDX.i215, align 8
  store %struct.Memory* %loadMem_41e223, %struct.Memory** %MEMORY
  %loadMem_41e226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7079 = getelementptr inbounds %struct.GPR, %struct.GPR* %7078, i32 0, i32 33
  %7080 = getelementptr inbounds %struct.Reg, %struct.Reg* %7079, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %7080 to i64*
  %7081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7082 = getelementptr inbounds %struct.GPR, %struct.GPR* %7081, i32 0, i32 7
  %7083 = getelementptr inbounds %struct.Reg, %struct.Reg* %7082, i32 0, i32 0
  %RDX.i212 = bitcast %union.anon* %7083 to i64*
  %7084 = load i64, i64* %RDX.i212
  %7085 = load i64, i64* %PC.i211
  %7086 = add i64 %7085, 4
  store i64 %7086, i64* %PC.i211
  %7087 = sext i64 %7084 to i128
  %7088 = and i128 %7087, -18446744073709551616
  %7089 = zext i64 %7084 to i128
  %7090 = or i128 %7088, %7089
  %7091 = mul i128 24, %7090
  %7092 = trunc i128 %7091 to i64
  store i64 %7092, i64* %RDX.i212, align 8
  %7093 = sext i64 %7092 to i128
  %7094 = icmp ne i128 %7093, %7091
  %7095 = zext i1 %7094 to i8
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7095, i8* %7096, align 1
  %7097 = trunc i128 %7091 to i32
  %7098 = and i32 %7097, 255
  %7099 = call i32 @llvm.ctpop.i32(i32 %7098)
  %7100 = trunc i32 %7099 to i8
  %7101 = and i8 %7100, 1
  %7102 = xor i8 %7101, 1
  %7103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7102, i8* %7103, align 1
  %7104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7104, align 1
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7105, align 1
  %7106 = lshr i64 %7092, 63
  %7107 = trunc i64 %7106 to i8
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7107, i8* %7108, align 1
  %7109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7095, i8* %7109, align 1
  store %struct.Memory* %loadMem_41e226, %struct.Memory** %MEMORY
  %loadMem_41e22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7111 = getelementptr inbounds %struct.GPR, %struct.GPR* %7110, i32 0, i32 33
  %7112 = getelementptr inbounds %struct.Reg, %struct.Reg* %7111, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %7112 to i64*
  %7113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7114 = getelementptr inbounds %struct.GPR, %struct.GPR* %7113, i32 0, i32 1
  %7115 = getelementptr inbounds %struct.Reg, %struct.Reg* %7114, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %7115 to i64*
  %7116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7117 = getelementptr inbounds %struct.GPR, %struct.GPR* %7116, i32 0, i32 7
  %7118 = getelementptr inbounds %struct.Reg, %struct.Reg* %7117, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %7118 to i64*
  %7119 = load i64, i64* %RAX.i209
  %7120 = load i64, i64* %RDX.i210
  %7121 = load i64, i64* %PC.i208
  %7122 = add i64 %7121, 3
  store i64 %7122, i64* %PC.i208
  %7123 = add i64 %7120, %7119
  store i64 %7123, i64* %RAX.i209, align 8
  %7124 = icmp ult i64 %7123, %7119
  %7125 = icmp ult i64 %7123, %7120
  %7126 = or i1 %7124, %7125
  %7127 = zext i1 %7126 to i8
  %7128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7127, i8* %7128, align 1
  %7129 = trunc i64 %7123 to i32
  %7130 = and i32 %7129, 255
  %7131 = call i32 @llvm.ctpop.i32(i32 %7130)
  %7132 = trunc i32 %7131 to i8
  %7133 = and i8 %7132, 1
  %7134 = xor i8 %7133, 1
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7134, i8* %7135, align 1
  %7136 = xor i64 %7120, %7119
  %7137 = xor i64 %7136, %7123
  %7138 = lshr i64 %7137, 4
  %7139 = trunc i64 %7138 to i8
  %7140 = and i8 %7139, 1
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7140, i8* %7141, align 1
  %7142 = icmp eq i64 %7123, 0
  %7143 = zext i1 %7142 to i8
  %7144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7143, i8* %7144, align 1
  %7145 = lshr i64 %7123, 63
  %7146 = trunc i64 %7145 to i8
  %7147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7146, i8* %7147, align 1
  %7148 = lshr i64 %7119, 63
  %7149 = lshr i64 %7120, 63
  %7150 = xor i64 %7145, %7148
  %7151 = xor i64 %7145, %7149
  %7152 = add i64 %7150, %7151
  %7153 = icmp eq i64 %7152, 2
  %7154 = zext i1 %7153 to i8
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7154, i8* %7155, align 1
  store %struct.Memory* %loadMem_41e22a, %struct.Memory** %MEMORY
  %loadMem_41e22d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7157 = getelementptr inbounds %struct.GPR, %struct.GPR* %7156, i32 0, i32 33
  %7158 = getelementptr inbounds %struct.Reg, %struct.Reg* %7157, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %7158 to i64*
  %7159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7160 = getelementptr inbounds %struct.GPR, %struct.GPR* %7159, i32 0, i32 1
  %7161 = getelementptr inbounds %struct.Reg, %struct.Reg* %7160, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %7161 to i64*
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7163 = getelementptr inbounds %struct.GPR, %struct.GPR* %7162, i32 0, i32 5
  %7164 = getelementptr inbounds %struct.Reg, %struct.Reg* %7163, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %7164 to i64*
  %7165 = load i64, i64* %RAX.i206
  %7166 = load i64, i64* %PC.i205
  %7167 = add i64 %7166, 2
  store i64 %7167, i64* %PC.i205
  %7168 = inttoptr i64 %7165 to i32*
  %7169 = load i32, i32* %7168
  %7170 = zext i32 %7169 to i64
  store i64 %7170, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_41e22d, %struct.Memory** %MEMORY
  %loadMem_41e22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7172 = getelementptr inbounds %struct.GPR, %struct.GPR* %7171, i32 0, i32 33
  %7173 = getelementptr inbounds %struct.Reg, %struct.Reg* %7172, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %7173 to i64*
  %7174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7175 = getelementptr inbounds %struct.GPR, %struct.GPR* %7174, i32 0, i32 5
  %7176 = getelementptr inbounds %struct.Reg, %struct.Reg* %7175, i32 0, i32 0
  %ECX.i203 = bitcast %union.anon* %7176 to i32*
  %7177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7178 = getelementptr inbounds %struct.GPR, %struct.GPR* %7177, i32 0, i32 15
  %7179 = getelementptr inbounds %struct.Reg, %struct.Reg* %7178, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %7179 to i64*
  %7180 = load i64, i64* %RBP.i204
  %7181 = sub i64 %7180, 60
  %7182 = load i32, i32* %ECX.i203
  %7183 = zext i32 %7182 to i64
  %7184 = load i64, i64* %PC.i202
  %7185 = add i64 %7184, 3
  store i64 %7185, i64* %PC.i202
  %7186 = inttoptr i64 %7181 to i32*
  store i32 %7182, i32* %7186
  store %struct.Memory* %loadMem_41e22f, %struct.Memory** %MEMORY
  %loadMem_41e232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7188 = getelementptr inbounds %struct.GPR, %struct.GPR* %7187, i32 0, i32 33
  %7189 = getelementptr inbounds %struct.Reg, %struct.Reg* %7188, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %7189 to i64*
  %7190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7191 = getelementptr inbounds %struct.GPR, %struct.GPR* %7190, i32 0, i32 1
  %7192 = getelementptr inbounds %struct.Reg, %struct.Reg* %7191, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %7192 to i64*
  %7193 = load i64, i64* %PC.i200
  %7194 = add i64 %7193, 8
  store i64 %7194, i64* %PC.i200
  %7195 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %7195, i64* %RAX.i201, align 8
  store %struct.Memory* %loadMem_41e232, %struct.Memory** %MEMORY
  %loadMem_41e23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7197 = getelementptr inbounds %struct.GPR, %struct.GPR* %7196, i32 0, i32 33
  %7198 = getelementptr inbounds %struct.Reg, %struct.Reg* %7197, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %7198 to i64*
  %7199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7200 = getelementptr inbounds %struct.GPR, %struct.GPR* %7199, i32 0, i32 7
  %7201 = getelementptr inbounds %struct.Reg, %struct.Reg* %7200, i32 0, i32 0
  %RDX.i198 = bitcast %union.anon* %7201 to i64*
  %7202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7203 = getelementptr inbounds %struct.GPR, %struct.GPR* %7202, i32 0, i32 15
  %7204 = getelementptr inbounds %struct.Reg, %struct.Reg* %7203, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %7204 to i64*
  %7205 = load i64, i64* %RBP.i199
  %7206 = sub i64 %7205, 56
  %7207 = load i64, i64* %PC.i197
  %7208 = add i64 %7207, 4
  store i64 %7208, i64* %PC.i197
  %7209 = inttoptr i64 %7206 to i32*
  %7210 = load i32, i32* %7209
  %7211 = sext i32 %7210 to i64
  store i64 %7211, i64* %RDX.i198, align 8
  store %struct.Memory* %loadMem_41e23a, %struct.Memory** %MEMORY
  %loadMem_41e23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7213 = getelementptr inbounds %struct.GPR, %struct.GPR* %7212, i32 0, i32 33
  %7214 = getelementptr inbounds %struct.Reg, %struct.Reg* %7213, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %7214 to i64*
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7216 = getelementptr inbounds %struct.GPR, %struct.GPR* %7215, i32 0, i32 7
  %7217 = getelementptr inbounds %struct.Reg, %struct.Reg* %7216, i32 0, i32 0
  %RDX.i196 = bitcast %union.anon* %7217 to i64*
  %7218 = load i64, i64* %RDX.i196
  %7219 = load i64, i64* %PC.i195
  %7220 = add i64 %7219, 4
  store i64 %7220, i64* %PC.i195
  %7221 = sext i64 %7218 to i128
  %7222 = and i128 %7221, -18446744073709551616
  %7223 = zext i64 %7218 to i128
  %7224 = or i128 %7222, %7223
  %7225 = mul i128 24, %7224
  %7226 = trunc i128 %7225 to i64
  store i64 %7226, i64* %RDX.i196, align 8
  %7227 = sext i64 %7226 to i128
  %7228 = icmp ne i128 %7227, %7225
  %7229 = zext i1 %7228 to i8
  %7230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7229, i8* %7230, align 1
  %7231 = trunc i128 %7225 to i32
  %7232 = and i32 %7231, 255
  %7233 = call i32 @llvm.ctpop.i32(i32 %7232)
  %7234 = trunc i32 %7233 to i8
  %7235 = and i8 %7234, 1
  %7236 = xor i8 %7235, 1
  %7237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7236, i8* %7237, align 1
  %7238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7238, align 1
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7239, align 1
  %7240 = lshr i64 %7226, 63
  %7241 = trunc i64 %7240 to i8
  %7242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7241, i8* %7242, align 1
  %7243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7229, i8* %7243, align 1
  store %struct.Memory* %loadMem_41e23e, %struct.Memory** %MEMORY
  %loadMem_41e242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7245 = getelementptr inbounds %struct.GPR, %struct.GPR* %7244, i32 0, i32 33
  %7246 = getelementptr inbounds %struct.Reg, %struct.Reg* %7245, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %7246 to i64*
  %7247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7248 = getelementptr inbounds %struct.GPR, %struct.GPR* %7247, i32 0, i32 1
  %7249 = getelementptr inbounds %struct.Reg, %struct.Reg* %7248, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %7249 to i64*
  %7250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7251 = getelementptr inbounds %struct.GPR, %struct.GPR* %7250, i32 0, i32 7
  %7252 = getelementptr inbounds %struct.Reg, %struct.Reg* %7251, i32 0, i32 0
  %RDX.i194 = bitcast %union.anon* %7252 to i64*
  %7253 = load i64, i64* %RAX.i193
  %7254 = load i64, i64* %RDX.i194
  %7255 = load i64, i64* %PC.i192
  %7256 = add i64 %7255, 3
  store i64 %7256, i64* %PC.i192
  %7257 = add i64 %7254, %7253
  store i64 %7257, i64* %RAX.i193, align 8
  %7258 = icmp ult i64 %7257, %7253
  %7259 = icmp ult i64 %7257, %7254
  %7260 = or i1 %7258, %7259
  %7261 = zext i1 %7260 to i8
  %7262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7261, i8* %7262, align 1
  %7263 = trunc i64 %7257 to i32
  %7264 = and i32 %7263, 255
  %7265 = call i32 @llvm.ctpop.i32(i32 %7264)
  %7266 = trunc i32 %7265 to i8
  %7267 = and i8 %7266, 1
  %7268 = xor i8 %7267, 1
  %7269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7268, i8* %7269, align 1
  %7270 = xor i64 %7254, %7253
  %7271 = xor i64 %7270, %7257
  %7272 = lshr i64 %7271, 4
  %7273 = trunc i64 %7272 to i8
  %7274 = and i8 %7273, 1
  %7275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7274, i8* %7275, align 1
  %7276 = icmp eq i64 %7257, 0
  %7277 = zext i1 %7276 to i8
  %7278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7277, i8* %7278, align 1
  %7279 = lshr i64 %7257, 63
  %7280 = trunc i64 %7279 to i8
  %7281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7280, i8* %7281, align 1
  %7282 = lshr i64 %7253, 63
  %7283 = lshr i64 %7254, 63
  %7284 = xor i64 %7279, %7282
  %7285 = xor i64 %7279, %7283
  %7286 = add i64 %7284, %7285
  %7287 = icmp eq i64 %7286, 2
  %7288 = zext i1 %7287 to i8
  %7289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7288, i8* %7289, align 1
  store %struct.Memory* %loadMem_41e242, %struct.Memory** %MEMORY
  %loadMem_41e245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7291 = getelementptr inbounds %struct.GPR, %struct.GPR* %7290, i32 0, i32 33
  %7292 = getelementptr inbounds %struct.Reg, %struct.Reg* %7291, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %7292 to i64*
  %7293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7294 = getelementptr inbounds %struct.GPR, %struct.GPR* %7293, i32 0, i32 1
  %7295 = getelementptr inbounds %struct.Reg, %struct.Reg* %7294, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %7295 to i64*
  %7296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7297 = getelementptr inbounds %struct.GPR, %struct.GPR* %7296, i32 0, i32 5
  %7298 = getelementptr inbounds %struct.Reg, %struct.Reg* %7297, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %7298 to i64*
  %7299 = load i64, i64* %RAX.i190
  %7300 = load i64, i64* %PC.i189
  %7301 = add i64 %7300, 2
  store i64 %7301, i64* %PC.i189
  %7302 = inttoptr i64 %7299 to i32*
  %7303 = load i32, i32* %7302
  %7304 = zext i32 %7303 to i64
  store i64 %7304, i64* %RCX.i191, align 8
  store %struct.Memory* %loadMem_41e245, %struct.Memory** %MEMORY
  %loadMem_41e247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7306 = getelementptr inbounds %struct.GPR, %struct.GPR* %7305, i32 0, i32 33
  %7307 = getelementptr inbounds %struct.Reg, %struct.Reg* %7306, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %7307 to i64*
  %7308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7309 = getelementptr inbounds %struct.GPR, %struct.GPR* %7308, i32 0, i32 1
  %7310 = getelementptr inbounds %struct.Reg, %struct.Reg* %7309, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %7310 to i64*
  %7311 = load i64, i64* %PC.i187
  %7312 = add i64 %7311, 8
  store i64 %7312, i64* %PC.i187
  %7313 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %7313, i64* %RAX.i188, align 8
  store %struct.Memory* %loadMem_41e247, %struct.Memory** %MEMORY
  %loadMem_41e24f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7315 = getelementptr inbounds %struct.GPR, %struct.GPR* %7314, i32 0, i32 33
  %7316 = getelementptr inbounds %struct.Reg, %struct.Reg* %7315, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %7316 to i64*
  %7317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7318 = getelementptr inbounds %struct.GPR, %struct.GPR* %7317, i32 0, i32 9
  %7319 = getelementptr inbounds %struct.Reg, %struct.Reg* %7318, i32 0, i32 0
  %RSI.i185 = bitcast %union.anon* %7319 to i64*
  %7320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7321 = getelementptr inbounds %struct.GPR, %struct.GPR* %7320, i32 0, i32 15
  %7322 = getelementptr inbounds %struct.Reg, %struct.Reg* %7321, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %7322 to i64*
  %7323 = load i64, i64* %RBP.i186
  %7324 = sub i64 %7323, 56
  %7325 = load i64, i64* %PC.i184
  %7326 = add i64 %7325, 3
  store i64 %7326, i64* %PC.i184
  %7327 = inttoptr i64 %7324 to i32*
  %7328 = load i32, i32* %7327
  %7329 = zext i32 %7328 to i64
  store i64 %7329, i64* %RSI.i185, align 8
  store %struct.Memory* %loadMem_41e24f, %struct.Memory** %MEMORY
  %loadMem_41e252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7331 = getelementptr inbounds %struct.GPR, %struct.GPR* %7330, i32 0, i32 33
  %7332 = getelementptr inbounds %struct.Reg, %struct.Reg* %7331, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %7332 to i64*
  %7333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7334 = getelementptr inbounds %struct.GPR, %struct.GPR* %7333, i32 0, i32 9
  %7335 = getelementptr inbounds %struct.Reg, %struct.Reg* %7334, i32 0, i32 0
  %RSI.i183 = bitcast %union.anon* %7335 to i64*
  %7336 = load i64, i64* %RSI.i183
  %7337 = load i64, i64* %PC.i182
  %7338 = add i64 %7337, 3
  store i64 %7338, i64* %PC.i182
  %7339 = trunc i64 %7336 to i32
  %7340 = sub i32 %7339, 1
  %7341 = zext i32 %7340 to i64
  store i64 %7341, i64* %RSI.i183, align 8
  %7342 = icmp ult i32 %7339, 1
  %7343 = zext i1 %7342 to i8
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7343, i8* %7344, align 1
  %7345 = and i32 %7340, 255
  %7346 = call i32 @llvm.ctpop.i32(i32 %7345)
  %7347 = trunc i32 %7346 to i8
  %7348 = and i8 %7347, 1
  %7349 = xor i8 %7348, 1
  %7350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7349, i8* %7350, align 1
  %7351 = xor i64 1, %7336
  %7352 = trunc i64 %7351 to i32
  %7353 = xor i32 %7352, %7340
  %7354 = lshr i32 %7353, 4
  %7355 = trunc i32 %7354 to i8
  %7356 = and i8 %7355, 1
  %7357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7356, i8* %7357, align 1
  %7358 = icmp eq i32 %7340, 0
  %7359 = zext i1 %7358 to i8
  %7360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7359, i8* %7360, align 1
  %7361 = lshr i32 %7340, 31
  %7362 = trunc i32 %7361 to i8
  %7363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7362, i8* %7363, align 1
  %7364 = lshr i32 %7339, 31
  %7365 = xor i32 %7361, %7364
  %7366 = add i32 %7365, %7364
  %7367 = icmp eq i32 %7366, 2
  %7368 = zext i1 %7367 to i8
  %7369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7368, i8* %7369, align 1
  store %struct.Memory* %loadMem_41e252, %struct.Memory** %MEMORY
  %loadMem_41e255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7371 = getelementptr inbounds %struct.GPR, %struct.GPR* %7370, i32 0, i32 33
  %7372 = getelementptr inbounds %struct.Reg, %struct.Reg* %7371, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %7372 to i64*
  %7373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7374 = getelementptr inbounds %struct.GPR, %struct.GPR* %7373, i32 0, i32 9
  %7375 = getelementptr inbounds %struct.Reg, %struct.Reg* %7374, i32 0, i32 0
  %ESI.i180 = bitcast %union.anon* %7375 to i32*
  %7376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7377 = getelementptr inbounds %struct.GPR, %struct.GPR* %7376, i32 0, i32 7
  %7378 = getelementptr inbounds %struct.Reg, %struct.Reg* %7377, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %7378 to i64*
  %7379 = load i32, i32* %ESI.i180
  %7380 = zext i32 %7379 to i64
  %7381 = load i64, i64* %PC.i179
  %7382 = add i64 %7381, 3
  store i64 %7382, i64* %PC.i179
  %7383 = shl i64 %7380, 32
  %7384 = ashr exact i64 %7383, 32
  store i64 %7384, i64* %RDX.i181, align 8
  store %struct.Memory* %loadMem_41e255, %struct.Memory** %MEMORY
  %loadMem_41e258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7386 = getelementptr inbounds %struct.GPR, %struct.GPR* %7385, i32 0, i32 33
  %7387 = getelementptr inbounds %struct.Reg, %struct.Reg* %7386, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %7387 to i64*
  %7388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7389 = getelementptr inbounds %struct.GPR, %struct.GPR* %7388, i32 0, i32 7
  %7390 = getelementptr inbounds %struct.Reg, %struct.Reg* %7389, i32 0, i32 0
  %RDX.i178 = bitcast %union.anon* %7390 to i64*
  %7391 = load i64, i64* %RDX.i178
  %7392 = load i64, i64* %PC.i177
  %7393 = add i64 %7392, 4
  store i64 %7393, i64* %PC.i177
  %7394 = sext i64 %7391 to i128
  %7395 = and i128 %7394, -18446744073709551616
  %7396 = zext i64 %7391 to i128
  %7397 = or i128 %7395, %7396
  %7398 = mul i128 24, %7397
  %7399 = trunc i128 %7398 to i64
  store i64 %7399, i64* %RDX.i178, align 8
  %7400 = sext i64 %7399 to i128
  %7401 = icmp ne i128 %7400, %7398
  %7402 = zext i1 %7401 to i8
  %7403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7402, i8* %7403, align 1
  %7404 = trunc i128 %7398 to i32
  %7405 = and i32 %7404, 255
  %7406 = call i32 @llvm.ctpop.i32(i32 %7405)
  %7407 = trunc i32 %7406 to i8
  %7408 = and i8 %7407, 1
  %7409 = xor i8 %7408, 1
  %7410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7409, i8* %7410, align 1
  %7411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7411, align 1
  %7412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7412, align 1
  %7413 = lshr i64 %7399, 63
  %7414 = trunc i64 %7413 to i8
  %7415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7414, i8* %7415, align 1
  %7416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7402, i8* %7416, align 1
  store %struct.Memory* %loadMem_41e258, %struct.Memory** %MEMORY
  %loadMem_41e25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7418 = getelementptr inbounds %struct.GPR, %struct.GPR* %7417, i32 0, i32 33
  %7419 = getelementptr inbounds %struct.Reg, %struct.Reg* %7418, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %7419 to i64*
  %7420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7421 = getelementptr inbounds %struct.GPR, %struct.GPR* %7420, i32 0, i32 1
  %7422 = getelementptr inbounds %struct.Reg, %struct.Reg* %7421, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %7422 to i64*
  %7423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7424 = getelementptr inbounds %struct.GPR, %struct.GPR* %7423, i32 0, i32 7
  %7425 = getelementptr inbounds %struct.Reg, %struct.Reg* %7424, i32 0, i32 0
  %RDX.i176 = bitcast %union.anon* %7425 to i64*
  %7426 = load i64, i64* %RAX.i175
  %7427 = load i64, i64* %RDX.i176
  %7428 = load i64, i64* %PC.i174
  %7429 = add i64 %7428, 3
  store i64 %7429, i64* %PC.i174
  %7430 = add i64 %7427, %7426
  store i64 %7430, i64* %RAX.i175, align 8
  %7431 = icmp ult i64 %7430, %7426
  %7432 = icmp ult i64 %7430, %7427
  %7433 = or i1 %7431, %7432
  %7434 = zext i1 %7433 to i8
  %7435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7434, i8* %7435, align 1
  %7436 = trunc i64 %7430 to i32
  %7437 = and i32 %7436, 255
  %7438 = call i32 @llvm.ctpop.i32(i32 %7437)
  %7439 = trunc i32 %7438 to i8
  %7440 = and i8 %7439, 1
  %7441 = xor i8 %7440, 1
  %7442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7441, i8* %7442, align 1
  %7443 = xor i64 %7427, %7426
  %7444 = xor i64 %7443, %7430
  %7445 = lshr i64 %7444, 4
  %7446 = trunc i64 %7445 to i8
  %7447 = and i8 %7446, 1
  %7448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7447, i8* %7448, align 1
  %7449 = icmp eq i64 %7430, 0
  %7450 = zext i1 %7449 to i8
  %7451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7450, i8* %7451, align 1
  %7452 = lshr i64 %7430, 63
  %7453 = trunc i64 %7452 to i8
  %7454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7453, i8* %7454, align 1
  %7455 = lshr i64 %7426, 63
  %7456 = lshr i64 %7427, 63
  %7457 = xor i64 %7452, %7455
  %7458 = xor i64 %7452, %7456
  %7459 = add i64 %7457, %7458
  %7460 = icmp eq i64 %7459, 2
  %7461 = zext i1 %7460 to i8
  %7462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7461, i8* %7462, align 1
  store %struct.Memory* %loadMem_41e25c, %struct.Memory** %MEMORY
  %loadMem_41e25f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7464 = getelementptr inbounds %struct.GPR, %struct.GPR* %7463, i32 0, i32 33
  %7465 = getelementptr inbounds %struct.Reg, %struct.Reg* %7464, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %7465 to i64*
  %7466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7467 = getelementptr inbounds %struct.GPR, %struct.GPR* %7466, i32 0, i32 5
  %7468 = getelementptr inbounds %struct.Reg, %struct.Reg* %7467, i32 0, i32 0
  %ECX.i172 = bitcast %union.anon* %7468 to i32*
  %7469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7470 = getelementptr inbounds %struct.GPR, %struct.GPR* %7469, i32 0, i32 1
  %7471 = getelementptr inbounds %struct.Reg, %struct.Reg* %7470, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %7471 to i64*
  %7472 = load i64, i64* %RAX.i173
  %7473 = load i32, i32* %ECX.i172
  %7474 = zext i32 %7473 to i64
  %7475 = load i64, i64* %PC.i171
  %7476 = add i64 %7475, 2
  store i64 %7476, i64* %PC.i171
  %7477 = inttoptr i64 %7472 to i32*
  store i32 %7473, i32* %7477
  store %struct.Memory* %loadMem_41e25f, %struct.Memory** %MEMORY
  %loadMem_41e261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7479 = getelementptr inbounds %struct.GPR, %struct.GPR* %7478, i32 0, i32 33
  %7480 = getelementptr inbounds %struct.Reg, %struct.Reg* %7479, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %7480 to i64*
  %7481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7482 = getelementptr inbounds %struct.GPR, %struct.GPR* %7481, i32 0, i32 5
  %7483 = getelementptr inbounds %struct.Reg, %struct.Reg* %7482, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %7483 to i64*
  %7484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7485 = getelementptr inbounds %struct.GPR, %struct.GPR* %7484, i32 0, i32 15
  %7486 = getelementptr inbounds %struct.Reg, %struct.Reg* %7485, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %7486 to i64*
  %7487 = load i64, i64* %RBP.i170
  %7488 = sub i64 %7487, 60
  %7489 = load i64, i64* %PC.i168
  %7490 = add i64 %7489, 3
  store i64 %7490, i64* %PC.i168
  %7491 = inttoptr i64 %7488 to i32*
  %7492 = load i32, i32* %7491
  %7493 = zext i32 %7492 to i64
  store i64 %7493, i64* %RCX.i169, align 8
  store %struct.Memory* %loadMem_41e261, %struct.Memory** %MEMORY
  %loadMem_41e264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7495 = getelementptr inbounds %struct.GPR, %struct.GPR* %7494, i32 0, i32 33
  %7496 = getelementptr inbounds %struct.Reg, %struct.Reg* %7495, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %7496 to i64*
  %7497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7498 = getelementptr inbounds %struct.GPR, %struct.GPR* %7497, i32 0, i32 1
  %7499 = getelementptr inbounds %struct.Reg, %struct.Reg* %7498, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %7499 to i64*
  %7500 = load i64, i64* %PC.i166
  %7501 = add i64 %7500, 8
  store i64 %7501, i64* %PC.i166
  %7502 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %7502, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_41e264, %struct.Memory** %MEMORY
  %loadMem_41e26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7504 = getelementptr inbounds %struct.GPR, %struct.GPR* %7503, i32 0, i32 33
  %7505 = getelementptr inbounds %struct.Reg, %struct.Reg* %7504, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %7505 to i64*
  %7506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7507 = getelementptr inbounds %struct.GPR, %struct.GPR* %7506, i32 0, i32 7
  %7508 = getelementptr inbounds %struct.Reg, %struct.Reg* %7507, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %7508 to i64*
  %7509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7510 = getelementptr inbounds %struct.GPR, %struct.GPR* %7509, i32 0, i32 15
  %7511 = getelementptr inbounds %struct.Reg, %struct.Reg* %7510, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %7511 to i64*
  %7512 = load i64, i64* %RBP.i165
  %7513 = sub i64 %7512, 56
  %7514 = load i64, i64* %PC.i163
  %7515 = add i64 %7514, 4
  store i64 %7515, i64* %PC.i163
  %7516 = inttoptr i64 %7513 to i32*
  %7517 = load i32, i32* %7516
  %7518 = sext i32 %7517 to i64
  store i64 %7518, i64* %RDX.i164, align 8
  store %struct.Memory* %loadMem_41e26c, %struct.Memory** %MEMORY
  %loadMem_41e270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7520 = getelementptr inbounds %struct.GPR, %struct.GPR* %7519, i32 0, i32 33
  %7521 = getelementptr inbounds %struct.Reg, %struct.Reg* %7520, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %7521 to i64*
  %7522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7523 = getelementptr inbounds %struct.GPR, %struct.GPR* %7522, i32 0, i32 7
  %7524 = getelementptr inbounds %struct.Reg, %struct.Reg* %7523, i32 0, i32 0
  %RDX.i162 = bitcast %union.anon* %7524 to i64*
  %7525 = load i64, i64* %RDX.i162
  %7526 = load i64, i64* %PC.i161
  %7527 = add i64 %7526, 4
  store i64 %7527, i64* %PC.i161
  %7528 = sext i64 %7525 to i128
  %7529 = and i128 %7528, -18446744073709551616
  %7530 = zext i64 %7525 to i128
  %7531 = or i128 %7529, %7530
  %7532 = mul i128 24, %7531
  %7533 = trunc i128 %7532 to i64
  store i64 %7533, i64* %RDX.i162, align 8
  %7534 = sext i64 %7533 to i128
  %7535 = icmp ne i128 %7534, %7532
  %7536 = zext i1 %7535 to i8
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7536, i8* %7537, align 1
  %7538 = trunc i128 %7532 to i32
  %7539 = and i32 %7538, 255
  %7540 = call i32 @llvm.ctpop.i32(i32 %7539)
  %7541 = trunc i32 %7540 to i8
  %7542 = and i8 %7541, 1
  %7543 = xor i8 %7542, 1
  %7544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7543, i8* %7544, align 1
  %7545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7545, align 1
  %7546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7546, align 1
  %7547 = lshr i64 %7533, 63
  %7548 = trunc i64 %7547 to i8
  %7549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7548, i8* %7549, align 1
  %7550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7536, i8* %7550, align 1
  store %struct.Memory* %loadMem_41e270, %struct.Memory** %MEMORY
  %loadMem_41e274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7552 = getelementptr inbounds %struct.GPR, %struct.GPR* %7551, i32 0, i32 33
  %7553 = getelementptr inbounds %struct.Reg, %struct.Reg* %7552, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %7553 to i64*
  %7554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7555 = getelementptr inbounds %struct.GPR, %struct.GPR* %7554, i32 0, i32 1
  %7556 = getelementptr inbounds %struct.Reg, %struct.Reg* %7555, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %7556 to i64*
  %7557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7558 = getelementptr inbounds %struct.GPR, %struct.GPR* %7557, i32 0, i32 7
  %7559 = getelementptr inbounds %struct.Reg, %struct.Reg* %7558, i32 0, i32 0
  %RDX.i160 = bitcast %union.anon* %7559 to i64*
  %7560 = load i64, i64* %RAX.i159
  %7561 = load i64, i64* %RDX.i160
  %7562 = load i64, i64* %PC.i158
  %7563 = add i64 %7562, 3
  store i64 %7563, i64* %PC.i158
  %7564 = add i64 %7561, %7560
  store i64 %7564, i64* %RAX.i159, align 8
  %7565 = icmp ult i64 %7564, %7560
  %7566 = icmp ult i64 %7564, %7561
  %7567 = or i1 %7565, %7566
  %7568 = zext i1 %7567 to i8
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7568, i8* %7569, align 1
  %7570 = trunc i64 %7564 to i32
  %7571 = and i32 %7570, 255
  %7572 = call i32 @llvm.ctpop.i32(i32 %7571)
  %7573 = trunc i32 %7572 to i8
  %7574 = and i8 %7573, 1
  %7575 = xor i8 %7574, 1
  %7576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7575, i8* %7576, align 1
  %7577 = xor i64 %7561, %7560
  %7578 = xor i64 %7577, %7564
  %7579 = lshr i64 %7578, 4
  %7580 = trunc i64 %7579 to i8
  %7581 = and i8 %7580, 1
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7581, i8* %7582, align 1
  %7583 = icmp eq i64 %7564, 0
  %7584 = zext i1 %7583 to i8
  %7585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7584, i8* %7585, align 1
  %7586 = lshr i64 %7564, 63
  %7587 = trunc i64 %7586 to i8
  %7588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7587, i8* %7588, align 1
  %7589 = lshr i64 %7560, 63
  %7590 = lshr i64 %7561, 63
  %7591 = xor i64 %7586, %7589
  %7592 = xor i64 %7586, %7590
  %7593 = add i64 %7591, %7592
  %7594 = icmp eq i64 %7593, 2
  %7595 = zext i1 %7594 to i8
  %7596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7595, i8* %7596, align 1
  store %struct.Memory* %loadMem_41e274, %struct.Memory** %MEMORY
  %loadMem_41e277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7598 = getelementptr inbounds %struct.GPR, %struct.GPR* %7597, i32 0, i32 33
  %7599 = getelementptr inbounds %struct.Reg, %struct.Reg* %7598, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %7599 to i64*
  %7600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7601 = getelementptr inbounds %struct.GPR, %struct.GPR* %7600, i32 0, i32 5
  %7602 = getelementptr inbounds %struct.Reg, %struct.Reg* %7601, i32 0, i32 0
  %ECX.i156 = bitcast %union.anon* %7602 to i32*
  %7603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7604 = getelementptr inbounds %struct.GPR, %struct.GPR* %7603, i32 0, i32 1
  %7605 = getelementptr inbounds %struct.Reg, %struct.Reg* %7604, i32 0, i32 0
  %RAX.i157 = bitcast %union.anon* %7605 to i64*
  %7606 = load i64, i64* %RAX.i157
  %7607 = load i32, i32* %ECX.i156
  %7608 = zext i32 %7607 to i64
  %7609 = load i64, i64* %PC.i155
  %7610 = add i64 %7609, 2
  store i64 %7610, i64* %PC.i155
  %7611 = inttoptr i64 %7606 to i32*
  store i32 %7607, i32* %7611
  store %struct.Memory* %loadMem_41e277, %struct.Memory** %MEMORY
  %loadMem_41e279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7613 = getelementptr inbounds %struct.GPR, %struct.GPR* %7612, i32 0, i32 33
  %7614 = getelementptr inbounds %struct.Reg, %struct.Reg* %7613, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %7614 to i64*
  %7615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7616 = getelementptr inbounds %struct.GPR, %struct.GPR* %7615, i32 0, i32 1
  %7617 = getelementptr inbounds %struct.Reg, %struct.Reg* %7616, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %7617 to i64*
  %7618 = load i64, i64* %PC.i153
  %7619 = add i64 %7618, 8
  store i64 %7619, i64* %PC.i153
  %7620 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %7620, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_41e279, %struct.Memory** %MEMORY
  %loadMem_41e281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7622 = getelementptr inbounds %struct.GPR, %struct.GPR* %7621, i32 0, i32 33
  %7623 = getelementptr inbounds %struct.Reg, %struct.Reg* %7622, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %7623 to i64*
  %7624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7625 = getelementptr inbounds %struct.GPR, %struct.GPR* %7624, i32 0, i32 5
  %7626 = getelementptr inbounds %struct.Reg, %struct.Reg* %7625, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %7626 to i64*
  %7627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7628 = getelementptr inbounds %struct.GPR, %struct.GPR* %7627, i32 0, i32 15
  %7629 = getelementptr inbounds %struct.Reg, %struct.Reg* %7628, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %7629 to i64*
  %7630 = load i64, i64* %RBP.i152
  %7631 = sub i64 %7630, 56
  %7632 = load i64, i64* %PC.i150
  %7633 = add i64 %7632, 3
  store i64 %7633, i64* %PC.i150
  %7634 = inttoptr i64 %7631 to i32*
  %7635 = load i32, i32* %7634
  %7636 = zext i32 %7635 to i64
  store i64 %7636, i64* %RCX.i151, align 8
  store %struct.Memory* %loadMem_41e281, %struct.Memory** %MEMORY
  %loadMem_41e284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7638 = getelementptr inbounds %struct.GPR, %struct.GPR* %7637, i32 0, i32 33
  %7639 = getelementptr inbounds %struct.Reg, %struct.Reg* %7638, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %7639 to i64*
  %7640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7641 = getelementptr inbounds %struct.GPR, %struct.GPR* %7640, i32 0, i32 5
  %7642 = getelementptr inbounds %struct.Reg, %struct.Reg* %7641, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %7642 to i64*
  %7643 = load i64, i64* %RCX.i149
  %7644 = load i64, i64* %PC.i148
  %7645 = add i64 %7644, 3
  store i64 %7645, i64* %PC.i148
  %7646 = trunc i64 %7643 to i32
  %7647 = sub i32 %7646, 1
  %7648 = zext i32 %7647 to i64
  store i64 %7648, i64* %RCX.i149, align 8
  %7649 = icmp ult i32 %7646, 1
  %7650 = zext i1 %7649 to i8
  %7651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7650, i8* %7651, align 1
  %7652 = and i32 %7647, 255
  %7653 = call i32 @llvm.ctpop.i32(i32 %7652)
  %7654 = trunc i32 %7653 to i8
  %7655 = and i8 %7654, 1
  %7656 = xor i8 %7655, 1
  %7657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7656, i8* %7657, align 1
  %7658 = xor i64 1, %7643
  %7659 = trunc i64 %7658 to i32
  %7660 = xor i32 %7659, %7647
  %7661 = lshr i32 %7660, 4
  %7662 = trunc i32 %7661 to i8
  %7663 = and i8 %7662, 1
  %7664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7663, i8* %7664, align 1
  %7665 = icmp eq i32 %7647, 0
  %7666 = zext i1 %7665 to i8
  %7667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7666, i8* %7667, align 1
  %7668 = lshr i32 %7647, 31
  %7669 = trunc i32 %7668 to i8
  %7670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7669, i8* %7670, align 1
  %7671 = lshr i32 %7646, 31
  %7672 = xor i32 %7668, %7671
  %7673 = add i32 %7672, %7671
  %7674 = icmp eq i32 %7673, 2
  %7675 = zext i1 %7674 to i8
  %7676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7675, i8* %7676, align 1
  store %struct.Memory* %loadMem_41e284, %struct.Memory** %MEMORY
  %loadMem_41e287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7678 = getelementptr inbounds %struct.GPR, %struct.GPR* %7677, i32 0, i32 33
  %7679 = getelementptr inbounds %struct.Reg, %struct.Reg* %7678, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %7679 to i64*
  %7680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7681 = getelementptr inbounds %struct.GPR, %struct.GPR* %7680, i32 0, i32 5
  %7682 = getelementptr inbounds %struct.Reg, %struct.Reg* %7681, i32 0, i32 0
  %ECX.i146 = bitcast %union.anon* %7682 to i32*
  %7683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7684 = getelementptr inbounds %struct.GPR, %struct.GPR* %7683, i32 0, i32 7
  %7685 = getelementptr inbounds %struct.Reg, %struct.Reg* %7684, i32 0, i32 0
  %RDX.i147 = bitcast %union.anon* %7685 to i64*
  %7686 = load i32, i32* %ECX.i146
  %7687 = zext i32 %7686 to i64
  %7688 = load i64, i64* %PC.i145
  %7689 = add i64 %7688, 3
  store i64 %7689, i64* %PC.i145
  %7690 = shl i64 %7687, 32
  %7691 = ashr exact i64 %7690, 32
  store i64 %7691, i64* %RDX.i147, align 8
  store %struct.Memory* %loadMem_41e287, %struct.Memory** %MEMORY
  %loadMem_41e28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7693 = getelementptr inbounds %struct.GPR, %struct.GPR* %7692, i32 0, i32 33
  %7694 = getelementptr inbounds %struct.Reg, %struct.Reg* %7693, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %7694 to i64*
  %7695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7696 = getelementptr inbounds %struct.GPR, %struct.GPR* %7695, i32 0, i32 7
  %7697 = getelementptr inbounds %struct.Reg, %struct.Reg* %7696, i32 0, i32 0
  %RDX.i144 = bitcast %union.anon* %7697 to i64*
  %7698 = load i64, i64* %RDX.i144
  %7699 = load i64, i64* %PC.i143
  %7700 = add i64 %7699, 4
  store i64 %7700, i64* %PC.i143
  %7701 = sext i64 %7698 to i128
  %7702 = and i128 %7701, -18446744073709551616
  %7703 = zext i64 %7698 to i128
  %7704 = or i128 %7702, %7703
  %7705 = mul i128 24, %7704
  %7706 = trunc i128 %7705 to i64
  store i64 %7706, i64* %RDX.i144, align 8
  %7707 = sext i64 %7706 to i128
  %7708 = icmp ne i128 %7707, %7705
  %7709 = zext i1 %7708 to i8
  %7710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7709, i8* %7710, align 1
  %7711 = trunc i128 %7705 to i32
  %7712 = and i32 %7711, 255
  %7713 = call i32 @llvm.ctpop.i32(i32 %7712)
  %7714 = trunc i32 %7713 to i8
  %7715 = and i8 %7714, 1
  %7716 = xor i8 %7715, 1
  %7717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7716, i8* %7717, align 1
  %7718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7718, align 1
  %7719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7719, align 1
  %7720 = lshr i64 %7706, 63
  %7721 = trunc i64 %7720 to i8
  %7722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7721, i8* %7722, align 1
  %7723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7709, i8* %7723, align 1
  store %struct.Memory* %loadMem_41e28a, %struct.Memory** %MEMORY
  %loadMem_41e28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7725 = getelementptr inbounds %struct.GPR, %struct.GPR* %7724, i32 0, i32 33
  %7726 = getelementptr inbounds %struct.Reg, %struct.Reg* %7725, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %7726 to i64*
  %7727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7728 = getelementptr inbounds %struct.GPR, %struct.GPR* %7727, i32 0, i32 1
  %7729 = getelementptr inbounds %struct.Reg, %struct.Reg* %7728, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %7729 to i64*
  %7730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7731 = getelementptr inbounds %struct.GPR, %struct.GPR* %7730, i32 0, i32 7
  %7732 = getelementptr inbounds %struct.Reg, %struct.Reg* %7731, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %7732 to i64*
  %7733 = load i64, i64* %RAX.i141
  %7734 = load i64, i64* %RDX.i142
  %7735 = load i64, i64* %PC.i140
  %7736 = add i64 %7735, 3
  store i64 %7736, i64* %PC.i140
  %7737 = add i64 %7734, %7733
  store i64 %7737, i64* %RAX.i141, align 8
  %7738 = icmp ult i64 %7737, %7733
  %7739 = icmp ult i64 %7737, %7734
  %7740 = or i1 %7738, %7739
  %7741 = zext i1 %7740 to i8
  %7742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7741, i8* %7742, align 1
  %7743 = trunc i64 %7737 to i32
  %7744 = and i32 %7743, 255
  %7745 = call i32 @llvm.ctpop.i32(i32 %7744)
  %7746 = trunc i32 %7745 to i8
  %7747 = and i8 %7746, 1
  %7748 = xor i8 %7747, 1
  %7749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7748, i8* %7749, align 1
  %7750 = xor i64 %7734, %7733
  %7751 = xor i64 %7750, %7737
  %7752 = lshr i64 %7751, 4
  %7753 = trunc i64 %7752 to i8
  %7754 = and i8 %7753, 1
  %7755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7754, i8* %7755, align 1
  %7756 = icmp eq i64 %7737, 0
  %7757 = zext i1 %7756 to i8
  %7758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7757, i8* %7758, align 1
  %7759 = lshr i64 %7737, 63
  %7760 = trunc i64 %7759 to i8
  %7761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7760, i8* %7761, align 1
  %7762 = lshr i64 %7733, 63
  %7763 = lshr i64 %7734, 63
  %7764 = xor i64 %7759, %7762
  %7765 = xor i64 %7759, %7763
  %7766 = add i64 %7764, %7765
  %7767 = icmp eq i64 %7766, 2
  %7768 = zext i1 %7767 to i8
  %7769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7768, i8* %7769, align 1
  store %struct.Memory* %loadMem_41e28e, %struct.Memory** %MEMORY
  %loadMem_41e291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7771 = getelementptr inbounds %struct.GPR, %struct.GPR* %7770, i32 0, i32 33
  %7772 = getelementptr inbounds %struct.Reg, %struct.Reg* %7771, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %7772 to i64*
  %7773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7774 = getelementptr inbounds %struct.GPR, %struct.GPR* %7773, i32 0, i32 1
  %7775 = getelementptr inbounds %struct.Reg, %struct.Reg* %7774, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %7775 to i64*
  %7776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7777 = getelementptr inbounds %struct.GPR, %struct.GPR* %7776, i32 0, i32 5
  %7778 = getelementptr inbounds %struct.Reg, %struct.Reg* %7777, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %7778 to i64*
  %7779 = load i64, i64* %RAX.i138
  %7780 = add i64 %7779, 12
  %7781 = load i64, i64* %PC.i137
  %7782 = add i64 %7781, 3
  store i64 %7782, i64* %PC.i137
  %7783 = inttoptr i64 %7780 to i32*
  %7784 = load i32, i32* %7783
  %7785 = zext i32 %7784 to i64
  store i64 %7785, i64* %RCX.i139, align 8
  store %struct.Memory* %loadMem_41e291, %struct.Memory** %MEMORY
  %loadMem_41e294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7787 = getelementptr inbounds %struct.GPR, %struct.GPR* %7786, i32 0, i32 33
  %7788 = getelementptr inbounds %struct.Reg, %struct.Reg* %7787, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %7788 to i64*
  %7789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7790 = getelementptr inbounds %struct.GPR, %struct.GPR* %7789, i32 0, i32 5
  %7791 = getelementptr inbounds %struct.Reg, %struct.Reg* %7790, i32 0, i32 0
  %ECX.i135 = bitcast %union.anon* %7791 to i32*
  %7792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7793 = getelementptr inbounds %struct.GPR, %struct.GPR* %7792, i32 0, i32 15
  %7794 = getelementptr inbounds %struct.Reg, %struct.Reg* %7793, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %7794 to i64*
  %7795 = load i64, i64* %RBP.i136
  %7796 = sub i64 %7795, 60
  %7797 = load i32, i32* %ECX.i135
  %7798 = zext i32 %7797 to i64
  %7799 = load i64, i64* %PC.i134
  %7800 = add i64 %7799, 3
  store i64 %7800, i64* %PC.i134
  %7801 = inttoptr i64 %7796 to i32*
  store i32 %7797, i32* %7801
  store %struct.Memory* %loadMem_41e294, %struct.Memory** %MEMORY
  %loadMem_41e297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7803 = getelementptr inbounds %struct.GPR, %struct.GPR* %7802, i32 0, i32 33
  %7804 = getelementptr inbounds %struct.Reg, %struct.Reg* %7803, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %7804 to i64*
  %7805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7806 = getelementptr inbounds %struct.GPR, %struct.GPR* %7805, i32 0, i32 1
  %7807 = getelementptr inbounds %struct.Reg, %struct.Reg* %7806, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %7807 to i64*
  %7808 = load i64, i64* %PC.i132
  %7809 = add i64 %7808, 8
  store i64 %7809, i64* %PC.i132
  %7810 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %7810, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_41e297, %struct.Memory** %MEMORY
  %loadMem_41e29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7812 = getelementptr inbounds %struct.GPR, %struct.GPR* %7811, i32 0, i32 33
  %7813 = getelementptr inbounds %struct.Reg, %struct.Reg* %7812, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %7813 to i64*
  %7814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7815 = getelementptr inbounds %struct.GPR, %struct.GPR* %7814, i32 0, i32 7
  %7816 = getelementptr inbounds %struct.Reg, %struct.Reg* %7815, i32 0, i32 0
  %RDX.i130 = bitcast %union.anon* %7816 to i64*
  %7817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7818 = getelementptr inbounds %struct.GPR, %struct.GPR* %7817, i32 0, i32 15
  %7819 = getelementptr inbounds %struct.Reg, %struct.Reg* %7818, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %7819 to i64*
  %7820 = load i64, i64* %RBP.i131
  %7821 = sub i64 %7820, 56
  %7822 = load i64, i64* %PC.i129
  %7823 = add i64 %7822, 4
  store i64 %7823, i64* %PC.i129
  %7824 = inttoptr i64 %7821 to i32*
  %7825 = load i32, i32* %7824
  %7826 = sext i32 %7825 to i64
  store i64 %7826, i64* %RDX.i130, align 8
  store %struct.Memory* %loadMem_41e29f, %struct.Memory** %MEMORY
  %loadMem_41e2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7828 = getelementptr inbounds %struct.GPR, %struct.GPR* %7827, i32 0, i32 33
  %7829 = getelementptr inbounds %struct.Reg, %struct.Reg* %7828, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %7829 to i64*
  %7830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7831 = getelementptr inbounds %struct.GPR, %struct.GPR* %7830, i32 0, i32 7
  %7832 = getelementptr inbounds %struct.Reg, %struct.Reg* %7831, i32 0, i32 0
  %RDX.i128 = bitcast %union.anon* %7832 to i64*
  %7833 = load i64, i64* %RDX.i128
  %7834 = load i64, i64* %PC.i127
  %7835 = add i64 %7834, 4
  store i64 %7835, i64* %PC.i127
  %7836 = sext i64 %7833 to i128
  %7837 = and i128 %7836, -18446744073709551616
  %7838 = zext i64 %7833 to i128
  %7839 = or i128 %7837, %7838
  %7840 = mul i128 24, %7839
  %7841 = trunc i128 %7840 to i64
  store i64 %7841, i64* %RDX.i128, align 8
  %7842 = sext i64 %7841 to i128
  %7843 = icmp ne i128 %7842, %7840
  %7844 = zext i1 %7843 to i8
  %7845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7844, i8* %7845, align 1
  %7846 = trunc i128 %7840 to i32
  %7847 = and i32 %7846, 255
  %7848 = call i32 @llvm.ctpop.i32(i32 %7847)
  %7849 = trunc i32 %7848 to i8
  %7850 = and i8 %7849, 1
  %7851 = xor i8 %7850, 1
  %7852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7851, i8* %7852, align 1
  %7853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7853, align 1
  %7854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %7854, align 1
  %7855 = lshr i64 %7841, 63
  %7856 = trunc i64 %7855 to i8
  %7857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7856, i8* %7857, align 1
  %7858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7844, i8* %7858, align 1
  store %struct.Memory* %loadMem_41e2a3, %struct.Memory** %MEMORY
  %loadMem_41e2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7860 = getelementptr inbounds %struct.GPR, %struct.GPR* %7859, i32 0, i32 33
  %7861 = getelementptr inbounds %struct.Reg, %struct.Reg* %7860, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %7861 to i64*
  %7862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7863 = getelementptr inbounds %struct.GPR, %struct.GPR* %7862, i32 0, i32 1
  %7864 = getelementptr inbounds %struct.Reg, %struct.Reg* %7863, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %7864 to i64*
  %7865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7866 = getelementptr inbounds %struct.GPR, %struct.GPR* %7865, i32 0, i32 7
  %7867 = getelementptr inbounds %struct.Reg, %struct.Reg* %7866, i32 0, i32 0
  %RDX.i126 = bitcast %union.anon* %7867 to i64*
  %7868 = load i64, i64* %RAX.i125
  %7869 = load i64, i64* %RDX.i126
  %7870 = load i64, i64* %PC.i124
  %7871 = add i64 %7870, 3
  store i64 %7871, i64* %PC.i124
  %7872 = add i64 %7869, %7868
  store i64 %7872, i64* %RAX.i125, align 8
  %7873 = icmp ult i64 %7872, %7868
  %7874 = icmp ult i64 %7872, %7869
  %7875 = or i1 %7873, %7874
  %7876 = zext i1 %7875 to i8
  %7877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7876, i8* %7877, align 1
  %7878 = trunc i64 %7872 to i32
  %7879 = and i32 %7878, 255
  %7880 = call i32 @llvm.ctpop.i32(i32 %7879)
  %7881 = trunc i32 %7880 to i8
  %7882 = and i8 %7881, 1
  %7883 = xor i8 %7882, 1
  %7884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7883, i8* %7884, align 1
  %7885 = xor i64 %7869, %7868
  %7886 = xor i64 %7885, %7872
  %7887 = lshr i64 %7886, 4
  %7888 = trunc i64 %7887 to i8
  %7889 = and i8 %7888, 1
  %7890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7889, i8* %7890, align 1
  %7891 = icmp eq i64 %7872, 0
  %7892 = zext i1 %7891 to i8
  %7893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7892, i8* %7893, align 1
  %7894 = lshr i64 %7872, 63
  %7895 = trunc i64 %7894 to i8
  %7896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7895, i8* %7896, align 1
  %7897 = lshr i64 %7868, 63
  %7898 = lshr i64 %7869, 63
  %7899 = xor i64 %7894, %7897
  %7900 = xor i64 %7894, %7898
  %7901 = add i64 %7899, %7900
  %7902 = icmp eq i64 %7901, 2
  %7903 = zext i1 %7902 to i8
  %7904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7903, i8* %7904, align 1
  store %struct.Memory* %loadMem_41e2a7, %struct.Memory** %MEMORY
  %loadMem_41e2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7906 = getelementptr inbounds %struct.GPR, %struct.GPR* %7905, i32 0, i32 33
  %7907 = getelementptr inbounds %struct.Reg, %struct.Reg* %7906, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %7907 to i64*
  %7908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7909 = getelementptr inbounds %struct.GPR, %struct.GPR* %7908, i32 0, i32 1
  %7910 = getelementptr inbounds %struct.Reg, %struct.Reg* %7909, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %7910 to i64*
  %7911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7912 = getelementptr inbounds %struct.GPR, %struct.GPR* %7911, i32 0, i32 5
  %7913 = getelementptr inbounds %struct.Reg, %struct.Reg* %7912, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %7913 to i64*
  %7914 = load i64, i64* %RAX.i122
  %7915 = add i64 %7914, 12
  %7916 = load i64, i64* %PC.i121
  %7917 = add i64 %7916, 3
  store i64 %7917, i64* %PC.i121
  %7918 = inttoptr i64 %7915 to i32*
  %7919 = load i32, i32* %7918
  %7920 = zext i32 %7919 to i64
  store i64 %7920, i64* %RCX.i123, align 8
  store %struct.Memory* %loadMem_41e2aa, %struct.Memory** %MEMORY
  %loadMem_41e2ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %7921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7922 = getelementptr inbounds %struct.GPR, %struct.GPR* %7921, i32 0, i32 33
  %7923 = getelementptr inbounds %struct.Reg, %struct.Reg* %7922, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7923 to i64*
  %7924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7925 = getelementptr inbounds %struct.GPR, %struct.GPR* %7924, i32 0, i32 1
  %7926 = getelementptr inbounds %struct.Reg, %struct.Reg* %7925, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %7926 to i64*
  %7927 = load i64, i64* %PC.i119
  %7928 = add i64 %7927, 8
  store i64 %7928, i64* %PC.i119
  %7929 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %7929, i64* %RAX.i120, align 8
  store %struct.Memory* %loadMem_41e2ad, %struct.Memory** %MEMORY
  %loadMem_41e2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7931 = getelementptr inbounds %struct.GPR, %struct.GPR* %7930, i32 0, i32 33
  %7932 = getelementptr inbounds %struct.Reg, %struct.Reg* %7931, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %7932 to i64*
  %7933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7934 = getelementptr inbounds %struct.GPR, %struct.GPR* %7933, i32 0, i32 9
  %7935 = getelementptr inbounds %struct.Reg, %struct.Reg* %7934, i32 0, i32 0
  %RSI.i117 = bitcast %union.anon* %7935 to i64*
  %7936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7937 = getelementptr inbounds %struct.GPR, %struct.GPR* %7936, i32 0, i32 15
  %7938 = getelementptr inbounds %struct.Reg, %struct.Reg* %7937, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %7938 to i64*
  %7939 = load i64, i64* %RBP.i118
  %7940 = sub i64 %7939, 56
  %7941 = load i64, i64* %PC.i116
  %7942 = add i64 %7941, 3
  store i64 %7942, i64* %PC.i116
  %7943 = inttoptr i64 %7940 to i32*
  %7944 = load i32, i32* %7943
  %7945 = zext i32 %7944 to i64
  store i64 %7945, i64* %RSI.i117, align 8
  store %struct.Memory* %loadMem_41e2b5, %struct.Memory** %MEMORY
  %loadMem_41e2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7947 = getelementptr inbounds %struct.GPR, %struct.GPR* %7946, i32 0, i32 33
  %7948 = getelementptr inbounds %struct.Reg, %struct.Reg* %7947, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %7948 to i64*
  %7949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7950 = getelementptr inbounds %struct.GPR, %struct.GPR* %7949, i32 0, i32 9
  %7951 = getelementptr inbounds %struct.Reg, %struct.Reg* %7950, i32 0, i32 0
  %RSI.i115 = bitcast %union.anon* %7951 to i64*
  %7952 = load i64, i64* %RSI.i115
  %7953 = load i64, i64* %PC.i114
  %7954 = add i64 %7953, 3
  store i64 %7954, i64* %PC.i114
  %7955 = trunc i64 %7952 to i32
  %7956 = sub i32 %7955, 1
  %7957 = zext i32 %7956 to i64
  store i64 %7957, i64* %RSI.i115, align 8
  %7958 = icmp ult i32 %7955, 1
  %7959 = zext i1 %7958 to i8
  %7960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7959, i8* %7960, align 1
  %7961 = and i32 %7956, 255
  %7962 = call i32 @llvm.ctpop.i32(i32 %7961)
  %7963 = trunc i32 %7962 to i8
  %7964 = and i8 %7963, 1
  %7965 = xor i8 %7964, 1
  %7966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7965, i8* %7966, align 1
  %7967 = xor i64 1, %7952
  %7968 = trunc i64 %7967 to i32
  %7969 = xor i32 %7968, %7956
  %7970 = lshr i32 %7969, 4
  %7971 = trunc i32 %7970 to i8
  %7972 = and i8 %7971, 1
  %7973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7972, i8* %7973, align 1
  %7974 = icmp eq i32 %7956, 0
  %7975 = zext i1 %7974 to i8
  %7976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7975, i8* %7976, align 1
  %7977 = lshr i32 %7956, 31
  %7978 = trunc i32 %7977 to i8
  %7979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7978, i8* %7979, align 1
  %7980 = lshr i32 %7955, 31
  %7981 = xor i32 %7977, %7980
  %7982 = add i32 %7981, %7980
  %7983 = icmp eq i32 %7982, 2
  %7984 = zext i1 %7983 to i8
  %7985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7984, i8* %7985, align 1
  store %struct.Memory* %loadMem_41e2b8, %struct.Memory** %MEMORY
  %loadMem_41e2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7987 = getelementptr inbounds %struct.GPR, %struct.GPR* %7986, i32 0, i32 33
  %7988 = getelementptr inbounds %struct.Reg, %struct.Reg* %7987, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %7988 to i64*
  %7989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7990 = getelementptr inbounds %struct.GPR, %struct.GPR* %7989, i32 0, i32 9
  %7991 = getelementptr inbounds %struct.Reg, %struct.Reg* %7990, i32 0, i32 0
  %ESI.i112 = bitcast %union.anon* %7991 to i32*
  %7992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7993 = getelementptr inbounds %struct.GPR, %struct.GPR* %7992, i32 0, i32 7
  %7994 = getelementptr inbounds %struct.Reg, %struct.Reg* %7993, i32 0, i32 0
  %RDX.i113 = bitcast %union.anon* %7994 to i64*
  %7995 = load i32, i32* %ESI.i112
  %7996 = zext i32 %7995 to i64
  %7997 = load i64, i64* %PC.i111
  %7998 = add i64 %7997, 3
  store i64 %7998, i64* %PC.i111
  %7999 = shl i64 %7996, 32
  %8000 = ashr exact i64 %7999, 32
  store i64 %8000, i64* %RDX.i113, align 8
  store %struct.Memory* %loadMem_41e2bb, %struct.Memory** %MEMORY
  %loadMem_41e2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %8001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8002 = getelementptr inbounds %struct.GPR, %struct.GPR* %8001, i32 0, i32 33
  %8003 = getelementptr inbounds %struct.Reg, %struct.Reg* %8002, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %8003 to i64*
  %8004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8005 = getelementptr inbounds %struct.GPR, %struct.GPR* %8004, i32 0, i32 7
  %8006 = getelementptr inbounds %struct.Reg, %struct.Reg* %8005, i32 0, i32 0
  %RDX.i110 = bitcast %union.anon* %8006 to i64*
  %8007 = load i64, i64* %RDX.i110
  %8008 = load i64, i64* %PC.i109
  %8009 = add i64 %8008, 4
  store i64 %8009, i64* %PC.i109
  %8010 = sext i64 %8007 to i128
  %8011 = and i128 %8010, -18446744073709551616
  %8012 = zext i64 %8007 to i128
  %8013 = or i128 %8011, %8012
  %8014 = mul i128 24, %8013
  %8015 = trunc i128 %8014 to i64
  store i64 %8015, i64* %RDX.i110, align 8
  %8016 = sext i64 %8015 to i128
  %8017 = icmp ne i128 %8016, %8014
  %8018 = zext i1 %8017 to i8
  %8019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8018, i8* %8019, align 1
  %8020 = trunc i128 %8014 to i32
  %8021 = and i32 %8020, 255
  %8022 = call i32 @llvm.ctpop.i32(i32 %8021)
  %8023 = trunc i32 %8022 to i8
  %8024 = and i8 %8023, 1
  %8025 = xor i8 %8024, 1
  %8026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8025, i8* %8026, align 1
  %8027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8027, align 1
  %8028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8028, align 1
  %8029 = lshr i64 %8015, 63
  %8030 = trunc i64 %8029 to i8
  %8031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8030, i8* %8031, align 1
  %8032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8018, i8* %8032, align 1
  store %struct.Memory* %loadMem_41e2be, %struct.Memory** %MEMORY
  %loadMem_41e2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8034 = getelementptr inbounds %struct.GPR, %struct.GPR* %8033, i32 0, i32 33
  %8035 = getelementptr inbounds %struct.Reg, %struct.Reg* %8034, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %8035 to i64*
  %8036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8037 = getelementptr inbounds %struct.GPR, %struct.GPR* %8036, i32 0, i32 1
  %8038 = getelementptr inbounds %struct.Reg, %struct.Reg* %8037, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %8038 to i64*
  %8039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8040 = getelementptr inbounds %struct.GPR, %struct.GPR* %8039, i32 0, i32 7
  %8041 = getelementptr inbounds %struct.Reg, %struct.Reg* %8040, i32 0, i32 0
  %RDX.i108 = bitcast %union.anon* %8041 to i64*
  %8042 = load i64, i64* %RAX.i107
  %8043 = load i64, i64* %RDX.i108
  %8044 = load i64, i64* %PC.i106
  %8045 = add i64 %8044, 3
  store i64 %8045, i64* %PC.i106
  %8046 = add i64 %8043, %8042
  store i64 %8046, i64* %RAX.i107, align 8
  %8047 = icmp ult i64 %8046, %8042
  %8048 = icmp ult i64 %8046, %8043
  %8049 = or i1 %8047, %8048
  %8050 = zext i1 %8049 to i8
  %8051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8050, i8* %8051, align 1
  %8052 = trunc i64 %8046 to i32
  %8053 = and i32 %8052, 255
  %8054 = call i32 @llvm.ctpop.i32(i32 %8053)
  %8055 = trunc i32 %8054 to i8
  %8056 = and i8 %8055, 1
  %8057 = xor i8 %8056, 1
  %8058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8057, i8* %8058, align 1
  %8059 = xor i64 %8043, %8042
  %8060 = xor i64 %8059, %8046
  %8061 = lshr i64 %8060, 4
  %8062 = trunc i64 %8061 to i8
  %8063 = and i8 %8062, 1
  %8064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8063, i8* %8064, align 1
  %8065 = icmp eq i64 %8046, 0
  %8066 = zext i1 %8065 to i8
  %8067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8066, i8* %8067, align 1
  %8068 = lshr i64 %8046, 63
  %8069 = trunc i64 %8068 to i8
  %8070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8069, i8* %8070, align 1
  %8071 = lshr i64 %8042, 63
  %8072 = lshr i64 %8043, 63
  %8073 = xor i64 %8068, %8071
  %8074 = xor i64 %8068, %8072
  %8075 = add i64 %8073, %8074
  %8076 = icmp eq i64 %8075, 2
  %8077 = zext i1 %8076 to i8
  %8078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8077, i8* %8078, align 1
  store %struct.Memory* %loadMem_41e2c2, %struct.Memory** %MEMORY
  %loadMem_41e2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8080 = getelementptr inbounds %struct.GPR, %struct.GPR* %8079, i32 0, i32 33
  %8081 = getelementptr inbounds %struct.Reg, %struct.Reg* %8080, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %8081 to i64*
  %8082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8083 = getelementptr inbounds %struct.GPR, %struct.GPR* %8082, i32 0, i32 5
  %8084 = getelementptr inbounds %struct.Reg, %struct.Reg* %8083, i32 0, i32 0
  %ECX.i104 = bitcast %union.anon* %8084 to i32*
  %8085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8086 = getelementptr inbounds %struct.GPR, %struct.GPR* %8085, i32 0, i32 1
  %8087 = getelementptr inbounds %struct.Reg, %struct.Reg* %8086, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %8087 to i64*
  %8088 = load i64, i64* %RAX.i105
  %8089 = add i64 %8088, 12
  %8090 = load i32, i32* %ECX.i104
  %8091 = zext i32 %8090 to i64
  %8092 = load i64, i64* %PC.i103
  %8093 = add i64 %8092, 3
  store i64 %8093, i64* %PC.i103
  %8094 = inttoptr i64 %8089 to i32*
  store i32 %8090, i32* %8094
  store %struct.Memory* %loadMem_41e2c5, %struct.Memory** %MEMORY
  %loadMem_41e2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8096 = getelementptr inbounds %struct.GPR, %struct.GPR* %8095, i32 0, i32 33
  %8097 = getelementptr inbounds %struct.Reg, %struct.Reg* %8096, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %8097 to i64*
  %8098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8099 = getelementptr inbounds %struct.GPR, %struct.GPR* %8098, i32 0, i32 5
  %8100 = getelementptr inbounds %struct.Reg, %struct.Reg* %8099, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %8100 to i64*
  %8101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8102 = getelementptr inbounds %struct.GPR, %struct.GPR* %8101, i32 0, i32 15
  %8103 = getelementptr inbounds %struct.Reg, %struct.Reg* %8102, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %8103 to i64*
  %8104 = load i64, i64* %RBP.i102
  %8105 = sub i64 %8104, 60
  %8106 = load i64, i64* %PC.i100
  %8107 = add i64 %8106, 3
  store i64 %8107, i64* %PC.i100
  %8108 = inttoptr i64 %8105 to i32*
  %8109 = load i32, i32* %8108
  %8110 = zext i32 %8109 to i64
  store i64 %8110, i64* %RCX.i101, align 8
  store %struct.Memory* %loadMem_41e2c8, %struct.Memory** %MEMORY
  %loadMem_41e2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %8111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8112 = getelementptr inbounds %struct.GPR, %struct.GPR* %8111, i32 0, i32 33
  %8113 = getelementptr inbounds %struct.Reg, %struct.Reg* %8112, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %8113 to i64*
  %8114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8115 = getelementptr inbounds %struct.GPR, %struct.GPR* %8114, i32 0, i32 1
  %8116 = getelementptr inbounds %struct.Reg, %struct.Reg* %8115, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %8116 to i64*
  %8117 = load i64, i64* %PC.i98
  %8118 = add i64 %8117, 8
  store i64 %8118, i64* %PC.i98
  %8119 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %8119, i64* %RAX.i99, align 8
  store %struct.Memory* %loadMem_41e2cb, %struct.Memory** %MEMORY
  %loadMem_41e2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8121 = getelementptr inbounds %struct.GPR, %struct.GPR* %8120, i32 0, i32 33
  %8122 = getelementptr inbounds %struct.Reg, %struct.Reg* %8121, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %8122 to i64*
  %8123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8124 = getelementptr inbounds %struct.GPR, %struct.GPR* %8123, i32 0, i32 7
  %8125 = getelementptr inbounds %struct.Reg, %struct.Reg* %8124, i32 0, i32 0
  %RDX.i96 = bitcast %union.anon* %8125 to i64*
  %8126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8127 = getelementptr inbounds %struct.GPR, %struct.GPR* %8126, i32 0, i32 15
  %8128 = getelementptr inbounds %struct.Reg, %struct.Reg* %8127, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %8128 to i64*
  %8129 = load i64, i64* %RBP.i97
  %8130 = sub i64 %8129, 56
  %8131 = load i64, i64* %PC.i95
  %8132 = add i64 %8131, 4
  store i64 %8132, i64* %PC.i95
  %8133 = inttoptr i64 %8130 to i32*
  %8134 = load i32, i32* %8133
  %8135 = sext i32 %8134 to i64
  store i64 %8135, i64* %RDX.i96, align 8
  store %struct.Memory* %loadMem_41e2d3, %struct.Memory** %MEMORY
  %loadMem_41e2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8137 = getelementptr inbounds %struct.GPR, %struct.GPR* %8136, i32 0, i32 33
  %8138 = getelementptr inbounds %struct.Reg, %struct.Reg* %8137, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %8138 to i64*
  %8139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8140 = getelementptr inbounds %struct.GPR, %struct.GPR* %8139, i32 0, i32 7
  %8141 = getelementptr inbounds %struct.Reg, %struct.Reg* %8140, i32 0, i32 0
  %RDX.i94 = bitcast %union.anon* %8141 to i64*
  %8142 = load i64, i64* %RDX.i94
  %8143 = load i64, i64* %PC.i93
  %8144 = add i64 %8143, 4
  store i64 %8144, i64* %PC.i93
  %8145 = sext i64 %8142 to i128
  %8146 = and i128 %8145, -18446744073709551616
  %8147 = zext i64 %8142 to i128
  %8148 = or i128 %8146, %8147
  %8149 = mul i128 24, %8148
  %8150 = trunc i128 %8149 to i64
  store i64 %8150, i64* %RDX.i94, align 8
  %8151 = sext i64 %8150 to i128
  %8152 = icmp ne i128 %8151, %8149
  %8153 = zext i1 %8152 to i8
  %8154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8153, i8* %8154, align 1
  %8155 = trunc i128 %8149 to i32
  %8156 = and i32 %8155, 255
  %8157 = call i32 @llvm.ctpop.i32(i32 %8156)
  %8158 = trunc i32 %8157 to i8
  %8159 = and i8 %8158, 1
  %8160 = xor i8 %8159, 1
  %8161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8160, i8* %8161, align 1
  %8162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8162, align 1
  %8163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8163, align 1
  %8164 = lshr i64 %8150, 63
  %8165 = trunc i64 %8164 to i8
  %8166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8165, i8* %8166, align 1
  %8167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8153, i8* %8167, align 1
  store %struct.Memory* %loadMem_41e2d7, %struct.Memory** %MEMORY
  %loadMem_41e2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %8168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8169 = getelementptr inbounds %struct.GPR, %struct.GPR* %8168, i32 0, i32 33
  %8170 = getelementptr inbounds %struct.Reg, %struct.Reg* %8169, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %8170 to i64*
  %8171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8172 = getelementptr inbounds %struct.GPR, %struct.GPR* %8171, i32 0, i32 1
  %8173 = getelementptr inbounds %struct.Reg, %struct.Reg* %8172, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %8173 to i64*
  %8174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8175 = getelementptr inbounds %struct.GPR, %struct.GPR* %8174, i32 0, i32 7
  %8176 = getelementptr inbounds %struct.Reg, %struct.Reg* %8175, i32 0, i32 0
  %RDX.i92 = bitcast %union.anon* %8176 to i64*
  %8177 = load i64, i64* %RAX.i91
  %8178 = load i64, i64* %RDX.i92
  %8179 = load i64, i64* %PC.i90
  %8180 = add i64 %8179, 3
  store i64 %8180, i64* %PC.i90
  %8181 = add i64 %8178, %8177
  store i64 %8181, i64* %RAX.i91, align 8
  %8182 = icmp ult i64 %8181, %8177
  %8183 = icmp ult i64 %8181, %8178
  %8184 = or i1 %8182, %8183
  %8185 = zext i1 %8184 to i8
  %8186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8185, i8* %8186, align 1
  %8187 = trunc i64 %8181 to i32
  %8188 = and i32 %8187, 255
  %8189 = call i32 @llvm.ctpop.i32(i32 %8188)
  %8190 = trunc i32 %8189 to i8
  %8191 = and i8 %8190, 1
  %8192 = xor i8 %8191, 1
  %8193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8192, i8* %8193, align 1
  %8194 = xor i64 %8178, %8177
  %8195 = xor i64 %8194, %8181
  %8196 = lshr i64 %8195, 4
  %8197 = trunc i64 %8196 to i8
  %8198 = and i8 %8197, 1
  %8199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8198, i8* %8199, align 1
  %8200 = icmp eq i64 %8181, 0
  %8201 = zext i1 %8200 to i8
  %8202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8201, i8* %8202, align 1
  %8203 = lshr i64 %8181, 63
  %8204 = trunc i64 %8203 to i8
  %8205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8204, i8* %8205, align 1
  %8206 = lshr i64 %8177, 63
  %8207 = lshr i64 %8178, 63
  %8208 = xor i64 %8203, %8206
  %8209 = xor i64 %8203, %8207
  %8210 = add i64 %8208, %8209
  %8211 = icmp eq i64 %8210, 2
  %8212 = zext i1 %8211 to i8
  %8213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8212, i8* %8213, align 1
  store %struct.Memory* %loadMem_41e2db, %struct.Memory** %MEMORY
  %loadMem_41e2de = load %struct.Memory*, %struct.Memory** %MEMORY
  %8214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8215 = getelementptr inbounds %struct.GPR, %struct.GPR* %8214, i32 0, i32 33
  %8216 = getelementptr inbounds %struct.Reg, %struct.Reg* %8215, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %8216 to i64*
  %8217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8218 = getelementptr inbounds %struct.GPR, %struct.GPR* %8217, i32 0, i32 5
  %8219 = getelementptr inbounds %struct.Reg, %struct.Reg* %8218, i32 0, i32 0
  %ECX.i88 = bitcast %union.anon* %8219 to i32*
  %8220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8221 = getelementptr inbounds %struct.GPR, %struct.GPR* %8220, i32 0, i32 1
  %8222 = getelementptr inbounds %struct.Reg, %struct.Reg* %8221, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %8222 to i64*
  %8223 = load i64, i64* %RAX.i89
  %8224 = add i64 %8223, 12
  %8225 = load i32, i32* %ECX.i88
  %8226 = zext i32 %8225 to i64
  %8227 = load i64, i64* %PC.i87
  %8228 = add i64 %8227, 3
  store i64 %8228, i64* %PC.i87
  %8229 = inttoptr i64 %8224 to i32*
  store i32 %8225, i32* %8229
  store %struct.Memory* %loadMem_41e2de, %struct.Memory** %MEMORY
  %loadMem_41e2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8231 = getelementptr inbounds %struct.GPR, %struct.GPR* %8230, i32 0, i32 33
  %8232 = getelementptr inbounds %struct.Reg, %struct.Reg* %8231, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %8232 to i64*
  %8233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8234 = getelementptr inbounds %struct.GPR, %struct.GPR* %8233, i32 0, i32 1
  %8235 = getelementptr inbounds %struct.Reg, %struct.Reg* %8234, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %8235 to i64*
  %8236 = load i64, i64* %PC.i85
  %8237 = add i64 %8236, 8
  store i64 %8237, i64* %PC.i85
  %8238 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %8238, i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_41e2e1, %struct.Memory** %MEMORY
  %loadMem_41e2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8240 = getelementptr inbounds %struct.GPR, %struct.GPR* %8239, i32 0, i32 33
  %8241 = getelementptr inbounds %struct.Reg, %struct.Reg* %8240, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %8241 to i64*
  %8242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8243 = getelementptr inbounds %struct.GPR, %struct.GPR* %8242, i32 0, i32 5
  %8244 = getelementptr inbounds %struct.Reg, %struct.Reg* %8243, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %8244 to i64*
  %8245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8246 = getelementptr inbounds %struct.GPR, %struct.GPR* %8245, i32 0, i32 15
  %8247 = getelementptr inbounds %struct.Reg, %struct.Reg* %8246, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %8247 to i64*
  %8248 = load i64, i64* %RBP.i84
  %8249 = sub i64 %8248, 56
  %8250 = load i64, i64* %PC.i82
  %8251 = add i64 %8250, 3
  store i64 %8251, i64* %PC.i82
  %8252 = inttoptr i64 %8249 to i32*
  %8253 = load i32, i32* %8252
  %8254 = zext i32 %8253 to i64
  store i64 %8254, i64* %RCX.i83, align 8
  store %struct.Memory* %loadMem_41e2e9, %struct.Memory** %MEMORY
  %loadMem_41e2ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %8255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8256 = getelementptr inbounds %struct.GPR, %struct.GPR* %8255, i32 0, i32 33
  %8257 = getelementptr inbounds %struct.Reg, %struct.Reg* %8256, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %8257 to i64*
  %8258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8259 = getelementptr inbounds %struct.GPR, %struct.GPR* %8258, i32 0, i32 5
  %8260 = getelementptr inbounds %struct.Reg, %struct.Reg* %8259, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %8260 to i64*
  %8261 = load i64, i64* %RCX.i81
  %8262 = load i64, i64* %PC.i80
  %8263 = add i64 %8262, 3
  store i64 %8263, i64* %PC.i80
  %8264 = trunc i64 %8261 to i32
  %8265 = sub i32 %8264, 1
  %8266 = zext i32 %8265 to i64
  store i64 %8266, i64* %RCX.i81, align 8
  %8267 = icmp ult i32 %8264, 1
  %8268 = zext i1 %8267 to i8
  %8269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8268, i8* %8269, align 1
  %8270 = and i32 %8265, 255
  %8271 = call i32 @llvm.ctpop.i32(i32 %8270)
  %8272 = trunc i32 %8271 to i8
  %8273 = and i8 %8272, 1
  %8274 = xor i8 %8273, 1
  %8275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8274, i8* %8275, align 1
  %8276 = xor i64 1, %8261
  %8277 = trunc i64 %8276 to i32
  %8278 = xor i32 %8277, %8265
  %8279 = lshr i32 %8278, 4
  %8280 = trunc i32 %8279 to i8
  %8281 = and i8 %8280, 1
  %8282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8281, i8* %8282, align 1
  %8283 = icmp eq i32 %8265, 0
  %8284 = zext i1 %8283 to i8
  %8285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8284, i8* %8285, align 1
  %8286 = lshr i32 %8265, 31
  %8287 = trunc i32 %8286 to i8
  %8288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8287, i8* %8288, align 1
  %8289 = lshr i32 %8264, 31
  %8290 = xor i32 %8286, %8289
  %8291 = add i32 %8290, %8289
  %8292 = icmp eq i32 %8291, 2
  %8293 = zext i1 %8292 to i8
  %8294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8293, i8* %8294, align 1
  store %struct.Memory* %loadMem_41e2ec, %struct.Memory** %MEMORY
  %loadMem_41e2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %8295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8296 = getelementptr inbounds %struct.GPR, %struct.GPR* %8295, i32 0, i32 33
  %8297 = getelementptr inbounds %struct.Reg, %struct.Reg* %8296, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %8297 to i64*
  %8298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8299 = getelementptr inbounds %struct.GPR, %struct.GPR* %8298, i32 0, i32 5
  %8300 = getelementptr inbounds %struct.Reg, %struct.Reg* %8299, i32 0, i32 0
  %ECX.i78 = bitcast %union.anon* %8300 to i32*
  %8301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8302 = getelementptr inbounds %struct.GPR, %struct.GPR* %8301, i32 0, i32 7
  %8303 = getelementptr inbounds %struct.Reg, %struct.Reg* %8302, i32 0, i32 0
  %RDX.i79 = bitcast %union.anon* %8303 to i64*
  %8304 = load i32, i32* %ECX.i78
  %8305 = zext i32 %8304 to i64
  %8306 = load i64, i64* %PC.i77
  %8307 = add i64 %8306, 3
  store i64 %8307, i64* %PC.i77
  %8308 = shl i64 %8305, 32
  %8309 = ashr exact i64 %8308, 32
  store i64 %8309, i64* %RDX.i79, align 8
  store %struct.Memory* %loadMem_41e2ef, %struct.Memory** %MEMORY
  %loadMem_41e2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8311 = getelementptr inbounds %struct.GPR, %struct.GPR* %8310, i32 0, i32 33
  %8312 = getelementptr inbounds %struct.Reg, %struct.Reg* %8311, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %8312 to i64*
  %8313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8314 = getelementptr inbounds %struct.GPR, %struct.GPR* %8313, i32 0, i32 7
  %8315 = getelementptr inbounds %struct.Reg, %struct.Reg* %8314, i32 0, i32 0
  %RDX.i76 = bitcast %union.anon* %8315 to i64*
  %8316 = load i64, i64* %RDX.i76
  %8317 = load i64, i64* %PC.i75
  %8318 = add i64 %8317, 4
  store i64 %8318, i64* %PC.i75
  %8319 = sext i64 %8316 to i128
  %8320 = and i128 %8319, -18446744073709551616
  %8321 = zext i64 %8316 to i128
  %8322 = or i128 %8320, %8321
  %8323 = mul i128 24, %8322
  %8324 = trunc i128 %8323 to i64
  store i64 %8324, i64* %RDX.i76, align 8
  %8325 = sext i64 %8324 to i128
  %8326 = icmp ne i128 %8325, %8323
  %8327 = zext i1 %8326 to i8
  %8328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8327, i8* %8328, align 1
  %8329 = trunc i128 %8323 to i32
  %8330 = and i32 %8329, 255
  %8331 = call i32 @llvm.ctpop.i32(i32 %8330)
  %8332 = trunc i32 %8331 to i8
  %8333 = and i8 %8332, 1
  %8334 = xor i8 %8333, 1
  %8335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8334, i8* %8335, align 1
  %8336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8336, align 1
  %8337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8337, align 1
  %8338 = lshr i64 %8324, 63
  %8339 = trunc i64 %8338 to i8
  %8340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8339, i8* %8340, align 1
  %8341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8327, i8* %8341, align 1
  store %struct.Memory* %loadMem_41e2f2, %struct.Memory** %MEMORY
  %loadMem_41e2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8343 = getelementptr inbounds %struct.GPR, %struct.GPR* %8342, i32 0, i32 33
  %8344 = getelementptr inbounds %struct.Reg, %struct.Reg* %8343, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %8344 to i64*
  %8345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8346 = getelementptr inbounds %struct.GPR, %struct.GPR* %8345, i32 0, i32 1
  %8347 = getelementptr inbounds %struct.Reg, %struct.Reg* %8346, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %8347 to i64*
  %8348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8349 = getelementptr inbounds %struct.GPR, %struct.GPR* %8348, i32 0, i32 7
  %8350 = getelementptr inbounds %struct.Reg, %struct.Reg* %8349, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %8350 to i64*
  %8351 = load i64, i64* %RAX.i73
  %8352 = load i64, i64* %RDX.i74
  %8353 = load i64, i64* %PC.i72
  %8354 = add i64 %8353, 3
  store i64 %8354, i64* %PC.i72
  %8355 = add i64 %8352, %8351
  store i64 %8355, i64* %RAX.i73, align 8
  %8356 = icmp ult i64 %8355, %8351
  %8357 = icmp ult i64 %8355, %8352
  %8358 = or i1 %8356, %8357
  %8359 = zext i1 %8358 to i8
  %8360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8359, i8* %8360, align 1
  %8361 = trunc i64 %8355 to i32
  %8362 = and i32 %8361, 255
  %8363 = call i32 @llvm.ctpop.i32(i32 %8362)
  %8364 = trunc i32 %8363 to i8
  %8365 = and i8 %8364, 1
  %8366 = xor i8 %8365, 1
  %8367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8366, i8* %8367, align 1
  %8368 = xor i64 %8352, %8351
  %8369 = xor i64 %8368, %8355
  %8370 = lshr i64 %8369, 4
  %8371 = trunc i64 %8370 to i8
  %8372 = and i8 %8371, 1
  %8373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8372, i8* %8373, align 1
  %8374 = icmp eq i64 %8355, 0
  %8375 = zext i1 %8374 to i8
  %8376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8375, i8* %8376, align 1
  %8377 = lshr i64 %8355, 63
  %8378 = trunc i64 %8377 to i8
  %8379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8378, i8* %8379, align 1
  %8380 = lshr i64 %8351, 63
  %8381 = lshr i64 %8352, 63
  %8382 = xor i64 %8377, %8380
  %8383 = xor i64 %8377, %8381
  %8384 = add i64 %8382, %8383
  %8385 = icmp eq i64 %8384, 2
  %8386 = zext i1 %8385 to i8
  %8387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8386, i8* %8387, align 1
  store %struct.Memory* %loadMem_41e2f6, %struct.Memory** %MEMORY
  %loadMem_41e2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8389 = getelementptr inbounds %struct.GPR, %struct.GPR* %8388, i32 0, i32 33
  %8390 = getelementptr inbounds %struct.Reg, %struct.Reg* %8389, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %8390 to i64*
  %8391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8392 = getelementptr inbounds %struct.GPR, %struct.GPR* %8391, i32 0, i32 1
  %8393 = getelementptr inbounds %struct.Reg, %struct.Reg* %8392, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %8393 to i64*
  %8394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8395 = getelementptr inbounds %struct.GPR, %struct.GPR* %8394, i32 0, i32 5
  %8396 = getelementptr inbounds %struct.Reg, %struct.Reg* %8395, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %8396 to i64*
  %8397 = load i64, i64* %RAX.i70
  %8398 = add i64 %8397, 20
  %8399 = load i64, i64* %PC.i69
  %8400 = add i64 %8399, 3
  store i64 %8400, i64* %PC.i69
  %8401 = inttoptr i64 %8398 to i32*
  %8402 = load i32, i32* %8401
  %8403 = zext i32 %8402 to i64
  store i64 %8403, i64* %RCX.i71, align 8
  store %struct.Memory* %loadMem_41e2f9, %struct.Memory** %MEMORY
  %loadMem_41e2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %8404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8405 = getelementptr inbounds %struct.GPR, %struct.GPR* %8404, i32 0, i32 33
  %8406 = getelementptr inbounds %struct.Reg, %struct.Reg* %8405, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %8406 to i64*
  %8407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8408 = getelementptr inbounds %struct.GPR, %struct.GPR* %8407, i32 0, i32 5
  %8409 = getelementptr inbounds %struct.Reg, %struct.Reg* %8408, i32 0, i32 0
  %ECX.i67 = bitcast %union.anon* %8409 to i32*
  %8410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8411 = getelementptr inbounds %struct.GPR, %struct.GPR* %8410, i32 0, i32 15
  %8412 = getelementptr inbounds %struct.Reg, %struct.Reg* %8411, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %8412 to i64*
  %8413 = load i64, i64* %RBP.i68
  %8414 = sub i64 %8413, 60
  %8415 = load i32, i32* %ECX.i67
  %8416 = zext i32 %8415 to i64
  %8417 = load i64, i64* %PC.i66
  %8418 = add i64 %8417, 3
  store i64 %8418, i64* %PC.i66
  %8419 = inttoptr i64 %8414 to i32*
  store i32 %8415, i32* %8419
  store %struct.Memory* %loadMem_41e2fc, %struct.Memory** %MEMORY
  %loadMem_41e2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %8420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8421 = getelementptr inbounds %struct.GPR, %struct.GPR* %8420, i32 0, i32 33
  %8422 = getelementptr inbounds %struct.Reg, %struct.Reg* %8421, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %8422 to i64*
  %8423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8424 = getelementptr inbounds %struct.GPR, %struct.GPR* %8423, i32 0, i32 1
  %8425 = getelementptr inbounds %struct.Reg, %struct.Reg* %8424, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %8425 to i64*
  %8426 = load i64, i64* %PC.i64
  %8427 = add i64 %8426, 8
  store i64 %8427, i64* %PC.i64
  %8428 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %8428, i64* %RAX.i65, align 8
  store %struct.Memory* %loadMem_41e2ff, %struct.Memory** %MEMORY
  %loadMem_41e307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8430 = getelementptr inbounds %struct.GPR, %struct.GPR* %8429, i32 0, i32 33
  %8431 = getelementptr inbounds %struct.Reg, %struct.Reg* %8430, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %8431 to i64*
  %8432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8433 = getelementptr inbounds %struct.GPR, %struct.GPR* %8432, i32 0, i32 7
  %8434 = getelementptr inbounds %struct.Reg, %struct.Reg* %8433, i32 0, i32 0
  %RDX.i62 = bitcast %union.anon* %8434 to i64*
  %8435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8436 = getelementptr inbounds %struct.GPR, %struct.GPR* %8435, i32 0, i32 15
  %8437 = getelementptr inbounds %struct.Reg, %struct.Reg* %8436, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %8437 to i64*
  %8438 = load i64, i64* %RBP.i63
  %8439 = sub i64 %8438, 56
  %8440 = load i64, i64* %PC.i61
  %8441 = add i64 %8440, 4
  store i64 %8441, i64* %PC.i61
  %8442 = inttoptr i64 %8439 to i32*
  %8443 = load i32, i32* %8442
  %8444 = sext i32 %8443 to i64
  store i64 %8444, i64* %RDX.i62, align 8
  store %struct.Memory* %loadMem_41e307, %struct.Memory** %MEMORY
  %loadMem_41e30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8446 = getelementptr inbounds %struct.GPR, %struct.GPR* %8445, i32 0, i32 33
  %8447 = getelementptr inbounds %struct.Reg, %struct.Reg* %8446, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %8447 to i64*
  %8448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8449 = getelementptr inbounds %struct.GPR, %struct.GPR* %8448, i32 0, i32 7
  %8450 = getelementptr inbounds %struct.Reg, %struct.Reg* %8449, i32 0, i32 0
  %RDX.i60 = bitcast %union.anon* %8450 to i64*
  %8451 = load i64, i64* %RDX.i60
  %8452 = load i64, i64* %PC.i59
  %8453 = add i64 %8452, 4
  store i64 %8453, i64* %PC.i59
  %8454 = sext i64 %8451 to i128
  %8455 = and i128 %8454, -18446744073709551616
  %8456 = zext i64 %8451 to i128
  %8457 = or i128 %8455, %8456
  %8458 = mul i128 24, %8457
  %8459 = trunc i128 %8458 to i64
  store i64 %8459, i64* %RDX.i60, align 8
  %8460 = sext i64 %8459 to i128
  %8461 = icmp ne i128 %8460, %8458
  %8462 = zext i1 %8461 to i8
  %8463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8462, i8* %8463, align 1
  %8464 = trunc i128 %8458 to i32
  %8465 = and i32 %8464, 255
  %8466 = call i32 @llvm.ctpop.i32(i32 %8465)
  %8467 = trunc i32 %8466 to i8
  %8468 = and i8 %8467, 1
  %8469 = xor i8 %8468, 1
  %8470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8469, i8* %8470, align 1
  %8471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8471, align 1
  %8472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8472, align 1
  %8473 = lshr i64 %8459, 63
  %8474 = trunc i64 %8473 to i8
  %8475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8474, i8* %8475, align 1
  %8476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8462, i8* %8476, align 1
  store %struct.Memory* %loadMem_41e30b, %struct.Memory** %MEMORY
  %loadMem_41e30f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8478 = getelementptr inbounds %struct.GPR, %struct.GPR* %8477, i32 0, i32 33
  %8479 = getelementptr inbounds %struct.Reg, %struct.Reg* %8478, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %8479 to i64*
  %8480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8481 = getelementptr inbounds %struct.GPR, %struct.GPR* %8480, i32 0, i32 1
  %8482 = getelementptr inbounds %struct.Reg, %struct.Reg* %8481, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %8482 to i64*
  %8483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8484 = getelementptr inbounds %struct.GPR, %struct.GPR* %8483, i32 0, i32 7
  %8485 = getelementptr inbounds %struct.Reg, %struct.Reg* %8484, i32 0, i32 0
  %RDX.i58 = bitcast %union.anon* %8485 to i64*
  %8486 = load i64, i64* %RAX.i57
  %8487 = load i64, i64* %RDX.i58
  %8488 = load i64, i64* %PC.i56
  %8489 = add i64 %8488, 3
  store i64 %8489, i64* %PC.i56
  %8490 = add i64 %8487, %8486
  store i64 %8490, i64* %RAX.i57, align 8
  %8491 = icmp ult i64 %8490, %8486
  %8492 = icmp ult i64 %8490, %8487
  %8493 = or i1 %8491, %8492
  %8494 = zext i1 %8493 to i8
  %8495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8494, i8* %8495, align 1
  %8496 = trunc i64 %8490 to i32
  %8497 = and i32 %8496, 255
  %8498 = call i32 @llvm.ctpop.i32(i32 %8497)
  %8499 = trunc i32 %8498 to i8
  %8500 = and i8 %8499, 1
  %8501 = xor i8 %8500, 1
  %8502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8501, i8* %8502, align 1
  %8503 = xor i64 %8487, %8486
  %8504 = xor i64 %8503, %8490
  %8505 = lshr i64 %8504, 4
  %8506 = trunc i64 %8505 to i8
  %8507 = and i8 %8506, 1
  %8508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8507, i8* %8508, align 1
  %8509 = icmp eq i64 %8490, 0
  %8510 = zext i1 %8509 to i8
  %8511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8510, i8* %8511, align 1
  %8512 = lshr i64 %8490, 63
  %8513 = trunc i64 %8512 to i8
  %8514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8513, i8* %8514, align 1
  %8515 = lshr i64 %8486, 63
  %8516 = lshr i64 %8487, 63
  %8517 = xor i64 %8512, %8515
  %8518 = xor i64 %8512, %8516
  %8519 = add i64 %8517, %8518
  %8520 = icmp eq i64 %8519, 2
  %8521 = zext i1 %8520 to i8
  %8522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8521, i8* %8522, align 1
  store %struct.Memory* %loadMem_41e30f, %struct.Memory** %MEMORY
  %loadMem_41e312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8524 = getelementptr inbounds %struct.GPR, %struct.GPR* %8523, i32 0, i32 33
  %8525 = getelementptr inbounds %struct.Reg, %struct.Reg* %8524, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %8525 to i64*
  %8526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8527 = getelementptr inbounds %struct.GPR, %struct.GPR* %8526, i32 0, i32 1
  %8528 = getelementptr inbounds %struct.Reg, %struct.Reg* %8527, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %8528 to i64*
  %8529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8530 = getelementptr inbounds %struct.GPR, %struct.GPR* %8529, i32 0, i32 5
  %8531 = getelementptr inbounds %struct.Reg, %struct.Reg* %8530, i32 0, i32 0
  %RCX.i55 = bitcast %union.anon* %8531 to i64*
  %8532 = load i64, i64* %RAX.i54
  %8533 = add i64 %8532, 20
  %8534 = load i64, i64* %PC.i53
  %8535 = add i64 %8534, 3
  store i64 %8535, i64* %PC.i53
  %8536 = inttoptr i64 %8533 to i32*
  %8537 = load i32, i32* %8536
  %8538 = zext i32 %8537 to i64
  store i64 %8538, i64* %RCX.i55, align 8
  store %struct.Memory* %loadMem_41e312, %struct.Memory** %MEMORY
  %loadMem_41e315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8540 = getelementptr inbounds %struct.GPR, %struct.GPR* %8539, i32 0, i32 33
  %8541 = getelementptr inbounds %struct.Reg, %struct.Reg* %8540, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %8541 to i64*
  %8542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8543 = getelementptr inbounds %struct.GPR, %struct.GPR* %8542, i32 0, i32 1
  %8544 = getelementptr inbounds %struct.Reg, %struct.Reg* %8543, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %8544 to i64*
  %8545 = load i64, i64* %PC.i51
  %8546 = add i64 %8545, 8
  store i64 %8546, i64* %PC.i51
  %8547 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %8547, i64* %RAX.i52, align 8
  store %struct.Memory* %loadMem_41e315, %struct.Memory** %MEMORY
  %loadMem_41e31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8549 = getelementptr inbounds %struct.GPR, %struct.GPR* %8548, i32 0, i32 33
  %8550 = getelementptr inbounds %struct.Reg, %struct.Reg* %8549, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %8550 to i64*
  %8551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8552 = getelementptr inbounds %struct.GPR, %struct.GPR* %8551, i32 0, i32 9
  %8553 = getelementptr inbounds %struct.Reg, %struct.Reg* %8552, i32 0, i32 0
  %RSI.i49 = bitcast %union.anon* %8553 to i64*
  %8554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8555 = getelementptr inbounds %struct.GPR, %struct.GPR* %8554, i32 0, i32 15
  %8556 = getelementptr inbounds %struct.Reg, %struct.Reg* %8555, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %8556 to i64*
  %8557 = load i64, i64* %RBP.i50
  %8558 = sub i64 %8557, 56
  %8559 = load i64, i64* %PC.i48
  %8560 = add i64 %8559, 3
  store i64 %8560, i64* %PC.i48
  %8561 = inttoptr i64 %8558 to i32*
  %8562 = load i32, i32* %8561
  %8563 = zext i32 %8562 to i64
  store i64 %8563, i64* %RSI.i49, align 8
  store %struct.Memory* %loadMem_41e31d, %struct.Memory** %MEMORY
  %loadMem_41e320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8565 = getelementptr inbounds %struct.GPR, %struct.GPR* %8564, i32 0, i32 33
  %8566 = getelementptr inbounds %struct.Reg, %struct.Reg* %8565, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %8566 to i64*
  %8567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8568 = getelementptr inbounds %struct.GPR, %struct.GPR* %8567, i32 0, i32 9
  %8569 = getelementptr inbounds %struct.Reg, %struct.Reg* %8568, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %8569 to i64*
  %8570 = load i64, i64* %RSI.i
  %8571 = load i64, i64* %PC.i47
  %8572 = add i64 %8571, 3
  store i64 %8572, i64* %PC.i47
  %8573 = trunc i64 %8570 to i32
  %8574 = sub i32 %8573, 1
  %8575 = zext i32 %8574 to i64
  store i64 %8575, i64* %RSI.i, align 8
  %8576 = icmp ult i32 %8573, 1
  %8577 = zext i1 %8576 to i8
  %8578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8577, i8* %8578, align 1
  %8579 = and i32 %8574, 255
  %8580 = call i32 @llvm.ctpop.i32(i32 %8579)
  %8581 = trunc i32 %8580 to i8
  %8582 = and i8 %8581, 1
  %8583 = xor i8 %8582, 1
  %8584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8583, i8* %8584, align 1
  %8585 = xor i64 1, %8570
  %8586 = trunc i64 %8585 to i32
  %8587 = xor i32 %8586, %8574
  %8588 = lshr i32 %8587, 4
  %8589 = trunc i32 %8588 to i8
  %8590 = and i8 %8589, 1
  %8591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8590, i8* %8591, align 1
  %8592 = icmp eq i32 %8574, 0
  %8593 = zext i1 %8592 to i8
  %8594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8593, i8* %8594, align 1
  %8595 = lshr i32 %8574, 31
  %8596 = trunc i32 %8595 to i8
  %8597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8596, i8* %8597, align 1
  %8598 = lshr i32 %8573, 31
  %8599 = xor i32 %8595, %8598
  %8600 = add i32 %8599, %8598
  %8601 = icmp eq i32 %8600, 2
  %8602 = zext i1 %8601 to i8
  %8603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8602, i8* %8603, align 1
  store %struct.Memory* %loadMem_41e320, %struct.Memory** %MEMORY
  %loadMem_41e323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8605 = getelementptr inbounds %struct.GPR, %struct.GPR* %8604, i32 0, i32 33
  %8606 = getelementptr inbounds %struct.Reg, %struct.Reg* %8605, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %8606 to i64*
  %8607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8608 = getelementptr inbounds %struct.GPR, %struct.GPR* %8607, i32 0, i32 9
  %8609 = getelementptr inbounds %struct.Reg, %struct.Reg* %8608, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %8609 to i32*
  %8610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8611 = getelementptr inbounds %struct.GPR, %struct.GPR* %8610, i32 0, i32 7
  %8612 = getelementptr inbounds %struct.Reg, %struct.Reg* %8611, i32 0, i32 0
  %RDX.i46 = bitcast %union.anon* %8612 to i64*
  %8613 = load i32, i32* %ESI.i
  %8614 = zext i32 %8613 to i64
  %8615 = load i64, i64* %PC.i45
  %8616 = add i64 %8615, 3
  store i64 %8616, i64* %PC.i45
  %8617 = shl i64 %8614, 32
  %8618 = ashr exact i64 %8617, 32
  store i64 %8618, i64* %RDX.i46, align 8
  store %struct.Memory* %loadMem_41e323, %struct.Memory** %MEMORY
  %loadMem_41e326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8620 = getelementptr inbounds %struct.GPR, %struct.GPR* %8619, i32 0, i32 33
  %8621 = getelementptr inbounds %struct.Reg, %struct.Reg* %8620, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %8621 to i64*
  %8622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8623 = getelementptr inbounds %struct.GPR, %struct.GPR* %8622, i32 0, i32 7
  %8624 = getelementptr inbounds %struct.Reg, %struct.Reg* %8623, i32 0, i32 0
  %RDX.i44 = bitcast %union.anon* %8624 to i64*
  %8625 = load i64, i64* %RDX.i44
  %8626 = load i64, i64* %PC.i43
  %8627 = add i64 %8626, 4
  store i64 %8627, i64* %PC.i43
  %8628 = sext i64 %8625 to i128
  %8629 = and i128 %8628, -18446744073709551616
  %8630 = zext i64 %8625 to i128
  %8631 = or i128 %8629, %8630
  %8632 = mul i128 24, %8631
  %8633 = trunc i128 %8632 to i64
  store i64 %8633, i64* %RDX.i44, align 8
  %8634 = sext i64 %8633 to i128
  %8635 = icmp ne i128 %8634, %8632
  %8636 = zext i1 %8635 to i8
  %8637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8636, i8* %8637, align 1
  %8638 = trunc i128 %8632 to i32
  %8639 = and i32 %8638, 255
  %8640 = call i32 @llvm.ctpop.i32(i32 %8639)
  %8641 = trunc i32 %8640 to i8
  %8642 = and i8 %8641, 1
  %8643 = xor i8 %8642, 1
  %8644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8643, i8* %8644, align 1
  %8645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8645, align 1
  %8646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8646, align 1
  %8647 = lshr i64 %8633, 63
  %8648 = trunc i64 %8647 to i8
  %8649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8648, i8* %8649, align 1
  %8650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8636, i8* %8650, align 1
  store %struct.Memory* %loadMem_41e326, %struct.Memory** %MEMORY
  %loadMem_41e32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8652 = getelementptr inbounds %struct.GPR, %struct.GPR* %8651, i32 0, i32 33
  %8653 = getelementptr inbounds %struct.Reg, %struct.Reg* %8652, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %8653 to i64*
  %8654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8655 = getelementptr inbounds %struct.GPR, %struct.GPR* %8654, i32 0, i32 1
  %8656 = getelementptr inbounds %struct.Reg, %struct.Reg* %8655, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %8656 to i64*
  %8657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8658 = getelementptr inbounds %struct.GPR, %struct.GPR* %8657, i32 0, i32 7
  %8659 = getelementptr inbounds %struct.Reg, %struct.Reg* %8658, i32 0, i32 0
  %RDX.i42 = bitcast %union.anon* %8659 to i64*
  %8660 = load i64, i64* %RAX.i41
  %8661 = load i64, i64* %RDX.i42
  %8662 = load i64, i64* %PC.i40
  %8663 = add i64 %8662, 3
  store i64 %8663, i64* %PC.i40
  %8664 = add i64 %8661, %8660
  store i64 %8664, i64* %RAX.i41, align 8
  %8665 = icmp ult i64 %8664, %8660
  %8666 = icmp ult i64 %8664, %8661
  %8667 = or i1 %8665, %8666
  %8668 = zext i1 %8667 to i8
  %8669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8668, i8* %8669, align 1
  %8670 = trunc i64 %8664 to i32
  %8671 = and i32 %8670, 255
  %8672 = call i32 @llvm.ctpop.i32(i32 %8671)
  %8673 = trunc i32 %8672 to i8
  %8674 = and i8 %8673, 1
  %8675 = xor i8 %8674, 1
  %8676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8675, i8* %8676, align 1
  %8677 = xor i64 %8661, %8660
  %8678 = xor i64 %8677, %8664
  %8679 = lshr i64 %8678, 4
  %8680 = trunc i64 %8679 to i8
  %8681 = and i8 %8680, 1
  %8682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8681, i8* %8682, align 1
  %8683 = icmp eq i64 %8664, 0
  %8684 = zext i1 %8683 to i8
  %8685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8684, i8* %8685, align 1
  %8686 = lshr i64 %8664, 63
  %8687 = trunc i64 %8686 to i8
  %8688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8687, i8* %8688, align 1
  %8689 = lshr i64 %8660, 63
  %8690 = lshr i64 %8661, 63
  %8691 = xor i64 %8686, %8689
  %8692 = xor i64 %8686, %8690
  %8693 = add i64 %8691, %8692
  %8694 = icmp eq i64 %8693, 2
  %8695 = zext i1 %8694 to i8
  %8696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8695, i8* %8696, align 1
  store %struct.Memory* %loadMem_41e32a, %struct.Memory** %MEMORY
  %loadMem_41e32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8698 = getelementptr inbounds %struct.GPR, %struct.GPR* %8697, i32 0, i32 33
  %8699 = getelementptr inbounds %struct.Reg, %struct.Reg* %8698, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %8699 to i64*
  %8700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8701 = getelementptr inbounds %struct.GPR, %struct.GPR* %8700, i32 0, i32 5
  %8702 = getelementptr inbounds %struct.Reg, %struct.Reg* %8701, i32 0, i32 0
  %ECX.i38 = bitcast %union.anon* %8702 to i32*
  %8703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8704 = getelementptr inbounds %struct.GPR, %struct.GPR* %8703, i32 0, i32 1
  %8705 = getelementptr inbounds %struct.Reg, %struct.Reg* %8704, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %8705 to i64*
  %8706 = load i64, i64* %RAX.i39
  %8707 = add i64 %8706, 20
  %8708 = load i32, i32* %ECX.i38
  %8709 = zext i32 %8708 to i64
  %8710 = load i64, i64* %PC.i37
  %8711 = add i64 %8710, 3
  store i64 %8711, i64* %PC.i37
  %8712 = inttoptr i64 %8707 to i32*
  store i32 %8708, i32* %8712
  store %struct.Memory* %loadMem_41e32d, %struct.Memory** %MEMORY
  %loadMem_41e330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8714 = getelementptr inbounds %struct.GPR, %struct.GPR* %8713, i32 0, i32 33
  %8715 = getelementptr inbounds %struct.Reg, %struct.Reg* %8714, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %8715 to i64*
  %8716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8717 = getelementptr inbounds %struct.GPR, %struct.GPR* %8716, i32 0, i32 5
  %8718 = getelementptr inbounds %struct.Reg, %struct.Reg* %8717, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8718 to i64*
  %8719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8720 = getelementptr inbounds %struct.GPR, %struct.GPR* %8719, i32 0, i32 15
  %8721 = getelementptr inbounds %struct.Reg, %struct.Reg* %8720, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %8721 to i64*
  %8722 = load i64, i64* %RBP.i36
  %8723 = sub i64 %8722, 60
  %8724 = load i64, i64* %PC.i35
  %8725 = add i64 %8724, 3
  store i64 %8725, i64* %PC.i35
  %8726 = inttoptr i64 %8723 to i32*
  %8727 = load i32, i32* %8726
  %8728 = zext i32 %8727 to i64
  store i64 %8728, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_41e330, %struct.Memory** %MEMORY
  %loadMem_41e333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8730 = getelementptr inbounds %struct.GPR, %struct.GPR* %8729, i32 0, i32 33
  %8731 = getelementptr inbounds %struct.Reg, %struct.Reg* %8730, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %8731 to i64*
  %8732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8733 = getelementptr inbounds %struct.GPR, %struct.GPR* %8732, i32 0, i32 1
  %8734 = getelementptr inbounds %struct.Reg, %struct.Reg* %8733, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %8734 to i64*
  %8735 = load i64, i64* %PC.i33
  %8736 = add i64 %8735, 8
  store i64 %8736, i64* %PC.i33
  %8737 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*)
  store i64 %8737, i64* %RAX.i34, align 8
  store %struct.Memory* %loadMem_41e333, %struct.Memory** %MEMORY
  %loadMem_41e33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %8738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8739 = getelementptr inbounds %struct.GPR, %struct.GPR* %8738, i32 0, i32 33
  %8740 = getelementptr inbounds %struct.Reg, %struct.Reg* %8739, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %8740 to i64*
  %8741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8742 = getelementptr inbounds %struct.GPR, %struct.GPR* %8741, i32 0, i32 7
  %8743 = getelementptr inbounds %struct.Reg, %struct.Reg* %8742, i32 0, i32 0
  %RDX.i31 = bitcast %union.anon* %8743 to i64*
  %8744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8745 = getelementptr inbounds %struct.GPR, %struct.GPR* %8744, i32 0, i32 15
  %8746 = getelementptr inbounds %struct.Reg, %struct.Reg* %8745, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %8746 to i64*
  %8747 = load i64, i64* %RBP.i32
  %8748 = sub i64 %8747, 56
  %8749 = load i64, i64* %PC.i30
  %8750 = add i64 %8749, 4
  store i64 %8750, i64* %PC.i30
  %8751 = inttoptr i64 %8748 to i32*
  %8752 = load i32, i32* %8751
  %8753 = sext i32 %8752 to i64
  store i64 %8753, i64* %RDX.i31, align 8
  store %struct.Memory* %loadMem_41e33b, %struct.Memory** %MEMORY
  %loadMem_41e33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8755 = getelementptr inbounds %struct.GPR, %struct.GPR* %8754, i32 0, i32 33
  %8756 = getelementptr inbounds %struct.Reg, %struct.Reg* %8755, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %8756 to i64*
  %8757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8758 = getelementptr inbounds %struct.GPR, %struct.GPR* %8757, i32 0, i32 7
  %8759 = getelementptr inbounds %struct.Reg, %struct.Reg* %8758, i32 0, i32 0
  %RDX.i29 = bitcast %union.anon* %8759 to i64*
  %8760 = load i64, i64* %RDX.i29
  %8761 = load i64, i64* %PC.i28
  %8762 = add i64 %8761, 4
  store i64 %8762, i64* %PC.i28
  %8763 = sext i64 %8760 to i128
  %8764 = and i128 %8763, -18446744073709551616
  %8765 = zext i64 %8760 to i128
  %8766 = or i128 %8764, %8765
  %8767 = mul i128 24, %8766
  %8768 = trunc i128 %8767 to i64
  store i64 %8768, i64* %RDX.i29, align 8
  %8769 = sext i64 %8768 to i128
  %8770 = icmp ne i128 %8769, %8767
  %8771 = zext i1 %8770 to i8
  %8772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8771, i8* %8772, align 1
  %8773 = trunc i128 %8767 to i32
  %8774 = and i32 %8773, 255
  %8775 = call i32 @llvm.ctpop.i32(i32 %8774)
  %8776 = trunc i32 %8775 to i8
  %8777 = and i8 %8776, 1
  %8778 = xor i8 %8777, 1
  %8779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8778, i8* %8779, align 1
  %8780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %8780, align 1
  %8781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %8781, align 1
  %8782 = lshr i64 %8768, 63
  %8783 = trunc i64 %8782 to i8
  %8784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8783, i8* %8784, align 1
  %8785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8771, i8* %8785, align 1
  store %struct.Memory* %loadMem_41e33f, %struct.Memory** %MEMORY
  %loadMem_41e343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8787 = getelementptr inbounds %struct.GPR, %struct.GPR* %8786, i32 0, i32 33
  %8788 = getelementptr inbounds %struct.Reg, %struct.Reg* %8787, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %8788 to i64*
  %8789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8790 = getelementptr inbounds %struct.GPR, %struct.GPR* %8789, i32 0, i32 1
  %8791 = getelementptr inbounds %struct.Reg, %struct.Reg* %8790, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %8791 to i64*
  %8792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8793 = getelementptr inbounds %struct.GPR, %struct.GPR* %8792, i32 0, i32 7
  %8794 = getelementptr inbounds %struct.Reg, %struct.Reg* %8793, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %8794 to i64*
  %8795 = load i64, i64* %RAX.i27
  %8796 = load i64, i64* %RDX.i
  %8797 = load i64, i64* %PC.i26
  %8798 = add i64 %8797, 3
  store i64 %8798, i64* %PC.i26
  %8799 = add i64 %8796, %8795
  store i64 %8799, i64* %RAX.i27, align 8
  %8800 = icmp ult i64 %8799, %8795
  %8801 = icmp ult i64 %8799, %8796
  %8802 = or i1 %8800, %8801
  %8803 = zext i1 %8802 to i8
  %8804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8803, i8* %8804, align 1
  %8805 = trunc i64 %8799 to i32
  %8806 = and i32 %8805, 255
  %8807 = call i32 @llvm.ctpop.i32(i32 %8806)
  %8808 = trunc i32 %8807 to i8
  %8809 = and i8 %8808, 1
  %8810 = xor i8 %8809, 1
  %8811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8810, i8* %8811, align 1
  %8812 = xor i64 %8796, %8795
  %8813 = xor i64 %8812, %8799
  %8814 = lshr i64 %8813, 4
  %8815 = trunc i64 %8814 to i8
  %8816 = and i8 %8815, 1
  %8817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8816, i8* %8817, align 1
  %8818 = icmp eq i64 %8799, 0
  %8819 = zext i1 %8818 to i8
  %8820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8819, i8* %8820, align 1
  %8821 = lshr i64 %8799, 63
  %8822 = trunc i64 %8821 to i8
  %8823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8822, i8* %8823, align 1
  %8824 = lshr i64 %8795, 63
  %8825 = lshr i64 %8796, 63
  %8826 = xor i64 %8821, %8824
  %8827 = xor i64 %8821, %8825
  %8828 = add i64 %8826, %8827
  %8829 = icmp eq i64 %8828, 2
  %8830 = zext i1 %8829 to i8
  %8831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8830, i8* %8831, align 1
  store %struct.Memory* %loadMem_41e343, %struct.Memory** %MEMORY
  %loadMem_41e346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8833 = getelementptr inbounds %struct.GPR, %struct.GPR* %8832, i32 0, i32 33
  %8834 = getelementptr inbounds %struct.Reg, %struct.Reg* %8833, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %8834 to i64*
  %8835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8836 = getelementptr inbounds %struct.GPR, %struct.GPR* %8835, i32 0, i32 5
  %8837 = getelementptr inbounds %struct.Reg, %struct.Reg* %8836, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %8837 to i32*
  %8838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8839 = getelementptr inbounds %struct.GPR, %struct.GPR* %8838, i32 0, i32 1
  %8840 = getelementptr inbounds %struct.Reg, %struct.Reg* %8839, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %8840 to i64*
  %8841 = load i64, i64* %RAX.i25
  %8842 = add i64 %8841, 20
  %8843 = load i32, i32* %ECX.i
  %8844 = zext i32 %8843 to i64
  %8845 = load i64, i64* %PC.i24
  %8846 = add i64 %8845, 3
  store i64 %8846, i64* %PC.i24
  %8847 = inttoptr i64 %8842 to i32*
  store i32 %8843, i32* %8847
  store %struct.Memory* %loadMem_41e346, %struct.Memory** %MEMORY
  br label %block_.L_41e349

block_.L_41e349:                                  ; preds = %block_41e0dd, %block_41e0a6
  %loadMem_41e349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8849 = getelementptr inbounds %struct.GPR, %struct.GPR* %8848, i32 0, i32 33
  %8850 = getelementptr inbounds %struct.Reg, %struct.Reg* %8849, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %8850 to i64*
  %8851 = load i64, i64* %PC.i23
  %8852 = add i64 %8851, 5
  %8853 = load i64, i64* %PC.i23
  %8854 = add i64 %8853, 5
  store i64 %8854, i64* %PC.i23
  %8855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8852, i64* %8855, align 8
  store %struct.Memory* %loadMem_41e349, %struct.Memory** %MEMORY
  br label %block_.L_41e34e

block_.L_41e34e:                                  ; preds = %block_.L_41e349
  %loadMem_41e34e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8857 = getelementptr inbounds %struct.GPR, %struct.GPR* %8856, i32 0, i32 33
  %8858 = getelementptr inbounds %struct.Reg, %struct.Reg* %8857, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %8858 to i64*
  %8859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8860 = getelementptr inbounds %struct.GPR, %struct.GPR* %8859, i32 0, i32 1
  %8861 = getelementptr inbounds %struct.Reg, %struct.Reg* %8860, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %8861 to i64*
  %8862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8863 = getelementptr inbounds %struct.GPR, %struct.GPR* %8862, i32 0, i32 15
  %8864 = getelementptr inbounds %struct.Reg, %struct.Reg* %8863, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %8864 to i64*
  %8865 = load i64, i64* %RBP.i22
  %8866 = sub i64 %8865, 56
  %8867 = load i64, i64* %PC.i20
  %8868 = add i64 %8867, 3
  store i64 %8868, i64* %PC.i20
  %8869 = inttoptr i64 %8866 to i32*
  %8870 = load i32, i32* %8869
  %8871 = zext i32 %8870 to i64
  store i64 %8871, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_41e34e, %struct.Memory** %MEMORY
  %loadMem_41e351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8873 = getelementptr inbounds %struct.GPR, %struct.GPR* %8872, i32 0, i32 33
  %8874 = getelementptr inbounds %struct.Reg, %struct.Reg* %8873, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %8874 to i64*
  %8875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8876 = getelementptr inbounds %struct.GPR, %struct.GPR* %8875, i32 0, i32 1
  %8877 = getelementptr inbounds %struct.Reg, %struct.Reg* %8876, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %8877 to i64*
  %8878 = load i64, i64* %RAX.i19
  %8879 = load i64, i64* %PC.i18
  %8880 = add i64 %8879, 3
  store i64 %8880, i64* %PC.i18
  %8881 = trunc i64 %8878 to i32
  %8882 = add i32 1, %8881
  %8883 = zext i32 %8882 to i64
  store i64 %8883, i64* %RAX.i19, align 8
  %8884 = icmp ult i32 %8882, %8881
  %8885 = icmp ult i32 %8882, 1
  %8886 = or i1 %8884, %8885
  %8887 = zext i1 %8886 to i8
  %8888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8887, i8* %8888, align 1
  %8889 = and i32 %8882, 255
  %8890 = call i32 @llvm.ctpop.i32(i32 %8889)
  %8891 = trunc i32 %8890 to i8
  %8892 = and i8 %8891, 1
  %8893 = xor i8 %8892, 1
  %8894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8893, i8* %8894, align 1
  %8895 = xor i64 1, %8878
  %8896 = trunc i64 %8895 to i32
  %8897 = xor i32 %8896, %8882
  %8898 = lshr i32 %8897, 4
  %8899 = trunc i32 %8898 to i8
  %8900 = and i8 %8899, 1
  %8901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8900, i8* %8901, align 1
  %8902 = icmp eq i32 %8882, 0
  %8903 = zext i1 %8902 to i8
  %8904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8903, i8* %8904, align 1
  %8905 = lshr i32 %8882, 31
  %8906 = trunc i32 %8905 to i8
  %8907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8906, i8* %8907, align 1
  %8908 = lshr i32 %8881, 31
  %8909 = xor i32 %8905, %8908
  %8910 = add i32 %8909, %8905
  %8911 = icmp eq i32 %8910, 2
  %8912 = zext i1 %8911 to i8
  %8913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8912, i8* %8913, align 1
  store %struct.Memory* %loadMem_41e351, %struct.Memory** %MEMORY
  %loadMem_41e354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8915 = getelementptr inbounds %struct.GPR, %struct.GPR* %8914, i32 0, i32 33
  %8916 = getelementptr inbounds %struct.Reg, %struct.Reg* %8915, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %8916 to i64*
  %8917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8918 = getelementptr inbounds %struct.GPR, %struct.GPR* %8917, i32 0, i32 1
  %8919 = getelementptr inbounds %struct.Reg, %struct.Reg* %8918, i32 0, i32 0
  %EAX.i16 = bitcast %union.anon* %8919 to i32*
  %8920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8921 = getelementptr inbounds %struct.GPR, %struct.GPR* %8920, i32 0, i32 15
  %8922 = getelementptr inbounds %struct.Reg, %struct.Reg* %8921, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %8922 to i64*
  %8923 = load i64, i64* %RBP.i17
  %8924 = sub i64 %8923, 56
  %8925 = load i32, i32* %EAX.i16
  %8926 = zext i32 %8925 to i64
  %8927 = load i64, i64* %PC.i15
  %8928 = add i64 %8927, 3
  store i64 %8928, i64* %PC.i15
  %8929 = inttoptr i64 %8924 to i32*
  store i32 %8925, i32* %8929
  store %struct.Memory* %loadMem_41e354, %struct.Memory** %MEMORY
  %loadMem_41e357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8931 = getelementptr inbounds %struct.GPR, %struct.GPR* %8930, i32 0, i32 33
  %8932 = getelementptr inbounds %struct.Reg, %struct.Reg* %8931, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %8932 to i64*
  %8933 = load i64, i64* %PC.i14
  %8934 = add i64 %8933, -701
  %8935 = load i64, i64* %PC.i14
  %8936 = add i64 %8935, 5
  store i64 %8936, i64* %PC.i14
  %8937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8934, i64* %8937, align 8
  store %struct.Memory* %loadMem_41e357, %struct.Memory** %MEMORY
  br label %block_.L_41e09a

block_.L_41e35c:                                  ; preds = %block_.L_41e09a
  %loadMem_41e35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8939 = getelementptr inbounds %struct.GPR, %struct.GPR* %8938, i32 0, i32 33
  %8940 = getelementptr inbounds %struct.Reg, %struct.Reg* %8939, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8940 to i64*
  %8941 = load i64, i64* %PC.i13
  %8942 = add i64 %8941, 5
  %8943 = load i64, i64* %PC.i13
  %8944 = add i64 %8943, 5
  store i64 %8944, i64* %PC.i13
  %8945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8942, i64* %8945, align 8
  store %struct.Memory* %loadMem_41e35c, %struct.Memory** %MEMORY
  br label %block_.L_41e361

block_.L_41e361:                                  ; preds = %block_.L_41e35c
  %loadMem_41e361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8947 = getelementptr inbounds %struct.GPR, %struct.GPR* %8946, i32 0, i32 33
  %8948 = getelementptr inbounds %struct.Reg, %struct.Reg* %8947, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %8948 to i64*
  %8949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8950 = getelementptr inbounds %struct.GPR, %struct.GPR* %8949, i32 0, i32 1
  %8951 = getelementptr inbounds %struct.Reg, %struct.Reg* %8950, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %8951 to i64*
  %8952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8953 = getelementptr inbounds %struct.GPR, %struct.GPR* %8952, i32 0, i32 15
  %8954 = getelementptr inbounds %struct.Reg, %struct.Reg* %8953, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %8954 to i64*
  %8955 = load i64, i64* %RBP.i12
  %8956 = sub i64 %8955, 8
  %8957 = load i64, i64* %PC.i10
  %8958 = add i64 %8957, 3
  store i64 %8958, i64* %PC.i10
  %8959 = inttoptr i64 %8956 to i32*
  %8960 = load i32, i32* %8959
  %8961 = zext i32 %8960 to i64
  store i64 %8961, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_41e361, %struct.Memory** %MEMORY
  %loadMem_41e364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8963 = getelementptr inbounds %struct.GPR, %struct.GPR* %8962, i32 0, i32 33
  %8964 = getelementptr inbounds %struct.Reg, %struct.Reg* %8963, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8964 to i64*
  %8965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8966 = getelementptr inbounds %struct.GPR, %struct.GPR* %8965, i32 0, i32 1
  %8967 = getelementptr inbounds %struct.Reg, %struct.Reg* %8966, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8967 to i64*
  %8968 = load i64, i64* %RAX.i
  %8969 = load i64, i64* %PC.i9
  %8970 = add i64 %8969, 3
  store i64 %8970, i64* %PC.i9
  %8971 = trunc i64 %8968 to i32
  %8972 = add i32 -1, %8971
  %8973 = zext i32 %8972 to i64
  store i64 %8973, i64* %RAX.i, align 8
  %8974 = icmp ult i32 %8972, %8971
  %8975 = icmp ult i32 %8972, -1
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
  %8985 = xor i64 -1, %8968
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
  %9000 = xor i32 %8995, 1
  %9001 = add i32 %8999, %9000
  %9002 = icmp eq i32 %9001, 2
  %9003 = zext i1 %9002 to i8
  %9004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9003, i8* %9004, align 1
  store %struct.Memory* %loadMem_41e364, %struct.Memory** %MEMORY
  %loadMem_41e367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9006 = getelementptr inbounds %struct.GPR, %struct.GPR* %9005, i32 0, i32 33
  %9007 = getelementptr inbounds %struct.Reg, %struct.Reg* %9006, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %9007 to i64*
  %9008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9009 = getelementptr inbounds %struct.GPR, %struct.GPR* %9008, i32 0, i32 1
  %9010 = getelementptr inbounds %struct.Reg, %struct.Reg* %9009, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %9010 to i32*
  %9011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9012 = getelementptr inbounds %struct.GPR, %struct.GPR* %9011, i32 0, i32 15
  %9013 = getelementptr inbounds %struct.Reg, %struct.Reg* %9012, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %9013 to i64*
  %9014 = load i64, i64* %RBP.i8
  %9015 = sub i64 %9014, 8
  %9016 = load i32, i32* %EAX.i
  %9017 = zext i32 %9016 to i64
  %9018 = load i64, i64* %PC.i7
  %9019 = add i64 %9018, 3
  store i64 %9019, i64* %PC.i7
  %9020 = inttoptr i64 %9015 to i32*
  store i32 %9016, i32* %9020
  store %struct.Memory* %loadMem_41e367, %struct.Memory** %MEMORY
  %loadMem_41e36a = load %struct.Memory*, %struct.Memory** %MEMORY
  %9021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9022 = getelementptr inbounds %struct.GPR, %struct.GPR* %9021, i32 0, i32 33
  %9023 = getelementptr inbounds %struct.Reg, %struct.Reg* %9022, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %9023 to i64*
  %9024 = load i64, i64* %PC.i6
  %9025 = add i64 %9024, -737
  %9026 = load i64, i64* %PC.i6
  %9027 = add i64 %9026, 5
  store i64 %9027, i64* %PC.i6
  %9028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9025, i64* %9028, align 8
  store %struct.Memory* %loadMem_41e36a, %struct.Memory** %MEMORY
  br label %block_.L_41e089

block_.L_41e36f:                                  ; preds = %block_.L_41e089
  %loadMem_41e36f = load %struct.Memory*, %struct.Memory** %MEMORY
  %9029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9030 = getelementptr inbounds %struct.GPR, %struct.GPR* %9029, i32 0, i32 33
  %9031 = getelementptr inbounds %struct.Reg, %struct.Reg* %9030, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %9031 to i64*
  %9032 = load i64, i64* %PC.i5
  %9033 = add i64 %9032, 5
  %9034 = load i64, i64* %PC.i5
  %9035 = add i64 %9034, 5
  store i64 %9035, i64* %PC.i5
  %9036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %9033, i64* %9036, align 8
  store %struct.Memory* %loadMem_41e36f, %struct.Memory** %MEMORY
  br label %block_.L_41e374

block_.L_41e374:                                  ; preds = %block_.L_41e36f, %block_.L_41de48
  %loadMem_41e374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9038 = getelementptr inbounds %struct.GPR, %struct.GPR* %9037, i32 0, i32 33
  %9039 = getelementptr inbounds %struct.Reg, %struct.Reg* %9038, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %9039 to i64*
  %9040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9041 = getelementptr inbounds %struct.GPR, %struct.GPR* %9040, i32 0, i32 13
  %9042 = getelementptr inbounds %struct.Reg, %struct.Reg* %9041, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %9042 to i64*
  %9043 = load i64, i64* %RSP.i
  %9044 = load i64, i64* %PC.i4
  %9045 = add i64 %9044, 4
  store i64 %9045, i64* %PC.i4
  %9046 = add i64 80, %9043
  store i64 %9046, i64* %RSP.i, align 8
  %9047 = icmp ult i64 %9046, %9043
  %9048 = icmp ult i64 %9046, 80
  %9049 = or i1 %9047, %9048
  %9050 = zext i1 %9049 to i8
  %9051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9050, i8* %9051, align 1
  %9052 = trunc i64 %9046 to i32
  %9053 = and i32 %9052, 255
  %9054 = call i32 @llvm.ctpop.i32(i32 %9053)
  %9055 = trunc i32 %9054 to i8
  %9056 = and i8 %9055, 1
  %9057 = xor i8 %9056, 1
  %9058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %9057, i8* %9058, align 1
  %9059 = xor i64 80, %9043
  %9060 = xor i64 %9059, %9046
  %9061 = lshr i64 %9060, 4
  %9062 = trunc i64 %9061 to i8
  %9063 = and i8 %9062, 1
  %9064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %9063, i8* %9064, align 1
  %9065 = icmp eq i64 %9046, 0
  %9066 = zext i1 %9065 to i8
  %9067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %9066, i8* %9067, align 1
  %9068 = lshr i64 %9046, 63
  %9069 = trunc i64 %9068 to i8
  %9070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %9069, i8* %9070, align 1
  %9071 = lshr i64 %9043, 63
  %9072 = xor i64 %9068, %9071
  %9073 = add i64 %9072, %9068
  %9074 = icmp eq i64 %9073, 2
  %9075 = zext i1 %9074 to i8
  %9076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %9075, i8* %9076, align 1
  store %struct.Memory* %loadMem_41e374, %struct.Memory** %MEMORY
  %loadMem_41e378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9078 = getelementptr inbounds %struct.GPR, %struct.GPR* %9077, i32 0, i32 33
  %9079 = getelementptr inbounds %struct.Reg, %struct.Reg* %9078, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %9079 to i64*
  %9080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9081 = getelementptr inbounds %struct.GPR, %struct.GPR* %9080, i32 0, i32 15
  %9082 = getelementptr inbounds %struct.Reg, %struct.Reg* %9081, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %9082 to i64*
  %9083 = load i64, i64* %PC.i2
  %9084 = add i64 %9083, 1
  store i64 %9084, i64* %PC.i2
  %9085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9086 = load i64, i64* %9085, align 8
  %9087 = add i64 %9086, 8
  %9088 = inttoptr i64 %9086 to i64*
  %9089 = load i64, i64* %9088
  store i64 %9089, i64* %RBP.i3, align 8
  store i64 %9087, i64* %9085, align 8
  store %struct.Memory* %loadMem_41e378, %struct.Memory** %MEMORY
  %loadMem_41e379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %9090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %9091 = getelementptr inbounds %struct.GPR, %struct.GPR* %9090, i32 0, i32 33
  %9092 = getelementptr inbounds %struct.Reg, %struct.Reg* %9091, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %9092 to i64*
  %9093 = load i64, i64* %PC.i1
  %9094 = add i64 %9093, 1
  store i64 %9094, i64* %PC.i1
  %9095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %9097 = load i64, i64* %9096, align 8
  %9098 = inttoptr i64 %9097 to i64*
  %9099 = load i64, i64* %9098
  store i64 %9099, i64* %9095, align 8
  %9100 = add i64 %9097, 8
  store i64 %9100, i64* %9096, align 8
  store %struct.Memory* %loadMem_41e379, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41e379
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

define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 80
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 80
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
  %23 = xor i64 80, %9
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

define %struct.Memory* @routine_movl_0x4d4__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
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

define %struct.Memory* @routine_cmpl__0x1__0x528__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 1320
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

define %struct.Memory* @routine_jne_.L_41de4d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x4d4__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_41de48(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_41ddc9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %12
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

define %struct.Memory* @routine_movl__edx__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41de35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
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

define %struct.Memory* @routine_movl__0x1__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41de3a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41dd35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41e374(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_41debb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_41de8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
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

define %struct.Memory* @routine_callq_.malloc_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = sub i64 %12, %13
  %17 = icmp ult i64 %12, %13
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 %13, %12
  %28 = xor i64 %27, %16
  %29 = lshr i64 %28, 4
  %30 = trunc i64 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i64 %16, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i64 %16, 63
  %37 = trunc i64 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i64 %12, 63
  %40 = lshr i64 %13, 63
  %41 = xor i64 %40, %39
  %42 = xor i64 %36, %39
  %43 = add i64 %42, %41
  %44 = icmp eq i64 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_41def6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4bf5b7___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bf5b7_type* @G__0x4bf5b7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_41df2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4bf5d5___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4bf5d5_type* @G__0x4bf5d5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_41df8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
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

define %struct.Memory* @routine_jmpq_.L_41df32(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41df8f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
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

define %struct.Memory* @routine_jle_.L_41dffc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rsi__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__edx___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = add i32 %15, %13
  %20 = zext i32 %19 to i64
  store i64 %20, i64* %12, align 8
  %21 = icmp ult i32 %19, %13
  %22 = icmp ult i32 %19, %15
  %23 = or i1 %21, %22
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %19, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i64 %16, %14
  %33 = trunc i64 %32 to i32
  %34 = xor i32 %33, %19
  %35 = lshr i32 %34, 4
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %37, i8* %38, align 1
  %39 = icmp eq i32 %19, 0
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %19, 31
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %13, 31
  %46 = lshr i32 %15, 31
  %47 = xor i32 %42, %45
  %48 = xor i32 %42, %46
  %49 = add i32 %47, %48
  %50 = icmp eq i32 %49, 2
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %51, i8* %52, align 1
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
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

define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d____rsi__rdi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R8D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
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

define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -1
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
  %26 = xor i64 -1, %9
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
  %41 = xor i32 %36, 1
  %42 = add i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
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

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
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

define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____rdi__r8_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = load i32, i32* %ECX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl___rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = sub i32 %12, %18
  %20 = icmp ult i32 %12, %18
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %19, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i32 %18, %12
  %30 = xor i32 %29, %19
  %31 = lshr i32 %30, 4
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %33, i8* %34, align 1
  %35 = icmp eq i32 %19, 0
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %19, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %12, 31
  %42 = lshr i32 %18, 31
  %43 = xor i32 %42, %41
  %44 = xor i32 %38, %41
  %45 = add i32 %44, %43
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %47, i8* %48, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_41e078(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull___rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = shl i64 %12, 32
  %19 = ashr exact i64 %18, 32
  %20 = sext i32 %17 to i64
  %21 = mul i64 %20, %19
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

define %struct.Memory* @routine_callq_.gop_pyramid(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41e030(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_41e36f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 8
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

define %struct.Memory* @routine_jge_.L_41e35c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x10__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
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

define %struct.Memory* @routine_jle_.L_41e349(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__ecx__0x14__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 20
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41e34e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41e09a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41e361(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -1
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
  %26 = xor i64 -1, %9
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
  %41 = xor i32 %36, 1
  %42 = add i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41e089(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 80, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 80
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
  %25 = xor i64 80, %9
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
