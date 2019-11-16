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
%G_0x70ea90_type = type <{ [8 x i8] }>
%G_0x70eaa8_type = type <{ [4 x i8] }>
%G__0x4c1b0f_type = type <{ [8 x i8] }>
%G__0x4c1b49_type = type <{ [8 x i8] }>
%G__0x4c1b8c_type = type <{ [8 x i8] }>
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
@G_0x70ea90 = global %G_0x70ea90_type zeroinitializer
@G_0x70eaa8 = global %G_0x70eaa8_type zeroinitializer
@G__0x4c1b0f = global %G__0x4c1b0f_type zeroinitializer
@G__0x4c1b49 = global %G__0x4c1b49_type zeroinitializer
@G__0x4c1b8c = global %G__0x4c1b8c_type zeroinitializer

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
define %struct.Memory* @mark_pic_long_term(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_454400 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_454400, %struct.Memory** %MEMORY
  %loadMem_454401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i8 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i8
  %27 = load i64, i64* %PC.i7
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i7
  store i64 %26, i64* %RBP.i9, align 8
  store %struct.Memory* %loadMem_454401, %struct.Memory** %MEMORY
  %loadMem_454404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i177 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i177
  %36 = load i64, i64* %PC.i176
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i176
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i177, align 8
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
  store %struct.Memory* %loadMem_454404, %struct.Memory** %MEMORY
  %loadMem_454408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i431 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i432
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i431
  %79 = load i64, i64* %PC.i430
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i430
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_454408, %struct.Memory** %MEMORY
  %loadMem_45440c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %ESI.i553 = bitcast %union.anon* %87 to i32*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i554
  %92 = sub i64 %91, 12
  %93 = load i32, i32* %ESI.i553
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %PC.i552
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC.i552
  %97 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %97
  store %struct.Memory* %loadMem_45440c, %struct.Memory** %MEMORY
  %loadMem_45440f = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %EDX.i811 = bitcast %union.anon* %103 to i32*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i812 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i812
  %108 = sub i64 %107, 16
  %109 = load i32, i32* %EDX.i811
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC.i810
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC.i810
  %113 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %113
  store %struct.Memory* %loadMem_45440f, %struct.Memory** %MEMORY
  %loadMem_454412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 11
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RDI.i808 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i809
  %124 = sub i64 %123, 8
  %125 = load i64, i64* %PC.i807
  %126 = add i64 %125, 4
  store i64 %126, i64* %PC.i807
  %127 = inttoptr i64 %124 to i64*
  %128 = load i64, i64* %127
  store i64 %128, i64* %RDI.i808, align 8
  store %struct.Memory* %loadMem_454412, %struct.Memory** %MEMORY
  %loadMem_454416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 11
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RDI.i806 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %RDI.i806
  %136 = load i64, i64* %PC.i805
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC.i805
  %138 = inttoptr i64 %135 to i32*
  %139 = load i32, i32* %138
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %140, align 1
  %141 = and i32 %139, 255
  %142 = call i32 @llvm.ctpop.i32(i32 %141)
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %145, i8* %146, align 1
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %147, align 1
  %148 = icmp eq i32 %139, 0
  %149 = zext i1 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %149, i8* %150, align 1
  %151 = lshr i32 %139, 31
  %152 = trunc i32 %151 to i8
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %152, i8* %153, align 1
  %154 = lshr i32 %139, 31
  %155 = xor i32 %151, %154
  %156 = add i32 %155, %154
  %157 = icmp eq i32 %156, 2
  %158 = zext i1 %157 to i8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %158, i8* %159, align 1
  store %struct.Memory* %loadMem_454416, %struct.Memory** %MEMORY
  %loadMem_454419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 33
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %162 to i64*
  %163 = load i64, i64* %PC.i804
  %164 = add i64 %163, 485
  %165 = load i64, i64* %PC.i804
  %166 = add i64 %165, 6
  %167 = load i64, i64* %PC.i804
  %168 = add i64 %167, 6
  store i64 %168, i64* %PC.i804
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %170 = load i8, i8* %169, align 1
  %171 = icmp eq i8 %170, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %BRANCH_TAKEN, align 1
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %174 = select i1 %171, i64 %164, i64 %166
  store i64 %174, i64* %173, align 8
  store %struct.Memory* %loadMem_454419, %struct.Memory** %MEMORY
  %loadBr_454419 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454419 = icmp eq i8 %loadBr_454419, 1
  br i1 %cmpBr_454419, label %block_.L_4545fe, label %block_45441f

block_45441f:                                     ; preds = %entry
  %loadMem_45441f = load %struct.Memory*, %struct.Memory** %MEMORY
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 33
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 15
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %RBP.i803 = bitcast %union.anon* %180 to i64*
  %181 = load i64, i64* %RBP.i803
  %182 = sub i64 %181, 20
  %183 = load i64, i64* %PC.i802
  %184 = add i64 %183, 7
  store i64 %184, i64* %PC.i802
  %185 = inttoptr i64 %182 to i32*
  store i32 0, i32* %185
  store %struct.Memory* %loadMem_45441f, %struct.Memory** %MEMORY
  br label %block_.L_454426

block_.L_454426:                                  ; preds = %block_.L_4545d7, %block_45441f
  %loadMem_454426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 33
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RAX.i800 = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 15
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %194 to i64*
  %195 = load i64, i64* %RBP.i801
  %196 = sub i64 %195, 20
  %197 = load i64, i64* %PC.i799
  %198 = add i64 %197, 3
  store i64 %198, i64* %PC.i799
  %199 = inttoptr i64 %196 to i32*
  %200 = load i32, i32* %199
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RAX.i800, align 8
  store %struct.Memory* %loadMem_454426, %struct.Memory** %MEMORY
  %loadMem_454429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 33
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %EAX.i798 = bitcast %union.anon* %207 to i32*
  %208 = load i32, i32* %EAX.i798
  %209 = zext i32 %208 to i64
  %210 = load i64, i64* %PC.i797
  %211 = add i64 %210, 7
  store i64 %211, i64* %PC.i797
  %212 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*)
  %213 = sub i32 %208, %212
  %214 = icmp ult i32 %208, %212
  %215 = zext i1 %214 to i8
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %215, i8* %216, align 1
  %217 = and i32 %213, 255
  %218 = call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %221, i8* %222, align 1
  %223 = xor i32 %212, %208
  %224 = xor i32 %223, %213
  %225 = lshr i32 %224, 4
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %227, i8* %228, align 1
  %229 = icmp eq i32 %213, 0
  %230 = zext i1 %229 to i8
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %230, i8* %231, align 1
  %232 = lshr i32 %213, 31
  %233 = trunc i32 %232 to i8
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %233, i8* %234, align 1
  %235 = lshr i32 %208, 31
  %236 = lshr i32 %212, 31
  %237 = xor i32 %236, %235
  %238 = xor i32 %232, %235
  %239 = add i32 %238, %237
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i8
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %241, i8* %242, align 1
  store %struct.Memory* %loadMem_454429, %struct.Memory** %MEMORY
  %loadMem_454430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 33
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %245 to i64*
  %246 = load i64, i64* %PC.i796
  %247 = add i64 %246, 437
  %248 = load i64, i64* %PC.i796
  %249 = add i64 %248, 6
  %250 = load i64, i64* %PC.i796
  %251 = add i64 %250, 6
  store i64 %251, i64* %PC.i796
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %253 = load i8, i8* %252, align 1
  %254 = icmp eq i8 %253, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %BRANCH_TAKEN, align 1
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %257 = select i1 %254, i64 %247, i64 %249
  store i64 %257, i64* %256, align 8
  store %struct.Memory* %loadMem_454430, %struct.Memory** %MEMORY
  %loadBr_454430 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454430 = icmp eq i8 %loadBr_454430, 1
  br i1 %cmpBr_454430, label %block_.L_4545e5, label %block_454436

block_454436:                                     ; preds = %block_.L_454426
  %loadMem_454436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RAX.i795 = bitcast %union.anon* %263 to i64*
  %264 = load i64, i64* %PC.i794
  %265 = add i64 %264, 8
  store i64 %265, i64* %PC.i794
  %266 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %266, i64* %RAX.i795, align 8
  store %struct.Memory* %loadMem_454436, %struct.Memory** %MEMORY
  %loadMem_45443e = load %struct.Memory*, %struct.Memory** %MEMORY
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 33
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %269 to i64*
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %RCX.i792 = bitcast %union.anon* %272 to i64*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 15
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %RBP.i793 = bitcast %union.anon* %275 to i64*
  %276 = load i64, i64* %RBP.i793
  %277 = sub i64 %276, 20
  %278 = load i64, i64* %PC.i791
  %279 = add i64 %278, 3
  store i64 %279, i64* %PC.i791
  %280 = inttoptr i64 %277 to i32*
  %281 = load i32, i32* %280
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RCX.i792, align 8
  store %struct.Memory* %loadMem_45443e, %struct.Memory** %MEMORY
  %loadMem_454441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %285 to i64*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 5
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %ECX.i789 = bitcast %union.anon* %288 to i32*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 7
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %RDX.i790 = bitcast %union.anon* %291 to i64*
  %292 = load i32, i32* %ECX.i789
  %293 = zext i32 %292 to i64
  %294 = load i64, i64* %PC.i788
  %295 = add i64 %294, 2
  store i64 %295, i64* %PC.i788
  %296 = and i64 %293, 4294967295
  store i64 %296, i64* %RDX.i790, align 8
  store %struct.Memory* %loadMem_454441, %struct.Memory** %MEMORY
  %loadMem_454443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RAX.i786 = bitcast %union.anon* %302 to i64*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 7
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %RDX.i787 = bitcast %union.anon* %305 to i64*
  %306 = load i64, i64* %RAX.i786
  %307 = load i64, i64* %RDX.i787
  %308 = mul i64 %307, 8
  %309 = add i64 %308, %306
  %310 = load i64, i64* %PC.i785
  %311 = add i64 %310, 4
  store i64 %311, i64* %PC.i785
  %312 = inttoptr i64 %309 to i64*
  %313 = load i64, i64* %312
  store i64 %313, i64* %RAX.i786, align 8
  store %struct.Memory* %loadMem_454443, %struct.Memory** %MEMORY
  %loadMem_454447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 33
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %316 to i64*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %RAX.i784 = bitcast %union.anon* %319 to i64*
  %320 = load i64, i64* %RAX.i784
  %321 = add i64 %320, 4
  %322 = load i64, i64* %PC.i783
  %323 = add i64 %322, 4
  store i64 %323, i64* %PC.i783
  %324 = inttoptr i64 %321 to i32*
  %325 = load i32, i32* %324
  %326 = sub i32 %325, 3
  %327 = icmp ult i32 %325, 3
  %328 = zext i1 %327 to i8
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %328, i8* %329, align 1
  %330 = and i32 %326, 255
  %331 = call i32 @llvm.ctpop.i32(i32 %330)
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %334, i8* %335, align 1
  %336 = xor i32 %325, 3
  %337 = xor i32 %336, %326
  %338 = lshr i32 %337, 4
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %340, i8* %341, align 1
  %342 = icmp eq i32 %326, 0
  %343 = zext i1 %342 to i8
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %343, i8* %344, align 1
  %345 = lshr i32 %326, 31
  %346 = trunc i32 %345 to i8
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %346, i8* %347, align 1
  %348 = lshr i32 %325, 31
  %349 = xor i32 %345, %348
  %350 = add i32 %349, %348
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %352, i8* %353, align 1
  store %struct.Memory* %loadMem_454447, %struct.Memory** %MEMORY
  %loadMem_45444b = load %struct.Memory*, %struct.Memory** %MEMORY
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 33
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %356 to i64*
  %357 = load i64, i64* %PC.i782
  %358 = add i64 %357, 391
  %359 = load i64, i64* %PC.i782
  %360 = add i64 %359, 6
  %361 = load i64, i64* %PC.i782
  %362 = add i64 %361, 6
  store i64 %362, i64* %PC.i782
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %364 = load i8, i8* %363, align 1
  %365 = icmp eq i8 %364, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %BRANCH_TAKEN, align 1
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %368 = select i1 %365, i64 %358, i64 %360
  store i64 %368, i64* %367, align 8
  store %struct.Memory* %loadMem_45444b, %struct.Memory** %MEMORY
  %loadBr_45444b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45444b = icmp eq i8 %loadBr_45444b, 1
  br i1 %cmpBr_45444b, label %block_.L_4545d2, label %block_454451

block_454451:                                     ; preds = %block_454436
  %loadMem_454451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 33
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %RAX.i781 = bitcast %union.anon* %374 to i64*
  %375 = load i64, i64* %PC.i780
  %376 = add i64 %375, 8
  store i64 %376, i64* %PC.i780
  %377 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %377, i64* %RAX.i781, align 8
  store %struct.Memory* %loadMem_454451, %struct.Memory** %MEMORY
  %loadMem_454459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 5
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RCX.i778 = bitcast %union.anon* %383 to i64*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 15
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %386 to i64*
  %387 = load i64, i64* %RBP.i779
  %388 = sub i64 %387, 20
  %389 = load i64, i64* %PC.i777
  %390 = add i64 %389, 3
  store i64 %390, i64* %PC.i777
  %391 = inttoptr i64 %388 to i32*
  %392 = load i32, i32* %391
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RCX.i778, align 8
  store %struct.Memory* %loadMem_454459, %struct.Memory** %MEMORY
  %loadMem_45445c = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 5
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %ECX.i775 = bitcast %union.anon* %399 to i32*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 7
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RDX.i776 = bitcast %union.anon* %402 to i64*
  %403 = load i32, i32* %ECX.i775
  %404 = zext i32 %403 to i64
  %405 = load i64, i64* %PC.i774
  %406 = add i64 %405, 2
  store i64 %406, i64* %PC.i774
  %407 = and i64 %404, 4294967295
  store i64 %407, i64* %RDX.i776, align 8
  store %struct.Memory* %loadMem_45445c, %struct.Memory** %MEMORY
  %loadMem_45445e = load %struct.Memory*, %struct.Memory** %MEMORY
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 33
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %410 to i64*
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %RAX.i772 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 7
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RDX.i773 = bitcast %union.anon* %416 to i64*
  %417 = load i64, i64* %RAX.i772
  %418 = load i64, i64* %RDX.i773
  %419 = mul i64 %418, 8
  %420 = add i64 %419, %417
  %421 = load i64, i64* %PC.i771
  %422 = add i64 %421, 4
  store i64 %422, i64* %PC.i771
  %423 = inttoptr i64 %420 to i64*
  %424 = load i64, i64* %423
  store i64 %424, i64* %RAX.i772, align 8
  store %struct.Memory* %loadMem_45445e, %struct.Memory** %MEMORY
  %loadMem_454462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 33
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RAX.i770 = bitcast %union.anon* %430 to i64*
  %431 = load i64, i64* %RAX.i770
  %432 = add i64 %431, 40
  %433 = load i64, i64* %PC.i769
  %434 = add i64 %433, 4
  store i64 %434, i64* %PC.i769
  %435 = inttoptr i64 %432 to i64*
  %436 = load i64, i64* %435
  store i64 %436, i64* %RAX.i770, align 8
  store %struct.Memory* %loadMem_454462, %struct.Memory** %MEMORY
  %loadMem_454466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 33
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %439 to i64*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RAX.i768 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %RAX.i768
  %444 = add i64 %443, 6376
  %445 = load i64, i64* %PC.i767
  %446 = add i64 %445, 7
  store i64 %446, i64* %PC.i767
  %447 = inttoptr i64 %444 to i32*
  %448 = load i32, i32* %447
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %449, align 1
  %450 = and i32 %448, 255
  %451 = call i32 @llvm.ctpop.i32(i32 %450)
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %454, i8* %455, align 1
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %456, align 1
  %457 = icmp eq i32 %448, 0
  %458 = zext i1 %457 to i8
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %458, i8* %459, align 1
  %460 = lshr i32 %448, 31
  %461 = trunc i32 %460 to i8
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %461, i8* %462, align 1
  %463 = lshr i32 %448, 31
  %464 = xor i32 %460, %463
  %465 = add i32 %464, %463
  %466 = icmp eq i32 %465, 2
  %467 = zext i1 %466 to i8
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %467, i8* %468, align 1
  store %struct.Memory* %loadMem_454466, %struct.Memory** %MEMORY
  %loadMem_45446d = load %struct.Memory*, %struct.Memory** %MEMORY
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 33
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %471 to i64*
  %472 = load i64, i64* %PC.i766
  %473 = add i64 %472, 352
  %474 = load i64, i64* %PC.i766
  %475 = add i64 %474, 6
  %476 = load i64, i64* %PC.i766
  %477 = add i64 %476, 6
  store i64 %477, i64* %PC.i766
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %479 = load i8, i8* %478, align 1
  %480 = icmp eq i8 %479, 0
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %BRANCH_TAKEN, align 1
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %483 = select i1 %480, i64 %473, i64 %475
  store i64 %483, i64* %482, align 8
  store %struct.Memory* %loadMem_45446d, %struct.Memory** %MEMORY
  %loadBr_45446d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45446d = icmp eq i8 %loadBr_45446d, 1
  br i1 %cmpBr_45446d, label %block_.L_4545cd, label %block_454473

block_454473:                                     ; preds = %block_454451
  %loadMem_454473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 33
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %486 to i64*
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 1
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %RAX.i765 = bitcast %union.anon* %489 to i64*
  %490 = load i64, i64* %PC.i764
  %491 = add i64 %490, 8
  store i64 %491, i64* %PC.i764
  %492 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %492, i64* %RAX.i765, align 8
  store %struct.Memory* %loadMem_454473, %struct.Memory** %MEMORY
  %loadMem_45447b = load %struct.Memory*, %struct.Memory** %MEMORY
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 33
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %495 to i64*
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %497 = getelementptr inbounds %struct.GPR, %struct.GPR* %496, i32 0, i32 5
  %498 = getelementptr inbounds %struct.Reg, %struct.Reg* %497, i32 0, i32 0
  %RCX.i762 = bitcast %union.anon* %498 to i64*
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 15
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %501 to i64*
  %502 = load i64, i64* %RBP.i763
  %503 = sub i64 %502, 20
  %504 = load i64, i64* %PC.i761
  %505 = add i64 %504, 3
  store i64 %505, i64* %PC.i761
  %506 = inttoptr i64 %503 to i32*
  %507 = load i32, i32* %506
  %508 = zext i32 %507 to i64
  store i64 %508, i64* %RCX.i762, align 8
  store %struct.Memory* %loadMem_45447b, %struct.Memory** %MEMORY
  %loadMem_45447e = load %struct.Memory*, %struct.Memory** %MEMORY
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 33
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %511 to i64*
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %513 = getelementptr inbounds %struct.GPR, %struct.GPR* %512, i32 0, i32 5
  %514 = getelementptr inbounds %struct.Reg, %struct.Reg* %513, i32 0, i32 0
  %ECX.i759 = bitcast %union.anon* %514 to i32*
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 7
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %RDX.i760 = bitcast %union.anon* %517 to i64*
  %518 = load i32, i32* %ECX.i759
  %519 = zext i32 %518 to i64
  %520 = load i64, i64* %PC.i758
  %521 = add i64 %520, 2
  store i64 %521, i64* %PC.i758
  %522 = and i64 %519, 4294967295
  store i64 %522, i64* %RDX.i760, align 8
  store %struct.Memory* %loadMem_45447e, %struct.Memory** %MEMORY
  %loadMem_454480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 33
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %525 to i64*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %RAX.i756 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 7
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %RDX.i757 = bitcast %union.anon* %531 to i64*
  %532 = load i64, i64* %RAX.i756
  %533 = load i64, i64* %RDX.i757
  %534 = mul i64 %533, 8
  %535 = add i64 %534, %532
  %536 = load i64, i64* %PC.i755
  %537 = add i64 %536, 4
  store i64 %537, i64* %PC.i755
  %538 = inttoptr i64 %535 to i64*
  %539 = load i64, i64* %538
  store i64 %539, i64* %RAX.i756, align 8
  store %struct.Memory* %loadMem_454480, %struct.Memory** %MEMORY
  %loadMem_454484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 33
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 1
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RAX.i754 = bitcast %union.anon* %545 to i64*
  %546 = load i64, i64* %RAX.i754
  %547 = add i64 %546, 40
  %548 = load i64, i64* %PC.i753
  %549 = add i64 %548, 4
  store i64 %549, i64* %PC.i753
  %550 = inttoptr i64 %547 to i64*
  %551 = load i64, i64* %550
  store i64 %551, i64* %RAX.i754, align 8
  store %struct.Memory* %loadMem_454484, %struct.Memory** %MEMORY
  %loadMem_454488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 33
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 1
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %RAX.i751 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 5
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RCX.i752 = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %RAX.i751
  %562 = add i64 %561, 6364
  %563 = load i64, i64* %PC.i750
  %564 = add i64 %563, 6
  store i64 %564, i64* %PC.i750
  %565 = inttoptr i64 %562 to i32*
  %566 = load i32, i32* %565
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RCX.i752, align 8
  store %struct.Memory* %loadMem_454488, %struct.Memory** %MEMORY
  %loadMem_45448e = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 5
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %ECX.i748 = bitcast %union.anon* %573 to i32*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 15
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RBP.i749 = bitcast %union.anon* %576 to i64*
  %577 = load i32, i32* %ECX.i748
  %578 = zext i32 %577 to i64
  %579 = load i64, i64* %RBP.i749
  %580 = sub i64 %579, 16
  %581 = load i64, i64* %PC.i747
  %582 = add i64 %581, 3
  store i64 %582, i64* %PC.i747
  %583 = inttoptr i64 %580 to i32*
  %584 = load i32, i32* %583
  %585 = sub i32 %577, %584
  %586 = icmp ult i32 %577, %584
  %587 = zext i1 %586 to i8
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %587, i8* %588, align 1
  %589 = and i32 %585, 255
  %590 = call i32 @llvm.ctpop.i32(i32 %589)
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %593, i8* %594, align 1
  %595 = xor i32 %584, %577
  %596 = xor i32 %595, %585
  %597 = lshr i32 %596, 4
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %599, i8* %600, align 1
  %601 = icmp eq i32 %585, 0
  %602 = zext i1 %601 to i8
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %602, i8* %603, align 1
  %604 = lshr i32 %585, 31
  %605 = trunc i32 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %605, i8* %606, align 1
  %607 = lshr i32 %577, 31
  %608 = lshr i32 %584, 31
  %609 = xor i32 %608, %607
  %610 = xor i32 %604, %607
  %611 = add i32 %610, %609
  %612 = icmp eq i32 %611, 2
  %613 = zext i1 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %613, i8* %614, align 1
  store %struct.Memory* %loadMem_45448e, %struct.Memory** %MEMORY
  %loadMem_454491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 33
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %PC.i746
  %619 = add i64 %618, 316
  %620 = load i64, i64* %PC.i746
  %621 = add i64 %620, 6
  %622 = load i64, i64* %PC.i746
  %623 = add i64 %622, 6
  store i64 %623, i64* %PC.i746
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %625 = load i8, i8* %624, align 1
  %626 = icmp eq i8 %625, 0
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %BRANCH_TAKEN, align 1
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %629 = select i1 %626, i64 %619, i64 %621
  store i64 %629, i64* %628, align 8
  store %struct.Memory* %loadMem_454491, %struct.Memory** %MEMORY
  %loadBr_454491 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454491 = icmp eq i8 %loadBr_454491, 1
  br i1 %cmpBr_454491, label %block_.L_4545cd, label %block_454497

block_454497:                                     ; preds = %block_454473
  %loadMem_454497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 33
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 1
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %RAX.i744 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 15
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %638 to i64*
  %639 = load i64, i64* %RBP.i745
  %640 = sub i64 %639, 12
  %641 = load i64, i64* %PC.i743
  %642 = add i64 %641, 3
  store i64 %642, i64* %PC.i743
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RAX.i744, align 8
  store %struct.Memory* %loadMem_454497, %struct.Memory** %MEMORY
  %loadMem_45449a = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 5
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RCX.i742 = bitcast %union.anon* %651 to i64*
  %652 = load i64, i64* %PC.i741
  %653 = add i64 %652, 8
  store i64 %653, i64* %PC.i741
  %654 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %654, i64* %RCX.i742, align 8
  store %struct.Memory* %loadMem_45449a, %struct.Memory** %MEMORY
  %loadMem_4544a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 7
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RDX.i739 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 15
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RBP.i740 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %RBP.i740
  %665 = sub i64 %664, 20
  %666 = load i64, i64* %PC.i738
  %667 = add i64 %666, 3
  store i64 %667, i64* %PC.i738
  %668 = inttoptr i64 %665 to i32*
  %669 = load i32, i32* %668
  %670 = zext i32 %669 to i64
  store i64 %670, i64* %RDX.i739, align 8
  store %struct.Memory* %loadMem_4544a2, %struct.Memory** %MEMORY
  %loadMem_4544a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 33
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 7
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %EDX.i736 = bitcast %union.anon* %676 to i32*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 9
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RSI.i737 = bitcast %union.anon* %679 to i64*
  %680 = load i32, i32* %EDX.i736
  %681 = zext i32 %680 to i64
  %682 = load i64, i64* %PC.i735
  %683 = add i64 %682, 2
  store i64 %683, i64* %PC.i735
  %684 = and i64 %681, 4294967295
  store i64 %684, i64* %RSI.i737, align 8
  store %struct.Memory* %loadMem_4544a5, %struct.Memory** %MEMORY
  %loadMem_4544a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 33
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %687 to i64*
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 5
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %RCX.i733 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 9
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RSI.i734 = bitcast %union.anon* %693 to i64*
  %694 = load i64, i64* %RCX.i733
  %695 = load i64, i64* %RSI.i734
  %696 = mul i64 %695, 8
  %697 = add i64 %696, %694
  %698 = load i64, i64* %PC.i732
  %699 = add i64 %698, 4
  store i64 %699, i64* %PC.i732
  %700 = inttoptr i64 %697 to i64*
  %701 = load i64, i64* %700
  store i64 %701, i64* %RCX.i733, align 8
  store %struct.Memory* %loadMem_4544a7, %struct.Memory** %MEMORY
  %loadMem_4544ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 33
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %704 to i64*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 5
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %RCX.i731 = bitcast %union.anon* %707 to i64*
  %708 = load i64, i64* %RCX.i731
  %709 = add i64 %708, 56
  %710 = load i64, i64* %PC.i730
  %711 = add i64 %710, 4
  store i64 %711, i64* %PC.i730
  %712 = inttoptr i64 %709 to i64*
  %713 = load i64, i64* %712
  store i64 %713, i64* %RCX.i731, align 8
  store %struct.Memory* %loadMem_4544ab, %struct.Memory** %MEMORY
  %loadMem_4544af = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 1
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %EAX.i728 = bitcast %union.anon* %719 to i32*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 5
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %RCX.i729 = bitcast %union.anon* %722 to i64*
  %723 = load i64, i64* %RCX.i729
  %724 = add i64 %723, 6372
  %725 = load i32, i32* %EAX.i728
  %726 = zext i32 %725 to i64
  %727 = load i64, i64* %PC.i727
  %728 = add i64 %727, 6
  store i64 %728, i64* %PC.i727
  %729 = inttoptr i64 %724 to i32*
  store i32 %725, i32* %729
  store %struct.Memory* %loadMem_4544af, %struct.Memory** %MEMORY
  %loadMem_4544b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 33
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %732 to i64*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 5
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %RCX.i726 = bitcast %union.anon* %735 to i64*
  %736 = load i64, i64* %PC.i725
  %737 = add i64 %736, 8
  store i64 %737, i64* %PC.i725
  %738 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %738, i64* %RCX.i726, align 8
  store %struct.Memory* %loadMem_4544b5, %struct.Memory** %MEMORY
  %loadMem_4544bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 33
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 7
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RDX.i723 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 15
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %747 to i64*
  %748 = load i64, i64* %RBP.i724
  %749 = sub i64 %748, 20
  %750 = load i64, i64* %PC.i722
  %751 = add i64 %750, 3
  store i64 %751, i64* %PC.i722
  %752 = inttoptr i64 %749 to i32*
  %753 = load i32, i32* %752
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RDX.i723, align 8
  store %struct.Memory* %loadMem_4544bd, %struct.Memory** %MEMORY
  %loadMem_4544c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 33
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 7
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %EDX.i720 = bitcast %union.anon* %760 to i32*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 9
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RSI.i721 = bitcast %union.anon* %763 to i64*
  %764 = load i32, i32* %EDX.i720
  %765 = zext i32 %764 to i64
  %766 = load i64, i64* %PC.i719
  %767 = add i64 %766, 2
  store i64 %767, i64* %PC.i719
  %768 = and i64 %765, 4294967295
  store i64 %768, i64* %RSI.i721, align 8
  store %struct.Memory* %loadMem_4544c0, %struct.Memory** %MEMORY
  %loadMem_4544c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 5
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %RCX.i717 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 9
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %RSI.i718 = bitcast %union.anon* %777 to i64*
  %778 = load i64, i64* %RCX.i717
  %779 = load i64, i64* %RSI.i718
  %780 = mul i64 %779, 8
  %781 = add i64 %780, %778
  %782 = load i64, i64* %PC.i716
  %783 = add i64 %782, 4
  store i64 %783, i64* %PC.i716
  %784 = inttoptr i64 %781 to i64*
  %785 = load i64, i64* %784
  store i64 %785, i64* %RCX.i717, align 8
  store %struct.Memory* %loadMem_4544c2, %struct.Memory** %MEMORY
  %loadMem_4544c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 33
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %788 to i64*
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %790 = getelementptr inbounds %struct.GPR, %struct.GPR* %789, i32 0, i32 5
  %791 = getelementptr inbounds %struct.Reg, %struct.Reg* %790, i32 0, i32 0
  %RCX.i715 = bitcast %union.anon* %791 to i64*
  %792 = load i64, i64* %RCX.i715
  %793 = add i64 %792, 48
  %794 = load i64, i64* %PC.i714
  %795 = add i64 %794, 4
  store i64 %795, i64* %PC.i714
  %796 = inttoptr i64 %793 to i64*
  %797 = load i64, i64* %796
  store i64 %797, i64* %RCX.i715, align 8
  store %struct.Memory* %loadMem_4544c6, %struct.Memory** %MEMORY
  %loadMem_4544ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 1
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %EAX.i712 = bitcast %union.anon* %803 to i32*
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 5
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %RCX.i713 = bitcast %union.anon* %806 to i64*
  %807 = load i64, i64* %RCX.i713
  %808 = add i64 %807, 6372
  %809 = load i32, i32* %EAX.i712
  %810 = zext i32 %809 to i64
  %811 = load i64, i64* %PC.i711
  %812 = add i64 %811, 6
  store i64 %812, i64* %PC.i711
  %813 = inttoptr i64 %808 to i32*
  store i32 %809, i32* %813
  store %struct.Memory* %loadMem_4544ca, %struct.Memory** %MEMORY
  %loadMem_4544d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 5
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RCX.i710 = bitcast %union.anon* %819 to i64*
  %820 = load i64, i64* %PC.i709
  %821 = add i64 %820, 8
  store i64 %821, i64* %PC.i709
  %822 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %822, i64* %RCX.i710, align 8
  store %struct.Memory* %loadMem_4544d0, %struct.Memory** %MEMORY
  %loadMem_4544d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 33
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %825 to i64*
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 7
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %RDX.i707 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 15
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RBP.i708 = bitcast %union.anon* %831 to i64*
  %832 = load i64, i64* %RBP.i708
  %833 = sub i64 %832, 20
  %834 = load i64, i64* %PC.i706
  %835 = add i64 %834, 3
  store i64 %835, i64* %PC.i706
  %836 = inttoptr i64 %833 to i32*
  %837 = load i32, i32* %836
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RDX.i707, align 8
  store %struct.Memory* %loadMem_4544d8, %struct.Memory** %MEMORY
  %loadMem_4544db = load %struct.Memory*, %struct.Memory** %MEMORY
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 33
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 7
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %EDX.i704 = bitcast %union.anon* %844 to i32*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 9
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RSI.i705 = bitcast %union.anon* %847 to i64*
  %848 = load i32, i32* %EDX.i704
  %849 = zext i32 %848 to i64
  %850 = load i64, i64* %PC.i703
  %851 = add i64 %850, 2
  store i64 %851, i64* %PC.i703
  %852 = and i64 %849, 4294967295
  store i64 %852, i64* %RSI.i705, align 8
  store %struct.Memory* %loadMem_4544db, %struct.Memory** %MEMORY
  %loadMem_4544dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 33
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %855 to i64*
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 5
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %RCX.i701 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 9
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %RSI.i702 = bitcast %union.anon* %861 to i64*
  %862 = load i64, i64* %RCX.i701
  %863 = load i64, i64* %RSI.i702
  %864 = mul i64 %863, 8
  %865 = add i64 %864, %862
  %866 = load i64, i64* %PC.i700
  %867 = add i64 %866, 4
  store i64 %867, i64* %PC.i700
  %868 = inttoptr i64 %865 to i64*
  %869 = load i64, i64* %868
  store i64 %869, i64* %RCX.i701, align 8
  store %struct.Memory* %loadMem_4544dd, %struct.Memory** %MEMORY
  %loadMem_4544e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 5
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RCX.i699 = bitcast %union.anon* %875 to i64*
  %876 = load i64, i64* %RCX.i699
  %877 = add i64 %876, 40
  %878 = load i64, i64* %PC.i698
  %879 = add i64 %878, 4
  store i64 %879, i64* %PC.i698
  %880 = inttoptr i64 %877 to i64*
  %881 = load i64, i64* %880
  store i64 %881, i64* %RCX.i699, align 8
  store %struct.Memory* %loadMem_4544e1, %struct.Memory** %MEMORY
  %loadMem_4544e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 1
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %EAX.i696 = bitcast %union.anon* %887 to i32*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 5
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RCX.i697 = bitcast %union.anon* %890 to i64*
  %891 = load i64, i64* %RCX.i697
  %892 = add i64 %891, 6372
  %893 = load i32, i32* %EAX.i696
  %894 = zext i32 %893 to i64
  %895 = load i64, i64* %PC.i695
  %896 = add i64 %895, 6
  store i64 %896, i64* %PC.i695
  %897 = inttoptr i64 %892 to i32*
  store i32 %893, i32* %897
  store %struct.Memory* %loadMem_4544e5, %struct.Memory** %MEMORY
  %loadMem_4544eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i693 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 5
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RCX.i694 = bitcast %union.anon* %903 to i64*
  %904 = load i64, i64* %PC.i693
  %905 = add i64 %904, 8
  store i64 %905, i64* %PC.i693
  %906 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %906, i64* %RCX.i694, align 8
  store %struct.Memory* %loadMem_4544eb, %struct.Memory** %MEMORY
  %loadMem_4544f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 33
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %PC.i690 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 7
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RDX.i691 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 15
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RBP.i692 = bitcast %union.anon* %915 to i64*
  %916 = load i64, i64* %RBP.i692
  %917 = sub i64 %916, 20
  %918 = load i64, i64* %PC.i690
  %919 = add i64 %918, 3
  store i64 %919, i64* %PC.i690
  %920 = inttoptr i64 %917 to i32*
  %921 = load i32, i32* %920
  %922 = zext i32 %921 to i64
  store i64 %922, i64* %RDX.i691, align 8
  store %struct.Memory* %loadMem_4544f3, %struct.Memory** %MEMORY
  %loadMem_4544f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 33
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 7
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %EDX.i688 = bitcast %union.anon* %928 to i32*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 9
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RSI.i689 = bitcast %union.anon* %931 to i64*
  %932 = load i32, i32* %EDX.i688
  %933 = zext i32 %932 to i64
  %934 = load i64, i64* %PC.i687
  %935 = add i64 %934, 2
  store i64 %935, i64* %PC.i687
  %936 = and i64 %933, 4294967295
  store i64 %936, i64* %RSI.i689, align 8
  store %struct.Memory* %loadMem_4544f6, %struct.Memory** %MEMORY
  %loadMem_4544f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 33
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 5
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %RCX.i685 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 9
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RSI.i686 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %RCX.i685
  %947 = load i64, i64* %RSI.i686
  %948 = mul i64 %947, 8
  %949 = add i64 %948, %946
  %950 = load i64, i64* %PC.i684
  %951 = add i64 %950, 4
  store i64 %951, i64* %PC.i684
  %952 = inttoptr i64 %949 to i64*
  %953 = load i64, i64* %952
  store i64 %953, i64* %RCX.i685, align 8
  store %struct.Memory* %loadMem_4544f8, %struct.Memory** %MEMORY
  %loadMem_4544fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 33
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 1
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %EAX.i682 = bitcast %union.anon* %959 to i32*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 5
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %RCX.i683 = bitcast %union.anon* %962 to i64*
  %963 = load i64, i64* %RCX.i683
  %964 = add i64 %963, 28
  %965 = load i32, i32* %EAX.i682
  %966 = zext i32 %965 to i64
  %967 = load i64, i64* %PC.i681
  %968 = add i64 %967, 3
  store i64 %968, i64* %PC.i681
  %969 = inttoptr i64 %964 to i32*
  store i32 %965, i32* %969
  store %struct.Memory* %loadMem_4544fc, %struct.Memory** %MEMORY
  %loadMem_4544ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 33
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 1
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %975 to i64*
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 15
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %978 to i64*
  %979 = load i64, i64* %RBP.i680
  %980 = sub i64 %979, 12
  %981 = load i64, i64* %PC.i678
  %982 = add i64 %981, 3
  store i64 %982, i64* %PC.i678
  %983 = inttoptr i64 %980 to i32*
  %984 = load i32, i32* %983
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RAX.i679, align 8
  store %struct.Memory* %loadMem_4544ff, %struct.Memory** %MEMORY
  %loadMem_454502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 5
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RCX.i677 = bitcast %union.anon* %991 to i64*
  %992 = load i64, i64* %PC.i676
  %993 = add i64 %992, 8
  store i64 %993, i64* %PC.i676
  %994 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %994, i64* %RCX.i677, align 8
  store %struct.Memory* %loadMem_454502, %struct.Memory** %MEMORY
  %loadMem_45450a = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 7
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RDX.i674 = bitcast %union.anon* %1000 to i64*
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 15
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %1003 to i64*
  %1004 = load i64, i64* %RBP.i675
  %1005 = sub i64 %1004, 20
  %1006 = load i64, i64* %PC.i673
  %1007 = add i64 %1006, 3
  store i64 %1007, i64* %PC.i673
  %1008 = inttoptr i64 %1005 to i32*
  %1009 = load i32, i32* %1008
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RDX.i674, align 8
  store %struct.Memory* %loadMem_45450a, %struct.Memory** %MEMORY
  %loadMem_45450d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %1013 to i64*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 7
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %EDX.i671 = bitcast %union.anon* %1016 to i32*
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 9
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %RSI.i672 = bitcast %union.anon* %1019 to i64*
  %1020 = load i32, i32* %EDX.i671
  %1021 = zext i32 %1020 to i64
  %1022 = load i64, i64* %PC.i670
  %1023 = add i64 %1022, 2
  store i64 %1023, i64* %PC.i670
  %1024 = and i64 %1021, 4294967295
  store i64 %1024, i64* %RSI.i672, align 8
  store %struct.Memory* %loadMem_45450d, %struct.Memory** %MEMORY
  %loadMem_45450f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 5
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %RCX.i668 = bitcast %union.anon* %1030 to i64*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 9
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %RSI.i669 = bitcast %union.anon* %1033 to i64*
  %1034 = load i64, i64* %RCX.i668
  %1035 = load i64, i64* %RSI.i669
  %1036 = mul i64 %1035, 8
  %1037 = add i64 %1036, %1034
  %1038 = load i64, i64* %PC.i667
  %1039 = add i64 %1038, 4
  store i64 %1039, i64* %PC.i667
  %1040 = inttoptr i64 %1037 to i64*
  %1041 = load i64, i64* %1040
  store i64 %1041, i64* %RCX.i668, align 8
  store %struct.Memory* %loadMem_45450f, %struct.Memory** %MEMORY
  %loadMem_454513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 33
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 5
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %RCX.i666 = bitcast %union.anon* %1047 to i64*
  %1048 = load i64, i64* %RCX.i666
  %1049 = add i64 %1048, 56
  %1050 = load i64, i64* %PC.i665
  %1051 = add i64 %1050, 4
  store i64 %1051, i64* %PC.i665
  %1052 = inttoptr i64 %1049 to i64*
  %1053 = load i64, i64* %1052
  store i64 %1053, i64* %RCX.i666, align 8
  store %struct.Memory* %loadMem_454513, %struct.Memory** %MEMORY
  %loadMem_454517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 1
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %EAX.i663 = bitcast %union.anon* %1059 to i32*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 5
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %1062 to i64*
  %1063 = load i64, i64* %RCX.i664
  %1064 = add i64 %1063, 6368
  %1065 = load i32, i32* %EAX.i663
  %1066 = zext i32 %1065 to i64
  %1067 = load i64, i64* %PC.i662
  %1068 = add i64 %1067, 6
  store i64 %1068, i64* %PC.i662
  %1069 = inttoptr i64 %1064 to i32*
  store i32 %1065, i32* %1069
  store %struct.Memory* %loadMem_454517, %struct.Memory** %MEMORY
  %loadMem_45451d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 5
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %RCX.i661 = bitcast %union.anon* %1075 to i64*
  %1076 = load i64, i64* %PC.i660
  %1077 = add i64 %1076, 8
  store i64 %1077, i64* %PC.i660
  %1078 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %1078, i64* %RCX.i661, align 8
  store %struct.Memory* %loadMem_45451d, %struct.Memory** %MEMORY
  %loadMem_454525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 33
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 7
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %RDX.i658 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1086 = getelementptr inbounds %struct.GPR, %struct.GPR* %1085, i32 0, i32 15
  %1087 = getelementptr inbounds %struct.Reg, %struct.Reg* %1086, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %1087 to i64*
  %1088 = load i64, i64* %RBP.i659
  %1089 = sub i64 %1088, 20
  %1090 = load i64, i64* %PC.i657
  %1091 = add i64 %1090, 3
  store i64 %1091, i64* %PC.i657
  %1092 = inttoptr i64 %1089 to i32*
  %1093 = load i32, i32* %1092
  %1094 = zext i32 %1093 to i64
  store i64 %1094, i64* %RDX.i658, align 8
  store %struct.Memory* %loadMem_454525, %struct.Memory** %MEMORY
  %loadMem_454528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 33
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 7
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %EDX.i655 = bitcast %union.anon* %1100 to i32*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 9
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %RSI.i656 = bitcast %union.anon* %1103 to i64*
  %1104 = load i32, i32* %EDX.i655
  %1105 = zext i32 %1104 to i64
  %1106 = load i64, i64* %PC.i654
  %1107 = add i64 %1106, 2
  store i64 %1107, i64* %PC.i654
  %1108 = and i64 %1105, 4294967295
  store i64 %1108, i64* %RSI.i656, align 8
  store %struct.Memory* %loadMem_454528, %struct.Memory** %MEMORY
  %loadMem_45452a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 33
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %1111 to i64*
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 5
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %RCX.i652 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 9
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %RSI.i653 = bitcast %union.anon* %1117 to i64*
  %1118 = load i64, i64* %RCX.i652
  %1119 = load i64, i64* %RSI.i653
  %1120 = mul i64 %1119, 8
  %1121 = add i64 %1120, %1118
  %1122 = load i64, i64* %PC.i651
  %1123 = add i64 %1122, 4
  store i64 %1123, i64* %PC.i651
  %1124 = inttoptr i64 %1121 to i64*
  %1125 = load i64, i64* %1124
  store i64 %1125, i64* %RCX.i652, align 8
  store %struct.Memory* %loadMem_45452a, %struct.Memory** %MEMORY
  %loadMem_45452e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 33
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1128 to i64*
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 5
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %RCX.i650 = bitcast %union.anon* %1131 to i64*
  %1132 = load i64, i64* %RCX.i650
  %1133 = add i64 %1132, 48
  %1134 = load i64, i64* %PC.i649
  %1135 = add i64 %1134, 4
  store i64 %1135, i64* %PC.i649
  %1136 = inttoptr i64 %1133 to i64*
  %1137 = load i64, i64* %1136
  store i64 %1137, i64* %RCX.i650, align 8
  store %struct.Memory* %loadMem_45452e, %struct.Memory** %MEMORY
  %loadMem_454532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 33
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %1140 to i64*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 1
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %EAX.i647 = bitcast %union.anon* %1143 to i32*
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 5
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %RCX.i648 = bitcast %union.anon* %1146 to i64*
  %1147 = load i64, i64* %RCX.i648
  %1148 = add i64 %1147, 6368
  %1149 = load i32, i32* %EAX.i647
  %1150 = zext i32 %1149 to i64
  %1151 = load i64, i64* %PC.i646
  %1152 = add i64 %1151, 6
  store i64 %1152, i64* %PC.i646
  %1153 = inttoptr i64 %1148 to i32*
  store i32 %1149, i32* %1153
  store %struct.Memory* %loadMem_454532, %struct.Memory** %MEMORY
  %loadMem_454538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 33
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1156 to i64*
  %1157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1158 = getelementptr inbounds %struct.GPR, %struct.GPR* %1157, i32 0, i32 5
  %1159 = getelementptr inbounds %struct.Reg, %struct.Reg* %1158, i32 0, i32 0
  %RCX.i645 = bitcast %union.anon* %1159 to i64*
  %1160 = load i64, i64* %PC.i644
  %1161 = add i64 %1160, 8
  store i64 %1161, i64* %PC.i644
  %1162 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %1162, i64* %RCX.i645, align 8
  store %struct.Memory* %loadMem_454538, %struct.Memory** %MEMORY
  %loadMem_454540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 7
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RDX.i642 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 15
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %RBP.i643
  %1173 = sub i64 %1172, 20
  %1174 = load i64, i64* %PC.i641
  %1175 = add i64 %1174, 3
  store i64 %1175, i64* %PC.i641
  %1176 = inttoptr i64 %1173 to i32*
  %1177 = load i32, i32* %1176
  %1178 = zext i32 %1177 to i64
  store i64 %1178, i64* %RDX.i642, align 8
  store %struct.Memory* %loadMem_454540, %struct.Memory** %MEMORY
  %loadMem_454543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 33
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 7
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %EDX.i639 = bitcast %union.anon* %1184 to i32*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 9
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %RSI.i640 = bitcast %union.anon* %1187 to i64*
  %1188 = load i32, i32* %EDX.i639
  %1189 = zext i32 %1188 to i64
  %1190 = load i64, i64* %PC.i638
  %1191 = add i64 %1190, 2
  store i64 %1191, i64* %PC.i638
  %1192 = and i64 %1189, 4294967295
  store i64 %1192, i64* %RSI.i640, align 8
  store %struct.Memory* %loadMem_454543, %struct.Memory** %MEMORY
  %loadMem_454545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 33
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 5
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %RCX.i636 = bitcast %union.anon* %1198 to i64*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 9
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %RSI.i637 = bitcast %union.anon* %1201 to i64*
  %1202 = load i64, i64* %RCX.i636
  %1203 = load i64, i64* %RSI.i637
  %1204 = mul i64 %1203, 8
  %1205 = add i64 %1204, %1202
  %1206 = load i64, i64* %PC.i635
  %1207 = add i64 %1206, 4
  store i64 %1207, i64* %PC.i635
  %1208 = inttoptr i64 %1205 to i64*
  %1209 = load i64, i64* %1208
  store i64 %1209, i64* %RCX.i636, align 8
  store %struct.Memory* %loadMem_454545, %struct.Memory** %MEMORY
  %loadMem_454549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 33
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1212 to i64*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 5
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %RCX.i634 = bitcast %union.anon* %1215 to i64*
  %1216 = load i64, i64* %RCX.i634
  %1217 = add i64 %1216, 40
  %1218 = load i64, i64* %PC.i633
  %1219 = add i64 %1218, 4
  store i64 %1219, i64* %PC.i633
  %1220 = inttoptr i64 %1217 to i64*
  %1221 = load i64, i64* %1220
  store i64 %1221, i64* %RCX.i634, align 8
  store %struct.Memory* %loadMem_454549, %struct.Memory** %MEMORY
  %loadMem_45454d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 33
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %1224 to i64*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 1
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %EAX.i631 = bitcast %union.anon* %1227 to i32*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 5
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %RCX.i632 = bitcast %union.anon* %1230 to i64*
  %1231 = load i64, i64* %RCX.i632
  %1232 = add i64 %1231, 6368
  %1233 = load i32, i32* %EAX.i631
  %1234 = zext i32 %1233 to i64
  %1235 = load i64, i64* %PC.i630
  %1236 = add i64 %1235, 6
  store i64 %1236, i64* %PC.i630
  %1237 = inttoptr i64 %1232 to i32*
  store i32 %1233, i32* %1237
  store %struct.Memory* %loadMem_45454d, %struct.Memory** %MEMORY
  %loadMem_454553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 33
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %1240 to i64*
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 5
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %RCX.i629 = bitcast %union.anon* %1243 to i64*
  %1244 = load i64, i64* %PC.i628
  %1245 = add i64 %1244, 8
  store i64 %1245, i64* %PC.i628
  %1246 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %1246, i64* %RCX.i629, align 8
  store %struct.Memory* %loadMem_454553, %struct.Memory** %MEMORY
  %loadMem_45455b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 1
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RAX.i626 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 15
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %1255 to i64*
  %1256 = load i64, i64* %RBP.i627
  %1257 = sub i64 %1256, 20
  %1258 = load i64, i64* %PC.i625
  %1259 = add i64 %1258, 3
  store i64 %1259, i64* %PC.i625
  %1260 = inttoptr i64 %1257 to i32*
  %1261 = load i32, i32* %1260
  %1262 = zext i32 %1261 to i64
  store i64 %1262, i64* %RAX.i626, align 8
  store %struct.Memory* %loadMem_45455b, %struct.Memory** %MEMORY
  %loadMem_45455e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 33
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %1265 to i64*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 1
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %EAX.i623 = bitcast %union.anon* %1268 to i32*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 9
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %RSI.i624 = bitcast %union.anon* %1271 to i64*
  %1272 = load i32, i32* %EAX.i623
  %1273 = zext i32 %1272 to i64
  %1274 = load i64, i64* %PC.i622
  %1275 = add i64 %1274, 2
  store i64 %1275, i64* %PC.i622
  %1276 = and i64 %1273, 4294967295
  store i64 %1276, i64* %RSI.i624, align 8
  store %struct.Memory* %loadMem_45455e, %struct.Memory** %MEMORY
  %loadMem_454560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 5
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RCX.i620 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 9
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RSI.i621 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %RCX.i620
  %1287 = load i64, i64* %RSI.i621
  %1288 = mul i64 %1287, 8
  %1289 = add i64 %1288, %1286
  %1290 = load i64, i64* %PC.i619
  %1291 = add i64 %1290, 4
  store i64 %1291, i64* %PC.i619
  %1292 = inttoptr i64 %1289 to i64*
  %1293 = load i64, i64* %1292
  store i64 %1293, i64* %RCX.i620, align 8
  store %struct.Memory* %loadMem_454560, %struct.Memory** %MEMORY
  %loadMem_454564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 5
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %1299 to i64*
  %1300 = load i64, i64* %RCX.i618
  %1301 = add i64 %1300, 56
  %1302 = load i64, i64* %PC.i617
  %1303 = add i64 %1302, 4
  store i64 %1303, i64* %PC.i617
  %1304 = inttoptr i64 %1301 to i64*
  %1305 = load i64, i64* %1304
  store i64 %1305, i64* %RCX.i618, align 8
  store %struct.Memory* %loadMem_454564, %struct.Memory** %MEMORY
  %loadMem_454568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 5
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RCX.i616 = bitcast %union.anon* %1311 to i64*
  %1312 = load i64, i64* %RCX.i616
  %1313 = add i64 %1312, 6376
  %1314 = load i64, i64* %PC.i615
  %1315 = add i64 %1314, 10
  store i64 %1315, i64* %PC.i615
  %1316 = inttoptr i64 %1313 to i32*
  store i32 1, i32* %1316
  store %struct.Memory* %loadMem_454568, %struct.Memory** %MEMORY
  %loadMem_454572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 33
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1319 to i64*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 5
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %RCX.i614 = bitcast %union.anon* %1322 to i64*
  %1323 = load i64, i64* %PC.i613
  %1324 = add i64 %1323, 8
  store i64 %1324, i64* %PC.i613
  %1325 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %1325, i64* %RCX.i614, align 8
  store %struct.Memory* %loadMem_454572, %struct.Memory** %MEMORY
  %loadMem_45457a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 33
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %1328 to i64*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 1
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %RAX.i611 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 15
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %1334 to i64*
  %1335 = load i64, i64* %RBP.i612
  %1336 = sub i64 %1335, 20
  %1337 = load i64, i64* %PC.i610
  %1338 = add i64 %1337, 3
  store i64 %1338, i64* %PC.i610
  %1339 = inttoptr i64 %1336 to i32*
  %1340 = load i32, i32* %1339
  %1341 = zext i32 %1340 to i64
  store i64 %1341, i64* %RAX.i611, align 8
  store %struct.Memory* %loadMem_45457a, %struct.Memory** %MEMORY
  %loadMem_45457d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 33
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %1344 to i64*
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 1
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %EAX.i608 = bitcast %union.anon* %1347 to i32*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 9
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RSI.i609 = bitcast %union.anon* %1350 to i64*
  %1351 = load i32, i32* %EAX.i608
  %1352 = zext i32 %1351 to i64
  %1353 = load i64, i64* %PC.i607
  %1354 = add i64 %1353, 2
  store i64 %1354, i64* %PC.i607
  %1355 = and i64 %1352, 4294967295
  store i64 %1355, i64* %RSI.i609, align 8
  store %struct.Memory* %loadMem_45457d, %struct.Memory** %MEMORY
  %loadMem_45457f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1357 = getelementptr inbounds %struct.GPR, %struct.GPR* %1356, i32 0, i32 33
  %1358 = getelementptr inbounds %struct.Reg, %struct.Reg* %1357, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %1358 to i64*
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 5
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %RCX.i605 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 9
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RSI.i606 = bitcast %union.anon* %1364 to i64*
  %1365 = load i64, i64* %RCX.i605
  %1366 = load i64, i64* %RSI.i606
  %1367 = mul i64 %1366, 8
  %1368 = add i64 %1367, %1365
  %1369 = load i64, i64* %PC.i604
  %1370 = add i64 %1369, 4
  store i64 %1370, i64* %PC.i604
  %1371 = inttoptr i64 %1368 to i64*
  %1372 = load i64, i64* %1371
  store i64 %1372, i64* %RCX.i605, align 8
  store %struct.Memory* %loadMem_45457f, %struct.Memory** %MEMORY
  %loadMem_454583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1374 = getelementptr inbounds %struct.GPR, %struct.GPR* %1373, i32 0, i32 33
  %1375 = getelementptr inbounds %struct.Reg, %struct.Reg* %1374, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %1375 to i64*
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 5
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %1378 to i64*
  %1379 = load i64, i64* %RCX.i603
  %1380 = add i64 %1379, 48
  %1381 = load i64, i64* %PC.i602
  %1382 = add i64 %1381, 4
  store i64 %1382, i64* %PC.i602
  %1383 = inttoptr i64 %1380 to i64*
  %1384 = load i64, i64* %1383
  store i64 %1384, i64* %RCX.i603, align 8
  store %struct.Memory* %loadMem_454583, %struct.Memory** %MEMORY
  %loadMem_454587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 33
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %1387 to i64*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 5
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %RCX.i601 = bitcast %union.anon* %1390 to i64*
  %1391 = load i64, i64* %RCX.i601
  %1392 = add i64 %1391, 6376
  %1393 = load i64, i64* %PC.i600
  %1394 = add i64 %1393, 10
  store i64 %1394, i64* %PC.i600
  %1395 = inttoptr i64 %1392 to i32*
  store i32 1, i32* %1395
  store %struct.Memory* %loadMem_454587, %struct.Memory** %MEMORY
  %loadMem_454591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 33
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1398 to i64*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 5
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %1401 to i64*
  %1402 = load i64, i64* %PC.i598
  %1403 = add i64 %1402, 8
  store i64 %1403, i64* %PC.i598
  %1404 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %1404, i64* %RCX.i599, align 8
  store %struct.Memory* %loadMem_454591, %struct.Memory** %MEMORY
  %loadMem_454599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 33
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 1
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 15
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %RBP.i597
  %1415 = sub i64 %1414, 20
  %1416 = load i64, i64* %PC.i595
  %1417 = add i64 %1416, 3
  store i64 %1417, i64* %PC.i595
  %1418 = inttoptr i64 %1415 to i32*
  %1419 = load i32, i32* %1418
  %1420 = zext i32 %1419 to i64
  store i64 %1420, i64* %RAX.i596, align 8
  store %struct.Memory* %loadMem_454599, %struct.Memory** %MEMORY
  %loadMem_45459c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 33
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 1
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %EAX.i593 = bitcast %union.anon* %1426 to i32*
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 9
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %RSI.i594 = bitcast %union.anon* %1429 to i64*
  %1430 = load i32, i32* %EAX.i593
  %1431 = zext i32 %1430 to i64
  %1432 = load i64, i64* %PC.i592
  %1433 = add i64 %1432, 2
  store i64 %1433, i64* %PC.i592
  %1434 = and i64 %1431, 4294967295
  store i64 %1434, i64* %RSI.i594, align 8
  store %struct.Memory* %loadMem_45459c, %struct.Memory** %MEMORY
  %loadMem_45459e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 5
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %RCX.i590 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 9
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %RSI.i591 = bitcast %union.anon* %1443 to i64*
  %1444 = load i64, i64* %RCX.i590
  %1445 = load i64, i64* %RSI.i591
  %1446 = mul i64 %1445, 8
  %1447 = add i64 %1446, %1444
  %1448 = load i64, i64* %PC.i589
  %1449 = add i64 %1448, 4
  store i64 %1449, i64* %PC.i589
  %1450 = inttoptr i64 %1447 to i64*
  %1451 = load i64, i64* %1450
  store i64 %1451, i64* %RCX.i590, align 8
  store %struct.Memory* %loadMem_45459e, %struct.Memory** %MEMORY
  %loadMem_4545a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 5
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %RCX.i588 = bitcast %union.anon* %1457 to i64*
  %1458 = load i64, i64* %RCX.i588
  %1459 = add i64 %1458, 40
  %1460 = load i64, i64* %PC.i587
  %1461 = add i64 %1460, 4
  store i64 %1461, i64* %PC.i587
  %1462 = inttoptr i64 %1459 to i64*
  %1463 = load i64, i64* %1462
  store i64 %1463, i64* %RCX.i588, align 8
  store %struct.Memory* %loadMem_4545a2, %struct.Memory** %MEMORY
  %loadMem_4545a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 33
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %1466 to i64*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 5
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %RCX.i586 = bitcast %union.anon* %1469 to i64*
  %1470 = load i64, i64* %RCX.i586
  %1471 = add i64 %1470, 6376
  %1472 = load i64, i64* %PC.i585
  %1473 = add i64 %1472, 10
  store i64 %1473, i64* %PC.i585
  %1474 = inttoptr i64 %1471 to i32*
  store i32 1, i32* %1474
  store %struct.Memory* %loadMem_4545a6, %struct.Memory** %MEMORY
  %loadMem_4545b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 33
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %1477 to i64*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 5
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %RCX.i584 = bitcast %union.anon* %1480 to i64*
  %1481 = load i64, i64* %PC.i583
  %1482 = add i64 %1481, 8
  store i64 %1482, i64* %PC.i583
  %1483 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %1483, i64* %RCX.i584, align 8
  store %struct.Memory* %loadMem_4545b0, %struct.Memory** %MEMORY
  %loadMem_4545b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %1486 to i64*
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 1
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %RAX.i581 = bitcast %union.anon* %1489 to i64*
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 15
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %1492 to i64*
  %1493 = load i64, i64* %RBP.i582
  %1494 = sub i64 %1493, 20
  %1495 = load i64, i64* %PC.i580
  %1496 = add i64 %1495, 3
  store i64 %1496, i64* %PC.i580
  %1497 = inttoptr i64 %1494 to i32*
  %1498 = load i32, i32* %1497
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RAX.i581, align 8
  store %struct.Memory* %loadMem_4545b8, %struct.Memory** %MEMORY
  %loadMem_4545bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 1
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %EAX.i578 = bitcast %union.anon* %1505 to i32*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 9
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RSI.i579 = bitcast %union.anon* %1508 to i64*
  %1509 = load i32, i32* %EAX.i578
  %1510 = zext i32 %1509 to i64
  %1511 = load i64, i64* %PC.i577
  %1512 = add i64 %1511, 2
  store i64 %1512, i64* %PC.i577
  %1513 = and i64 %1510, 4294967295
  store i64 %1513, i64* %RSI.i579, align 8
  store %struct.Memory* %loadMem_4545bb, %struct.Memory** %MEMORY
  %loadMem_4545bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 5
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RCX.i575 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 9
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RSI.i576 = bitcast %union.anon* %1522 to i64*
  %1523 = load i64, i64* %RCX.i575
  %1524 = load i64, i64* %RSI.i576
  %1525 = mul i64 %1524, 8
  %1526 = add i64 %1525, %1523
  %1527 = load i64, i64* %PC.i574
  %1528 = add i64 %1527, 4
  store i64 %1528, i64* %PC.i574
  %1529 = inttoptr i64 %1526 to i64*
  %1530 = load i64, i64* %1529
  store i64 %1530, i64* %RCX.i575, align 8
  store %struct.Memory* %loadMem_4545bd, %struct.Memory** %MEMORY
  %loadMem_4545c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 33
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 5
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %RCX.i573 = bitcast %union.anon* %1536 to i64*
  %1537 = load i64, i64* %RCX.i573
  %1538 = add i64 %1537, 8
  %1539 = load i64, i64* %PC.i572
  %1540 = add i64 %1539, 7
  store i64 %1540, i64* %PC.i572
  %1541 = inttoptr i64 %1538 to i32*
  store i32 3, i32* %1541
  store %struct.Memory* %loadMem_4545c1, %struct.Memory** %MEMORY
  %loadMem_4545c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %1544 to i64*
  %1545 = load i64, i64* %PC.i571
  %1546 = add i64 %1545, 1054
  %1547 = load i64, i64* %PC.i571
  %1548 = add i64 %1547, 5
  store i64 %1548, i64* %PC.i571
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1546, i64* %1549, align 8
  store %struct.Memory* %loadMem_4545c8, %struct.Memory** %MEMORY
  br label %block_.L_4549e6

block_.L_4545cd:                                  ; preds = %block_454473, %block_454451
  %loadMem_4545cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %1552 to i64*
  %1553 = load i64, i64* %PC.i570
  %1554 = add i64 %1553, 5
  %1555 = load i64, i64* %PC.i570
  %1556 = add i64 %1555, 5
  store i64 %1556, i64* %PC.i570
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1554, i64* %1557, align 8
  store %struct.Memory* %loadMem_4545cd, %struct.Memory** %MEMORY
  br label %block_.L_4545d2

block_.L_4545d2:                                  ; preds = %block_.L_4545cd, %block_454436
  %loadMem_4545d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %1560 to i64*
  %1561 = load i64, i64* %PC.i569
  %1562 = add i64 %1561, 5
  %1563 = load i64, i64* %PC.i569
  %1564 = add i64 %1563, 5
  store i64 %1564, i64* %PC.i569
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1562, i64* %1565, align 8
  store %struct.Memory* %loadMem_4545d2, %struct.Memory** %MEMORY
  br label %block_.L_4545d7

block_.L_4545d7:                                  ; preds = %block_.L_4545d2
  %loadMem_4545d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 33
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %1568 to i64*
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 1
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %1571 to i64*
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 15
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %1574 to i64*
  %1575 = load i64, i64* %RBP.i568
  %1576 = sub i64 %1575, 20
  %1577 = load i64, i64* %PC.i566
  %1578 = add i64 %1577, 3
  store i64 %1578, i64* %PC.i566
  %1579 = inttoptr i64 %1576 to i32*
  %1580 = load i32, i32* %1579
  %1581 = zext i32 %1580 to i64
  store i64 %1581, i64* %RAX.i567, align 8
  store %struct.Memory* %loadMem_4545d7, %struct.Memory** %MEMORY
  %loadMem_4545da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 33
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 1
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %1587 to i64*
  %1588 = load i64, i64* %RAX.i565
  %1589 = load i64, i64* %PC.i564
  %1590 = add i64 %1589, 3
  store i64 %1590, i64* %PC.i564
  %1591 = trunc i64 %1588 to i32
  %1592 = add i32 1, %1591
  %1593 = zext i32 %1592 to i64
  store i64 %1593, i64* %RAX.i565, align 8
  %1594 = icmp ult i32 %1592, %1591
  %1595 = icmp ult i32 %1592, 1
  %1596 = or i1 %1594, %1595
  %1597 = zext i1 %1596 to i8
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1597, i8* %1598, align 1
  %1599 = and i32 %1592, 255
  %1600 = call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1603, i8* %1604, align 1
  %1605 = xor i64 1, %1588
  %1606 = trunc i64 %1605 to i32
  %1607 = xor i32 %1606, %1592
  %1608 = lshr i32 %1607, 4
  %1609 = trunc i32 %1608 to i8
  %1610 = and i8 %1609, 1
  %1611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1610, i8* %1611, align 1
  %1612 = icmp eq i32 %1592, 0
  %1613 = zext i1 %1612 to i8
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1613, i8* %1614, align 1
  %1615 = lshr i32 %1592, 31
  %1616 = trunc i32 %1615 to i8
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1616, i8* %1617, align 1
  %1618 = lshr i32 %1591, 31
  %1619 = xor i32 %1615, %1618
  %1620 = add i32 %1619, %1615
  %1621 = icmp eq i32 %1620, 2
  %1622 = zext i1 %1621 to i8
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1622, i8* %1623, align 1
  store %struct.Memory* %loadMem_4545da, %struct.Memory** %MEMORY
  %loadMem_4545dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 33
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %1626 to i64*
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 1
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %EAX.i562 = bitcast %union.anon* %1629 to i32*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 15
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %1632 to i64*
  %1633 = load i64, i64* %RBP.i563
  %1634 = sub i64 %1633, 20
  %1635 = load i32, i32* %EAX.i562
  %1636 = zext i32 %1635 to i64
  %1637 = load i64, i64* %PC.i561
  %1638 = add i64 %1637, 3
  store i64 %1638, i64* %PC.i561
  %1639 = inttoptr i64 %1634 to i32*
  store i32 %1635, i32* %1639
  store %struct.Memory* %loadMem_4545dd, %struct.Memory** %MEMORY
  %loadMem_4545e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 33
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %1642 to i64*
  %1643 = load i64, i64* %PC.i560
  %1644 = add i64 %1643, -442
  %1645 = load i64, i64* %PC.i560
  %1646 = add i64 %1645, 5
  store i64 %1646, i64* %PC.i560
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1644, i64* %1647, align 8
  store %struct.Memory* %loadMem_4545e0, %struct.Memory** %MEMORY
  br label %block_.L_454426

block_.L_4545e5:                                  ; preds = %block_.L_454426
  %loadMem_4545e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 33
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 11
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %RDI.i559 = bitcast %union.anon* %1653 to i64*
  %1654 = load i64, i64* %PC.i558
  %1655 = add i64 %1654, 10
  store i64 %1655, i64* %PC.i558
  store i64 ptrtoint (%G__0x4c1b0f_type* @G__0x4c1b0f to i64), i64* %RDI.i559, align 8
  store %struct.Memory* %loadMem_4545e5, %struct.Memory** %MEMORY
  %loadMem_4545ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 33
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %1658 to i64*
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 1
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %1662 = bitcast %union.anon* %1661 to %struct.anon.2*
  %AL.i557 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1662, i32 0, i32 0
  %1663 = load i64, i64* %PC.i556
  %1664 = add i64 %1663, 2
  store i64 %1664, i64* %PC.i556
  store i8 0, i8* %AL.i557, align 1
  store %struct.Memory* %loadMem_4545ef, %struct.Memory** %MEMORY
  %loadMem1_4545f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %1667 to i64*
  %1668 = load i64, i64* %PC.i555
  %1669 = add i64 %1668, -341425
  %1670 = load i64, i64* %PC.i555
  %1671 = add i64 %1670, 5
  %1672 = load i64, i64* %PC.i555
  %1673 = add i64 %1672, 5
  store i64 %1673, i64* %PC.i555
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1675 = load i64, i64* %1674, align 8
  %1676 = add i64 %1675, -8
  %1677 = inttoptr i64 %1676 to i64*
  store i64 %1671, i64* %1677
  store i64 %1676, i64* %1674, align 8
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1669, i64* %1678, align 8
  store %struct.Memory* %loadMem1_4545f1, %struct.Memory** %MEMORY
  %loadMem2_4545f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4545f1 = load i64, i64* %3
  %1679 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4545f1)
  store %struct.Memory* %1679, %struct.Memory** %MEMORY
  %loadMem_4545f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 33
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %1682 to i64*
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 1
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %EAX.i550 = bitcast %union.anon* %1685 to i32*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 15
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RBP.i551 = bitcast %union.anon* %1688 to i64*
  %1689 = load i64, i64* %RBP.i551
  %1690 = sub i64 %1689, 32
  %1691 = load i32, i32* %EAX.i550
  %1692 = zext i32 %1691 to i64
  %1693 = load i64, i64* %PC.i549
  %1694 = add i64 %1693, 3
  store i64 %1694, i64* %PC.i549
  %1695 = inttoptr i64 %1690 to i32*
  store i32 %1691, i32* %1695
  store %struct.Memory* %loadMem_4545f6, %struct.Memory** %MEMORY
  %loadMem_4545f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 33
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %1698 to i64*
  %1699 = load i64, i64* %PC.i548
  %1700 = add i64 %1699, 1005
  %1701 = load i64, i64* %PC.i548
  %1702 = add i64 %1701, 5
  store i64 %1702, i64* %PC.i548
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1700, i64* %1703, align 8
  store %struct.Memory* %loadMem_4545f9, %struct.Memory** %MEMORY
  br label %block_.L_4549e6

block_.L_4545fe:                                  ; preds = %entry
  %loadMem_4545fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 33
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %1706 to i64*
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 1
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 15
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %1712 to i64*
  %1713 = load i64, i64* %RBP.i547
  %1714 = sub i64 %1713, 8
  %1715 = load i64, i64* %PC.i545
  %1716 = add i64 %1715, 4
  store i64 %1716, i64* %PC.i545
  %1717 = inttoptr i64 %1714 to i64*
  %1718 = load i64, i64* %1717
  store i64 %1718, i64* %RAX.i546, align 8
  store %struct.Memory* %loadMem_4545fe, %struct.Memory** %MEMORY
  %loadMem_454602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 33
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %1721 to i64*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 1
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %1724 to i64*
  %1725 = load i64, i64* %RAX.i544
  %1726 = load i64, i64* %PC.i543
  %1727 = add i64 %1726, 3
  store i64 %1727, i64* %PC.i543
  %1728 = inttoptr i64 %1725 to i32*
  %1729 = load i32, i32* %1728
  %1730 = sub i32 %1729, 1
  %1731 = icmp ult i32 %1729, 1
  %1732 = zext i1 %1731 to i8
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1732, i8* %1733, align 1
  %1734 = and i32 %1730, 255
  %1735 = call i32 @llvm.ctpop.i32(i32 %1734)
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  %1738 = xor i8 %1737, 1
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1738, i8* %1739, align 1
  %1740 = xor i32 %1729, 1
  %1741 = xor i32 %1740, %1730
  %1742 = lshr i32 %1741, 4
  %1743 = trunc i32 %1742 to i8
  %1744 = and i8 %1743, 1
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1744, i8* %1745, align 1
  %1746 = icmp eq i32 %1730, 0
  %1747 = zext i1 %1746 to i8
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1747, i8* %1748, align 1
  %1749 = lshr i32 %1730, 31
  %1750 = trunc i32 %1749 to i8
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1750, i8* %1751, align 1
  %1752 = lshr i32 %1729, 31
  %1753 = xor i32 %1749, %1752
  %1754 = add i32 %1753, %1752
  %1755 = icmp eq i32 %1754, 2
  %1756 = zext i1 %1755 to i8
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1756, i8* %1757, align 1
  store %struct.Memory* %loadMem_454602, %struct.Memory** %MEMORY
  %loadMem_454605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 33
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %1760 to i64*
  %1761 = load i64, i64* %PC.i542
  %1762 = add i64 %1761, 25
  %1763 = load i64, i64* %PC.i542
  %1764 = add i64 %1763, 6
  %1765 = load i64, i64* %PC.i542
  %1766 = add i64 %1765, 6
  store i64 %1766, i64* %PC.i542
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1768 = load i8, i8* %1767, align 1
  %1769 = icmp eq i8 %1768, 0
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %BRANCH_TAKEN, align 1
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1772 = select i1 %1769, i64 %1762, i64 %1764
  store i64 %1772, i64* %1771, align 8
  store %struct.Memory* %loadMem_454605, %struct.Memory** %MEMORY
  %loadBr_454605 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454605 = icmp eq i8 %loadBr_454605, 1
  br i1 %cmpBr_454605, label %block_.L_45461e, label %block_45460b

block_45460b:                                     ; preds = %block_.L_4545fe
  %loadMem_45460b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 33
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 15
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %1778 to i64*
  %1779 = load i64, i64* %RBP.i541
  %1780 = sub i64 %1779, 24
  %1781 = load i64, i64* %PC.i540
  %1782 = add i64 %1781, 7
  store i64 %1782, i64* %PC.i540
  %1783 = inttoptr i64 %1780 to i32*
  store i32 1, i32* %1783
  store %struct.Memory* %loadMem_45460b, %struct.Memory** %MEMORY
  %loadMem_454612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 15
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %RBP.i539
  %1791 = sub i64 %1790, 28
  %1792 = load i64, i64* %PC.i538
  %1793 = add i64 %1792, 7
  store i64 %1793, i64* %PC.i538
  %1794 = inttoptr i64 %1791 to i32*
  store i32 0, i32* %1794
  store %struct.Memory* %loadMem_454612, %struct.Memory** %MEMORY
  %loadMem_454619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1796 = getelementptr inbounds %struct.GPR, %struct.GPR* %1795, i32 0, i32 33
  %1797 = getelementptr inbounds %struct.Reg, %struct.Reg* %1796, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %1797 to i64*
  %1798 = load i64, i64* %PC.i537
  %1799 = add i64 %1798, 19
  %1800 = load i64, i64* %PC.i537
  %1801 = add i64 %1800, 5
  store i64 %1801, i64* %PC.i537
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1799, i64* %1802, align 8
  store %struct.Memory* %loadMem_454619, %struct.Memory** %MEMORY
  br label %block_.L_45462c

block_.L_45461e:                                  ; preds = %block_.L_4545fe
  %loadMem_45461e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 33
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 15
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %1808 to i64*
  %1809 = load i64, i64* %RBP.i536
  %1810 = sub i64 %1809, 24
  %1811 = load i64, i64* %PC.i535
  %1812 = add i64 %1811, 7
  store i64 %1812, i64* %PC.i535
  %1813 = inttoptr i64 %1810 to i32*
  store i32 0, i32* %1813
  store %struct.Memory* %loadMem_45461e, %struct.Memory** %MEMORY
  %loadMem_454625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 33
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %1816 to i64*
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 15
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %RBP.i534 = bitcast %union.anon* %1819 to i64*
  %1820 = load i64, i64* %RBP.i534
  %1821 = sub i64 %1820, 28
  %1822 = load i64, i64* %PC.i533
  %1823 = add i64 %1822, 7
  store i64 %1823, i64* %PC.i533
  %1824 = inttoptr i64 %1821 to i32*
  store i32 1, i32* %1824
  store %struct.Memory* %loadMem_454625, %struct.Memory** %MEMORY
  br label %block_.L_45462c

block_.L_45462c:                                  ; preds = %block_.L_45461e, %block_45460b
  %loadMem_45462c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 33
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 15
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %1830 to i64*
  %1831 = load i64, i64* %RBP.i532
  %1832 = sub i64 %1831, 20
  %1833 = load i64, i64* %PC.i531
  %1834 = add i64 %1833, 7
  store i64 %1834, i64* %PC.i531
  %1835 = inttoptr i64 %1832 to i32*
  store i32 0, i32* %1835
  store %struct.Memory* %loadMem_45462c, %struct.Memory** %MEMORY
  br label %block_.L_454633

block_.L_454633:                                  ; preds = %block_.L_4549c4, %block_.L_45462c
  %loadMem_454633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 1
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 15
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %RBP.i530 = bitcast %union.anon* %1844 to i64*
  %1845 = load i64, i64* %RBP.i530
  %1846 = sub i64 %1845, 20
  %1847 = load i64, i64* %PC.i528
  %1848 = add i64 %1847, 3
  store i64 %1848, i64* %PC.i528
  %1849 = inttoptr i64 %1846 to i32*
  %1850 = load i32, i32* %1849
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RAX.i529, align 8
  store %struct.Memory* %loadMem_454633, %struct.Memory** %MEMORY
  %loadMem_454636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 1
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %EAX.i527 = bitcast %union.anon* %1857 to i32*
  %1858 = load i32, i32* %EAX.i527
  %1859 = zext i32 %1858 to i64
  %1860 = load i64, i64* %PC.i526
  %1861 = add i64 %1860, 7
  store i64 %1861, i64* %PC.i526
  %1862 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*)
  %1863 = sub i32 %1858, %1862
  %1864 = icmp ult i32 %1858, %1862
  %1865 = zext i1 %1864 to i8
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1865, i8* %1866, align 1
  %1867 = and i32 %1863, 255
  %1868 = call i32 @llvm.ctpop.i32(i32 %1867)
  %1869 = trunc i32 %1868 to i8
  %1870 = and i8 %1869, 1
  %1871 = xor i8 %1870, 1
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1871, i8* %1872, align 1
  %1873 = xor i32 %1862, %1858
  %1874 = xor i32 %1873, %1863
  %1875 = lshr i32 %1874, 4
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1877, i8* %1878, align 1
  %1879 = icmp eq i32 %1863, 0
  %1880 = zext i1 %1879 to i8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1880, i8* %1881, align 1
  %1882 = lshr i32 %1863, 31
  %1883 = trunc i32 %1882 to i8
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1883, i8* %1884, align 1
  %1885 = lshr i32 %1858, 31
  %1886 = lshr i32 %1862, 31
  %1887 = xor i32 %1886, %1885
  %1888 = xor i32 %1882, %1885
  %1889 = add i32 %1888, %1887
  %1890 = icmp eq i32 %1889, 2
  %1891 = zext i1 %1890 to i8
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1891, i8* %1892, align 1
  store %struct.Memory* %loadMem_454636, %struct.Memory** %MEMORY
  %loadMem_45463d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 33
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %1895 to i64*
  %1896 = load i64, i64* %PC.i525
  %1897 = add i64 %1896, 917
  %1898 = load i64, i64* %PC.i525
  %1899 = add i64 %1898, 6
  %1900 = load i64, i64* %PC.i525
  %1901 = add i64 %1900, 6
  store i64 %1901, i64* %PC.i525
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1903 = load i8, i8* %1902, align 1
  %1904 = icmp eq i8 %1903, 0
  %1905 = zext i1 %1904 to i8
  store i8 %1905, i8* %BRANCH_TAKEN, align 1
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1907 = select i1 %1904, i64 %1897, i64 %1899
  store i64 %1907, i64* %1906, align 8
  store %struct.Memory* %loadMem_45463d, %struct.Memory** %MEMORY
  %loadBr_45463d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45463d = icmp eq i8 %loadBr_45463d, 1
  br i1 %cmpBr_45463d, label %block_.L_4549d2, label %block_454643

block_454643:                                     ; preds = %block_.L_454633
  %loadMem_454643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 1
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %1913 to i64*
  %1914 = load i64, i64* %PC.i523
  %1915 = add i64 %1914, 8
  store i64 %1915, i64* %PC.i523
  %1916 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %1916, i64* %RAX.i524, align 8
  store %struct.Memory* %loadMem_454643, %struct.Memory** %MEMORY
  %loadMem_45464b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 33
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %1919 to i64*
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 5
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %RCX.i521 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 15
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %1925 to i64*
  %1926 = load i64, i64* %RBP.i522
  %1927 = sub i64 %1926, 20
  %1928 = load i64, i64* %PC.i520
  %1929 = add i64 %1928, 3
  store i64 %1929, i64* %PC.i520
  %1930 = inttoptr i64 %1927 to i32*
  %1931 = load i32, i32* %1930
  %1932 = zext i32 %1931 to i64
  store i64 %1932, i64* %RCX.i521, align 8
  store %struct.Memory* %loadMem_45464b, %struct.Memory** %MEMORY
  %loadMem_45464e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 33
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %1935 to i64*
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 5
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %ECX.i518 = bitcast %union.anon* %1938 to i32*
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 7
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %RDX.i519 = bitcast %union.anon* %1941 to i64*
  %1942 = load i32, i32* %ECX.i518
  %1943 = zext i32 %1942 to i64
  %1944 = load i64, i64* %PC.i517
  %1945 = add i64 %1944, 2
  store i64 %1945, i64* %PC.i517
  %1946 = and i64 %1943, 4294967295
  store i64 %1946, i64* %RDX.i519, align 8
  store %struct.Memory* %loadMem_45464e, %struct.Memory** %MEMORY
  %loadMem_454650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 1
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 7
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %RDX.i516 = bitcast %union.anon* %1955 to i64*
  %1956 = load i64, i64* %RAX.i515
  %1957 = load i64, i64* %RDX.i516
  %1958 = mul i64 %1957, 8
  %1959 = add i64 %1958, %1956
  %1960 = load i64, i64* %PC.i514
  %1961 = add i64 %1960, 4
  store i64 %1961, i64* %PC.i514
  %1962 = inttoptr i64 %1959 to i64*
  %1963 = load i64, i64* %1962
  store i64 %1963, i64* %RAX.i515, align 8
  store %struct.Memory* %loadMem_454650, %struct.Memory** %MEMORY
  %loadMem_454654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 33
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 1
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %1969 to i64*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 5
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %RCX.i513 = bitcast %union.anon* %1972 to i64*
  %1973 = load i64, i64* %RAX.i512
  %1974 = add i64 %1973, 4
  %1975 = load i64, i64* %PC.i511
  %1976 = add i64 %1975, 3
  store i64 %1976, i64* %PC.i511
  %1977 = inttoptr i64 %1974 to i32*
  %1978 = load i32, i32* %1977
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RCX.i513, align 8
  store %struct.Memory* %loadMem_454654, %struct.Memory** %MEMORY
  %loadMem_454657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 33
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 5
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %RCX.i510 = bitcast %union.anon* %1985 to i64*
  %1986 = load i64, i64* %RCX.i510
  %1987 = load i64, i64* %PC.i509
  %1988 = add i64 %1987, 3
  store i64 %1988, i64* %PC.i509
  %1989 = and i64 1, %1986
  %1990 = trunc i64 %1989 to i32
  store i64 %1989, i64* %RCX.i510, align 8
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1991, align 1
  %1992 = and i32 %1990, 255
  %1993 = call i32 @llvm.ctpop.i32(i32 %1992)
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = xor i8 %1995, 1
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1996, i8* %1997, align 1
  %1998 = icmp eq i32 %1990, 0
  %1999 = zext i1 %1998 to i8
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1999, i8* %2000, align 1
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2001, align 1
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2002, align 1
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2003, align 1
  store %struct.Memory* %loadMem_454657, %struct.Memory** %MEMORY
  %loadMem_45465a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 33
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 5
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %ECX.i508 = bitcast %union.anon* %2009 to i32*
  %2010 = load i32, i32* %ECX.i508
  %2011 = zext i32 %2010 to i64
  %2012 = load i64, i64* %PC.i507
  %2013 = add i64 %2012, 3
  store i64 %2013, i64* %PC.i507
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2014, align 1
  %2015 = and i32 %2010, 255
  %2016 = call i32 @llvm.ctpop.i32(i32 %2015)
  %2017 = trunc i32 %2016 to i8
  %2018 = and i8 %2017, 1
  %2019 = xor i8 %2018, 1
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2019, i8* %2020, align 1
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2021, align 1
  %2022 = icmp eq i32 %2010, 0
  %2023 = zext i1 %2022 to i8
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2023, i8* %2024, align 1
  %2025 = lshr i32 %2010, 31
  %2026 = trunc i32 %2025 to i8
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2026, i8* %2027, align 1
  %2028 = lshr i32 %2010, 31
  %2029 = xor i32 %2025, %2028
  %2030 = add i32 %2029, %2028
  %2031 = icmp eq i32 %2030, 2
  %2032 = zext i1 %2031 to i8
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2032, i8* %2033, align 1
  store %struct.Memory* %loadMem_45465a, %struct.Memory** %MEMORY
  %loadMem_45465d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 33
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %2036 to i64*
  %2037 = load i64, i64* %PC.i506
  %2038 = add i64 %2037, 420
  %2039 = load i64, i64* %PC.i506
  %2040 = add i64 %2039, 6
  %2041 = load i64, i64* %PC.i506
  %2042 = add i64 %2041, 6
  store i64 %2042, i64* %PC.i506
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2044 = load i8, i8* %2043, align 1
  store i8 %2044, i8* %BRANCH_TAKEN, align 1
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2046 = icmp ne i8 %2044, 0
  %2047 = select i1 %2046, i64 %2038, i64 %2040
  store i64 %2047, i64* %2045, align 8
  store %struct.Memory* %loadMem_45465d, %struct.Memory** %MEMORY
  %loadBr_45465d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45465d = icmp eq i8 %loadBr_45465d, 1
  br i1 %cmpBr_45465d, label %block_.L_454801, label %block_454663

block_454663:                                     ; preds = %block_454643
  %loadMem_454663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 33
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %2050 to i64*
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 1
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %PC.i504
  %2055 = add i64 %2054, 8
  store i64 %2055, i64* %PC.i504
  %2056 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %2056, i64* %RAX.i505, align 8
  store %struct.Memory* %loadMem_454663, %struct.Memory** %MEMORY
  %loadMem_45466b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 5
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RCX.i502 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 15
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %2065 to i64*
  %2066 = load i64, i64* %RBP.i503
  %2067 = sub i64 %2066, 20
  %2068 = load i64, i64* %PC.i501
  %2069 = add i64 %2068, 3
  store i64 %2069, i64* %PC.i501
  %2070 = inttoptr i64 %2067 to i32*
  %2071 = load i32, i32* %2070
  %2072 = zext i32 %2071 to i64
  store i64 %2072, i64* %RCX.i502, align 8
  store %struct.Memory* %loadMem_45466b, %struct.Memory** %MEMORY
  %loadMem_45466e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2074 = getelementptr inbounds %struct.GPR, %struct.GPR* %2073, i32 0, i32 33
  %2075 = getelementptr inbounds %struct.Reg, %struct.Reg* %2074, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %2075 to i64*
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2077 = getelementptr inbounds %struct.GPR, %struct.GPR* %2076, i32 0, i32 5
  %2078 = getelementptr inbounds %struct.Reg, %struct.Reg* %2077, i32 0, i32 0
  %ECX.i499 = bitcast %union.anon* %2078 to i32*
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 7
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %RDX.i500 = bitcast %union.anon* %2081 to i64*
  %2082 = load i32, i32* %ECX.i499
  %2083 = zext i32 %2082 to i64
  %2084 = load i64, i64* %PC.i498
  %2085 = add i64 %2084, 2
  store i64 %2085, i64* %PC.i498
  %2086 = and i64 %2083, 4294967295
  store i64 %2086, i64* %RDX.i500, align 8
  store %struct.Memory* %loadMem_45466e, %struct.Memory** %MEMORY
  %loadMem_454670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 33
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2089 to i64*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 1
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %2092 to i64*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 7
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %RDX.i497 = bitcast %union.anon* %2095 to i64*
  %2096 = load i64, i64* %RAX.i496
  %2097 = load i64, i64* %RDX.i497
  %2098 = mul i64 %2097, 8
  %2099 = add i64 %2098, %2096
  %2100 = load i64, i64* %PC.i495
  %2101 = add i64 %2100, 4
  store i64 %2101, i64* %PC.i495
  %2102 = inttoptr i64 %2099 to i64*
  %2103 = load i64, i64* %2102
  store i64 %2103, i64* %RAX.i496, align 8
  store %struct.Memory* %loadMem_454670, %struct.Memory** %MEMORY
  %loadMem_454674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 33
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 1
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %2109 to i64*
  %2110 = load i64, i64* %RAX.i494
  %2111 = add i64 %2110, 48
  %2112 = load i64, i64* %PC.i493
  %2113 = add i64 %2112, 4
  store i64 %2113, i64* %PC.i493
  %2114 = inttoptr i64 %2111 to i64*
  %2115 = load i64, i64* %2114
  store i64 %2115, i64* %RAX.i494, align 8
  store %struct.Memory* %loadMem_454674, %struct.Memory** %MEMORY
  %loadMem_454678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2117 = getelementptr inbounds %struct.GPR, %struct.GPR* %2116, i32 0, i32 33
  %2118 = getelementptr inbounds %struct.Reg, %struct.Reg* %2117, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %2118 to i64*
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 1
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %2121 to i64*
  %2122 = load i64, i64* %RAX.i492
  %2123 = add i64 %2122, 6376
  %2124 = load i64, i64* %PC.i491
  %2125 = add i64 %2124, 7
  store i64 %2125, i64* %PC.i491
  %2126 = inttoptr i64 %2123 to i32*
  %2127 = load i32, i32* %2126
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2128, align 1
  %2129 = and i32 %2127, 255
  %2130 = call i32 @llvm.ctpop.i32(i32 %2129)
  %2131 = trunc i32 %2130 to i8
  %2132 = and i8 %2131, 1
  %2133 = xor i8 %2132, 1
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2133, i8* %2134, align 1
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2135, align 1
  %2136 = icmp eq i32 %2127, 0
  %2137 = zext i1 %2136 to i8
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2137, i8* %2138, align 1
  %2139 = lshr i32 %2127, 31
  %2140 = trunc i32 %2139 to i8
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2140, i8* %2141, align 1
  %2142 = lshr i32 %2127, 31
  %2143 = xor i32 %2139, %2142
  %2144 = add i32 %2143, %2142
  %2145 = icmp eq i32 %2144, 2
  %2146 = zext i1 %2145 to i8
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2146, i8* %2147, align 1
  store %struct.Memory* %loadMem_454678, %struct.Memory** %MEMORY
  %loadMem_45467f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 33
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %2150 to i64*
  %2151 = load i64, i64* %PC.i490
  %2152 = add i64 %2151, 381
  %2153 = load i64, i64* %PC.i490
  %2154 = add i64 %2153, 6
  %2155 = load i64, i64* %PC.i490
  %2156 = add i64 %2155, 6
  store i64 %2156, i64* %PC.i490
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2158 = load i8, i8* %2157, align 1
  %2159 = icmp eq i8 %2158, 0
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %BRANCH_TAKEN, align 1
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2162 = select i1 %2159, i64 %2152, i64 %2154
  store i64 %2162, i64* %2161, align 8
  store %struct.Memory* %loadMem_45467f, %struct.Memory** %MEMORY
  %loadBr_45467f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45467f = icmp eq i8 %loadBr_45467f, 1
  br i1 %cmpBr_45467f, label %block_.L_4547fc, label %block_454685

block_454685:                                     ; preds = %block_454663
  %loadMem_454685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 33
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 1
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %2168 to i64*
  %2169 = load i64, i64* %PC.i488
  %2170 = add i64 %2169, 8
  store i64 %2170, i64* %PC.i488
  %2171 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %2171, i64* %RAX.i489, align 8
  store %struct.Memory* %loadMem_454685, %struct.Memory** %MEMORY
  %loadMem_45468d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 33
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 5
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 15
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %2180 to i64*
  %2181 = load i64, i64* %RBP.i487
  %2182 = sub i64 %2181, 20
  %2183 = load i64, i64* %PC.i485
  %2184 = add i64 %2183, 3
  store i64 %2184, i64* %PC.i485
  %2185 = inttoptr i64 %2182 to i32*
  %2186 = load i32, i32* %2185
  %2187 = zext i32 %2186 to i64
  store i64 %2187, i64* %RCX.i486, align 8
  store %struct.Memory* %loadMem_45468d, %struct.Memory** %MEMORY
  %loadMem_454690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2189 = getelementptr inbounds %struct.GPR, %struct.GPR* %2188, i32 0, i32 33
  %2190 = getelementptr inbounds %struct.Reg, %struct.Reg* %2189, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2190 to i64*
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2192 = getelementptr inbounds %struct.GPR, %struct.GPR* %2191, i32 0, i32 5
  %2193 = getelementptr inbounds %struct.Reg, %struct.Reg* %2192, i32 0, i32 0
  %ECX.i483 = bitcast %union.anon* %2193 to i32*
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 7
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %RDX.i484 = bitcast %union.anon* %2196 to i64*
  %2197 = load i32, i32* %ECX.i483
  %2198 = zext i32 %2197 to i64
  %2199 = load i64, i64* %PC.i482
  %2200 = add i64 %2199, 2
  store i64 %2200, i64* %PC.i482
  %2201 = and i64 %2198, 4294967295
  store i64 %2201, i64* %RDX.i484, align 8
  store %struct.Memory* %loadMem_454690, %struct.Memory** %MEMORY
  %loadMem_454692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 33
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %2204 to i64*
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 1
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 7
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %RDX.i481 = bitcast %union.anon* %2210 to i64*
  %2211 = load i64, i64* %RAX.i480
  %2212 = load i64, i64* %RDX.i481
  %2213 = mul i64 %2212, 8
  %2214 = add i64 %2213, %2211
  %2215 = load i64, i64* %PC.i479
  %2216 = add i64 %2215, 4
  store i64 %2216, i64* %PC.i479
  %2217 = inttoptr i64 %2214 to i64*
  %2218 = load i64, i64* %2217
  store i64 %2218, i64* %RAX.i480, align 8
  store %struct.Memory* %loadMem_454692, %struct.Memory** %MEMORY
  %loadMem_454696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 33
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %2221 to i64*
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 1
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %2224 to i64*
  %2225 = load i64, i64* %RAX.i478
  %2226 = add i64 %2225, 48
  %2227 = load i64, i64* %PC.i477
  %2228 = add i64 %2227, 4
  store i64 %2228, i64* %PC.i477
  %2229 = inttoptr i64 %2226 to i64*
  %2230 = load i64, i64* %2229
  store i64 %2230, i64* %RAX.i478, align 8
  store %struct.Memory* %loadMem_454696, %struct.Memory** %MEMORY
  %loadMem_45469a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 33
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 1
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %RAX.i475 = bitcast %union.anon* %2236 to i64*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 5
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %RCX.i476 = bitcast %union.anon* %2239 to i64*
  %2240 = load i64, i64* %RAX.i475
  %2241 = add i64 %2240, 6364
  %2242 = load i64, i64* %PC.i474
  %2243 = add i64 %2242, 6
  store i64 %2243, i64* %PC.i474
  %2244 = inttoptr i64 %2241 to i32*
  %2245 = load i32, i32* %2244
  %2246 = zext i32 %2245 to i64
  store i64 %2246, i64* %RCX.i476, align 8
  store %struct.Memory* %loadMem_45469a, %struct.Memory** %MEMORY
  %loadMem_4546a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 33
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %2249 to i64*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 5
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %ECX.i472 = bitcast %union.anon* %2252 to i32*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 15
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %2255 to i64*
  %2256 = load i32, i32* %ECX.i472
  %2257 = zext i32 %2256 to i64
  %2258 = load i64, i64* %RBP.i473
  %2259 = sub i64 %2258, 16
  %2260 = load i64, i64* %PC.i471
  %2261 = add i64 %2260, 3
  store i64 %2261, i64* %PC.i471
  %2262 = inttoptr i64 %2259 to i32*
  %2263 = load i32, i32* %2262
  %2264 = sub i32 %2256, %2263
  %2265 = icmp ult i32 %2256, %2263
  %2266 = zext i1 %2265 to i8
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2266, i8* %2267, align 1
  %2268 = and i32 %2264, 255
  %2269 = call i32 @llvm.ctpop.i32(i32 %2268)
  %2270 = trunc i32 %2269 to i8
  %2271 = and i8 %2270, 1
  %2272 = xor i8 %2271, 1
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2272, i8* %2273, align 1
  %2274 = xor i32 %2263, %2256
  %2275 = xor i32 %2274, %2264
  %2276 = lshr i32 %2275, 4
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2278, i8* %2279, align 1
  %2280 = icmp eq i32 %2264, 0
  %2281 = zext i1 %2280 to i8
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2281, i8* %2282, align 1
  %2283 = lshr i32 %2264, 31
  %2284 = trunc i32 %2283 to i8
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2284, i8* %2285, align 1
  %2286 = lshr i32 %2256, 31
  %2287 = lshr i32 %2263, 31
  %2288 = xor i32 %2287, %2286
  %2289 = xor i32 %2283, %2286
  %2290 = add i32 %2289, %2288
  %2291 = icmp eq i32 %2290, 2
  %2292 = zext i1 %2291 to i8
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2292, i8* %2293, align 1
  store %struct.Memory* %loadMem_4546a0, %struct.Memory** %MEMORY
  %loadMem_4546a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 33
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2296 to i64*
  %2297 = load i64, i64* %PC.i470
  %2298 = add i64 %2297, 345
  %2299 = load i64, i64* %PC.i470
  %2300 = add i64 %2299, 6
  %2301 = load i64, i64* %PC.i470
  %2302 = add i64 %2301, 6
  store i64 %2302, i64* %PC.i470
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2304 = load i8, i8* %2303, align 1
  %2305 = icmp eq i8 %2304, 0
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %BRANCH_TAKEN, align 1
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2308 = select i1 %2305, i64 %2298, i64 %2300
  store i64 %2308, i64* %2307, align 8
  store %struct.Memory* %loadMem_4546a3, %struct.Memory** %MEMORY
  %loadBr_4546a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4546a3 = icmp eq i8 %loadBr_4546a3, 1
  br i1 %cmpBr_4546a3, label %block_.L_4547fc, label %block_4546a9

block_4546a9:                                     ; preds = %block_454685
  %loadMem_4546a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 33
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %2311 to i64*
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 1
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %2314 to i64*
  %2315 = load i64, i64* %PC.i468
  %2316 = add i64 %2315, 8
  store i64 %2316, i64* %PC.i468
  %2317 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %2317, i64* %RAX.i469, align 8
  store %struct.Memory* %loadMem_4546a9, %struct.Memory** %MEMORY
  %loadMem_4546b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 33
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2320 to i64*
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 5
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %2323 to i64*
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 15
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %2326 to i64*
  %2327 = load i64, i64* %RBP.i467
  %2328 = sub i64 %2327, 20
  %2329 = load i64, i64* %PC.i465
  %2330 = add i64 %2329, 3
  store i64 %2330, i64* %PC.i465
  %2331 = inttoptr i64 %2328 to i32*
  %2332 = load i32, i32* %2331
  %2333 = zext i32 %2332 to i64
  store i64 %2333, i64* %RCX.i466, align 8
  store %struct.Memory* %loadMem_4546b1, %struct.Memory** %MEMORY
  %loadMem_4546b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 33
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %2336 to i64*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 5
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %ECX.i463 = bitcast %union.anon* %2339 to i32*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 7
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RDX.i464 = bitcast %union.anon* %2342 to i64*
  %2343 = load i32, i32* %ECX.i463
  %2344 = zext i32 %2343 to i64
  %2345 = load i64, i64* %PC.i462
  %2346 = add i64 %2345, 2
  store i64 %2346, i64* %PC.i462
  %2347 = and i64 %2344, 4294967295
  store i64 %2347, i64* %RDX.i464, align 8
  store %struct.Memory* %loadMem_4546b4, %struct.Memory** %MEMORY
  %loadMem_4546b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 33
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 1
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RAX.i460 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 7
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RDX.i461 = bitcast %union.anon* %2356 to i64*
  %2357 = load i64, i64* %RAX.i460
  %2358 = load i64, i64* %RDX.i461
  %2359 = mul i64 %2358, 8
  %2360 = add i64 %2359, %2357
  %2361 = load i64, i64* %PC.i459
  %2362 = add i64 %2361, 4
  store i64 %2362, i64* %PC.i459
  %2363 = inttoptr i64 %2360 to i64*
  %2364 = load i64, i64* %2363
  store i64 %2364, i64* %RAX.i460, align 8
  store %struct.Memory* %loadMem_4546b6, %struct.Memory** %MEMORY
  %loadMem_4546ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 33
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 1
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %2370 to i64*
  %2371 = load i64, i64* %RAX.i458
  %2372 = add i64 %2371, 8
  %2373 = load i64, i64* %PC.i457
  %2374 = add i64 %2373, 4
  store i64 %2374, i64* %PC.i457
  %2375 = inttoptr i64 %2372 to i32*
  %2376 = load i32, i32* %2375
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2377, align 1
  %2378 = and i32 %2376, 255
  %2379 = call i32 @llvm.ctpop.i32(i32 %2378)
  %2380 = trunc i32 %2379 to i8
  %2381 = and i8 %2380, 1
  %2382 = xor i8 %2381, 1
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2382, i8* %2383, align 1
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2384, align 1
  %2385 = icmp eq i32 %2376, 0
  %2386 = zext i1 %2385 to i8
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2386, i8* %2387, align 1
  %2388 = lshr i32 %2376, 31
  %2389 = trunc i32 %2388 to i8
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2389, i8* %2390, align 1
  %2391 = lshr i32 %2376, 31
  %2392 = xor i32 %2388, %2391
  %2393 = add i32 %2392, %2391
  %2394 = icmp eq i32 %2393, 2
  %2395 = zext i1 %2394 to i8
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2395, i8* %2396, align 1
  store %struct.Memory* %loadMem_4546ba, %struct.Memory** %MEMORY
  %loadMem_4546be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %2399 to i64*
  %2400 = load i64, i64* %PC.i456
  %2401 = add i64 %2400, 55
  %2402 = load i64, i64* %PC.i456
  %2403 = add i64 %2402, 6
  %2404 = load i64, i64* %PC.i456
  %2405 = add i64 %2404, 6
  store i64 %2405, i64* %PC.i456
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2407 = load i8, i8* %2406, align 1
  store i8 %2407, i8* %BRANCH_TAKEN, align 1
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2409 = icmp ne i8 %2407, 0
  %2410 = select i1 %2409, i64 %2401, i64 %2403
  store i64 %2410, i64* %2408, align 8
  store %struct.Memory* %loadMem_4546be, %struct.Memory** %MEMORY
  %loadBr_4546be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4546be = icmp eq i8 %loadBr_4546be, 1
  br i1 %cmpBr_4546be, label %block_.L_4546f5, label %block_4546c4

block_4546c4:                                     ; preds = %block_4546a9
  %loadMem_4546c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 33
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %2413 to i64*
  %2414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2415 = getelementptr inbounds %struct.GPR, %struct.GPR* %2414, i32 0, i32 1
  %2416 = getelementptr inbounds %struct.Reg, %struct.Reg* %2415, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %2416 to i64*
  %2417 = load i64, i64* %PC.i454
  %2418 = add i64 %2417, 8
  store i64 %2418, i64* %PC.i454
  %2419 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %2419, i64* %RAX.i455, align 8
  store %struct.Memory* %loadMem_4546c4, %struct.Memory** %MEMORY
  %loadMem_4546cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 33
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 5
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %RCX.i452 = bitcast %union.anon* %2425 to i64*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 15
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %2428 to i64*
  %2429 = load i64, i64* %RBP.i453
  %2430 = sub i64 %2429, 20
  %2431 = load i64, i64* %PC.i451
  %2432 = add i64 %2431, 3
  store i64 %2432, i64* %PC.i451
  %2433 = inttoptr i64 %2430 to i32*
  %2434 = load i32, i32* %2433
  %2435 = zext i32 %2434 to i64
  store i64 %2435, i64* %RCX.i452, align 8
  store %struct.Memory* %loadMem_4546cc, %struct.Memory** %MEMORY
  %loadMem_4546cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 33
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %2438 to i64*
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 5
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %ECX.i449 = bitcast %union.anon* %2441 to i32*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 7
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %RDX.i450 = bitcast %union.anon* %2444 to i64*
  %2445 = load i32, i32* %ECX.i449
  %2446 = zext i32 %2445 to i64
  %2447 = load i64, i64* %PC.i448
  %2448 = add i64 %2447, 2
  store i64 %2448, i64* %PC.i448
  %2449 = and i64 %2446, 4294967295
  store i64 %2449, i64* %RDX.i450, align 8
  store %struct.Memory* %loadMem_4546cf, %struct.Memory** %MEMORY
  %loadMem_4546d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 33
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %2452 to i64*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 1
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %2455 to i64*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 7
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %RDX.i447 = bitcast %union.anon* %2458 to i64*
  %2459 = load i64, i64* %RAX.i446
  %2460 = load i64, i64* %RDX.i447
  %2461 = mul i64 %2460, 8
  %2462 = add i64 %2461, %2459
  %2463 = load i64, i64* %PC.i445
  %2464 = add i64 %2463, 4
  store i64 %2464, i64* %PC.i445
  %2465 = inttoptr i64 %2462 to i64*
  %2466 = load i64, i64* %2465
  store i64 %2466, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_4546d1, %struct.Memory** %MEMORY
  %loadMem_4546d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 33
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %2469 to i64*
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 1
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %2472 to i64*
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 5
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %2475 to i64*
  %2476 = load i64, i64* %RAX.i443
  %2477 = add i64 %2476, 28
  %2478 = load i64, i64* %PC.i442
  %2479 = add i64 %2478, 3
  store i64 %2479, i64* %PC.i442
  %2480 = inttoptr i64 %2477 to i32*
  %2481 = load i32, i32* %2480
  %2482 = zext i32 %2481 to i64
  store i64 %2482, i64* %RCX.i444, align 8
  store %struct.Memory* %loadMem_4546d5, %struct.Memory** %MEMORY
  %loadMem_4546d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 33
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 5
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %ECX.i440 = bitcast %union.anon* %2488 to i32*
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 15
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %2491 to i64*
  %2492 = load i32, i32* %ECX.i440
  %2493 = zext i32 %2492 to i64
  %2494 = load i64, i64* %RBP.i441
  %2495 = sub i64 %2494, 12
  %2496 = load i64, i64* %PC.i439
  %2497 = add i64 %2496, 3
  store i64 %2497, i64* %PC.i439
  %2498 = inttoptr i64 %2495 to i32*
  %2499 = load i32, i32* %2498
  %2500 = sub i32 %2492, %2499
  %2501 = icmp ult i32 %2492, %2499
  %2502 = zext i1 %2501 to i8
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2502, i8* %2503, align 1
  %2504 = and i32 %2500, 255
  %2505 = call i32 @llvm.ctpop.i32(i32 %2504)
  %2506 = trunc i32 %2505 to i8
  %2507 = and i8 %2506, 1
  %2508 = xor i8 %2507, 1
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2508, i8* %2509, align 1
  %2510 = xor i32 %2499, %2492
  %2511 = xor i32 %2510, %2500
  %2512 = lshr i32 %2511, 4
  %2513 = trunc i32 %2512 to i8
  %2514 = and i8 %2513, 1
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2514, i8* %2515, align 1
  %2516 = icmp eq i32 %2500, 0
  %2517 = zext i1 %2516 to i8
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2517, i8* %2518, align 1
  %2519 = lshr i32 %2500, 31
  %2520 = trunc i32 %2519 to i8
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2520, i8* %2521, align 1
  %2522 = lshr i32 %2492, 31
  %2523 = lshr i32 %2499, 31
  %2524 = xor i32 %2523, %2522
  %2525 = xor i32 %2519, %2522
  %2526 = add i32 %2525, %2524
  %2527 = icmp eq i32 %2526, 2
  %2528 = zext i1 %2527 to i8
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2528, i8* %2529, align 1
  store %struct.Memory* %loadMem_4546d8, %struct.Memory** %MEMORY
  %loadMem_4546db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 33
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %2532 to i64*
  %2533 = load i64, i64* %PC.i438
  %2534 = add i64 %2533, 26
  %2535 = load i64, i64* %PC.i438
  %2536 = add i64 %2535, 6
  %2537 = load i64, i64* %PC.i438
  %2538 = add i64 %2537, 6
  store i64 %2538, i64* %PC.i438
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2540 = load i8, i8* %2539, align 1
  store i8 %2540, i8* %BRANCH_TAKEN, align 1
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2542 = icmp ne i8 %2540, 0
  %2543 = select i1 %2542, i64 %2534, i64 %2536
  store i64 %2543, i64* %2541, align 8
  store %struct.Memory* %loadMem_4546db, %struct.Memory** %MEMORY
  %loadBr_4546db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4546db = icmp eq i8 %loadBr_4546db, 1
  br i1 %cmpBr_4546db, label %block_.L_4546f5, label %block_4546e1

block_4546e1:                                     ; preds = %block_4546c4
  %loadMem_4546e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 33
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %2546 to i64*
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 11
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %RDI.i437 = bitcast %union.anon* %2549 to i64*
  %2550 = load i64, i64* %PC.i436
  %2551 = add i64 %2550, 10
  store i64 %2551, i64* %PC.i436
  store i64 ptrtoint (%G__0x4c1b49_type* @G__0x4c1b49 to i64), i64* %RDI.i437, align 8
  store %struct.Memory* %loadMem_4546e1, %struct.Memory** %MEMORY
  %loadMem_4546eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 33
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 1
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %2558 = bitcast %union.anon* %2557 to %struct.anon.2*
  %AL.i435 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2558, i32 0, i32 0
  %2559 = load i64, i64* %PC.i434
  %2560 = add i64 %2559, 2
  store i64 %2560, i64* %PC.i434
  store i8 0, i8* %AL.i435, align 1
  store %struct.Memory* %loadMem_4546eb, %struct.Memory** %MEMORY
  %loadMem1_4546ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2562 = getelementptr inbounds %struct.GPR, %struct.GPR* %2561, i32 0, i32 33
  %2563 = getelementptr inbounds %struct.Reg, %struct.Reg* %2562, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %2563 to i64*
  %2564 = load i64, i64* %PC.i433
  %2565 = add i64 %2564, -341677
  %2566 = load i64, i64* %PC.i433
  %2567 = add i64 %2566, 5
  %2568 = load i64, i64* %PC.i433
  %2569 = add i64 %2568, 5
  store i64 %2569, i64* %PC.i433
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2571 = load i64, i64* %2570, align 8
  %2572 = add i64 %2571, -8
  %2573 = inttoptr i64 %2572 to i64*
  store i64 %2567, i64* %2573
  store i64 %2572, i64* %2570, align 8
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2565, i64* %2574, align 8
  store %struct.Memory* %loadMem1_4546ed, %struct.Memory** %MEMORY
  %loadMem2_4546ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4546ed = load i64, i64* %3
  %2575 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4546ed)
  store %struct.Memory* %2575, %struct.Memory** %MEMORY
  %loadMem_4546f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 33
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %2578 to i64*
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2580 = getelementptr inbounds %struct.GPR, %struct.GPR* %2579, i32 0, i32 1
  %2581 = getelementptr inbounds %struct.Reg, %struct.Reg* %2580, i32 0, i32 0
  %EAX.i428 = bitcast %union.anon* %2581 to i32*
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 15
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %2584 to i64*
  %2585 = load i64, i64* %RBP.i429
  %2586 = sub i64 %2585, 36
  %2587 = load i32, i32* %EAX.i428
  %2588 = zext i32 %2587 to i64
  %2589 = load i64, i64* %PC.i427
  %2590 = add i64 %2589, 3
  store i64 %2590, i64* %PC.i427
  %2591 = inttoptr i64 %2586 to i32*
  store i32 %2587, i32* %2591
  store %struct.Memory* %loadMem_4546f2, %struct.Memory** %MEMORY
  br label %block_.L_4546f5

block_.L_4546f5:                                  ; preds = %block_4546e1, %block_4546c4, %block_4546a9
  %loadMem_4546f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 33
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %2594 to i64*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 1
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 15
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %2600 to i64*
  %2601 = load i64, i64* %RBP.i426
  %2602 = sub i64 %2601, 12
  %2603 = load i64, i64* %PC.i424
  %2604 = add i64 %2603, 3
  store i64 %2604, i64* %PC.i424
  %2605 = inttoptr i64 %2602 to i32*
  %2606 = load i32, i32* %2605
  %2607 = zext i32 %2606 to i64
  store i64 %2607, i64* %RAX.i425, align 8
  store %struct.Memory* %loadMem_4546f5, %struct.Memory** %MEMORY
  %loadMem_4546f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 33
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 5
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RCX.i423 = bitcast %union.anon* %2613 to i64*
  %2614 = load i64, i64* %PC.i422
  %2615 = add i64 %2614, 8
  store i64 %2615, i64* %PC.i422
  %2616 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %2616, i64* %RCX.i423, align 8
  store %struct.Memory* %loadMem_4546f8, %struct.Memory** %MEMORY
  %loadMem_454700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2618 = getelementptr inbounds %struct.GPR, %struct.GPR* %2617, i32 0, i32 33
  %2619 = getelementptr inbounds %struct.Reg, %struct.Reg* %2618, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %2619 to i64*
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2621 = getelementptr inbounds %struct.GPR, %struct.GPR* %2620, i32 0, i32 7
  %2622 = getelementptr inbounds %struct.Reg, %struct.Reg* %2621, i32 0, i32 0
  %RDX.i420 = bitcast %union.anon* %2622 to i64*
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 15
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %2625 to i64*
  %2626 = load i64, i64* %RBP.i421
  %2627 = sub i64 %2626, 20
  %2628 = load i64, i64* %PC.i419
  %2629 = add i64 %2628, 3
  store i64 %2629, i64* %PC.i419
  %2630 = inttoptr i64 %2627 to i32*
  %2631 = load i32, i32* %2630
  %2632 = zext i32 %2631 to i64
  store i64 %2632, i64* %RDX.i420, align 8
  store %struct.Memory* %loadMem_454700, %struct.Memory** %MEMORY
  %loadMem_454703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 7
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %EDX.i417 = bitcast %union.anon* %2638 to i32*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 9
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RSI.i418 = bitcast %union.anon* %2641 to i64*
  %2642 = load i32, i32* %EDX.i417
  %2643 = zext i32 %2642 to i64
  %2644 = load i64, i64* %PC.i416
  %2645 = add i64 %2644, 2
  store i64 %2645, i64* %PC.i416
  %2646 = and i64 %2643, 4294967295
  store i64 %2646, i64* %RSI.i418, align 8
  store %struct.Memory* %loadMem_454703, %struct.Memory** %MEMORY
  %loadMem_454705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 33
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2649 to i64*
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 5
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %2652 to i64*
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 9
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %RSI.i415 = bitcast %union.anon* %2655 to i64*
  %2656 = load i64, i64* %RCX.i414
  %2657 = load i64, i64* %RSI.i415
  %2658 = mul i64 %2657, 8
  %2659 = add i64 %2658, %2656
  %2660 = load i64, i64* %PC.i413
  %2661 = add i64 %2660, 4
  store i64 %2661, i64* %PC.i413
  %2662 = inttoptr i64 %2659 to i64*
  %2663 = load i64, i64* %2662
  store i64 %2663, i64* %RCX.i414, align 8
  store %struct.Memory* %loadMem_454705, %struct.Memory** %MEMORY
  %loadMem_454709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 5
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RCX.i412 = bitcast %union.anon* %2669 to i64*
  %2670 = load i64, i64* %RCX.i412
  %2671 = add i64 %2670, 48
  %2672 = load i64, i64* %PC.i411
  %2673 = add i64 %2672, 4
  store i64 %2673, i64* %PC.i411
  %2674 = inttoptr i64 %2671 to i64*
  %2675 = load i64, i64* %2674
  store i64 %2675, i64* %RCX.i412, align 8
  store %struct.Memory* %loadMem_454709, %struct.Memory** %MEMORY
  %loadMem_45470d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2677 = getelementptr inbounds %struct.GPR, %struct.GPR* %2676, i32 0, i32 33
  %2678 = getelementptr inbounds %struct.Reg, %struct.Reg* %2677, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %2678 to i64*
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 1
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %EAX.i409 = bitcast %union.anon* %2681 to i32*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 5
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %2684 to i64*
  %2685 = load i64, i64* %RCX.i410
  %2686 = add i64 %2685, 6372
  %2687 = load i32, i32* %EAX.i409
  %2688 = zext i32 %2687 to i64
  %2689 = load i64, i64* %PC.i408
  %2690 = add i64 %2689, 6
  store i64 %2690, i64* %PC.i408
  %2691 = inttoptr i64 %2686 to i32*
  store i32 %2687, i32* %2691
  store %struct.Memory* %loadMem_45470d, %struct.Memory** %MEMORY
  %loadMem_454713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 33
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %2694 to i64*
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 5
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %2697 to i64*
  %2698 = load i64, i64* %PC.i406
  %2699 = add i64 %2698, 8
  store i64 %2699, i64* %PC.i406
  %2700 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %2700, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_454713, %struct.Memory** %MEMORY
  %loadMem_45471b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 33
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 7
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RDX.i404 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 15
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %2709 to i64*
  %2710 = load i64, i64* %RBP.i405
  %2711 = sub i64 %2710, 20
  %2712 = load i64, i64* %PC.i403
  %2713 = add i64 %2712, 3
  store i64 %2713, i64* %PC.i403
  %2714 = inttoptr i64 %2711 to i32*
  %2715 = load i32, i32* %2714
  %2716 = zext i32 %2715 to i64
  store i64 %2716, i64* %RDX.i404, align 8
  store %struct.Memory* %loadMem_45471b, %struct.Memory** %MEMORY
  %loadMem_45471e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 33
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 7
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %EDX.i401 = bitcast %union.anon* %2722 to i32*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 9
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RSI.i402 = bitcast %union.anon* %2725 to i64*
  %2726 = load i32, i32* %EDX.i401
  %2727 = zext i32 %2726 to i64
  %2728 = load i64, i64* %PC.i400
  %2729 = add i64 %2728, 2
  store i64 %2729, i64* %PC.i400
  %2730 = and i64 %2727, 4294967295
  store i64 %2730, i64* %RSI.i402, align 8
  store %struct.Memory* %loadMem_45471e, %struct.Memory** %MEMORY
  %loadMem_454720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 33
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %2733 to i64*
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 5
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %RCX.i398 = bitcast %union.anon* %2736 to i64*
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2738 = getelementptr inbounds %struct.GPR, %struct.GPR* %2737, i32 0, i32 9
  %2739 = getelementptr inbounds %struct.Reg, %struct.Reg* %2738, i32 0, i32 0
  %RSI.i399 = bitcast %union.anon* %2739 to i64*
  %2740 = load i64, i64* %RCX.i398
  %2741 = load i64, i64* %RSI.i399
  %2742 = mul i64 %2741, 8
  %2743 = add i64 %2742, %2740
  %2744 = load i64, i64* %PC.i397
  %2745 = add i64 %2744, 4
  store i64 %2745, i64* %PC.i397
  %2746 = inttoptr i64 %2743 to i64*
  %2747 = load i64, i64* %2746
  store i64 %2747, i64* %RCX.i398, align 8
  store %struct.Memory* %loadMem_454720, %struct.Memory** %MEMORY
  %loadMem_454724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 33
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 1
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %EAX.i395 = bitcast %union.anon* %2753 to i32*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 5
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %RCX.i396 = bitcast %union.anon* %2756 to i64*
  %2757 = load i64, i64* %RCX.i396
  %2758 = add i64 %2757, 28
  %2759 = load i32, i32* %EAX.i395
  %2760 = zext i32 %2759 to i64
  %2761 = load i64, i64* %PC.i394
  %2762 = add i64 %2761, 3
  store i64 %2762, i64* %PC.i394
  %2763 = inttoptr i64 %2758 to i32*
  store i32 %2759, i32* %2763
  store %struct.Memory* %loadMem_454724, %struct.Memory** %MEMORY
  %loadMem_454727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 33
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %2766 to i64*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 1
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %2769 to i64*
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 15
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %2772 to i64*
  %2773 = load i64, i64* %RBP.i393
  %2774 = sub i64 %2773, 12
  %2775 = load i64, i64* %PC.i391
  %2776 = add i64 %2775, 3
  store i64 %2776, i64* %PC.i391
  %2777 = inttoptr i64 %2774 to i32*
  %2778 = load i32, i32* %2777
  %2779 = zext i32 %2778 to i64
  store i64 %2779, i64* %RAX.i392, align 8
  store %struct.Memory* %loadMem_454727, %struct.Memory** %MEMORY
  %loadMem_45472a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 33
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %2782 to i64*
  %2783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2784 = getelementptr inbounds %struct.GPR, %struct.GPR* %2783, i32 0, i32 1
  %2785 = getelementptr inbounds %struct.Reg, %struct.Reg* %2784, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %2785 to i64*
  %2786 = load i64, i64* %RAX.i390
  %2787 = load i64, i64* %PC.i389
  %2788 = add i64 %2787, 2
  store i64 %2788, i64* %PC.i389
  %2789 = trunc i64 %2786 to i32
  %2790 = shl i32 %2789, 1
  %2791 = icmp slt i32 %2789, 0
  %2792 = icmp slt i32 %2790, 0
  %2793 = xor i1 %2791, %2792
  %2794 = zext i32 %2790 to i64
  store i64 %2794, i64* %RAX.i390, align 8
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2796 = zext i1 %2791 to i8
  store i8 %2796, i8* %2795, align 1
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2798 = and i32 %2790, 254
  %2799 = call i32 @llvm.ctpop.i32(i32 %2798)
  %2800 = trunc i32 %2799 to i8
  %2801 = and i8 %2800, 1
  %2802 = xor i8 %2801, 1
  store i8 %2802, i8* %2797, align 1
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2803, align 1
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2805 = icmp eq i32 %2790, 0
  %2806 = zext i1 %2805 to i8
  store i8 %2806, i8* %2804, align 1
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2808 = lshr i32 %2790, 31
  %2809 = trunc i32 %2808 to i8
  store i8 %2809, i8* %2807, align 1
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2811 = zext i1 %2793 to i8
  store i8 %2811, i8* %2810, align 1
  store %struct.Memory* %loadMem_45472a, %struct.Memory** %MEMORY
  %loadMem_45472d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 33
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %2814 to i64*
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 1
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 15
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %2820 to i64*
  %2821 = load i64, i64* %RAX.i387
  %2822 = load i64, i64* %RBP.i388
  %2823 = sub i64 %2822, 24
  %2824 = load i64, i64* %PC.i386
  %2825 = add i64 %2824, 3
  store i64 %2825, i64* %PC.i386
  %2826 = trunc i64 %2821 to i32
  %2827 = inttoptr i64 %2823 to i32*
  %2828 = load i32, i32* %2827
  %2829 = add i32 %2828, %2826
  %2830 = zext i32 %2829 to i64
  store i64 %2830, i64* %RAX.i387, align 8
  %2831 = icmp ult i32 %2829, %2826
  %2832 = icmp ult i32 %2829, %2828
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
  %2842 = xor i32 %2828, %2826
  %2843 = xor i32 %2842, %2829
  %2844 = lshr i32 %2843, 4
  %2845 = trunc i32 %2844 to i8
  %2846 = and i8 %2845, 1
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2846, i8* %2847, align 1
  %2848 = icmp eq i32 %2829, 0
  %2849 = zext i1 %2848 to i8
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2849, i8* %2850, align 1
  %2851 = lshr i32 %2829, 31
  %2852 = trunc i32 %2851 to i8
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2852, i8* %2853, align 1
  %2854 = lshr i32 %2826, 31
  %2855 = lshr i32 %2828, 31
  %2856 = xor i32 %2851, %2854
  %2857 = xor i32 %2851, %2855
  %2858 = add i32 %2856, %2857
  %2859 = icmp eq i32 %2858, 2
  %2860 = zext i1 %2859 to i8
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2860, i8* %2861, align 1
  store %struct.Memory* %loadMem_45472d, %struct.Memory** %MEMORY
  %loadMem_454730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 33
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %2864 to i64*
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 5
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %RCX.i385 = bitcast %union.anon* %2867 to i64*
  %2868 = load i64, i64* %PC.i384
  %2869 = add i64 %2868, 8
  store i64 %2869, i64* %PC.i384
  %2870 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %2870, i64* %RCX.i385, align 8
  store %struct.Memory* %loadMem_454730, %struct.Memory** %MEMORY
  %loadMem_454738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %2873 to i64*
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 7
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %RDX.i382 = bitcast %union.anon* %2876 to i64*
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 15
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %2879 to i64*
  %2880 = load i64, i64* %RBP.i383
  %2881 = sub i64 %2880, 20
  %2882 = load i64, i64* %PC.i381
  %2883 = add i64 %2882, 3
  store i64 %2883, i64* %PC.i381
  %2884 = inttoptr i64 %2881 to i32*
  %2885 = load i32, i32* %2884
  %2886 = zext i32 %2885 to i64
  store i64 %2886, i64* %RDX.i382, align 8
  store %struct.Memory* %loadMem_454738, %struct.Memory** %MEMORY
  %loadMem_45473b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 33
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %2889 to i64*
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 7
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %EDX.i379 = bitcast %union.anon* %2892 to i32*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 9
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %RSI.i380 = bitcast %union.anon* %2895 to i64*
  %2896 = load i32, i32* %EDX.i379
  %2897 = zext i32 %2896 to i64
  %2898 = load i64, i64* %PC.i378
  %2899 = add i64 %2898, 2
  store i64 %2899, i64* %PC.i378
  %2900 = and i64 %2897, 4294967295
  store i64 %2900, i64* %RSI.i380, align 8
  store %struct.Memory* %loadMem_45473b, %struct.Memory** %MEMORY
  %loadMem_45473d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 33
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %2903 to i64*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 5
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RCX.i376 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 9
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %RSI.i377 = bitcast %union.anon* %2909 to i64*
  %2910 = load i64, i64* %RCX.i376
  %2911 = load i64, i64* %RSI.i377
  %2912 = mul i64 %2911, 8
  %2913 = add i64 %2912, %2910
  %2914 = load i64, i64* %PC.i375
  %2915 = add i64 %2914, 4
  store i64 %2915, i64* %PC.i375
  %2916 = inttoptr i64 %2913 to i64*
  %2917 = load i64, i64* %2916
  store i64 %2917, i64* %RCX.i376, align 8
  store %struct.Memory* %loadMem_45473d, %struct.Memory** %MEMORY
  %loadMem_454741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 33
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %2920 to i64*
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 5
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %RCX.i374 = bitcast %union.anon* %2923 to i64*
  %2924 = load i64, i64* %RCX.i374
  %2925 = add i64 %2924, 48
  %2926 = load i64, i64* %PC.i373
  %2927 = add i64 %2926, 4
  store i64 %2927, i64* %PC.i373
  %2928 = inttoptr i64 %2925 to i64*
  %2929 = load i64, i64* %2928
  store i64 %2929, i64* %RCX.i374, align 8
  store %struct.Memory* %loadMem_454741, %struct.Memory** %MEMORY
  %loadMem_454745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 1
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %EAX.i371 = bitcast %union.anon* %2935 to i32*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 5
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %2938 to i64*
  %2939 = load i64, i64* %RCX.i372
  %2940 = add i64 %2939, 6368
  %2941 = load i32, i32* %EAX.i371
  %2942 = zext i32 %2941 to i64
  %2943 = load i64, i64* %PC.i370
  %2944 = add i64 %2943, 6
  store i64 %2944, i64* %PC.i370
  %2945 = inttoptr i64 %2940 to i32*
  store i32 %2941, i32* %2945
  store %struct.Memory* %loadMem_454745, %struct.Memory** %MEMORY
  %loadMem_45474b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 33
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 5
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RCX.i369 = bitcast %union.anon* %2951 to i64*
  %2952 = load i64, i64* %PC.i368
  %2953 = add i64 %2952, 8
  store i64 %2953, i64* %PC.i368
  %2954 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %2954, i64* %RCX.i369, align 8
  store %struct.Memory* %loadMem_45474b, %struct.Memory** %MEMORY
  %loadMem_454753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 1
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %RAX.i366 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 15
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %2963 to i64*
  %2964 = load i64, i64* %RBP.i367
  %2965 = sub i64 %2964, 20
  %2966 = load i64, i64* %PC.i365
  %2967 = add i64 %2966, 3
  store i64 %2967, i64* %PC.i365
  %2968 = inttoptr i64 %2965 to i32*
  %2969 = load i32, i32* %2968
  %2970 = zext i32 %2969 to i64
  store i64 %2970, i64* %RAX.i366, align 8
  store %struct.Memory* %loadMem_454753, %struct.Memory** %MEMORY
  %loadMem_454756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 33
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 1
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %EAX.i363 = bitcast %union.anon* %2976 to i32*
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 9
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %RSI.i364 = bitcast %union.anon* %2979 to i64*
  %2980 = load i32, i32* %EAX.i363
  %2981 = zext i32 %2980 to i64
  %2982 = load i64, i64* %PC.i362
  %2983 = add i64 %2982, 2
  store i64 %2983, i64* %PC.i362
  %2984 = and i64 %2981, 4294967295
  store i64 %2984, i64* %RSI.i364, align 8
  store %struct.Memory* %loadMem_454756, %struct.Memory** %MEMORY
  %loadMem_454758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 33
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2987 to i64*
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 5
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %RCX.i360 = bitcast %union.anon* %2990 to i64*
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 9
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %RSI.i361 = bitcast %union.anon* %2993 to i64*
  %2994 = load i64, i64* %RCX.i360
  %2995 = load i64, i64* %RSI.i361
  %2996 = mul i64 %2995, 8
  %2997 = add i64 %2996, %2994
  %2998 = load i64, i64* %PC.i359
  %2999 = add i64 %2998, 4
  store i64 %2999, i64* %PC.i359
  %3000 = inttoptr i64 %2997 to i64*
  %3001 = load i64, i64* %3000
  store i64 %3001, i64* %RCX.i360, align 8
  store %struct.Memory* %loadMem_454758, %struct.Memory** %MEMORY
  %loadMem_45475c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 33
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %3004 to i64*
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 5
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %RCX.i358 = bitcast %union.anon* %3007 to i64*
  %3008 = load i64, i64* %RCX.i358
  %3009 = add i64 %3008, 48
  %3010 = load i64, i64* %PC.i357
  %3011 = add i64 %3010, 4
  store i64 %3011, i64* %PC.i357
  %3012 = inttoptr i64 %3009 to i64*
  %3013 = load i64, i64* %3012
  store i64 %3013, i64* %RCX.i358, align 8
  store %struct.Memory* %loadMem_45475c, %struct.Memory** %MEMORY
  %loadMem_454760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 33
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %3016 to i64*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 5
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %RCX.i356 = bitcast %union.anon* %3019 to i64*
  %3020 = load i64, i64* %RCX.i356
  %3021 = add i64 %3020, 6376
  %3022 = load i64, i64* %PC.i355
  %3023 = add i64 %3022, 10
  store i64 %3023, i64* %PC.i355
  %3024 = inttoptr i64 %3021 to i32*
  store i32 1, i32* %3024
  store %struct.Memory* %loadMem_454760, %struct.Memory** %MEMORY
  %loadMem_45476a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 33
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 5
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %3030 to i64*
  %3031 = load i64, i64* %PC.i353
  %3032 = add i64 %3031, 8
  store i64 %3032, i64* %PC.i353
  %3033 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %3033, i64* %RCX.i354, align 8
  store %struct.Memory* %loadMem_45476a, %struct.Memory** %MEMORY
  %loadMem_454772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 33
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 1
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %3039 to i64*
  %3040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3041 = getelementptr inbounds %struct.GPR, %struct.GPR* %3040, i32 0, i32 15
  %3042 = getelementptr inbounds %struct.Reg, %struct.Reg* %3041, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %3042 to i64*
  %3043 = load i64, i64* %RBP.i352
  %3044 = sub i64 %3043, 20
  %3045 = load i64, i64* %PC.i350
  %3046 = add i64 %3045, 3
  store i64 %3046, i64* %PC.i350
  %3047 = inttoptr i64 %3044 to i32*
  %3048 = load i32, i32* %3047
  %3049 = zext i32 %3048 to i64
  store i64 %3049, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_454772, %struct.Memory** %MEMORY
  %loadMem_454775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 33
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 1
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %EAX.i348 = bitcast %union.anon* %3055 to i32*
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 9
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %RSI.i349 = bitcast %union.anon* %3058 to i64*
  %3059 = load i32, i32* %EAX.i348
  %3060 = zext i32 %3059 to i64
  %3061 = load i64, i64* %PC.i347
  %3062 = add i64 %3061, 2
  store i64 %3062, i64* %PC.i347
  %3063 = and i64 %3060, 4294967295
  store i64 %3063, i64* %RSI.i349, align 8
  store %struct.Memory* %loadMem_454775, %struct.Memory** %MEMORY
  %loadMem_454777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 33
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %3066 to i64*
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 5
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %3069 to i64*
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 9
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %RSI.i346 = bitcast %union.anon* %3072 to i64*
  %3073 = load i64, i64* %RCX.i345
  %3074 = load i64, i64* %RSI.i346
  %3075 = mul i64 %3074, 8
  %3076 = add i64 %3075, %3073
  %3077 = load i64, i64* %PC.i344
  %3078 = add i64 %3077, 4
  store i64 %3078, i64* %PC.i344
  %3079 = inttoptr i64 %3076 to i64*
  %3080 = load i64, i64* %3079
  store i64 %3080, i64* %RCX.i345, align 8
  store %struct.Memory* %loadMem_454777, %struct.Memory** %MEMORY
  %loadMem_45477b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3082 = getelementptr inbounds %struct.GPR, %struct.GPR* %3081, i32 0, i32 33
  %3083 = getelementptr inbounds %struct.Reg, %struct.Reg* %3082, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %3083 to i64*
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3085 = getelementptr inbounds %struct.GPR, %struct.GPR* %3084, i32 0, i32 1
  %3086 = getelementptr inbounds %struct.Reg, %struct.Reg* %3085, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %3086 to i64*
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 5
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %3089 to i64*
  %3090 = load i64, i64* %RCX.i343
  %3091 = add i64 %3090, 8
  %3092 = load i64, i64* %PC.i341
  %3093 = add i64 %3092, 3
  store i64 %3093, i64* %PC.i341
  %3094 = inttoptr i64 %3091 to i32*
  %3095 = load i32, i32* %3094
  %3096 = zext i32 %3095 to i64
  store i64 %3096, i64* %RAX.i342, align 8
  store %struct.Memory* %loadMem_45477b, %struct.Memory** %MEMORY
  %loadMem_45477e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 33
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 1
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %3102 to i64*
  %3103 = load i64, i64* %RAX.i340
  %3104 = load i64, i64* %PC.i339
  %3105 = add i64 %3104, 3
  store i64 %3105, i64* %PC.i339
  %3106 = or i64 1, %3103
  %3107 = trunc i64 %3106 to i32
  %3108 = and i64 %3106, 4294967295
  store i64 %3108, i64* %RAX.i340, align 8
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3109, align 1
  %3110 = and i32 %3107, 255
  %3111 = call i32 @llvm.ctpop.i32(i32 %3110)
  %3112 = trunc i32 %3111 to i8
  %3113 = and i8 %3112, 1
  %3114 = xor i8 %3113, 1
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3114, i8* %3115, align 1
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3116, align 1
  %3117 = lshr i32 %3107, 31
  %3118 = trunc i32 %3117 to i8
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3118, i8* %3119, align 1
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3120, align 1
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3121, align 1
  store %struct.Memory* %loadMem_45477e, %struct.Memory** %MEMORY
  %loadMem_454781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 33
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3124 to i64*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 1
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %EAX.i337 = bitcast %union.anon* %3127 to i32*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 5
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %RCX.i338 = bitcast %union.anon* %3130 to i64*
  %3131 = load i64, i64* %RCX.i338
  %3132 = add i64 %3131, 8
  %3133 = load i32, i32* %EAX.i337
  %3134 = zext i32 %3133 to i64
  %3135 = load i64, i64* %PC.i336
  %3136 = add i64 %3135, 3
  store i64 %3136, i64* %PC.i336
  %3137 = inttoptr i64 %3132 to i32*
  store i32 %3133, i32* %3137
  store %struct.Memory* %loadMem_454781, %struct.Memory** %MEMORY
  %loadMem_454784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 33
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %3140 to i64*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 5
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %3143 to i64*
  %3144 = load i64, i64* %PC.i334
  %3145 = add i64 %3144, 8
  store i64 %3145, i64* %PC.i334
  %3146 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %3146, i64* %RCX.i335, align 8
  store %struct.Memory* %loadMem_454784, %struct.Memory** %MEMORY
  %loadMem_45478c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 33
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %3149 to i64*
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 1
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %3152 to i64*
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 15
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %3155 to i64*
  %3156 = load i64, i64* %RBP.i333
  %3157 = sub i64 %3156, 20
  %3158 = load i64, i64* %PC.i331
  %3159 = add i64 %3158, 3
  store i64 %3159, i64* %PC.i331
  %3160 = inttoptr i64 %3157 to i32*
  %3161 = load i32, i32* %3160
  %3162 = zext i32 %3161 to i64
  store i64 %3162, i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_45478c, %struct.Memory** %MEMORY
  %loadMem_45478f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 33
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %3165 to i64*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 1
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %EAX.i329 = bitcast %union.anon* %3168 to i32*
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 9
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %RSI.i330 = bitcast %union.anon* %3171 to i64*
  %3172 = load i32, i32* %EAX.i329
  %3173 = zext i32 %3172 to i64
  %3174 = load i64, i64* %PC.i328
  %3175 = add i64 %3174, 2
  store i64 %3175, i64* %PC.i328
  %3176 = and i64 %3173, 4294967295
  store i64 %3176, i64* %RSI.i330, align 8
  store %struct.Memory* %loadMem_45478f, %struct.Memory** %MEMORY
  %loadMem_454791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 5
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 9
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RSI.i327 = bitcast %union.anon* %3185 to i64*
  %3186 = load i64, i64* %RCX.i326
  %3187 = load i64, i64* %RSI.i327
  %3188 = mul i64 %3187, 8
  %3189 = add i64 %3188, %3186
  %3190 = load i64, i64* %PC.i325
  %3191 = add i64 %3190, 4
  store i64 %3191, i64* %PC.i325
  %3192 = inttoptr i64 %3189 to i64*
  %3193 = load i64, i64* %3192
  store i64 %3193, i64* %RCX.i326, align 8
  store %struct.Memory* %loadMem_454791, %struct.Memory** %MEMORY
  %loadMem_454795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 5
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %3199 to i64*
  %3200 = load i64, i64* %RCX.i324
  %3201 = add i64 %3200, 8
  %3202 = load i64, i64* %PC.i323
  %3203 = add i64 %3202, 4
  store i64 %3203, i64* %PC.i323
  %3204 = inttoptr i64 %3201 to i32*
  %3205 = load i32, i32* %3204
  %3206 = sub i32 %3205, 3
  %3207 = icmp ult i32 %3205, 3
  %3208 = zext i1 %3207 to i8
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3208, i8* %3209, align 1
  %3210 = and i32 %3206, 255
  %3211 = call i32 @llvm.ctpop.i32(i32 %3210)
  %3212 = trunc i32 %3211 to i8
  %3213 = and i8 %3212, 1
  %3214 = xor i8 %3213, 1
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3214, i8* %3215, align 1
  %3216 = xor i32 %3205, 3
  %3217 = xor i32 %3216, %3206
  %3218 = lshr i32 %3217, 4
  %3219 = trunc i32 %3218 to i8
  %3220 = and i8 %3219, 1
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3220, i8* %3221, align 1
  %3222 = icmp eq i32 %3206, 0
  %3223 = zext i1 %3222 to i8
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3223, i8* %3224, align 1
  %3225 = lshr i32 %3206, 31
  %3226 = trunc i32 %3225 to i8
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3226, i8* %3227, align 1
  %3228 = lshr i32 %3205, 31
  %3229 = xor i32 %3225, %3228
  %3230 = add i32 %3229, %3228
  %3231 = icmp eq i32 %3230, 2
  %3232 = zext i1 %3231 to i8
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3232, i8* %3233, align 1
  store %struct.Memory* %loadMem_454795, %struct.Memory** %MEMORY
  %loadMem_454799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 33
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %3236 to i64*
  %3237 = load i64, i64* %PC.i322
  %3238 = add i64 %3237, 94
  %3239 = load i64, i64* %PC.i322
  %3240 = add i64 %3239, 6
  %3241 = load i64, i64* %PC.i322
  %3242 = add i64 %3241, 6
  store i64 %3242, i64* %PC.i322
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3244 = load i8, i8* %3243, align 1
  %3245 = icmp eq i8 %3244, 0
  %3246 = zext i1 %3245 to i8
  store i8 %3246, i8* %BRANCH_TAKEN, align 1
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3248 = select i1 %3245, i64 %3238, i64 %3240
  store i64 %3248, i64* %3247, align 8
  store %struct.Memory* %loadMem_454799, %struct.Memory** %MEMORY
  %loadBr_454799 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454799 = icmp eq i8 %loadBr_454799, 1
  br i1 %cmpBr_454799, label %block_.L_4547f7, label %block_45479f

block_45479f:                                     ; preds = %block_.L_4546f5
  %loadMem_45479f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 33
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %3251 to i64*
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 1
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %3254 to i64*
  %3255 = load i64, i64* %PC.i320
  %3256 = add i64 %3255, 8
  store i64 %3256, i64* %PC.i320
  %3257 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %3257, i64* %RAX.i321, align 8
  store %struct.Memory* %loadMem_45479f, %struct.Memory** %MEMORY
  %loadMem_4547a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 33
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %3260 to i64*
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 5
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %3263 to i64*
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 15
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %3266 to i64*
  %3267 = load i64, i64* %RBP.i319
  %3268 = sub i64 %3267, 20
  %3269 = load i64, i64* %PC.i317
  %3270 = add i64 %3269, 3
  store i64 %3270, i64* %PC.i317
  %3271 = inttoptr i64 %3268 to i32*
  %3272 = load i32, i32* %3271
  %3273 = zext i32 %3272 to i64
  store i64 %3273, i64* %RCX.i318, align 8
  store %struct.Memory* %loadMem_4547a7, %struct.Memory** %MEMORY
  %loadMem_4547aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 33
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %3276 to i64*
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 5
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %ECX.i315 = bitcast %union.anon* %3279 to i32*
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 7
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %RDX.i316 = bitcast %union.anon* %3282 to i64*
  %3283 = load i32, i32* %ECX.i315
  %3284 = zext i32 %3283 to i64
  %3285 = load i64, i64* %PC.i314
  %3286 = add i64 %3285, 2
  store i64 %3286, i64* %PC.i314
  %3287 = and i64 %3284, 4294967295
  store i64 %3287, i64* %RDX.i316, align 8
  store %struct.Memory* %loadMem_4547aa, %struct.Memory** %MEMORY
  %loadMem_4547ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 33
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 1
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 7
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RDX.i313 = bitcast %union.anon* %3296 to i64*
  %3297 = load i64, i64* %RAX.i312
  %3298 = load i64, i64* %RDX.i313
  %3299 = mul i64 %3298, 8
  %3300 = add i64 %3299, %3297
  %3301 = load i64, i64* %PC.i311
  %3302 = add i64 %3301, 4
  store i64 %3302, i64* %PC.i311
  %3303 = inttoptr i64 %3300 to i64*
  %3304 = load i64, i64* %3303
  store i64 %3304, i64* %RAX.i312, align 8
  store %struct.Memory* %loadMem_4547ac, %struct.Memory** %MEMORY
  %loadMem_4547b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 1
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %3310 to i64*
  %3311 = load i64, i64* %RAX.i310
  %3312 = add i64 %3311, 40
  %3313 = load i64, i64* %PC.i309
  %3314 = add i64 %3313, 4
  store i64 %3314, i64* %PC.i309
  %3315 = inttoptr i64 %3312 to i64*
  %3316 = load i64, i64* %3315
  store i64 %3316, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_4547b0, %struct.Memory** %MEMORY
  %loadMem_4547b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 33
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %3319 to i64*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 1
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %3322 to i64*
  %3323 = load i64, i64* %RAX.i308
  %3324 = add i64 %3323, 6376
  %3325 = load i64, i64* %PC.i307
  %3326 = add i64 %3325, 10
  store i64 %3326, i64* %PC.i307
  %3327 = inttoptr i64 %3324 to i32*
  store i32 1, i32* %3327
  store %struct.Memory* %loadMem_4547b4, %struct.Memory** %MEMORY
  %loadMem_4547be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 33
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %3330 to i64*
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 5
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %RCX.i305 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 15
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %3336 to i64*
  %3337 = load i64, i64* %RBP.i306
  %3338 = sub i64 %3337, 12
  %3339 = load i64, i64* %PC.i304
  %3340 = add i64 %3339, 3
  store i64 %3340, i64* %PC.i304
  %3341 = inttoptr i64 %3338 to i32*
  %3342 = load i32, i32* %3341
  %3343 = zext i32 %3342 to i64
  store i64 %3343, i64* %RCX.i305, align 8
  store %struct.Memory* %loadMem_4547be, %struct.Memory** %MEMORY
  %loadMem_4547c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 33
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 1
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %3349 to i64*
  %3350 = load i64, i64* %PC.i302
  %3351 = add i64 %3350, 8
  store i64 %3351, i64* %PC.i302
  %3352 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %3352, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_4547c1, %struct.Memory** %MEMORY
  %loadMem_4547c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 33
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 9
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %RSI.i300 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 15
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %3361 to i64*
  %3362 = load i64, i64* %RBP.i301
  %3363 = sub i64 %3362, 20
  %3364 = load i64, i64* %PC.i299
  %3365 = add i64 %3364, 3
  store i64 %3365, i64* %PC.i299
  %3366 = inttoptr i64 %3363 to i32*
  %3367 = load i32, i32* %3366
  %3368 = zext i32 %3367 to i64
  store i64 %3368, i64* %RSI.i300, align 8
  store %struct.Memory* %loadMem_4547c9, %struct.Memory** %MEMORY
  %loadMem_4547cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 33
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 9
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %ESI.i297 = bitcast %union.anon* %3374 to i32*
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 7
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %RDX.i298 = bitcast %union.anon* %3377 to i64*
  %3378 = load i32, i32* %ESI.i297
  %3379 = zext i32 %3378 to i64
  %3380 = load i64, i64* %PC.i296
  %3381 = add i64 %3380, 2
  store i64 %3381, i64* %PC.i296
  %3382 = and i64 %3379, 4294967295
  store i64 %3382, i64* %RDX.i298, align 8
  store %struct.Memory* %loadMem_4547cc, %struct.Memory** %MEMORY
  %loadMem_4547ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 33
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %3385 to i64*
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 1
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 7
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RDX.i295 = bitcast %union.anon* %3391 to i64*
  %3392 = load i64, i64* %RAX.i294
  %3393 = load i64, i64* %RDX.i295
  %3394 = mul i64 %3393, 8
  %3395 = add i64 %3394, %3392
  %3396 = load i64, i64* %PC.i293
  %3397 = add i64 %3396, 4
  store i64 %3397, i64* %PC.i293
  %3398 = inttoptr i64 %3395 to i64*
  %3399 = load i64, i64* %3398
  store i64 %3399, i64* %RAX.i294, align 8
  store %struct.Memory* %loadMem_4547ce, %struct.Memory** %MEMORY
  %loadMem_4547d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 33
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %3402 to i64*
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 1
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %3405 to i64*
  %3406 = load i64, i64* %RAX.i292
  %3407 = add i64 %3406, 40
  %3408 = load i64, i64* %PC.i291
  %3409 = add i64 %3408, 4
  store i64 %3409, i64* %PC.i291
  %3410 = inttoptr i64 %3407 to i64*
  %3411 = load i64, i64* %3410
  store i64 %3411, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_4547d2, %struct.Memory** %MEMORY
  %loadMem_4547d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 33
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %3414 to i64*
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 5
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %ECX.i289 = bitcast %union.anon* %3417 to i32*
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 1
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %3420 to i64*
  %3421 = load i64, i64* %RAX.i290
  %3422 = add i64 %3421, 6368
  %3423 = load i32, i32* %ECX.i289
  %3424 = zext i32 %3423 to i64
  %3425 = load i64, i64* %PC.i288
  %3426 = add i64 %3425, 6
  store i64 %3426, i64* %PC.i288
  %3427 = inttoptr i64 %3422 to i32*
  store i32 %3423, i32* %3427
  store %struct.Memory* %loadMem_4547d6, %struct.Memory** %MEMORY
  %loadMem_4547dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 33
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %3430 to i64*
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 1
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %3433 to i64*
  %3434 = load i64, i64* %PC.i286
  %3435 = add i64 %3434, 8
  store i64 %3435, i64* %PC.i286
  %3436 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %3436, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_4547dc, %struct.Memory** %MEMORY
  %loadMem_4547e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 33
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 9
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RSI.i284 = bitcast %union.anon* %3442 to i64*
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 15
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %3445 to i64*
  %3446 = load i64, i64* %RBP.i285
  %3447 = sub i64 %3446, 20
  %3448 = load i64, i64* %PC.i283
  %3449 = add i64 %3448, 3
  store i64 %3449, i64* %PC.i283
  %3450 = inttoptr i64 %3447 to i32*
  %3451 = load i32, i32* %3450
  %3452 = zext i32 %3451 to i64
  store i64 %3452, i64* %RSI.i284, align 8
  store %struct.Memory* %loadMem_4547e4, %struct.Memory** %MEMORY
  %loadMem_4547e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 33
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %3455 to i64*
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 9
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %ESI.i281 = bitcast %union.anon* %3458 to i32*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 7
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RDX.i282 = bitcast %union.anon* %3461 to i64*
  %3462 = load i32, i32* %ESI.i281
  %3463 = zext i32 %3462 to i64
  %3464 = load i64, i64* %PC.i280
  %3465 = add i64 %3464, 2
  store i64 %3465, i64* %PC.i280
  %3466 = and i64 %3463, 4294967295
  store i64 %3466, i64* %RDX.i282, align 8
  store %struct.Memory* %loadMem_4547e7, %struct.Memory** %MEMORY
  %loadMem_4547e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3468 = getelementptr inbounds %struct.GPR, %struct.GPR* %3467, i32 0, i32 33
  %3469 = getelementptr inbounds %struct.Reg, %struct.Reg* %3468, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3469 to i64*
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3471 = getelementptr inbounds %struct.GPR, %struct.GPR* %3470, i32 0, i32 1
  %3472 = getelementptr inbounds %struct.Reg, %struct.Reg* %3471, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %3472 to i64*
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3474 = getelementptr inbounds %struct.GPR, %struct.GPR* %3473, i32 0, i32 7
  %3475 = getelementptr inbounds %struct.Reg, %struct.Reg* %3474, i32 0, i32 0
  %RDX.i279 = bitcast %union.anon* %3475 to i64*
  %3476 = load i64, i64* %RAX.i278
  %3477 = load i64, i64* %RDX.i279
  %3478 = mul i64 %3477, 8
  %3479 = add i64 %3478, %3476
  %3480 = load i64, i64* %PC.i277
  %3481 = add i64 %3480, 4
  store i64 %3481, i64* %PC.i277
  %3482 = inttoptr i64 %3479 to i64*
  %3483 = load i64, i64* %3482
  store i64 %3483, i64* %RAX.i278, align 8
  store %struct.Memory* %loadMem_4547e9, %struct.Memory** %MEMORY
  %loadMem_4547ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 33
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 1
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %RAX.i276 = bitcast %union.anon* %3489 to i64*
  %3490 = load i64, i64* %RAX.i276
  %3491 = add i64 %3490, 40
  %3492 = load i64, i64* %PC.i275
  %3493 = add i64 %3492, 4
  store i64 %3493, i64* %PC.i275
  %3494 = inttoptr i64 %3491 to i64*
  %3495 = load i64, i64* %3494
  store i64 %3495, i64* %RAX.i276, align 8
  store %struct.Memory* %loadMem_4547ed, %struct.Memory** %MEMORY
  %loadMem_4547f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 33
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %3498 to i64*
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 5
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %ECX.i273 = bitcast %union.anon* %3501 to i32*
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 1
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %3504 to i64*
  %3505 = load i64, i64* %RAX.i274
  %3506 = add i64 %3505, 6372
  %3507 = load i32, i32* %ECX.i273
  %3508 = zext i32 %3507 to i64
  %3509 = load i64, i64* %PC.i272
  %3510 = add i64 %3509, 6
  store i64 %3510, i64* %PC.i272
  %3511 = inttoptr i64 %3506 to i32*
  store i32 %3507, i32* %3511
  store %struct.Memory* %loadMem_4547f1, %struct.Memory** %MEMORY
  br label %block_.L_4547f7

block_.L_4547f7:                                  ; preds = %block_45479f, %block_.L_4546f5
  %loadMem_4547f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 33
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3514 to i64*
  %3515 = load i64, i64* %PC.i271
  %3516 = add i64 %3515, 495
  %3517 = load i64, i64* %PC.i271
  %3518 = add i64 %3517, 5
  store i64 %3518, i64* %PC.i271
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3516, i64* %3519, align 8
  store %struct.Memory* %loadMem_4547f7, %struct.Memory** %MEMORY
  br label %block_.L_4549e6

block_.L_4547fc:                                  ; preds = %block_454685, %block_454663
  %loadMem_4547fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 33
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %3522 to i64*
  %3523 = load i64, i64* %PC.i270
  %3524 = add i64 %3523, 5
  %3525 = load i64, i64* %PC.i270
  %3526 = add i64 %3525, 5
  store i64 %3526, i64* %PC.i270
  %3527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3524, i64* %3527, align 8
  store %struct.Memory* %loadMem_4547fc, %struct.Memory** %MEMORY
  br label %block_.L_454801

block_.L_454801:                                  ; preds = %block_.L_4547fc, %block_454643
  %loadMem_454801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 1
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %3533 to i64*
  %3534 = load i64, i64* %PC.i268
  %3535 = add i64 %3534, 8
  store i64 %3535, i64* %PC.i268
  %3536 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %3536, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_454801, %struct.Memory** %MEMORY
  %loadMem_454809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 33
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %3539 to i64*
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 5
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %3542 to i64*
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3544 = getelementptr inbounds %struct.GPR, %struct.GPR* %3543, i32 0, i32 15
  %3545 = getelementptr inbounds %struct.Reg, %struct.Reg* %3544, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %3545 to i64*
  %3546 = load i64, i64* %RBP.i267
  %3547 = sub i64 %3546, 20
  %3548 = load i64, i64* %PC.i265
  %3549 = add i64 %3548, 3
  store i64 %3549, i64* %PC.i265
  %3550 = inttoptr i64 %3547 to i32*
  %3551 = load i32, i32* %3550
  %3552 = zext i32 %3551 to i64
  store i64 %3552, i64* %RCX.i266, align 8
  store %struct.Memory* %loadMem_454809, %struct.Memory** %MEMORY
  %loadMem_45480c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 33
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3555 to i64*
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 5
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %ECX.i263 = bitcast %union.anon* %3558 to i32*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 7
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %RDX.i264 = bitcast %union.anon* %3561 to i64*
  %3562 = load i32, i32* %ECX.i263
  %3563 = zext i32 %3562 to i64
  %3564 = load i64, i64* %PC.i262
  %3565 = add i64 %3564, 2
  store i64 %3565, i64* %PC.i262
  %3566 = and i64 %3563, 4294967295
  store i64 %3566, i64* %RDX.i264, align 8
  store %struct.Memory* %loadMem_45480c, %struct.Memory** %MEMORY
  %loadMem_45480e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 33
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %3569 to i64*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 1
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %3572 to i64*
  %3573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3574 = getelementptr inbounds %struct.GPR, %struct.GPR* %3573, i32 0, i32 7
  %3575 = getelementptr inbounds %struct.Reg, %struct.Reg* %3574, i32 0, i32 0
  %RDX.i261 = bitcast %union.anon* %3575 to i64*
  %3576 = load i64, i64* %RAX.i260
  %3577 = load i64, i64* %RDX.i261
  %3578 = mul i64 %3577, 8
  %3579 = add i64 %3578, %3576
  %3580 = load i64, i64* %PC.i259
  %3581 = add i64 %3580, 4
  store i64 %3581, i64* %PC.i259
  %3582 = inttoptr i64 %3579 to i64*
  %3583 = load i64, i64* %3582
  store i64 %3583, i64* %RAX.i260, align 8
  store %struct.Memory* %loadMem_45480e, %struct.Memory** %MEMORY
  %loadMem_454812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 33
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3586 to i64*
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3588 = getelementptr inbounds %struct.GPR, %struct.GPR* %3587, i32 0, i32 1
  %3589 = getelementptr inbounds %struct.Reg, %struct.Reg* %3588, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %3589 to i64*
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 5
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %RCX.i258 = bitcast %union.anon* %3592 to i64*
  %3593 = load i64, i64* %RAX.i257
  %3594 = add i64 %3593, 4
  %3595 = load i64, i64* %PC.i256
  %3596 = add i64 %3595, 3
  store i64 %3596, i64* %PC.i256
  %3597 = inttoptr i64 %3594 to i32*
  %3598 = load i32, i32* %3597
  %3599 = zext i32 %3598 to i64
  store i64 %3599, i64* %RCX.i258, align 8
  store %struct.Memory* %loadMem_454812, %struct.Memory** %MEMORY
  %loadMem_454815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 33
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %3602 to i64*
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 5
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %RCX.i255 = bitcast %union.anon* %3605 to i64*
  %3606 = load i64, i64* %RCX.i255
  %3607 = load i64, i64* %PC.i254
  %3608 = add i64 %3607, 3
  store i64 %3608, i64* %PC.i254
  %3609 = and i64 2, %3606
  %3610 = trunc i64 %3609 to i32
  store i64 %3609, i64* %RCX.i255, align 8
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3611, align 1
  %3612 = and i32 %3610, 255
  %3613 = call i32 @llvm.ctpop.i32(i32 %3612)
  %3614 = trunc i32 %3613 to i8
  %3615 = and i8 %3614, 1
  %3616 = xor i8 %3615, 1
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3616, i8* %3617, align 1
  %3618 = icmp eq i32 %3610, 0
  %3619 = zext i1 %3618 to i8
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3619, i8* %3620, align 1
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3621, align 1
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3622, align 1
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3623, align 1
  store %struct.Memory* %loadMem_454815, %struct.Memory** %MEMORY
  %loadMem_454818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 33
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %3626 to i64*
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 5
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %ECX.i253 = bitcast %union.anon* %3629 to i32*
  %3630 = load i32, i32* %ECX.i253
  %3631 = zext i32 %3630 to i64
  %3632 = load i64, i64* %PC.i252
  %3633 = add i64 %3632, 3
  store i64 %3633, i64* %PC.i252
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3634, align 1
  %3635 = and i32 %3630, 255
  %3636 = call i32 @llvm.ctpop.i32(i32 %3635)
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  %3639 = xor i8 %3638, 1
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3639, i8* %3640, align 1
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3641, align 1
  %3642 = icmp eq i32 %3630, 0
  %3643 = zext i1 %3642 to i8
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3643, i8* %3644, align 1
  %3645 = lshr i32 %3630, 31
  %3646 = trunc i32 %3645 to i8
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3646, i8* %3647, align 1
  %3648 = lshr i32 %3630, 31
  %3649 = xor i32 %3645, %3648
  %3650 = add i32 %3649, %3648
  %3651 = icmp eq i32 %3650, 2
  %3652 = zext i1 %3651 to i8
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3652, i8* %3653, align 1
  store %struct.Memory* %loadMem_454818, %struct.Memory** %MEMORY
  %loadMem_45481b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 33
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %3656 to i64*
  %3657 = load i64, i64* %PC.i251
  %3658 = add i64 %3657, 420
  %3659 = load i64, i64* %PC.i251
  %3660 = add i64 %3659, 6
  %3661 = load i64, i64* %PC.i251
  %3662 = add i64 %3661, 6
  store i64 %3662, i64* %PC.i251
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3664 = load i8, i8* %3663, align 1
  store i8 %3664, i8* %BRANCH_TAKEN, align 1
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3666 = icmp ne i8 %3664, 0
  %3667 = select i1 %3666, i64 %3658, i64 %3660
  store i64 %3667, i64* %3665, align 8
  store %struct.Memory* %loadMem_45481b, %struct.Memory** %MEMORY
  %loadBr_45481b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45481b = icmp eq i8 %loadBr_45481b, 1
  br i1 %cmpBr_45481b, label %block_.L_4549bf, label %block_454821

block_454821:                                     ; preds = %block_.L_454801
  %loadMem_454821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3669 = getelementptr inbounds %struct.GPR, %struct.GPR* %3668, i32 0, i32 33
  %3670 = getelementptr inbounds %struct.Reg, %struct.Reg* %3669, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %3670 to i64*
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 1
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %3673 to i64*
  %3674 = load i64, i64* %PC.i249
  %3675 = add i64 %3674, 8
  store i64 %3675, i64* %PC.i249
  %3676 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %3676, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_454821, %struct.Memory** %MEMORY
  %loadMem_454829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 33
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %3679 to i64*
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3681 = getelementptr inbounds %struct.GPR, %struct.GPR* %3680, i32 0, i32 5
  %3682 = getelementptr inbounds %struct.Reg, %struct.Reg* %3681, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %3682 to i64*
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 15
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %3685 to i64*
  %3686 = load i64, i64* %RBP.i248
  %3687 = sub i64 %3686, 20
  %3688 = load i64, i64* %PC.i246
  %3689 = add i64 %3688, 3
  store i64 %3689, i64* %PC.i246
  %3690 = inttoptr i64 %3687 to i32*
  %3691 = load i32, i32* %3690
  %3692 = zext i32 %3691 to i64
  store i64 %3692, i64* %RCX.i247, align 8
  store %struct.Memory* %loadMem_454829, %struct.Memory** %MEMORY
  %loadMem_45482c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 33
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %3695 to i64*
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3697 = getelementptr inbounds %struct.GPR, %struct.GPR* %3696, i32 0, i32 5
  %3698 = getelementptr inbounds %struct.Reg, %struct.Reg* %3697, i32 0, i32 0
  %ECX.i244 = bitcast %union.anon* %3698 to i32*
  %3699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3700 = getelementptr inbounds %struct.GPR, %struct.GPR* %3699, i32 0, i32 7
  %3701 = getelementptr inbounds %struct.Reg, %struct.Reg* %3700, i32 0, i32 0
  %RDX.i245 = bitcast %union.anon* %3701 to i64*
  %3702 = load i32, i32* %ECX.i244
  %3703 = zext i32 %3702 to i64
  %3704 = load i64, i64* %PC.i243
  %3705 = add i64 %3704, 2
  store i64 %3705, i64* %PC.i243
  %3706 = and i64 %3703, 4294967295
  store i64 %3706, i64* %RDX.i245, align 8
  store %struct.Memory* %loadMem_45482c, %struct.Memory** %MEMORY
  %loadMem_45482e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 1
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %3712 to i64*
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 7
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %RDX.i242 = bitcast %union.anon* %3715 to i64*
  %3716 = load i64, i64* %RAX.i241
  %3717 = load i64, i64* %RDX.i242
  %3718 = mul i64 %3717, 8
  %3719 = add i64 %3718, %3716
  %3720 = load i64, i64* %PC.i240
  %3721 = add i64 %3720, 4
  store i64 %3721, i64* %PC.i240
  %3722 = inttoptr i64 %3719 to i64*
  %3723 = load i64, i64* %3722
  store i64 %3723, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_45482e, %struct.Memory** %MEMORY
  %loadMem_454832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 33
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %3726 to i64*
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 1
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %3729 to i64*
  %3730 = load i64, i64* %RAX.i239
  %3731 = add i64 %3730, 56
  %3732 = load i64, i64* %PC.i238
  %3733 = add i64 %3732, 4
  store i64 %3733, i64* %PC.i238
  %3734 = inttoptr i64 %3731 to i64*
  %3735 = load i64, i64* %3734
  store i64 %3735, i64* %RAX.i239, align 8
  store %struct.Memory* %loadMem_454832, %struct.Memory** %MEMORY
  %loadMem_454836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 33
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3738 to i64*
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 1
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %3741 to i64*
  %3742 = load i64, i64* %RAX.i237
  %3743 = add i64 %3742, 6376
  %3744 = load i64, i64* %PC.i236
  %3745 = add i64 %3744, 7
  store i64 %3745, i64* %PC.i236
  %3746 = inttoptr i64 %3743 to i32*
  %3747 = load i32, i32* %3746
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3748, align 1
  %3749 = and i32 %3747, 255
  %3750 = call i32 @llvm.ctpop.i32(i32 %3749)
  %3751 = trunc i32 %3750 to i8
  %3752 = and i8 %3751, 1
  %3753 = xor i8 %3752, 1
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3753, i8* %3754, align 1
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3755, align 1
  %3756 = icmp eq i32 %3747, 0
  %3757 = zext i1 %3756 to i8
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3757, i8* %3758, align 1
  %3759 = lshr i32 %3747, 31
  %3760 = trunc i32 %3759 to i8
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3760, i8* %3761, align 1
  %3762 = lshr i32 %3747, 31
  %3763 = xor i32 %3759, %3762
  %3764 = add i32 %3763, %3762
  %3765 = icmp eq i32 %3764, 2
  %3766 = zext i1 %3765 to i8
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3766, i8* %3767, align 1
  store %struct.Memory* %loadMem_454836, %struct.Memory** %MEMORY
  %loadMem_45483d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 33
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %3770 to i64*
  %3771 = load i64, i64* %PC.i235
  %3772 = add i64 %3771, 381
  %3773 = load i64, i64* %PC.i235
  %3774 = add i64 %3773, 6
  %3775 = load i64, i64* %PC.i235
  %3776 = add i64 %3775, 6
  store i64 %3776, i64* %PC.i235
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3778 = load i8, i8* %3777, align 1
  %3779 = icmp eq i8 %3778, 0
  %3780 = zext i1 %3779 to i8
  store i8 %3780, i8* %BRANCH_TAKEN, align 1
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3782 = select i1 %3779, i64 %3772, i64 %3774
  store i64 %3782, i64* %3781, align 8
  store %struct.Memory* %loadMem_45483d, %struct.Memory** %MEMORY
  %loadBr_45483d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45483d = icmp eq i8 %loadBr_45483d, 1
  br i1 %cmpBr_45483d, label %block_.L_4549ba, label %block_454843

block_454843:                                     ; preds = %block_454821
  %loadMem_454843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 33
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3785 to i64*
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 1
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %3788 to i64*
  %3789 = load i64, i64* %PC.i233
  %3790 = add i64 %3789, 8
  store i64 %3790, i64* %PC.i233
  %3791 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %3791, i64* %RAX.i234, align 8
  store %struct.Memory* %loadMem_454843, %struct.Memory** %MEMORY
  %loadMem_45484b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 33
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %3794 to i64*
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 5
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %RCX.i231 = bitcast %union.anon* %3797 to i64*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 15
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %3800 to i64*
  %3801 = load i64, i64* %RBP.i232
  %3802 = sub i64 %3801, 20
  %3803 = load i64, i64* %PC.i230
  %3804 = add i64 %3803, 3
  store i64 %3804, i64* %PC.i230
  %3805 = inttoptr i64 %3802 to i32*
  %3806 = load i32, i32* %3805
  %3807 = zext i32 %3806 to i64
  store i64 %3807, i64* %RCX.i231, align 8
  store %struct.Memory* %loadMem_45484b, %struct.Memory** %MEMORY
  %loadMem_45484e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3809 = getelementptr inbounds %struct.GPR, %struct.GPR* %3808, i32 0, i32 33
  %3810 = getelementptr inbounds %struct.Reg, %struct.Reg* %3809, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %3810 to i64*
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 5
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %ECX.i228 = bitcast %union.anon* %3813 to i32*
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 7
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %RDX.i229 = bitcast %union.anon* %3816 to i64*
  %3817 = load i32, i32* %ECX.i228
  %3818 = zext i32 %3817 to i64
  %3819 = load i64, i64* %PC.i227
  %3820 = add i64 %3819, 2
  store i64 %3820, i64* %PC.i227
  %3821 = and i64 %3818, 4294967295
  store i64 %3821, i64* %RDX.i229, align 8
  store %struct.Memory* %loadMem_45484e, %struct.Memory** %MEMORY
  %loadMem_454850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 33
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %3824 to i64*
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 1
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %3827 to i64*
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 7
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %RDX.i226 = bitcast %union.anon* %3830 to i64*
  %3831 = load i64, i64* %RAX.i225
  %3832 = load i64, i64* %RDX.i226
  %3833 = mul i64 %3832, 8
  %3834 = add i64 %3833, %3831
  %3835 = load i64, i64* %PC.i224
  %3836 = add i64 %3835, 4
  store i64 %3836, i64* %PC.i224
  %3837 = inttoptr i64 %3834 to i64*
  %3838 = load i64, i64* %3837
  store i64 %3838, i64* %RAX.i225, align 8
  store %struct.Memory* %loadMem_454850, %struct.Memory** %MEMORY
  %loadMem_454854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 33
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %3841 to i64*
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3843 = getelementptr inbounds %struct.GPR, %struct.GPR* %3842, i32 0, i32 1
  %3844 = getelementptr inbounds %struct.Reg, %struct.Reg* %3843, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %3844 to i64*
  %3845 = load i64, i64* %RAX.i223
  %3846 = add i64 %3845, 56
  %3847 = load i64, i64* %PC.i222
  %3848 = add i64 %3847, 4
  store i64 %3848, i64* %PC.i222
  %3849 = inttoptr i64 %3846 to i64*
  %3850 = load i64, i64* %3849
  store i64 %3850, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_454854, %struct.Memory** %MEMORY
  %loadMem_454858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 33
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 1
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %3856 to i64*
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 5
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %RCX.i221 = bitcast %union.anon* %3859 to i64*
  %3860 = load i64, i64* %RAX.i220
  %3861 = add i64 %3860, 6364
  %3862 = load i64, i64* %PC.i219
  %3863 = add i64 %3862, 6
  store i64 %3863, i64* %PC.i219
  %3864 = inttoptr i64 %3861 to i32*
  %3865 = load i32, i32* %3864
  %3866 = zext i32 %3865 to i64
  store i64 %3866, i64* %RCX.i221, align 8
  store %struct.Memory* %loadMem_454858, %struct.Memory** %MEMORY
  %loadMem_45485e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 33
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3869 to i64*
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 5
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %ECX.i217 = bitcast %union.anon* %3872 to i32*
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3874 = getelementptr inbounds %struct.GPR, %struct.GPR* %3873, i32 0, i32 15
  %3875 = getelementptr inbounds %struct.Reg, %struct.Reg* %3874, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %3875 to i64*
  %3876 = load i32, i32* %ECX.i217
  %3877 = zext i32 %3876 to i64
  %3878 = load i64, i64* %RBP.i218
  %3879 = sub i64 %3878, 16
  %3880 = load i64, i64* %PC.i216
  %3881 = add i64 %3880, 3
  store i64 %3881, i64* %PC.i216
  %3882 = inttoptr i64 %3879 to i32*
  %3883 = load i32, i32* %3882
  %3884 = sub i32 %3876, %3883
  %3885 = icmp ult i32 %3876, %3883
  %3886 = zext i1 %3885 to i8
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3886, i8* %3887, align 1
  %3888 = and i32 %3884, 255
  %3889 = call i32 @llvm.ctpop.i32(i32 %3888)
  %3890 = trunc i32 %3889 to i8
  %3891 = and i8 %3890, 1
  %3892 = xor i8 %3891, 1
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3892, i8* %3893, align 1
  %3894 = xor i32 %3883, %3876
  %3895 = xor i32 %3894, %3884
  %3896 = lshr i32 %3895, 4
  %3897 = trunc i32 %3896 to i8
  %3898 = and i8 %3897, 1
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3898, i8* %3899, align 1
  %3900 = icmp eq i32 %3884, 0
  %3901 = zext i1 %3900 to i8
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3901, i8* %3902, align 1
  %3903 = lshr i32 %3884, 31
  %3904 = trunc i32 %3903 to i8
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3904, i8* %3905, align 1
  %3906 = lshr i32 %3876, 31
  %3907 = lshr i32 %3883, 31
  %3908 = xor i32 %3907, %3906
  %3909 = xor i32 %3903, %3906
  %3910 = add i32 %3909, %3908
  %3911 = icmp eq i32 %3910, 2
  %3912 = zext i1 %3911 to i8
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3912, i8* %3913, align 1
  store %struct.Memory* %loadMem_45485e, %struct.Memory** %MEMORY
  %loadMem_454861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 33
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3916 to i64*
  %3917 = load i64, i64* %PC.i215
  %3918 = add i64 %3917, 345
  %3919 = load i64, i64* %PC.i215
  %3920 = add i64 %3919, 6
  %3921 = load i64, i64* %PC.i215
  %3922 = add i64 %3921, 6
  store i64 %3922, i64* %PC.i215
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3924 = load i8, i8* %3923, align 1
  %3925 = icmp eq i8 %3924, 0
  %3926 = zext i1 %3925 to i8
  store i8 %3926, i8* %BRANCH_TAKEN, align 1
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3928 = select i1 %3925, i64 %3918, i64 %3920
  store i64 %3928, i64* %3927, align 8
  store %struct.Memory* %loadMem_454861, %struct.Memory** %MEMORY
  %loadBr_454861 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454861 = icmp eq i8 %loadBr_454861, 1
  br i1 %cmpBr_454861, label %block_.L_4549ba, label %block_454867

block_454867:                                     ; preds = %block_454843
  %loadMem_454867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 33
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %3931 to i64*
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 1
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %3934 to i64*
  %3935 = load i64, i64* %PC.i213
  %3936 = add i64 %3935, 8
  store i64 %3936, i64* %PC.i213
  %3937 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %3937, i64* %RAX.i214, align 8
  store %struct.Memory* %loadMem_454867, %struct.Memory** %MEMORY
  %loadMem_45486f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 33
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 5
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %3943 to i64*
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 15
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %3946 to i64*
  %3947 = load i64, i64* %RBP.i212
  %3948 = sub i64 %3947, 20
  %3949 = load i64, i64* %PC.i210
  %3950 = add i64 %3949, 3
  store i64 %3950, i64* %PC.i210
  %3951 = inttoptr i64 %3948 to i32*
  %3952 = load i32, i32* %3951
  %3953 = zext i32 %3952 to i64
  store i64 %3953, i64* %RCX.i211, align 8
  store %struct.Memory* %loadMem_45486f, %struct.Memory** %MEMORY
  %loadMem_454872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 33
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %3956 to i64*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 5
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %ECX.i208 = bitcast %union.anon* %3959 to i32*
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 7
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %RDX.i209 = bitcast %union.anon* %3962 to i64*
  %3963 = load i32, i32* %ECX.i208
  %3964 = zext i32 %3963 to i64
  %3965 = load i64, i64* %PC.i207
  %3966 = add i64 %3965, 2
  store i64 %3966, i64* %PC.i207
  %3967 = and i64 %3964, 4294967295
  store i64 %3967, i64* %RDX.i209, align 8
  store %struct.Memory* %loadMem_454872, %struct.Memory** %MEMORY
  %loadMem_454874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 33
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %3970 to i64*
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 1
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %3973 to i64*
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 7
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %RDX.i206 = bitcast %union.anon* %3976 to i64*
  %3977 = load i64, i64* %RAX.i205
  %3978 = load i64, i64* %RDX.i206
  %3979 = mul i64 %3978, 8
  %3980 = add i64 %3979, %3977
  %3981 = load i64, i64* %PC.i204
  %3982 = add i64 %3981, 4
  store i64 %3982, i64* %PC.i204
  %3983 = inttoptr i64 %3980 to i64*
  %3984 = load i64, i64* %3983
  store i64 %3984, i64* %RAX.i205, align 8
  store %struct.Memory* %loadMem_454874, %struct.Memory** %MEMORY
  %loadMem_454878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 33
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3987 to i64*
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 1
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %3990 to i64*
  %3991 = load i64, i64* %RAX.i203
  %3992 = add i64 %3991, 8
  %3993 = load i64, i64* %PC.i202
  %3994 = add i64 %3993, 4
  store i64 %3994, i64* %PC.i202
  %3995 = inttoptr i64 %3992 to i32*
  %3996 = load i32, i32* %3995
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3997, align 1
  %3998 = and i32 %3996, 255
  %3999 = call i32 @llvm.ctpop.i32(i32 %3998)
  %4000 = trunc i32 %3999 to i8
  %4001 = and i8 %4000, 1
  %4002 = xor i8 %4001, 1
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4002, i8* %4003, align 1
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4004, align 1
  %4005 = icmp eq i32 %3996, 0
  %4006 = zext i1 %4005 to i8
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4006, i8* %4007, align 1
  %4008 = lshr i32 %3996, 31
  %4009 = trunc i32 %4008 to i8
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4009, i8* %4010, align 1
  %4011 = lshr i32 %3996, 31
  %4012 = xor i32 %4008, %4011
  %4013 = add i32 %4012, %4011
  %4014 = icmp eq i32 %4013, 2
  %4015 = zext i1 %4014 to i8
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4015, i8* %4016, align 1
  store %struct.Memory* %loadMem_454878, %struct.Memory** %MEMORY
  %loadMem_45487c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 33
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %4019 to i64*
  %4020 = load i64, i64* %PC.i201
  %4021 = add i64 %4020, 55
  %4022 = load i64, i64* %PC.i201
  %4023 = add i64 %4022, 6
  %4024 = load i64, i64* %PC.i201
  %4025 = add i64 %4024, 6
  store i64 %4025, i64* %PC.i201
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4027 = load i8, i8* %4026, align 1
  store i8 %4027, i8* %BRANCH_TAKEN, align 1
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4029 = icmp ne i8 %4027, 0
  %4030 = select i1 %4029, i64 %4021, i64 %4023
  store i64 %4030, i64* %4028, align 8
  store %struct.Memory* %loadMem_45487c, %struct.Memory** %MEMORY
  %loadBr_45487c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45487c = icmp eq i8 %loadBr_45487c, 1
  br i1 %cmpBr_45487c, label %block_.L_4548b3, label %block_454882

block_454882:                                     ; preds = %block_454867
  %loadMem_454882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4032 = getelementptr inbounds %struct.GPR, %struct.GPR* %4031, i32 0, i32 33
  %4033 = getelementptr inbounds %struct.Reg, %struct.Reg* %4032, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %4033 to i64*
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 1
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %4036 to i64*
  %4037 = load i64, i64* %PC.i199
  %4038 = add i64 %4037, 8
  store i64 %4038, i64* %PC.i199
  %4039 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %4039, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_454882, %struct.Memory** %MEMORY
  %loadMem_45488a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4041 = getelementptr inbounds %struct.GPR, %struct.GPR* %4040, i32 0, i32 33
  %4042 = getelementptr inbounds %struct.Reg, %struct.Reg* %4041, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4042 to i64*
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4044 = getelementptr inbounds %struct.GPR, %struct.GPR* %4043, i32 0, i32 5
  %4045 = getelementptr inbounds %struct.Reg, %struct.Reg* %4044, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %4045 to i64*
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4047 = getelementptr inbounds %struct.GPR, %struct.GPR* %4046, i32 0, i32 15
  %4048 = getelementptr inbounds %struct.Reg, %struct.Reg* %4047, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %4048 to i64*
  %4049 = load i64, i64* %RBP.i198
  %4050 = sub i64 %4049, 20
  %4051 = load i64, i64* %PC.i196
  %4052 = add i64 %4051, 3
  store i64 %4052, i64* %PC.i196
  %4053 = inttoptr i64 %4050 to i32*
  %4054 = load i32, i32* %4053
  %4055 = zext i32 %4054 to i64
  store i64 %4055, i64* %RCX.i197, align 8
  store %struct.Memory* %loadMem_45488a, %struct.Memory** %MEMORY
  %loadMem_45488d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 33
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %4058 to i64*
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 5
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %ECX.i194 = bitcast %union.anon* %4061 to i32*
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 7
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %4064 to i64*
  %4065 = load i32, i32* %ECX.i194
  %4066 = zext i32 %4065 to i64
  %4067 = load i64, i64* %PC.i193
  %4068 = add i64 %4067, 2
  store i64 %4068, i64* %PC.i193
  %4069 = and i64 %4066, 4294967295
  store i64 %4069, i64* %RDX.i195, align 8
  store %struct.Memory* %loadMem_45488d, %struct.Memory** %MEMORY
  %loadMem_45488f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 33
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 1
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %4075 to i64*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 7
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %RDX.i192 = bitcast %union.anon* %4078 to i64*
  %4079 = load i64, i64* %RAX.i191
  %4080 = load i64, i64* %RDX.i192
  %4081 = mul i64 %4080, 8
  %4082 = add i64 %4081, %4079
  %4083 = load i64, i64* %PC.i190
  %4084 = add i64 %4083, 4
  store i64 %4084, i64* %PC.i190
  %4085 = inttoptr i64 %4082 to i64*
  %4086 = load i64, i64* %4085
  store i64 %4086, i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_45488f, %struct.Memory** %MEMORY
  %loadMem_454893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 33
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %4089 to i64*
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 1
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %4092 to i64*
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 5
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %4095 to i64*
  %4096 = load i64, i64* %RAX.i188
  %4097 = add i64 %4096, 28
  %4098 = load i64, i64* %PC.i187
  %4099 = add i64 %4098, 3
  store i64 %4099, i64* %PC.i187
  %4100 = inttoptr i64 %4097 to i32*
  %4101 = load i32, i32* %4100
  %4102 = zext i32 %4101 to i64
  store i64 %4102, i64* %RCX.i189, align 8
  store %struct.Memory* %loadMem_454893, %struct.Memory** %MEMORY
  %loadMem_454896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4104 = getelementptr inbounds %struct.GPR, %struct.GPR* %4103, i32 0, i32 33
  %4105 = getelementptr inbounds %struct.Reg, %struct.Reg* %4104, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %4105 to i64*
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 5
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %ECX.i185 = bitcast %union.anon* %4108 to i32*
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 15
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %4111 to i64*
  %4112 = load i32, i32* %ECX.i185
  %4113 = zext i32 %4112 to i64
  %4114 = load i64, i64* %RBP.i186
  %4115 = sub i64 %4114, 12
  %4116 = load i64, i64* %PC.i184
  %4117 = add i64 %4116, 3
  store i64 %4117, i64* %PC.i184
  %4118 = inttoptr i64 %4115 to i32*
  %4119 = load i32, i32* %4118
  %4120 = sub i32 %4112, %4119
  %4121 = icmp ult i32 %4112, %4119
  %4122 = zext i1 %4121 to i8
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4122, i8* %4123, align 1
  %4124 = and i32 %4120, 255
  %4125 = call i32 @llvm.ctpop.i32(i32 %4124)
  %4126 = trunc i32 %4125 to i8
  %4127 = and i8 %4126, 1
  %4128 = xor i8 %4127, 1
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4128, i8* %4129, align 1
  %4130 = xor i32 %4119, %4112
  %4131 = xor i32 %4130, %4120
  %4132 = lshr i32 %4131, 4
  %4133 = trunc i32 %4132 to i8
  %4134 = and i8 %4133, 1
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4134, i8* %4135, align 1
  %4136 = icmp eq i32 %4120, 0
  %4137 = zext i1 %4136 to i8
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4137, i8* %4138, align 1
  %4139 = lshr i32 %4120, 31
  %4140 = trunc i32 %4139 to i8
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4140, i8* %4141, align 1
  %4142 = lshr i32 %4112, 31
  %4143 = lshr i32 %4119, 31
  %4144 = xor i32 %4143, %4142
  %4145 = xor i32 %4139, %4142
  %4146 = add i32 %4145, %4144
  %4147 = icmp eq i32 %4146, 2
  %4148 = zext i1 %4147 to i8
  %4149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4148, i8* %4149, align 1
  store %struct.Memory* %loadMem_454896, %struct.Memory** %MEMORY
  %loadMem_454899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 33
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %PC.i183
  %4154 = add i64 %4153, 26
  %4155 = load i64, i64* %PC.i183
  %4156 = add i64 %4155, 6
  %4157 = load i64, i64* %PC.i183
  %4158 = add i64 %4157, 6
  store i64 %4158, i64* %PC.i183
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4160 = load i8, i8* %4159, align 1
  store i8 %4160, i8* %BRANCH_TAKEN, align 1
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4162 = icmp ne i8 %4160, 0
  %4163 = select i1 %4162, i64 %4154, i64 %4156
  store i64 %4163, i64* %4161, align 8
  store %struct.Memory* %loadMem_454899, %struct.Memory** %MEMORY
  %loadBr_454899 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454899 = icmp eq i8 %loadBr_454899, 1
  br i1 %cmpBr_454899, label %block_.L_4548b3, label %block_45489f

block_45489f:                                     ; preds = %block_454882
  %loadMem_45489f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 33
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %4166 to i64*
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 11
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %RDI.i182 = bitcast %union.anon* %4169 to i64*
  %4170 = load i64, i64* %PC.i181
  %4171 = add i64 %4170, 10
  store i64 %4171, i64* %PC.i181
  store i64 ptrtoint (%G__0x4c1b49_type* @G__0x4c1b49 to i64), i64* %RDI.i182, align 8
  store %struct.Memory* %loadMem_45489f, %struct.Memory** %MEMORY
  %loadMem_4548a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4173 = getelementptr inbounds %struct.GPR, %struct.GPR* %4172, i32 0, i32 33
  %4174 = getelementptr inbounds %struct.Reg, %struct.Reg* %4173, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %4174 to i64*
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4176 = getelementptr inbounds %struct.GPR, %struct.GPR* %4175, i32 0, i32 1
  %4177 = getelementptr inbounds %struct.Reg, %struct.Reg* %4176, i32 0, i32 0
  %4178 = bitcast %union.anon* %4177 to %struct.anon.2*
  %AL.i180 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4178, i32 0, i32 0
  %4179 = load i64, i64* %PC.i179
  %4180 = add i64 %4179, 2
  store i64 %4180, i64* %PC.i179
  store i8 0, i8* %AL.i180, align 1
  store %struct.Memory* %loadMem_4548a9, %struct.Memory** %MEMORY
  %loadMem1_4548ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4182 = getelementptr inbounds %struct.GPR, %struct.GPR* %4181, i32 0, i32 33
  %4183 = getelementptr inbounds %struct.Reg, %struct.Reg* %4182, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %4183 to i64*
  %4184 = load i64, i64* %PC.i178
  %4185 = add i64 %4184, -342123
  %4186 = load i64, i64* %PC.i178
  %4187 = add i64 %4186, 5
  %4188 = load i64, i64* %PC.i178
  %4189 = add i64 %4188, 5
  store i64 %4189, i64* %PC.i178
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4191 = load i64, i64* %4190, align 8
  %4192 = add i64 %4191, -8
  %4193 = inttoptr i64 %4192 to i64*
  store i64 %4187, i64* %4193
  store i64 %4192, i64* %4190, align 8
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4185, i64* %4194, align 8
  store %struct.Memory* %loadMem1_4548ab, %struct.Memory** %MEMORY
  %loadMem2_4548ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4548ab = load i64, i64* %3
  %4195 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4548ab)
  store %struct.Memory* %4195, %struct.Memory** %MEMORY
  %loadMem_4548b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4197 = getelementptr inbounds %struct.GPR, %struct.GPR* %4196, i32 0, i32 33
  %4198 = getelementptr inbounds %struct.Reg, %struct.Reg* %4197, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %4198 to i64*
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 1
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %EAX.i174 = bitcast %union.anon* %4201 to i32*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 15
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %4204 to i64*
  %4205 = load i64, i64* %RBP.i175
  %4206 = sub i64 %4205, 40
  %4207 = load i32, i32* %EAX.i174
  %4208 = zext i32 %4207 to i64
  %4209 = load i64, i64* %PC.i173
  %4210 = add i64 %4209, 3
  store i64 %4210, i64* %PC.i173
  %4211 = inttoptr i64 %4206 to i32*
  store i32 %4207, i32* %4211
  store %struct.Memory* %loadMem_4548b0, %struct.Memory** %MEMORY
  br label %block_.L_4548b3

block_.L_4548b3:                                  ; preds = %block_45489f, %block_454882, %block_454867
  %loadMem_4548b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 33
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4214 to i64*
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4216 = getelementptr inbounds %struct.GPR, %struct.GPR* %4215, i32 0, i32 1
  %4217 = getelementptr inbounds %struct.Reg, %struct.Reg* %4216, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %4217 to i64*
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4219 = getelementptr inbounds %struct.GPR, %struct.GPR* %4218, i32 0, i32 15
  %4220 = getelementptr inbounds %struct.Reg, %struct.Reg* %4219, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %4220 to i64*
  %4221 = load i64, i64* %RBP.i172
  %4222 = sub i64 %4221, 12
  %4223 = load i64, i64* %PC.i170
  %4224 = add i64 %4223, 3
  store i64 %4224, i64* %PC.i170
  %4225 = inttoptr i64 %4222 to i32*
  %4226 = load i32, i32* %4225
  %4227 = zext i32 %4226 to i64
  store i64 %4227, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_4548b3, %struct.Memory** %MEMORY
  %loadMem_4548b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4229 = getelementptr inbounds %struct.GPR, %struct.GPR* %4228, i32 0, i32 33
  %4230 = getelementptr inbounds %struct.Reg, %struct.Reg* %4229, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4230 to i64*
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 5
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %4233 to i64*
  %4234 = load i64, i64* %PC.i168
  %4235 = add i64 %4234, 8
  store i64 %4235, i64* %PC.i168
  %4236 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %4236, i64* %RCX.i169, align 8
  store %struct.Memory* %loadMem_4548b6, %struct.Memory** %MEMORY
  %loadMem_4548be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 33
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %4239 to i64*
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 7
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %4242 to i64*
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 15
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %4245 to i64*
  %4246 = load i64, i64* %RBP.i167
  %4247 = sub i64 %4246, 20
  %4248 = load i64, i64* %PC.i165
  %4249 = add i64 %4248, 3
  store i64 %4249, i64* %PC.i165
  %4250 = inttoptr i64 %4247 to i32*
  %4251 = load i32, i32* %4250
  %4252 = zext i32 %4251 to i64
  store i64 %4252, i64* %RDX.i166, align 8
  store %struct.Memory* %loadMem_4548be, %struct.Memory** %MEMORY
  %loadMem_4548c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4254 = getelementptr inbounds %struct.GPR, %struct.GPR* %4253, i32 0, i32 33
  %4255 = getelementptr inbounds %struct.Reg, %struct.Reg* %4254, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %4255 to i64*
  %4256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4257 = getelementptr inbounds %struct.GPR, %struct.GPR* %4256, i32 0, i32 7
  %4258 = getelementptr inbounds %struct.Reg, %struct.Reg* %4257, i32 0, i32 0
  %EDX.i163 = bitcast %union.anon* %4258 to i32*
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4260 = getelementptr inbounds %struct.GPR, %struct.GPR* %4259, i32 0, i32 9
  %4261 = getelementptr inbounds %struct.Reg, %struct.Reg* %4260, i32 0, i32 0
  %RSI.i164 = bitcast %union.anon* %4261 to i64*
  %4262 = load i32, i32* %EDX.i163
  %4263 = zext i32 %4262 to i64
  %4264 = load i64, i64* %PC.i162
  %4265 = add i64 %4264, 2
  store i64 %4265, i64* %PC.i162
  %4266 = and i64 %4263, 4294967295
  store i64 %4266, i64* %RSI.i164, align 8
  store %struct.Memory* %loadMem_4548c1, %struct.Memory** %MEMORY
  %loadMem_4548c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 33
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4269 to i64*
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 5
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %4272 to i64*
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 9
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %RSI.i161 = bitcast %union.anon* %4275 to i64*
  %4276 = load i64, i64* %RCX.i160
  %4277 = load i64, i64* %RSI.i161
  %4278 = mul i64 %4277, 8
  %4279 = add i64 %4278, %4276
  %4280 = load i64, i64* %PC.i159
  %4281 = add i64 %4280, 4
  store i64 %4281, i64* %PC.i159
  %4282 = inttoptr i64 %4279 to i64*
  %4283 = load i64, i64* %4282
  store i64 %4283, i64* %RCX.i160, align 8
  store %struct.Memory* %loadMem_4548c3, %struct.Memory** %MEMORY
  %loadMem_4548c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 33
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4286 to i64*
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 5
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %4289 to i64*
  %4290 = load i64, i64* %RCX.i158
  %4291 = add i64 %4290, 56
  %4292 = load i64, i64* %PC.i157
  %4293 = add i64 %4292, 4
  store i64 %4293, i64* %PC.i157
  %4294 = inttoptr i64 %4291 to i64*
  %4295 = load i64, i64* %4294
  store i64 %4295, i64* %RCX.i158, align 8
  store %struct.Memory* %loadMem_4548c7, %struct.Memory** %MEMORY
  %loadMem_4548cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 33
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %4298 to i64*
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 1
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %EAX.i155 = bitcast %union.anon* %4301 to i32*
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 5
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %4304 to i64*
  %4305 = load i64, i64* %RCX.i156
  %4306 = add i64 %4305, 6372
  %4307 = load i32, i32* %EAX.i155
  %4308 = zext i32 %4307 to i64
  %4309 = load i64, i64* %PC.i154
  %4310 = add i64 %4309, 6
  store i64 %4310, i64* %PC.i154
  %4311 = inttoptr i64 %4306 to i32*
  store i32 %4307, i32* %4311
  store %struct.Memory* %loadMem_4548cb, %struct.Memory** %MEMORY
  %loadMem_4548d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 33
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4314 to i64*
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 5
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %4317 to i64*
  %4318 = load i64, i64* %PC.i152
  %4319 = add i64 %4318, 8
  store i64 %4319, i64* %PC.i152
  %4320 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %4320, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_4548d1, %struct.Memory** %MEMORY
  %loadMem_4548d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 33
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4323 to i64*
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4325 = getelementptr inbounds %struct.GPR, %struct.GPR* %4324, i32 0, i32 7
  %4326 = getelementptr inbounds %struct.Reg, %struct.Reg* %4325, i32 0, i32 0
  %RDX.i150 = bitcast %union.anon* %4326 to i64*
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 15
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %4329 to i64*
  %4330 = load i64, i64* %RBP.i151
  %4331 = sub i64 %4330, 20
  %4332 = load i64, i64* %PC.i149
  %4333 = add i64 %4332, 3
  store i64 %4333, i64* %PC.i149
  %4334 = inttoptr i64 %4331 to i32*
  %4335 = load i32, i32* %4334
  %4336 = zext i32 %4335 to i64
  store i64 %4336, i64* %RDX.i150, align 8
  store %struct.Memory* %loadMem_4548d9, %struct.Memory** %MEMORY
  %loadMem_4548dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4338 = getelementptr inbounds %struct.GPR, %struct.GPR* %4337, i32 0, i32 33
  %4339 = getelementptr inbounds %struct.Reg, %struct.Reg* %4338, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4339 to i64*
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4341 = getelementptr inbounds %struct.GPR, %struct.GPR* %4340, i32 0, i32 7
  %4342 = getelementptr inbounds %struct.Reg, %struct.Reg* %4341, i32 0, i32 0
  %EDX.i147 = bitcast %union.anon* %4342 to i32*
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 9
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %RSI.i148 = bitcast %union.anon* %4345 to i64*
  %4346 = load i32, i32* %EDX.i147
  %4347 = zext i32 %4346 to i64
  %4348 = load i64, i64* %PC.i146
  %4349 = add i64 %4348, 2
  store i64 %4349, i64* %PC.i146
  %4350 = and i64 %4347, 4294967295
  store i64 %4350, i64* %RSI.i148, align 8
  store %struct.Memory* %loadMem_4548dc, %struct.Memory** %MEMORY
  %loadMem_4548de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 33
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %4353 to i64*
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 5
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %4356 to i64*
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 9
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %RSI.i145 = bitcast %union.anon* %4359 to i64*
  %4360 = load i64, i64* %RCX.i144
  %4361 = load i64, i64* %RSI.i145
  %4362 = mul i64 %4361, 8
  %4363 = add i64 %4362, %4360
  %4364 = load i64, i64* %PC.i143
  %4365 = add i64 %4364, 4
  store i64 %4365, i64* %PC.i143
  %4366 = inttoptr i64 %4363 to i64*
  %4367 = load i64, i64* %4366
  store i64 %4367, i64* %RCX.i144, align 8
  store %struct.Memory* %loadMem_4548de, %struct.Memory** %MEMORY
  %loadMem_4548e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 33
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %4370 to i64*
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4372 = getelementptr inbounds %struct.GPR, %struct.GPR* %4371, i32 0, i32 1
  %4373 = getelementptr inbounds %struct.Reg, %struct.Reg* %4372, i32 0, i32 0
  %EAX.i141 = bitcast %union.anon* %4373 to i32*
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4375 = getelementptr inbounds %struct.GPR, %struct.GPR* %4374, i32 0, i32 5
  %4376 = getelementptr inbounds %struct.Reg, %struct.Reg* %4375, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %4376 to i64*
  %4377 = load i64, i64* %RCX.i142
  %4378 = add i64 %4377, 28
  %4379 = load i32, i32* %EAX.i141
  %4380 = zext i32 %4379 to i64
  %4381 = load i64, i64* %PC.i140
  %4382 = add i64 %4381, 3
  store i64 %4382, i64* %PC.i140
  %4383 = inttoptr i64 %4378 to i32*
  store i32 %4379, i32* %4383
  store %struct.Memory* %loadMem_4548e2, %struct.Memory** %MEMORY
  %loadMem_4548e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 33
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %4386 to i64*
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4388 = getelementptr inbounds %struct.GPR, %struct.GPR* %4387, i32 0, i32 1
  %4389 = getelementptr inbounds %struct.Reg, %struct.Reg* %4388, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %4389 to i64*
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 15
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %4392 to i64*
  %4393 = load i64, i64* %RBP.i139
  %4394 = sub i64 %4393, 12
  %4395 = load i64, i64* %PC.i137
  %4396 = add i64 %4395, 3
  store i64 %4396, i64* %PC.i137
  %4397 = inttoptr i64 %4394 to i32*
  %4398 = load i32, i32* %4397
  %4399 = zext i32 %4398 to i64
  store i64 %4399, i64* %RAX.i138, align 8
  store %struct.Memory* %loadMem_4548e5, %struct.Memory** %MEMORY
  %loadMem_4548e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4401 = getelementptr inbounds %struct.GPR, %struct.GPR* %4400, i32 0, i32 33
  %4402 = getelementptr inbounds %struct.Reg, %struct.Reg* %4401, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %4402 to i64*
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4404 = getelementptr inbounds %struct.GPR, %struct.GPR* %4403, i32 0, i32 1
  %4405 = getelementptr inbounds %struct.Reg, %struct.Reg* %4404, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %4405 to i64*
  %4406 = load i64, i64* %RAX.i136
  %4407 = load i64, i64* %PC.i135
  %4408 = add i64 %4407, 2
  store i64 %4408, i64* %PC.i135
  %4409 = trunc i64 %4406 to i32
  %4410 = shl i32 %4409, 1
  %4411 = icmp slt i32 %4409, 0
  %4412 = icmp slt i32 %4410, 0
  %4413 = xor i1 %4411, %4412
  %4414 = zext i32 %4410 to i64
  store i64 %4414, i64* %RAX.i136, align 8
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4416 = zext i1 %4411 to i8
  store i8 %4416, i8* %4415, align 1
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4418 = and i32 %4410, 254
  %4419 = call i32 @llvm.ctpop.i32(i32 %4418)
  %4420 = trunc i32 %4419 to i8
  %4421 = and i8 %4420, 1
  %4422 = xor i8 %4421, 1
  store i8 %4422, i8* %4417, align 1
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4423, align 1
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4425 = icmp eq i32 %4410, 0
  %4426 = zext i1 %4425 to i8
  store i8 %4426, i8* %4424, align 1
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4428 = lshr i32 %4410, 31
  %4429 = trunc i32 %4428 to i8
  store i8 %4429, i8* %4427, align 1
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4431 = zext i1 %4413 to i8
  store i8 %4431, i8* %4430, align 1
  store %struct.Memory* %loadMem_4548e8, %struct.Memory** %MEMORY
  %loadMem_4548eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4433 = getelementptr inbounds %struct.GPR, %struct.GPR* %4432, i32 0, i32 33
  %4434 = getelementptr inbounds %struct.Reg, %struct.Reg* %4433, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %4434 to i64*
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4436 = getelementptr inbounds %struct.GPR, %struct.GPR* %4435, i32 0, i32 1
  %4437 = getelementptr inbounds %struct.Reg, %struct.Reg* %4436, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %4437 to i64*
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 15
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %4440 to i64*
  %4441 = load i64, i64* %RAX.i133
  %4442 = load i64, i64* %RBP.i134
  %4443 = sub i64 %4442, 24
  %4444 = load i64, i64* %PC.i132
  %4445 = add i64 %4444, 3
  store i64 %4445, i64* %PC.i132
  %4446 = trunc i64 %4441 to i32
  %4447 = inttoptr i64 %4443 to i32*
  %4448 = load i32, i32* %4447
  %4449 = add i32 %4448, %4446
  %4450 = zext i32 %4449 to i64
  store i64 %4450, i64* %RAX.i133, align 8
  %4451 = icmp ult i32 %4449, %4446
  %4452 = icmp ult i32 %4449, %4448
  %4453 = or i1 %4451, %4452
  %4454 = zext i1 %4453 to i8
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4454, i8* %4455, align 1
  %4456 = and i32 %4449, 255
  %4457 = call i32 @llvm.ctpop.i32(i32 %4456)
  %4458 = trunc i32 %4457 to i8
  %4459 = and i8 %4458, 1
  %4460 = xor i8 %4459, 1
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4460, i8* %4461, align 1
  %4462 = xor i32 %4448, %4446
  %4463 = xor i32 %4462, %4449
  %4464 = lshr i32 %4463, 4
  %4465 = trunc i32 %4464 to i8
  %4466 = and i8 %4465, 1
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4466, i8* %4467, align 1
  %4468 = icmp eq i32 %4449, 0
  %4469 = zext i1 %4468 to i8
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4469, i8* %4470, align 1
  %4471 = lshr i32 %4449, 31
  %4472 = trunc i32 %4471 to i8
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4472, i8* %4473, align 1
  %4474 = lshr i32 %4446, 31
  %4475 = lshr i32 %4448, 31
  %4476 = xor i32 %4471, %4474
  %4477 = xor i32 %4471, %4475
  %4478 = add i32 %4476, %4477
  %4479 = icmp eq i32 %4478, 2
  %4480 = zext i1 %4479 to i8
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4480, i8* %4481, align 1
  store %struct.Memory* %loadMem_4548eb, %struct.Memory** %MEMORY
  %loadMem_4548ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 33
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %4484 to i64*
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 5
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %4487 to i64*
  %4488 = load i64, i64* %PC.i130
  %4489 = add i64 %4488, 8
  store i64 %4489, i64* %PC.i130
  %4490 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %4490, i64* %RCX.i131, align 8
  store %struct.Memory* %loadMem_4548ee, %struct.Memory** %MEMORY
  %loadMem_4548f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 33
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4493 to i64*
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 7
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %RDX.i128 = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 15
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %4499 to i64*
  %4500 = load i64, i64* %RBP.i129
  %4501 = sub i64 %4500, 20
  %4502 = load i64, i64* %PC.i127
  %4503 = add i64 %4502, 3
  store i64 %4503, i64* %PC.i127
  %4504 = inttoptr i64 %4501 to i32*
  %4505 = load i32, i32* %4504
  %4506 = zext i32 %4505 to i64
  store i64 %4506, i64* %RDX.i128, align 8
  store %struct.Memory* %loadMem_4548f6, %struct.Memory** %MEMORY
  %loadMem_4548f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 33
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4509 to i64*
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4511 = getelementptr inbounds %struct.GPR, %struct.GPR* %4510, i32 0, i32 7
  %4512 = getelementptr inbounds %struct.Reg, %struct.Reg* %4511, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4512 to i32*
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 9
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %RSI.i126 = bitcast %union.anon* %4515 to i64*
  %4516 = load i32, i32* %EDX.i
  %4517 = zext i32 %4516 to i64
  %4518 = load i64, i64* %PC.i125
  %4519 = add i64 %4518, 2
  store i64 %4519, i64* %PC.i125
  %4520 = and i64 %4517, 4294967295
  store i64 %4520, i64* %RSI.i126, align 8
  store %struct.Memory* %loadMem_4548f9, %struct.Memory** %MEMORY
  %loadMem_4548fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 33
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4523 to i64*
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 5
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 9
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %RSI.i124 = bitcast %union.anon* %4529 to i64*
  %4530 = load i64, i64* %RCX.i123
  %4531 = load i64, i64* %RSI.i124
  %4532 = mul i64 %4531, 8
  %4533 = add i64 %4532, %4530
  %4534 = load i64, i64* %PC.i122
  %4535 = add i64 %4534, 4
  store i64 %4535, i64* %PC.i122
  %4536 = inttoptr i64 %4533 to i64*
  %4537 = load i64, i64* %4536
  store i64 %4537, i64* %RCX.i123, align 8
  store %struct.Memory* %loadMem_4548fb, %struct.Memory** %MEMORY
  %loadMem_4548ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4539 = getelementptr inbounds %struct.GPR, %struct.GPR* %4538, i32 0, i32 33
  %4540 = getelementptr inbounds %struct.Reg, %struct.Reg* %4539, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4540 to i64*
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4542 = getelementptr inbounds %struct.GPR, %struct.GPR* %4541, i32 0, i32 5
  %4543 = getelementptr inbounds %struct.Reg, %struct.Reg* %4542, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %4543 to i64*
  %4544 = load i64, i64* %RCX.i121
  %4545 = add i64 %4544, 56
  %4546 = load i64, i64* %PC.i120
  %4547 = add i64 %4546, 4
  store i64 %4547, i64* %PC.i120
  %4548 = inttoptr i64 %4545 to i64*
  %4549 = load i64, i64* %4548
  store i64 %4549, i64* %RCX.i121, align 8
  store %struct.Memory* %loadMem_4548ff, %struct.Memory** %MEMORY
  %loadMem_454903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4551 = getelementptr inbounds %struct.GPR, %struct.GPR* %4550, i32 0, i32 33
  %4552 = getelementptr inbounds %struct.Reg, %struct.Reg* %4551, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4552 to i64*
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4554 = getelementptr inbounds %struct.GPR, %struct.GPR* %4553, i32 0, i32 1
  %4555 = getelementptr inbounds %struct.Reg, %struct.Reg* %4554, i32 0, i32 0
  %EAX.i118 = bitcast %union.anon* %4555 to i32*
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4557 = getelementptr inbounds %struct.GPR, %struct.GPR* %4556, i32 0, i32 5
  %4558 = getelementptr inbounds %struct.Reg, %struct.Reg* %4557, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %4558 to i64*
  %4559 = load i64, i64* %RCX.i119
  %4560 = add i64 %4559, 6368
  %4561 = load i32, i32* %EAX.i118
  %4562 = zext i32 %4561 to i64
  %4563 = load i64, i64* %PC.i117
  %4564 = add i64 %4563, 6
  store i64 %4564, i64* %PC.i117
  %4565 = inttoptr i64 %4560 to i32*
  store i32 %4561, i32* %4565
  store %struct.Memory* %loadMem_454903, %struct.Memory** %MEMORY
  %loadMem_454909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 33
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4568 to i64*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 5
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %4571 to i64*
  %4572 = load i64, i64* %PC.i115
  %4573 = add i64 %4572, 8
  store i64 %4573, i64* %PC.i115
  %4574 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %4574, i64* %RCX.i116, align 8
  store %struct.Memory* %loadMem_454909, %struct.Memory** %MEMORY
  %loadMem_454911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 33
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4577 to i64*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 1
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %4580 to i64*
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 15
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %4583 to i64*
  %4584 = load i64, i64* %RBP.i114
  %4585 = sub i64 %4584, 20
  %4586 = load i64, i64* %PC.i112
  %4587 = add i64 %4586, 3
  store i64 %4587, i64* %PC.i112
  %4588 = inttoptr i64 %4585 to i32*
  %4589 = load i32, i32* %4588
  %4590 = zext i32 %4589 to i64
  store i64 %4590, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_454911, %struct.Memory** %MEMORY
  %loadMem_454914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 33
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %4593 to i64*
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4595 = getelementptr inbounds %struct.GPR, %struct.GPR* %4594, i32 0, i32 1
  %4596 = getelementptr inbounds %struct.Reg, %struct.Reg* %4595, i32 0, i32 0
  %EAX.i110 = bitcast %union.anon* %4596 to i32*
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4598 = getelementptr inbounds %struct.GPR, %struct.GPR* %4597, i32 0, i32 9
  %4599 = getelementptr inbounds %struct.Reg, %struct.Reg* %4598, i32 0, i32 0
  %RSI.i111 = bitcast %union.anon* %4599 to i64*
  %4600 = load i32, i32* %EAX.i110
  %4601 = zext i32 %4600 to i64
  %4602 = load i64, i64* %PC.i109
  %4603 = add i64 %4602, 2
  store i64 %4603, i64* %PC.i109
  %4604 = and i64 %4601, 4294967295
  store i64 %4604, i64* %RSI.i111, align 8
  store %struct.Memory* %loadMem_454914, %struct.Memory** %MEMORY
  %loadMem_454916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4606 = getelementptr inbounds %struct.GPR, %struct.GPR* %4605, i32 0, i32 33
  %4607 = getelementptr inbounds %struct.Reg, %struct.Reg* %4606, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4607 to i64*
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 5
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 9
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RSI.i108 = bitcast %union.anon* %4613 to i64*
  %4614 = load i64, i64* %RCX.i107
  %4615 = load i64, i64* %RSI.i108
  %4616 = mul i64 %4615, 8
  %4617 = add i64 %4616, %4614
  %4618 = load i64, i64* %PC.i106
  %4619 = add i64 %4618, 4
  store i64 %4619, i64* %PC.i106
  %4620 = inttoptr i64 %4617 to i64*
  %4621 = load i64, i64* %4620
  store i64 %4621, i64* %RCX.i107, align 8
  store %struct.Memory* %loadMem_454916, %struct.Memory** %MEMORY
  %loadMem_45491a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 33
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4624 to i64*
  %4625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4626 = getelementptr inbounds %struct.GPR, %struct.GPR* %4625, i32 0, i32 5
  %4627 = getelementptr inbounds %struct.Reg, %struct.Reg* %4626, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %4627 to i64*
  %4628 = load i64, i64* %RCX.i105
  %4629 = add i64 %4628, 56
  %4630 = load i64, i64* %PC.i104
  %4631 = add i64 %4630, 4
  store i64 %4631, i64* %PC.i104
  %4632 = inttoptr i64 %4629 to i64*
  %4633 = load i64, i64* %4632
  store i64 %4633, i64* %RCX.i105, align 8
  store %struct.Memory* %loadMem_45491a, %struct.Memory** %MEMORY
  %loadMem_45491e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4635 = getelementptr inbounds %struct.GPR, %struct.GPR* %4634, i32 0, i32 33
  %4636 = getelementptr inbounds %struct.Reg, %struct.Reg* %4635, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %4636 to i64*
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 5
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %4639 to i64*
  %4640 = load i64, i64* %RCX.i103
  %4641 = add i64 %4640, 6376
  %4642 = load i64, i64* %PC.i102
  %4643 = add i64 %4642, 10
  store i64 %4643, i64* %PC.i102
  %4644 = inttoptr i64 %4641 to i32*
  store i32 1, i32* %4644
  store %struct.Memory* %loadMem_45491e, %struct.Memory** %MEMORY
  %loadMem_454928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 33
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4647 to i64*
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 5
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %4650 to i64*
  %4651 = load i64, i64* %PC.i100
  %4652 = add i64 %4651, 8
  store i64 %4652, i64* %PC.i100
  %4653 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %4653, i64* %RCX.i101, align 8
  store %struct.Memory* %loadMem_454928, %struct.Memory** %MEMORY
  %loadMem_454930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4655 = getelementptr inbounds %struct.GPR, %struct.GPR* %4654, i32 0, i32 33
  %4656 = getelementptr inbounds %struct.Reg, %struct.Reg* %4655, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4656 to i64*
  %4657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4658 = getelementptr inbounds %struct.GPR, %struct.GPR* %4657, i32 0, i32 1
  %4659 = getelementptr inbounds %struct.Reg, %struct.Reg* %4658, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %4659 to i64*
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4661 = getelementptr inbounds %struct.GPR, %struct.GPR* %4660, i32 0, i32 15
  %4662 = getelementptr inbounds %struct.Reg, %struct.Reg* %4661, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %4662 to i64*
  %4663 = load i64, i64* %RBP.i99
  %4664 = sub i64 %4663, 20
  %4665 = load i64, i64* %PC.i97
  %4666 = add i64 %4665, 3
  store i64 %4666, i64* %PC.i97
  %4667 = inttoptr i64 %4664 to i32*
  %4668 = load i32, i32* %4667
  %4669 = zext i32 %4668 to i64
  store i64 %4669, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_454930, %struct.Memory** %MEMORY
  %loadMem_454933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 33
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4672 to i64*
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 1
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %EAX.i95 = bitcast %union.anon* %4675 to i32*
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 9
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %RSI.i96 = bitcast %union.anon* %4678 to i64*
  %4679 = load i32, i32* %EAX.i95
  %4680 = zext i32 %4679 to i64
  %4681 = load i64, i64* %PC.i94
  %4682 = add i64 %4681, 2
  store i64 %4682, i64* %PC.i94
  %4683 = and i64 %4680, 4294967295
  store i64 %4683, i64* %RSI.i96, align 8
  store %struct.Memory* %loadMem_454933, %struct.Memory** %MEMORY
  %loadMem_454935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4685 = getelementptr inbounds %struct.GPR, %struct.GPR* %4684, i32 0, i32 33
  %4686 = getelementptr inbounds %struct.Reg, %struct.Reg* %4685, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4686 to i64*
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 5
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %4689 to i64*
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 9
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %RSI.i93 = bitcast %union.anon* %4692 to i64*
  %4693 = load i64, i64* %RCX.i92
  %4694 = load i64, i64* %RSI.i93
  %4695 = mul i64 %4694, 8
  %4696 = add i64 %4695, %4693
  %4697 = load i64, i64* %PC.i91
  %4698 = add i64 %4697, 4
  store i64 %4698, i64* %PC.i91
  %4699 = inttoptr i64 %4696 to i64*
  %4700 = load i64, i64* %4699
  store i64 %4700, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_454935, %struct.Memory** %MEMORY
  %loadMem_454939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 33
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %4703 to i64*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 1
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %4706 to i64*
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 5
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %4709 to i64*
  %4710 = load i64, i64* %RCX.i90
  %4711 = add i64 %4710, 8
  %4712 = load i64, i64* %PC.i88
  %4713 = add i64 %4712, 3
  store i64 %4713, i64* %PC.i88
  %4714 = inttoptr i64 %4711 to i32*
  %4715 = load i32, i32* %4714
  %4716 = zext i32 %4715 to i64
  store i64 %4716, i64* %RAX.i89, align 8
  store %struct.Memory* %loadMem_454939, %struct.Memory** %MEMORY
  %loadMem_45493c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 33
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4719 to i64*
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 1
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %4722 to i64*
  %4723 = load i64, i64* %RAX.i87
  %4724 = load i64, i64* %PC.i86
  %4725 = add i64 %4724, 3
  store i64 %4725, i64* %PC.i86
  %4726 = or i64 2, %4723
  %4727 = trunc i64 %4726 to i32
  %4728 = and i64 %4726, 4294967295
  store i64 %4728, i64* %RAX.i87, align 8
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4729, align 1
  %4730 = and i32 %4727, 255
  %4731 = call i32 @llvm.ctpop.i32(i32 %4730)
  %4732 = trunc i32 %4731 to i8
  %4733 = and i8 %4732, 1
  %4734 = xor i8 %4733, 1
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4734, i8* %4735, align 1
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4736, align 1
  %4737 = lshr i32 %4727, 31
  %4738 = trunc i32 %4737 to i8
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4738, i8* %4739, align 1
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4740, align 1
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4741, align 1
  store %struct.Memory* %loadMem_45493c, %struct.Memory** %MEMORY
  %loadMem_45493f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4743 = getelementptr inbounds %struct.GPR, %struct.GPR* %4742, i32 0, i32 33
  %4744 = getelementptr inbounds %struct.Reg, %struct.Reg* %4743, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4744 to i64*
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 1
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %EAX.i84 = bitcast %union.anon* %4747 to i32*
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 5
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %4750 to i64*
  %4751 = load i64, i64* %RCX.i85
  %4752 = add i64 %4751, 8
  %4753 = load i32, i32* %EAX.i84
  %4754 = zext i32 %4753 to i64
  %4755 = load i64, i64* %PC.i83
  %4756 = add i64 %4755, 3
  store i64 %4756, i64* %PC.i83
  %4757 = inttoptr i64 %4752 to i32*
  store i32 %4753, i32* %4757
  store %struct.Memory* %loadMem_45493f, %struct.Memory** %MEMORY
  %loadMem_454942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 33
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4760 to i64*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 5
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %4763 to i64*
  %4764 = load i64, i64* %PC.i81
  %4765 = add i64 %4764, 8
  store i64 %4765, i64* %PC.i81
  %4766 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %4766, i64* %RCX.i82, align 8
  store %struct.Memory* %loadMem_454942, %struct.Memory** %MEMORY
  %loadMem_45494a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 33
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4769 to i64*
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 1
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %4772 to i64*
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 15
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %4775 to i64*
  %4776 = load i64, i64* %RBP.i80
  %4777 = sub i64 %4776, 20
  %4778 = load i64, i64* %PC.i78
  %4779 = add i64 %4778, 3
  store i64 %4779, i64* %PC.i78
  %4780 = inttoptr i64 %4777 to i32*
  %4781 = load i32, i32* %4780
  %4782 = zext i32 %4781 to i64
  store i64 %4782, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_45494a, %struct.Memory** %MEMORY
  %loadMem_45494d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4784 = getelementptr inbounds %struct.GPR, %struct.GPR* %4783, i32 0, i32 33
  %4785 = getelementptr inbounds %struct.Reg, %struct.Reg* %4784, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4785 to i64*
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 1
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %EAX.i76 = bitcast %union.anon* %4788 to i32*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 9
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %RSI.i77 = bitcast %union.anon* %4791 to i64*
  %4792 = load i32, i32* %EAX.i76
  %4793 = zext i32 %4792 to i64
  %4794 = load i64, i64* %PC.i75
  %4795 = add i64 %4794, 2
  store i64 %4795, i64* %PC.i75
  %4796 = and i64 %4793, 4294967295
  store i64 %4796, i64* %RSI.i77, align 8
  store %struct.Memory* %loadMem_45494d, %struct.Memory** %MEMORY
  %loadMem_45494f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4798 = getelementptr inbounds %struct.GPR, %struct.GPR* %4797, i32 0, i32 33
  %4799 = getelementptr inbounds %struct.Reg, %struct.Reg* %4798, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4799 to i64*
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4801 = getelementptr inbounds %struct.GPR, %struct.GPR* %4800, i32 0, i32 5
  %4802 = getelementptr inbounds %struct.Reg, %struct.Reg* %4801, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %4802 to i64*
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 9
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %RSI.i74 = bitcast %union.anon* %4805 to i64*
  %4806 = load i64, i64* %RCX.i73
  %4807 = load i64, i64* %RSI.i74
  %4808 = mul i64 %4807, 8
  %4809 = add i64 %4808, %4806
  %4810 = load i64, i64* %PC.i72
  %4811 = add i64 %4810, 4
  store i64 %4811, i64* %PC.i72
  %4812 = inttoptr i64 %4809 to i64*
  %4813 = load i64, i64* %4812
  store i64 %4813, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_45494f, %struct.Memory** %MEMORY
  %loadMem_454953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 33
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4816 to i64*
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4818 = getelementptr inbounds %struct.GPR, %struct.GPR* %4817, i32 0, i32 5
  %4819 = getelementptr inbounds %struct.Reg, %struct.Reg* %4818, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %4819 to i64*
  %4820 = load i64, i64* %RCX.i71
  %4821 = add i64 %4820, 8
  %4822 = load i64, i64* %PC.i70
  %4823 = add i64 %4822, 4
  store i64 %4823, i64* %PC.i70
  %4824 = inttoptr i64 %4821 to i32*
  %4825 = load i32, i32* %4824
  %4826 = sub i32 %4825, 3
  %4827 = icmp ult i32 %4825, 3
  %4828 = zext i1 %4827 to i8
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4828, i8* %4829, align 1
  %4830 = and i32 %4826, 255
  %4831 = call i32 @llvm.ctpop.i32(i32 %4830)
  %4832 = trunc i32 %4831 to i8
  %4833 = and i8 %4832, 1
  %4834 = xor i8 %4833, 1
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4834, i8* %4835, align 1
  %4836 = xor i32 %4825, 3
  %4837 = xor i32 %4836, %4826
  %4838 = lshr i32 %4837, 4
  %4839 = trunc i32 %4838 to i8
  %4840 = and i8 %4839, 1
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4840, i8* %4841, align 1
  %4842 = icmp eq i32 %4826, 0
  %4843 = zext i1 %4842 to i8
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4843, i8* %4844, align 1
  %4845 = lshr i32 %4826, 31
  %4846 = trunc i32 %4845 to i8
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4846, i8* %4847, align 1
  %4848 = lshr i32 %4825, 31
  %4849 = xor i32 %4845, %4848
  %4850 = add i32 %4849, %4848
  %4851 = icmp eq i32 %4850, 2
  %4852 = zext i1 %4851 to i8
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4852, i8* %4853, align 1
  store %struct.Memory* %loadMem_454953, %struct.Memory** %MEMORY
  %loadMem_454957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4855 = getelementptr inbounds %struct.GPR, %struct.GPR* %4854, i32 0, i32 33
  %4856 = getelementptr inbounds %struct.Reg, %struct.Reg* %4855, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4856 to i64*
  %4857 = load i64, i64* %PC.i69
  %4858 = add i64 %4857, 94
  %4859 = load i64, i64* %PC.i69
  %4860 = add i64 %4859, 6
  %4861 = load i64, i64* %PC.i69
  %4862 = add i64 %4861, 6
  store i64 %4862, i64* %PC.i69
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4864 = load i8, i8* %4863, align 1
  %4865 = icmp eq i8 %4864, 0
  %4866 = zext i1 %4865 to i8
  store i8 %4866, i8* %BRANCH_TAKEN, align 1
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4868 = select i1 %4865, i64 %4858, i64 %4860
  store i64 %4868, i64* %4867, align 8
  store %struct.Memory* %loadMem_454957, %struct.Memory** %MEMORY
  %loadBr_454957 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454957 = icmp eq i8 %loadBr_454957, 1
  br i1 %cmpBr_454957, label %block_.L_4549b5, label %block_45495d

block_45495d:                                     ; preds = %block_.L_4548b3
  %loadMem_45495d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 33
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %4871 to i64*
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 1
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %4874 to i64*
  %4875 = load i64, i64* %PC.i67
  %4876 = add i64 %4875, 8
  store i64 %4876, i64* %PC.i67
  %4877 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %4877, i64* %RAX.i68, align 8
  store %struct.Memory* %loadMem_45495d, %struct.Memory** %MEMORY
  %loadMem_454965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4879 = getelementptr inbounds %struct.GPR, %struct.GPR* %4878, i32 0, i32 33
  %4880 = getelementptr inbounds %struct.Reg, %struct.Reg* %4879, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %4880 to i64*
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4882 = getelementptr inbounds %struct.GPR, %struct.GPR* %4881, i32 0, i32 5
  %4883 = getelementptr inbounds %struct.Reg, %struct.Reg* %4882, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %4883 to i64*
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 15
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %4886 to i64*
  %4887 = load i64, i64* %RBP.i66
  %4888 = sub i64 %4887, 20
  %4889 = load i64, i64* %PC.i64
  %4890 = add i64 %4889, 3
  store i64 %4890, i64* %PC.i64
  %4891 = inttoptr i64 %4888 to i32*
  %4892 = load i32, i32* %4891
  %4893 = zext i32 %4892 to i64
  store i64 %4893, i64* %RCX.i65, align 8
  store %struct.Memory* %loadMem_454965, %struct.Memory** %MEMORY
  %loadMem_454968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4895 = getelementptr inbounds %struct.GPR, %struct.GPR* %4894, i32 0, i32 33
  %4896 = getelementptr inbounds %struct.Reg, %struct.Reg* %4895, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %4896 to i64*
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4898 = getelementptr inbounds %struct.GPR, %struct.GPR* %4897, i32 0, i32 5
  %4899 = getelementptr inbounds %struct.Reg, %struct.Reg* %4898, i32 0, i32 0
  %ECX.i62 = bitcast %union.anon* %4899 to i32*
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 7
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %RDX.i63 = bitcast %union.anon* %4902 to i64*
  %4903 = load i32, i32* %ECX.i62
  %4904 = zext i32 %4903 to i64
  %4905 = load i64, i64* %PC.i61
  %4906 = add i64 %4905, 2
  store i64 %4906, i64* %PC.i61
  %4907 = and i64 %4904, 4294967295
  store i64 %4907, i64* %RDX.i63, align 8
  store %struct.Memory* %loadMem_454968, %struct.Memory** %MEMORY
  %loadMem_45496a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 33
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %4910 to i64*
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 1
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %4913 to i64*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 7
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %RDX.i60 = bitcast %union.anon* %4916 to i64*
  %4917 = load i64, i64* %RAX.i59
  %4918 = load i64, i64* %RDX.i60
  %4919 = mul i64 %4918, 8
  %4920 = add i64 %4919, %4917
  %4921 = load i64, i64* %PC.i58
  %4922 = add i64 %4921, 4
  store i64 %4922, i64* %PC.i58
  %4923 = inttoptr i64 %4920 to i64*
  %4924 = load i64, i64* %4923
  store i64 %4924, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_45496a, %struct.Memory** %MEMORY
  %loadMem_45496e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 33
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4927 to i64*
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 1
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %4930 to i64*
  %4931 = load i64, i64* %RAX.i57
  %4932 = add i64 %4931, 40
  %4933 = load i64, i64* %PC.i56
  %4934 = add i64 %4933, 4
  store i64 %4934, i64* %PC.i56
  %4935 = inttoptr i64 %4932 to i64*
  %4936 = load i64, i64* %4935
  store i64 %4936, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_45496e, %struct.Memory** %MEMORY
  %loadMem_454972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4938 = getelementptr inbounds %struct.GPR, %struct.GPR* %4937, i32 0, i32 33
  %4939 = getelementptr inbounds %struct.Reg, %struct.Reg* %4938, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4939 to i64*
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 1
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %4942 to i64*
  %4943 = load i64, i64* %RAX.i55
  %4944 = add i64 %4943, 6376
  %4945 = load i64, i64* %PC.i54
  %4946 = add i64 %4945, 10
  store i64 %4946, i64* %PC.i54
  %4947 = inttoptr i64 %4944 to i32*
  store i32 1, i32* %4947
  store %struct.Memory* %loadMem_454972, %struct.Memory** %MEMORY
  %loadMem_45497c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4949 = getelementptr inbounds %struct.GPR, %struct.GPR* %4948, i32 0, i32 33
  %4950 = getelementptr inbounds %struct.Reg, %struct.Reg* %4949, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %4950 to i64*
  %4951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4952 = getelementptr inbounds %struct.GPR, %struct.GPR* %4951, i32 0, i32 5
  %4953 = getelementptr inbounds %struct.Reg, %struct.Reg* %4952, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4953 to i64*
  %4954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4955 = getelementptr inbounds %struct.GPR, %struct.GPR* %4954, i32 0, i32 15
  %4956 = getelementptr inbounds %struct.Reg, %struct.Reg* %4955, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %4956 to i64*
  %4957 = load i64, i64* %RBP.i53
  %4958 = sub i64 %4957, 12
  %4959 = load i64, i64* %PC.i52
  %4960 = add i64 %4959, 3
  store i64 %4960, i64* %PC.i52
  %4961 = inttoptr i64 %4958 to i32*
  %4962 = load i32, i32* %4961
  %4963 = zext i32 %4962 to i64
  store i64 %4963, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_45497c, %struct.Memory** %MEMORY
  %loadMem_45497f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4965 = getelementptr inbounds %struct.GPR, %struct.GPR* %4964, i32 0, i32 33
  %4966 = getelementptr inbounds %struct.Reg, %struct.Reg* %4965, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4966 to i64*
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4968 = getelementptr inbounds %struct.GPR, %struct.GPR* %4967, i32 0, i32 1
  %4969 = getelementptr inbounds %struct.Reg, %struct.Reg* %4968, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %4969 to i64*
  %4970 = load i64, i64* %PC.i50
  %4971 = add i64 %4970, 8
  store i64 %4971, i64* %PC.i50
  %4972 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %4972, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_45497f, %struct.Memory** %MEMORY
  %loadMem_454987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4974 = getelementptr inbounds %struct.GPR, %struct.GPR* %4973, i32 0, i32 33
  %4975 = getelementptr inbounds %struct.Reg, %struct.Reg* %4974, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4975 to i64*
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4977 = getelementptr inbounds %struct.GPR, %struct.GPR* %4976, i32 0, i32 9
  %4978 = getelementptr inbounds %struct.Reg, %struct.Reg* %4977, i32 0, i32 0
  %RSI.i48 = bitcast %union.anon* %4978 to i64*
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4980 = getelementptr inbounds %struct.GPR, %struct.GPR* %4979, i32 0, i32 15
  %4981 = getelementptr inbounds %struct.Reg, %struct.Reg* %4980, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %4981 to i64*
  %4982 = load i64, i64* %RBP.i49
  %4983 = sub i64 %4982, 20
  %4984 = load i64, i64* %PC.i47
  %4985 = add i64 %4984, 3
  store i64 %4985, i64* %PC.i47
  %4986 = inttoptr i64 %4983 to i32*
  %4987 = load i32, i32* %4986
  %4988 = zext i32 %4987 to i64
  store i64 %4988, i64* %RSI.i48, align 8
  store %struct.Memory* %loadMem_454987, %struct.Memory** %MEMORY
  %loadMem_45498a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4990 = getelementptr inbounds %struct.GPR, %struct.GPR* %4989, i32 0, i32 33
  %4991 = getelementptr inbounds %struct.Reg, %struct.Reg* %4990, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4991 to i64*
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 9
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %ESI.i45 = bitcast %union.anon* %4994 to i32*
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 7
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %RDX.i46 = bitcast %union.anon* %4997 to i64*
  %4998 = load i32, i32* %ESI.i45
  %4999 = zext i32 %4998 to i64
  %5000 = load i64, i64* %PC.i44
  %5001 = add i64 %5000, 2
  store i64 %5001, i64* %PC.i44
  %5002 = and i64 %4999, 4294967295
  store i64 %5002, i64* %RDX.i46, align 8
  store %struct.Memory* %loadMem_45498a, %struct.Memory** %MEMORY
  %loadMem_45498c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5004 = getelementptr inbounds %struct.GPR, %struct.GPR* %5003, i32 0, i32 33
  %5005 = getelementptr inbounds %struct.Reg, %struct.Reg* %5004, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %5005 to i64*
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5007 = getelementptr inbounds %struct.GPR, %struct.GPR* %5006, i32 0, i32 1
  %5008 = getelementptr inbounds %struct.Reg, %struct.Reg* %5007, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %5008 to i64*
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5010 = getelementptr inbounds %struct.GPR, %struct.GPR* %5009, i32 0, i32 7
  %5011 = getelementptr inbounds %struct.Reg, %struct.Reg* %5010, i32 0, i32 0
  %RDX.i43 = bitcast %union.anon* %5011 to i64*
  %5012 = load i64, i64* %RAX.i42
  %5013 = load i64, i64* %RDX.i43
  %5014 = mul i64 %5013, 8
  %5015 = add i64 %5014, %5012
  %5016 = load i64, i64* %PC.i41
  %5017 = add i64 %5016, 4
  store i64 %5017, i64* %PC.i41
  %5018 = inttoptr i64 %5015 to i64*
  %5019 = load i64, i64* %5018
  store i64 %5019, i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_45498c, %struct.Memory** %MEMORY
  %loadMem_454990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5021 = getelementptr inbounds %struct.GPR, %struct.GPR* %5020, i32 0, i32 33
  %5022 = getelementptr inbounds %struct.Reg, %struct.Reg* %5021, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5022 to i64*
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 1
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %5025 to i64*
  %5026 = load i64, i64* %RAX.i40
  %5027 = add i64 %5026, 40
  %5028 = load i64, i64* %PC.i39
  %5029 = add i64 %5028, 4
  store i64 %5029, i64* %PC.i39
  %5030 = inttoptr i64 %5027 to i64*
  %5031 = load i64, i64* %5030
  store i64 %5031, i64* %RAX.i40, align 8
  store %struct.Memory* %loadMem_454990, %struct.Memory** %MEMORY
  %loadMem_454994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5033 = getelementptr inbounds %struct.GPR, %struct.GPR* %5032, i32 0, i32 33
  %5034 = getelementptr inbounds %struct.Reg, %struct.Reg* %5033, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5034 to i64*
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5036 = getelementptr inbounds %struct.GPR, %struct.GPR* %5035, i32 0, i32 5
  %5037 = getelementptr inbounds %struct.Reg, %struct.Reg* %5036, i32 0, i32 0
  %ECX.i37 = bitcast %union.anon* %5037 to i32*
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5039 = getelementptr inbounds %struct.GPR, %struct.GPR* %5038, i32 0, i32 1
  %5040 = getelementptr inbounds %struct.Reg, %struct.Reg* %5039, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %5040 to i64*
  %5041 = load i64, i64* %RAX.i38
  %5042 = add i64 %5041, 6368
  %5043 = load i32, i32* %ECX.i37
  %5044 = zext i32 %5043 to i64
  %5045 = load i64, i64* %PC.i36
  %5046 = add i64 %5045, 6
  store i64 %5046, i64* %PC.i36
  %5047 = inttoptr i64 %5042 to i32*
  store i32 %5043, i32* %5047
  store %struct.Memory* %loadMem_454994, %struct.Memory** %MEMORY
  %loadMem_45499a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5049 = getelementptr inbounds %struct.GPR, %struct.GPR* %5048, i32 0, i32 33
  %5050 = getelementptr inbounds %struct.Reg, %struct.Reg* %5049, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5050 to i64*
  %5051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5052 = getelementptr inbounds %struct.GPR, %struct.GPR* %5051, i32 0, i32 1
  %5053 = getelementptr inbounds %struct.Reg, %struct.Reg* %5052, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %5053 to i64*
  %5054 = load i64, i64* %PC.i34
  %5055 = add i64 %5054, 8
  store i64 %5055, i64* %PC.i34
  %5056 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %5056, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_45499a, %struct.Memory** %MEMORY
  %loadMem_4549a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5058 = getelementptr inbounds %struct.GPR, %struct.GPR* %5057, i32 0, i32 33
  %5059 = getelementptr inbounds %struct.Reg, %struct.Reg* %5058, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %5059 to i64*
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5061 = getelementptr inbounds %struct.GPR, %struct.GPR* %5060, i32 0, i32 9
  %5062 = getelementptr inbounds %struct.Reg, %struct.Reg* %5061, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5062 to i64*
  %5063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5064 = getelementptr inbounds %struct.GPR, %struct.GPR* %5063, i32 0, i32 15
  %5065 = getelementptr inbounds %struct.Reg, %struct.Reg* %5064, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %5065 to i64*
  %5066 = load i64, i64* %RBP.i33
  %5067 = sub i64 %5066, 20
  %5068 = load i64, i64* %PC.i32
  %5069 = add i64 %5068, 3
  store i64 %5069, i64* %PC.i32
  %5070 = inttoptr i64 %5067 to i32*
  %5071 = load i32, i32* %5070
  %5072 = zext i32 %5071 to i64
  store i64 %5072, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4549a2, %struct.Memory** %MEMORY
  %loadMem_4549a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 33
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5075 to i64*
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 9
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %5078 to i32*
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 7
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %RDX.i31 = bitcast %union.anon* %5081 to i64*
  %5082 = load i32, i32* %ESI.i
  %5083 = zext i32 %5082 to i64
  %5084 = load i64, i64* %PC.i30
  %5085 = add i64 %5084, 2
  store i64 %5085, i64* %PC.i30
  %5086 = and i64 %5083, 4294967295
  store i64 %5086, i64* %RDX.i31, align 8
  store %struct.Memory* %loadMem_4549a5, %struct.Memory** %MEMORY
  %loadMem_4549a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5088 = getelementptr inbounds %struct.GPR, %struct.GPR* %5087, i32 0, i32 33
  %5089 = getelementptr inbounds %struct.Reg, %struct.Reg* %5088, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5089 to i64*
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5091 = getelementptr inbounds %struct.GPR, %struct.GPR* %5090, i32 0, i32 1
  %5092 = getelementptr inbounds %struct.Reg, %struct.Reg* %5091, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %5092 to i64*
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 7
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5095 to i64*
  %5096 = load i64, i64* %RAX.i29
  %5097 = load i64, i64* %RDX.i
  %5098 = mul i64 %5097, 8
  %5099 = add i64 %5098, %5096
  %5100 = load i64, i64* %PC.i28
  %5101 = add i64 %5100, 4
  store i64 %5101, i64* %PC.i28
  %5102 = inttoptr i64 %5099 to i64*
  %5103 = load i64, i64* %5102
  store i64 %5103, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_4549a7, %struct.Memory** %MEMORY
  %loadMem_4549ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 33
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5106 to i64*
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 1
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %5109 to i64*
  %5110 = load i64, i64* %RAX.i27
  %5111 = add i64 %5110, 40
  %5112 = load i64, i64* %PC.i26
  %5113 = add i64 %5112, 4
  store i64 %5113, i64* %PC.i26
  %5114 = inttoptr i64 %5111 to i64*
  %5115 = load i64, i64* %5114
  store i64 %5115, i64* %RAX.i27, align 8
  store %struct.Memory* %loadMem_4549ab, %struct.Memory** %MEMORY
  %loadMem_4549af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 33
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %5118 to i64*
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5120 = getelementptr inbounds %struct.GPR, %struct.GPR* %5119, i32 0, i32 5
  %5121 = getelementptr inbounds %struct.Reg, %struct.Reg* %5120, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5121 to i32*
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5123 = getelementptr inbounds %struct.GPR, %struct.GPR* %5122, i32 0, i32 1
  %5124 = getelementptr inbounds %struct.Reg, %struct.Reg* %5123, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %5124 to i64*
  %5125 = load i64, i64* %RAX.i25
  %5126 = add i64 %5125, 6372
  %5127 = load i32, i32* %ECX.i
  %5128 = zext i32 %5127 to i64
  %5129 = load i64, i64* %PC.i24
  %5130 = add i64 %5129, 6
  store i64 %5130, i64* %PC.i24
  %5131 = inttoptr i64 %5126 to i32*
  store i32 %5127, i32* %5131
  store %struct.Memory* %loadMem_4549af, %struct.Memory** %MEMORY
  br label %block_.L_4549b5

block_.L_4549b5:                                  ; preds = %block_45495d, %block_.L_4548b3
  %loadMem_4549b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5133 = getelementptr inbounds %struct.GPR, %struct.GPR* %5132, i32 0, i32 33
  %5134 = getelementptr inbounds %struct.Reg, %struct.Reg* %5133, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5134 to i64*
  %5135 = load i64, i64* %PC.i23
  %5136 = add i64 %5135, 49
  %5137 = load i64, i64* %PC.i23
  %5138 = add i64 %5137, 5
  store i64 %5138, i64* %PC.i23
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5136, i64* %5139, align 8
  store %struct.Memory* %loadMem_4549b5, %struct.Memory** %MEMORY
  br label %block_.L_4549e6

block_.L_4549ba:                                  ; preds = %block_454843, %block_454821
  %loadMem_4549ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5141 = getelementptr inbounds %struct.GPR, %struct.GPR* %5140, i32 0, i32 33
  %5142 = getelementptr inbounds %struct.Reg, %struct.Reg* %5141, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5142 to i64*
  %5143 = load i64, i64* %PC.i22
  %5144 = add i64 %5143, 5
  %5145 = load i64, i64* %PC.i22
  %5146 = add i64 %5145, 5
  store i64 %5146, i64* %PC.i22
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5144, i64* %5147, align 8
  store %struct.Memory* %loadMem_4549ba, %struct.Memory** %MEMORY
  br label %block_.L_4549bf

block_.L_4549bf:                                  ; preds = %block_.L_4549ba, %block_.L_454801
  %loadMem_4549bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 33
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %5150 to i64*
  %5151 = load i64, i64* %PC.i21
  %5152 = add i64 %5151, 5
  %5153 = load i64, i64* %PC.i21
  %5154 = add i64 %5153, 5
  store i64 %5154, i64* %PC.i21
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5152, i64* %5155, align 8
  store %struct.Memory* %loadMem_4549bf, %struct.Memory** %MEMORY
  br label %block_.L_4549c4

block_.L_4549c4:                                  ; preds = %block_.L_4549bf
  %loadMem_4549c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5157 = getelementptr inbounds %struct.GPR, %struct.GPR* %5156, i32 0, i32 33
  %5158 = getelementptr inbounds %struct.Reg, %struct.Reg* %5157, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5158 to i64*
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5160 = getelementptr inbounds %struct.GPR, %struct.GPR* %5159, i32 0, i32 1
  %5161 = getelementptr inbounds %struct.Reg, %struct.Reg* %5160, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %5161 to i64*
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5163 = getelementptr inbounds %struct.GPR, %struct.GPR* %5162, i32 0, i32 15
  %5164 = getelementptr inbounds %struct.Reg, %struct.Reg* %5163, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %5164 to i64*
  %5165 = load i64, i64* %RBP.i20
  %5166 = sub i64 %5165, 20
  %5167 = load i64, i64* %PC.i18
  %5168 = add i64 %5167, 3
  store i64 %5168, i64* %PC.i18
  %5169 = inttoptr i64 %5166 to i32*
  %5170 = load i32, i32* %5169
  %5171 = zext i32 %5170 to i64
  store i64 %5171, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_4549c4, %struct.Memory** %MEMORY
  %loadMem_4549c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5173 = getelementptr inbounds %struct.GPR, %struct.GPR* %5172, i32 0, i32 33
  %5174 = getelementptr inbounds %struct.Reg, %struct.Reg* %5173, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5174 to i64*
  %5175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5176 = getelementptr inbounds %struct.GPR, %struct.GPR* %5175, i32 0, i32 1
  %5177 = getelementptr inbounds %struct.Reg, %struct.Reg* %5176, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5177 to i64*
  %5178 = load i64, i64* %RAX.i
  %5179 = load i64, i64* %PC.i17
  %5180 = add i64 %5179, 3
  store i64 %5180, i64* %PC.i17
  %5181 = trunc i64 %5178 to i32
  %5182 = add i32 1, %5181
  %5183 = zext i32 %5182 to i64
  store i64 %5183, i64* %RAX.i, align 8
  %5184 = icmp ult i32 %5182, %5181
  %5185 = icmp ult i32 %5182, 1
  %5186 = or i1 %5184, %5185
  %5187 = zext i1 %5186 to i8
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5187, i8* %5188, align 1
  %5189 = and i32 %5182, 255
  %5190 = call i32 @llvm.ctpop.i32(i32 %5189)
  %5191 = trunc i32 %5190 to i8
  %5192 = and i8 %5191, 1
  %5193 = xor i8 %5192, 1
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5193, i8* %5194, align 1
  %5195 = xor i64 1, %5178
  %5196 = trunc i64 %5195 to i32
  %5197 = xor i32 %5196, %5182
  %5198 = lshr i32 %5197, 4
  %5199 = trunc i32 %5198 to i8
  %5200 = and i8 %5199, 1
  %5201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5200, i8* %5201, align 1
  %5202 = icmp eq i32 %5182, 0
  %5203 = zext i1 %5202 to i8
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5203, i8* %5204, align 1
  %5205 = lshr i32 %5182, 31
  %5206 = trunc i32 %5205 to i8
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5206, i8* %5207, align 1
  %5208 = lshr i32 %5181, 31
  %5209 = xor i32 %5205, %5208
  %5210 = add i32 %5209, %5205
  %5211 = icmp eq i32 %5210, 2
  %5212 = zext i1 %5211 to i8
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5212, i8* %5213, align 1
  store %struct.Memory* %loadMem_4549c7, %struct.Memory** %MEMORY
  %loadMem_4549ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5215 = getelementptr inbounds %struct.GPR, %struct.GPR* %5214, i32 0, i32 33
  %5216 = getelementptr inbounds %struct.Reg, %struct.Reg* %5215, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5216 to i64*
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5218 = getelementptr inbounds %struct.GPR, %struct.GPR* %5217, i32 0, i32 1
  %5219 = getelementptr inbounds %struct.Reg, %struct.Reg* %5218, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %5219 to i32*
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 15
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %5222 to i64*
  %5223 = load i64, i64* %RBP.i16
  %5224 = sub i64 %5223, 20
  %5225 = load i32, i32* %EAX.i15
  %5226 = zext i32 %5225 to i64
  %5227 = load i64, i64* %PC.i14
  %5228 = add i64 %5227, 3
  store i64 %5228, i64* %PC.i14
  %5229 = inttoptr i64 %5224 to i32*
  store i32 %5225, i32* %5229
  store %struct.Memory* %loadMem_4549ca, %struct.Memory** %MEMORY
  %loadMem_4549cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5231 = getelementptr inbounds %struct.GPR, %struct.GPR* %5230, i32 0, i32 33
  %5232 = getelementptr inbounds %struct.Reg, %struct.Reg* %5231, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5232 to i64*
  %5233 = load i64, i64* %PC.i13
  %5234 = add i64 %5233, -922
  %5235 = load i64, i64* %PC.i13
  %5236 = add i64 %5235, 5
  store i64 %5236, i64* %PC.i13
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5234, i64* %5237, align 8
  store %struct.Memory* %loadMem_4549cd, %struct.Memory** %MEMORY
  br label %block_.L_454633

block_.L_4549d2:                                  ; preds = %block_.L_454633
  %loadMem_4549d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5239 = getelementptr inbounds %struct.GPR, %struct.GPR* %5238, i32 0, i32 33
  %5240 = getelementptr inbounds %struct.Reg, %struct.Reg* %5239, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5240 to i64*
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 11
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5243 to i64*
  %5244 = load i64, i64* %PC.i12
  %5245 = add i64 %5244, 10
  store i64 %5245, i64* %PC.i12
  store i64 ptrtoint (%G__0x4c1b8c_type* @G__0x4c1b8c to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4549d2, %struct.Memory** %MEMORY
  %loadMem_4549dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5247 = getelementptr inbounds %struct.GPR, %struct.GPR* %5246, i32 0, i32 33
  %5248 = getelementptr inbounds %struct.Reg, %struct.Reg* %5247, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %5248 to i64*
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5250 = getelementptr inbounds %struct.GPR, %struct.GPR* %5249, i32 0, i32 1
  %5251 = getelementptr inbounds %struct.Reg, %struct.Reg* %5250, i32 0, i32 0
  %5252 = bitcast %union.anon* %5251 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5252, i32 0, i32 0
  %5253 = load i64, i64* %PC.i11
  %5254 = add i64 %5253, 2
  store i64 %5254, i64* %PC.i11
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_4549dc, %struct.Memory** %MEMORY
  %loadMem1_4549de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5256 = getelementptr inbounds %struct.GPR, %struct.GPR* %5255, i32 0, i32 33
  %5257 = getelementptr inbounds %struct.Reg, %struct.Reg* %5256, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5257 to i64*
  %5258 = load i64, i64* %PC.i10
  %5259 = add i64 %5258, -342430
  %5260 = load i64, i64* %PC.i10
  %5261 = add i64 %5260, 5
  %5262 = load i64, i64* %PC.i10
  %5263 = add i64 %5262, 5
  store i64 %5263, i64* %PC.i10
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5265 = load i64, i64* %5264, align 8
  %5266 = add i64 %5265, -8
  %5267 = inttoptr i64 %5266 to i64*
  store i64 %5261, i64* %5267
  store i64 %5266, i64* %5264, align 8
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5259, i64* %5268, align 8
  store %struct.Memory* %loadMem1_4549de, %struct.Memory** %MEMORY
  %loadMem2_4549de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4549de = load i64, i64* %3
  %5269 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_4549de)
  store %struct.Memory* %5269, %struct.Memory** %MEMORY
  %loadMem_4549e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 33
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5272 to i64*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 1
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5275 to i32*
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5277 = getelementptr inbounds %struct.GPR, %struct.GPR* %5276, i32 0, i32 15
  %5278 = getelementptr inbounds %struct.Reg, %struct.Reg* %5277, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5278 to i64*
  %5279 = load i64, i64* %RBP.i6
  %5280 = sub i64 %5279, 44
  %5281 = load i32, i32* %EAX.i
  %5282 = zext i32 %5281 to i64
  %5283 = load i64, i64* %PC.i5
  %5284 = add i64 %5283, 3
  store i64 %5284, i64* %PC.i5
  %5285 = inttoptr i64 %5280 to i32*
  store i32 %5281, i32* %5285
  store %struct.Memory* %loadMem_4549e3, %struct.Memory** %MEMORY
  br label %block_.L_4549e6

block_.L_4549e6:                                  ; preds = %block_.L_4549d2, %block_.L_4549b5, %block_.L_4547f7, %block_.L_4545e5, %block_454497
  %loadMem_4549e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 33
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5288 to i64*
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 13
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5291 to i64*
  %5292 = load i64, i64* %RSP.i
  %5293 = load i64, i64* %PC.i4
  %5294 = add i64 %5293, 4
  store i64 %5294, i64* %PC.i4
  %5295 = add i64 48, %5292
  store i64 %5295, i64* %RSP.i, align 8
  %5296 = icmp ult i64 %5295, %5292
  %5297 = icmp ult i64 %5295, 48
  %5298 = or i1 %5296, %5297
  %5299 = zext i1 %5298 to i8
  %5300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5299, i8* %5300, align 1
  %5301 = trunc i64 %5295 to i32
  %5302 = and i32 %5301, 255
  %5303 = call i32 @llvm.ctpop.i32(i32 %5302)
  %5304 = trunc i32 %5303 to i8
  %5305 = and i8 %5304, 1
  %5306 = xor i8 %5305, 1
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5306, i8* %5307, align 1
  %5308 = xor i64 48, %5292
  %5309 = xor i64 %5308, %5295
  %5310 = lshr i64 %5309, 4
  %5311 = trunc i64 %5310 to i8
  %5312 = and i8 %5311, 1
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5312, i8* %5313, align 1
  %5314 = icmp eq i64 %5295, 0
  %5315 = zext i1 %5314 to i8
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5315, i8* %5316, align 1
  %5317 = lshr i64 %5295, 63
  %5318 = trunc i64 %5317 to i8
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5318, i8* %5319, align 1
  %5320 = lshr i64 %5292, 63
  %5321 = xor i64 %5317, %5320
  %5322 = add i64 %5321, %5317
  %5323 = icmp eq i64 %5322, 2
  %5324 = zext i1 %5323 to i8
  %5325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5324, i8* %5325, align 1
  store %struct.Memory* %loadMem_4549e6, %struct.Memory** %MEMORY
  %loadMem_4549ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5327 = getelementptr inbounds %struct.GPR, %struct.GPR* %5326, i32 0, i32 33
  %5328 = getelementptr inbounds %struct.Reg, %struct.Reg* %5327, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5328 to i64*
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5330 = getelementptr inbounds %struct.GPR, %struct.GPR* %5329, i32 0, i32 15
  %5331 = getelementptr inbounds %struct.Reg, %struct.Reg* %5330, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5331 to i64*
  %5332 = load i64, i64* %PC.i2
  %5333 = add i64 %5332, 1
  store i64 %5333, i64* %PC.i2
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5335 = load i64, i64* %5334, align 8
  %5336 = add i64 %5335, 8
  %5337 = inttoptr i64 %5335 to i64*
  %5338 = load i64, i64* %5337
  store i64 %5338, i64* %RBP.i3, align 8
  store i64 %5336, i64* %5334, align 8
  store %struct.Memory* %loadMem_4549ea, %struct.Memory** %MEMORY
  %loadMem_4549eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5340 = getelementptr inbounds %struct.GPR, %struct.GPR* %5339, i32 0, i32 33
  %5341 = getelementptr inbounds %struct.Reg, %struct.Reg* %5340, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5341 to i64*
  %5342 = load i64, i64* %PC.i1
  %5343 = add i64 %5342, 1
  store i64 %5343, i64* %PC.i1
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5346 = load i64, i64* %5345, align 8
  %5347 = inttoptr i64 %5346 to i64*
  %5348 = load i64, i64* %5347
  store i64 %5348, i64* %5344, align 8
  %5349 = add i64 %5346, 8
  store i64 %5349, i64* %5345, align 8
  store %struct.Memory* %loadMem_4549eb, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4549eb
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

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl__0x0____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = xor i32 %25, %28
  %30 = add i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4545fe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* bitcast (%G_0x70eaa8_type* @G_0x70eaa8 to i32*)
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

define %struct.Memory* @routine_jae_.L_4545e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cmpl__0x3__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4545d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6376
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

define %struct.Memory* @routine_jne_.L_4545cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x18dc__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6364
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 16
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

define %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x70ea90_type* @G_0x70ea90 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x18e4__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6372
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x1c__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 28
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x18e0__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6368
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__0x1__0x18e8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 3, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4549e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4545d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4545d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_454426(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x4c1b0f___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c1b0f_type* @G__0x4c1b0f to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i32 %13, 1
  %15 = icmp ult i32 %13, 1
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
  %24 = xor i32 %13, 1
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

define %struct.Memory* @routine_jne_.L_45461e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
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

define %struct.Memory* @routine_jmpq_.L_45462c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jae_.L_4549d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
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

define %struct.Memory* @routine_andl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 1, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
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

define %struct.Memory* @routine_je_.L_454801(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4547fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4546f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__0x4c1b49___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c1b49_type* @G__0x4c1b49 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
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

define %struct.Memory* @routine_movl_0x8__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = or i64 1, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %22, align 1
  %23 = lshr i32 %13, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3__0x8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
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

define %struct.Memory* @routine_jne_.L_4547f7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__0x18e8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x18e0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6368
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x18e4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6372
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_454801(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_andl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 2, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RCX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4549bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4549ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4548b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_orl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = or i64 2, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %22, align 1
  %23 = lshr i32 %13, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4549b5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4549bf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4549c4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_454633(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x4c1b8c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4c1b8c_type* @G__0x4c1b8c to i64), i64* %RDI, align 8
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
