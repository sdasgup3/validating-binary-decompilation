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
%G__0x62ea40_type = type <{ [8 x i8] }>
%G__0x633b60_type = type <{ [8 x i8] }>
%G__0x84ad50_type = type <{ [8 x i8] }>
%G__0x85f3f0_type = type <{ [8 x i8] }>
%G__0x8667b0_type = type <{ [8 x i8] }>
%G__0x8870b0_type = type <{ [8 x i8] }>
%G__0x88c1b0_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G__0x62ea40 = global %G__0x62ea40_type zeroinitializer
@G__0x633b60 = global %G__0x633b60_type zeroinitializer
@G__0x84ad50 = global %G__0x84ad50_type zeroinitializer
@G__0x85f3f0 = global %G__0x85f3f0_type zeroinitializer
@G__0x8667b0 = global %G__0x8667b0_type zeroinitializer
@G__0x8870b0 = global %G__0x8870b0_type zeroinitializer
@G__0x88c1b0 = global %G__0x88c1b0_type zeroinitializer

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
define %struct.Memory* @initialize_eval(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_403b70 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_403b70, %struct.Memory** %MEMORY
  %loadMem_403b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i51 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i51
  %27 = load i64, i64* %PC.i50
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i50
  store i64 %26, i64* %RBP.i52, align 8
  store %struct.Memory* %loadMem_403b71, %struct.Memory** %MEMORY
  %loadMem_403b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i72 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i72
  %36 = load i64, i64* %PC.i71
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i71
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i72, align 8
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
  store %struct.Memory* %loadMem_403b74, %struct.Memory** %MEMORY
  %loadMem_403b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 15
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %RBP.i96
  %74 = sub i64 %73, 4
  %75 = load i64, i64* %PC.i95
  %76 = add i64 %75, 7
  store i64 %76, i64* %PC.i95
  %77 = inttoptr i64 %74 to i32*
  store i32 0, i32* %77
  store %struct.Memory* %loadMem_403b78, %struct.Memory** %MEMORY
  br label %block_.L_403b7f

block_.L_403b7f:                                  ; preds = %block_.L_403c61, %entry
  %loadMem_403b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 33
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i114
  %85 = sub i64 %84, 4
  %86 = load i64, i64* %PC.i113
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC.i113
  %88 = inttoptr i64 %85 to i32*
  %89 = load i32, i32* %88
  %90 = sub i32 %89, 64
  %91 = icmp ult i32 %89, 64
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %92, i8* %93, align 1
  %94 = and i32 %90, 255
  %95 = call i32 @llvm.ctpop.i32(i32 %94)
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  %98 = xor i8 %97, 1
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %98, i8* %99, align 1
  %100 = xor i32 %89, 64
  %101 = xor i32 %100, %90
  %102 = lshr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %104, i8* %105, align 1
  %106 = icmp eq i32 %90, 0
  %107 = zext i1 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %107, i8* %108, align 1
  %109 = lshr i32 %90, 31
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %110, i8* %111, align 1
  %112 = lshr i32 %89, 31
  %113 = xor i32 %109, %112
  %114 = add i32 %113, %112
  %115 = icmp eq i32 %114, 2
  %116 = zext i1 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %116, i8* %117, align 1
  store %struct.Memory* %loadMem_403b7f, %struct.Memory** %MEMORY
  %loadMem_403b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 33
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %120 to i64*
  %121 = load i64, i64* %PC.i163
  %122 = add i64 %121, 236
  %123 = load i64, i64* %PC.i163
  %124 = add i64 %123, 6
  %125 = load i64, i64* %PC.i163
  %126 = add i64 %125, 6
  store i64 %126, i64* %PC.i163
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %128 = load i8, i8* %127, align 1
  %129 = icmp ne i8 %128, 0
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %131 = load i8, i8* %130, align 1
  %132 = icmp ne i8 %131, 0
  %133 = xor i1 %129, %132
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %BRANCH_TAKEN, align 1
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %137 = select i1 %133, i64 %124, i64 %122
  store i64 %137, i64* %136, align 8
  store %struct.Memory* %loadMem_403b83, %struct.Memory** %MEMORY
  %loadBr_403b83 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403b83 = icmp eq i8 %loadBr_403b83, 1
  br i1 %cmpBr_403b83, label %block_.L_403c6f, label %block_403b89

block_403b89:                                     ; preds = %block_.L_403b7f
  %loadMem_403b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 33
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %140 to i64*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 15
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %143 to i64*
  %144 = load i64, i64* %RBP.i185
  %145 = sub i64 %144, 8
  %146 = load i64, i64* %PC.i184
  %147 = add i64 %146, 7
  store i64 %147, i64* %PC.i184
  %148 = inttoptr i64 %145 to i32*
  store i32 0, i32* %148
  store %struct.Memory* %loadMem_403b89, %struct.Memory** %MEMORY
  br label %block_.L_403b90

block_.L_403b90:                                  ; preds = %block_.L_403c1c, %block_403b89
  %loadMem_403b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 33
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 15
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %154 to i64*
  %155 = load i64, i64* %RBP.i210
  %156 = sub i64 %155, 8
  %157 = load i64, i64* %PC.i209
  %158 = add i64 %157, 4
  store i64 %158, i64* %PC.i209
  %159 = inttoptr i64 %156 to i32*
  %160 = load i32, i32* %159
  %161 = sub i32 %160, 64
  %162 = icmp ult i32 %160, 64
  %163 = zext i1 %162 to i8
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %163, i8* %164, align 1
  %165 = and i32 %161, 255
  %166 = call i32 @llvm.ctpop.i32(i32 %165)
  %167 = trunc i32 %166 to i8
  %168 = and i8 %167, 1
  %169 = xor i8 %168, 1
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %169, i8* %170, align 1
  %171 = xor i32 %160, 64
  %172 = xor i32 %171, %161
  %173 = lshr i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %175, i8* %176, align 1
  %177 = icmp eq i32 %161, 0
  %178 = zext i1 %177 to i8
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %178, i8* %179, align 1
  %180 = lshr i32 %161, 31
  %181 = trunc i32 %180 to i8
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %181, i8* %182, align 1
  %183 = lshr i32 %160, 31
  %184 = xor i32 %180, %183
  %185 = add i32 %184, %183
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %187, i8* %188, align 1
  store %struct.Memory* %loadMem_403b90, %struct.Memory** %MEMORY
  %loadMem_403b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 33
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %191 to i64*
  %192 = load i64, i64* %PC.i227
  %193 = add i64 %192, 200
  %194 = load i64, i64* %PC.i227
  %195 = add i64 %194, 6
  %196 = load i64, i64* %PC.i227
  %197 = add i64 %196, 6
  store i64 %197, i64* %PC.i227
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %199 = load i8, i8* %198, align 1
  %200 = icmp ne i8 %199, 0
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %202 = load i8, i8* %201, align 1
  %203 = icmp ne i8 %202, 0
  %204 = xor i1 %200, %203
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %BRANCH_TAKEN, align 1
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %208 = select i1 %204, i64 %195, i64 %193
  store i64 %208, i64* %207, align 8
  store %struct.Memory* %loadMem_403b94, %struct.Memory** %MEMORY
  %loadBr_403b94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403b94 = icmp eq i8 %loadBr_403b94, 1
  br i1 %cmpBr_403b94, label %block_.L_403c5c, label %block_403b9a

block_403b9a:                                     ; preds = %block_.L_403b90
  %loadMem_403b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %210 = getelementptr inbounds %struct.GPR, %struct.GPR* %209, i32 0, i32 33
  %211 = getelementptr inbounds %struct.Reg, %struct.Reg* %210, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %211 to i64*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 15
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %217 to i64*
  %218 = load i64, i64* %RBP.i278
  %219 = sub i64 %218, 4
  %220 = load i64, i64* %PC.i276
  %221 = add i64 %220, 3
  store i64 %221, i64* %PC.i276
  %222 = inttoptr i64 %219 to i32*
  %223 = load i32, i32* %222
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RAX.i277, align 8
  store %struct.Memory* %loadMem_403b9a, %struct.Memory** %MEMORY
  %loadMem_403b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 33
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RAX.i300
  %232 = load i64, i64* %PC.i299
  %233 = add i64 %232, 3
  store i64 %233, i64* %PC.i299
  %234 = and i64 7, %231
  %235 = trunc i64 %234 to i32
  store i64 %234, i64* %RAX.i300, align 8
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %236, align 1
  %237 = and i32 %235, 255
  %238 = call i32 @llvm.ctpop.i32(i32 %237)
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = xor i8 %240, 1
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %241, i8* %242, align 1
  %243 = icmp eq i32 %235, 0
  %244 = zext i1 %243 to i8
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %244, i8* %245, align 1
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %246, align 1
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %247, align 1
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %248, align 1
  store %struct.Memory* %loadMem_403b9d, %struct.Memory** %MEMORY
  %loadMem_403ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 33
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %251 to i64*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 15
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %257 to i64*
  %258 = load i64, i64* %RBP.i326
  %259 = sub i64 %258, 8
  %260 = load i64, i64* %PC.i324
  %261 = add i64 %260, 3
  store i64 %261, i64* %PC.i324
  %262 = inttoptr i64 %259 to i32*
  %263 = load i32, i32* %262
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RCX.i325, align 8
  store %struct.Memory* %loadMem_403ba0, %struct.Memory** %MEMORY
  %loadMem_403ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %RCX.i344
  %272 = load i64, i64* %PC.i343
  %273 = add i64 %272, 3
  store i64 %273, i64* %PC.i343
  %274 = and i64 7, %271
  %275 = trunc i64 %274 to i32
  store i64 %274, i64* %RCX.i344, align 8
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %276, align 1
  %277 = and i32 %275, 255
  %278 = call i32 @llvm.ctpop.i32(i32 %277)
  %279 = trunc i32 %278 to i8
  %280 = and i8 %279, 1
  %281 = xor i8 %280, 1
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %281, i8* %282, align 1
  %283 = icmp eq i32 %275, 0
  %284 = zext i1 %283 to i8
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %284, i8* %285, align 1
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %286, align 1
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %287, align 1
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %288, align 1
  store %struct.Memory* %loadMem_403ba3, %struct.Memory** %MEMORY
  %loadMem_403ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 33
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %291 to i64*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 5
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %ECX.i394 = bitcast %union.anon* %294 to i32*
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %297 to i64*
  %298 = load i64, i64* %RAX.i395
  %299 = load i32, i32* %ECX.i394
  %300 = zext i32 %299 to i64
  %301 = load i64, i64* %PC.i393
  %302 = add i64 %301, 2
  store i64 %302, i64* %PC.i393
  %303 = trunc i64 %298 to i32
  %304 = sub i32 %303, %299
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RAX.i395, align 8
  %306 = icmp ult i32 %303, %299
  %307 = zext i1 %306 to i8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %307, i8* %308, align 1
  %309 = and i32 %304, 255
  %310 = call i32 @llvm.ctpop.i32(i32 %309)
  %311 = trunc i32 %310 to i8
  %312 = and i8 %311, 1
  %313 = xor i8 %312, 1
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %313, i8* %314, align 1
  %315 = xor i64 %300, %298
  %316 = trunc i64 %315 to i32
  %317 = xor i32 %316, %304
  %318 = lshr i32 %317, 4
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %320, i8* %321, align 1
  %322 = icmp eq i32 %304, 0
  %323 = zext i1 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %323, i8* %324, align 1
  %325 = lshr i32 %304, 31
  %326 = trunc i32 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %326, i8* %327, align 1
  %328 = lshr i32 %303, 31
  %329 = lshr i32 %299, 31
  %330 = xor i32 %329, %328
  %331 = xor i32 %325, %328
  %332 = add i32 %331, %330
  %333 = icmp eq i32 %332, 2
  %334 = zext i1 %333 to i8
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %334, i8* %335, align 1
  store %struct.Memory* %loadMem_403ba6, %struct.Memory** %MEMORY
  %loadMem_403ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %EAX.i417 = bitcast %union.anon* %341 to i32*
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 11
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %RDI.i418 = bitcast %union.anon* %344 to i64*
  %345 = load i32, i32* %EAX.i417
  %346 = zext i32 %345 to i64
  %347 = load i64, i64* %PC.i416
  %348 = add i64 %347, 2
  store i64 %348, i64* %PC.i416
  %349 = and i64 %346, 4294967295
  store i64 %349, i64* %RDI.i418, align 8
  store %struct.Memory* %loadMem_403ba8, %struct.Memory** %MEMORY
  %loadMem1_403baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 33
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %352 to i64*
  %353 = load i64, i64* %PC.i442
  %354 = add i64 %353, -12074
  %355 = load i64, i64* %PC.i442
  %356 = add i64 %355, 5
  %357 = load i64, i64* %PC.i442
  %358 = add i64 %357, 5
  store i64 %358, i64* %PC.i442
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = add i64 %360, -8
  %362 = inttoptr i64 %361 to i64*
  store i64 %356, i64* %362
  store i64 %361, i64* %359, align 8
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %354, i64* %363, align 8
  store %struct.Memory* %loadMem1_403baa, %struct.Memory** %MEMORY
  %loadMem2_403baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403baa = load i64, i64* %3
  %364 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403baa)
  store %struct.Memory* %364, %struct.Memory** %MEMORY
  %loadMem_403baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 33
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %367 to i64*
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %EAX.i460 = bitcast %union.anon* %370 to i32*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 15
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %373 to i64*
  %374 = load i64, i64* %RBP.i461
  %375 = sub i64 %374, 12
  %376 = load i32, i32* %EAX.i460
  %377 = zext i32 %376 to i64
  %378 = load i64, i64* %PC.i459
  %379 = add i64 %378, 3
  store i64 %379, i64* %PC.i459
  %380 = inttoptr i64 %375 to i32*
  store i32 %376, i32* %380
  store %struct.Memory* %loadMem_403baf, %struct.Memory** %MEMORY
  %loadMem_403bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 33
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %383 to i64*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 15
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %RBP.i512 = bitcast %union.anon* %389 to i64*
  %390 = load i64, i64* %RBP.i512
  %391 = sub i64 %390, 4
  %392 = load i64, i64* %PC.i510
  %393 = add i64 %392, 3
  store i64 %393, i64* %PC.i510
  %394 = inttoptr i64 %391 to i32*
  %395 = load i32, i32* %394
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_403bb2, %struct.Memory** %MEMORY
  %loadMem_403bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 33
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %RAX.i534
  %404 = load i64, i64* %PC.i533
  %405 = add i64 %404, 3
  store i64 %405, i64* %PC.i533
  %406 = shl i64 %403, 32
  %407 = ashr exact i64 %406, 32
  %408 = ashr i64 %407, 2
  %409 = lshr i64 %408, 1
  %410 = trunc i64 %408 to i8
  %411 = and i8 %410, 1
  %412 = trunc i64 %409 to i32
  %413 = and i64 %409, 4294967295
  store i64 %413, i64* %RAX.i534, align 8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %411, i8* %414, align 1
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %416 = and i32 %412, 255
  %417 = call i32 @llvm.ctpop.i32(i32 %416)
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  %420 = xor i8 %419, 1
  store i8 %420, i8* %415, align 1
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %421, align 1
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %423 = icmp eq i32 %412, 0
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %422, align 1
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %426 = lshr i32 %412, 31
  %427 = trunc i32 %426 to i8
  store i8 %427, i8* %425, align 1
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %428, align 1
  store %struct.Memory* %loadMem_403bb5, %struct.Memory** %MEMORY
  %loadMem_403bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 5
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %RCX.i559 = bitcast %union.anon* %434 to i64*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 15
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %437 to i64*
  %438 = load i64, i64* %RBP.i560
  %439 = sub i64 %438, 8
  %440 = load i64, i64* %PC.i558
  %441 = add i64 %440, 3
  store i64 %441, i64* %PC.i558
  %442 = inttoptr i64 %439 to i32*
  %443 = load i32, i32* %442
  %444 = zext i32 %443 to i64
  store i64 %444, i64* %RCX.i559, align 8
  store %struct.Memory* %loadMem_403bb8, %struct.Memory** %MEMORY
  %loadMem_403bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 33
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %447 to i64*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 5
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %RCX.i581 = bitcast %union.anon* %450 to i64*
  %451 = load i64, i64* %RCX.i581
  %452 = load i64, i64* %PC.i580
  %453 = add i64 %452, 3
  store i64 %453, i64* %PC.i580
  %454 = shl i64 %451, 32
  %455 = ashr exact i64 %454, 32
  %456 = ashr i64 %455, 2
  %457 = lshr i64 %456, 1
  %458 = trunc i64 %456 to i8
  %459 = and i8 %458, 1
  %460 = trunc i64 %457 to i32
  %461 = and i64 %457, 4294967295
  store i64 %461, i64* %RCX.i581, align 8
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %459, i8* %462, align 1
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %464 = and i32 %460, 255
  %465 = call i32 @llvm.ctpop.i32(i32 %464)
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  store i8 %468, i8* %463, align 1
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %469, align 1
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %471 = icmp eq i32 %460, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %470, align 1
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %474 = lshr i32 %460, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %473, align 1
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %476, align 1
  store %struct.Memory* %loadMem_403bbb, %struct.Memory** %MEMORY
  %loadMem_403bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 33
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %479 to i64*
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 5
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %ECX.i701 = bitcast %union.anon* %482 to i32*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %RAX.i702 = bitcast %union.anon* %485 to i64*
  %486 = load i64, i64* %RAX.i702
  %487 = load i32, i32* %ECX.i701
  %488 = zext i32 %487 to i64
  %489 = load i64, i64* %PC.i700
  %490 = add i64 %489, 2
  store i64 %490, i64* %PC.i700
  %491 = trunc i64 %486 to i32
  %492 = sub i32 %491, %487
  %493 = zext i32 %492 to i64
  store i64 %493, i64* %RAX.i702, align 8
  %494 = icmp ult i32 %491, %487
  %495 = zext i1 %494 to i8
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %495, i8* %496, align 1
  %497 = and i32 %492, 255
  %498 = call i32 @llvm.ctpop.i32(i32 %497)
  %499 = trunc i32 %498 to i8
  %500 = and i8 %499, 1
  %501 = xor i8 %500, 1
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %501, i8* %502, align 1
  %503 = xor i64 %488, %486
  %504 = trunc i64 %503 to i32
  %505 = xor i32 %504, %492
  %506 = lshr i32 %505, 4
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %508, i8* %509, align 1
  %510 = icmp eq i32 %492, 0
  %511 = zext i1 %510 to i8
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %511, i8* %512, align 1
  %513 = lshr i32 %492, 31
  %514 = trunc i32 %513 to i8
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %514, i8* %515, align 1
  %516 = lshr i32 %491, 31
  %517 = lshr i32 %487, 31
  %518 = xor i32 %517, %516
  %519 = xor i32 %513, %516
  %520 = add i32 %519, %518
  %521 = icmp eq i32 %520, 2
  %522 = zext i1 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %522, i8* %523, align 1
  store %struct.Memory* %loadMem_403bbe, %struct.Memory** %MEMORY
  %loadMem_403bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 33
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 1
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %EAX.i705 = bitcast %union.anon* %529 to i32*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 11
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RDI.i706 = bitcast %union.anon* %532 to i64*
  %533 = load i32, i32* %EAX.i705
  %534 = zext i32 %533 to i64
  %535 = load i64, i64* %PC.i704
  %536 = add i64 %535, 2
  store i64 %536, i64* %PC.i704
  %537 = and i64 %534, 4294967295
  store i64 %537, i64* %RDI.i706, align 8
  store %struct.Memory* %loadMem_403bc0, %struct.Memory** %MEMORY
  %loadMem1_403bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 33
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %540 to i64*
  %541 = load i64, i64* %PC.i703
  %542 = add i64 %541, -12098
  %543 = load i64, i64* %PC.i703
  %544 = add i64 %543, 5
  %545 = load i64, i64* %PC.i703
  %546 = add i64 %545, 5
  store i64 %546, i64* %PC.i703
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = add i64 %548, -8
  %550 = inttoptr i64 %549 to i64*
  store i64 %544, i64* %550
  store i64 %549, i64* %547, align 8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %542, i64* %551, align 8
  store %struct.Memory* %loadMem1_403bc2, %struct.Memory** %MEMORY
  %loadMem2_403bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403bc2 = load i64, i64* %3
  %552 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403bc2)
  store %struct.Memory* %552, %struct.Memory** %MEMORY
  %loadMem_403bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 33
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %555 to i64*
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 7
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %RDX.i699 = bitcast %union.anon* %558 to i64*
  %559 = load i64, i64* %PC.i698
  %560 = add i64 %559, 10
  store i64 %560, i64* %PC.i698
  store i64 ptrtoint (%G__0x84ad50_type* @G__0x84ad50 to i64), i64* %RDX.i699, align 8
  store %struct.Memory* %loadMem_403bc7, %struct.Memory** %MEMORY
  %loadMem_403bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 33
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %563 to i64*
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 1
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %EAX.i696 = bitcast %union.anon* %566 to i32*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 15
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %569 to i64*
  %570 = load i64, i64* %RBP.i697
  %571 = sub i64 %570, 16
  %572 = load i32, i32* %EAX.i696
  %573 = zext i32 %572 to i64
  %574 = load i64, i64* %PC.i695
  %575 = add i64 %574, 3
  store i64 %575, i64* %PC.i695
  %576 = inttoptr i64 %571 to i32*
  store i32 %572, i32* %576
  store %struct.Memory* %loadMem_403bd1, %struct.Memory** %MEMORY
  %loadMem_403bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 33
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 1
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %RAX.i693 = bitcast %union.anon* %582 to i64*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 15
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %585 to i64*
  %586 = load i64, i64* %RBP.i694
  %587 = sub i64 %586, 12
  %588 = load i64, i64* %PC.i692
  %589 = add i64 %588, 3
  store i64 %589, i64* %PC.i692
  %590 = inttoptr i64 %587 to i32*
  %591 = load i32, i32* %590
  %592 = zext i32 %591 to i64
  store i64 %592, i64* %RAX.i693, align 8
  store %struct.Memory* %loadMem_403bd4, %struct.Memory** %MEMORY
  %loadMem_403bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 33
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 1
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RAX.i690 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 15
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %601 to i64*
  %602 = load i64, i64* %RAX.i690
  %603 = load i64, i64* %RBP.i691
  %604 = sub i64 %603, 16
  %605 = load i64, i64* %PC.i689
  %606 = add i64 %605, 3
  store i64 %606, i64* %PC.i689
  %607 = trunc i64 %602 to i32
  %608 = inttoptr i64 %604 to i32*
  %609 = load i32, i32* %608
  %610 = add i32 %609, %607
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RAX.i690, align 8
  %612 = icmp ult i32 %610, %607
  %613 = icmp ult i32 %610, %609
  %614 = or i1 %612, %613
  %615 = zext i1 %614 to i8
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %615, i8* %616, align 1
  %617 = and i32 %610, 255
  %618 = call i32 @llvm.ctpop.i32(i32 %617)
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  %621 = xor i8 %620, 1
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %621, i8* %622, align 1
  %623 = xor i32 %609, %607
  %624 = xor i32 %623, %610
  %625 = lshr i32 %624, 4
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %627, i8* %628, align 1
  %629 = icmp eq i32 %610, 0
  %630 = zext i1 %629 to i8
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %630, i8* %631, align 1
  %632 = lshr i32 %610, 31
  %633 = trunc i32 %632 to i8
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %633, i8* %634, align 1
  %635 = lshr i32 %607, 31
  %636 = lshr i32 %609, 31
  %637 = xor i32 %632, %635
  %638 = xor i32 %632, %636
  %639 = add i32 %637, %638
  %640 = icmp eq i32 %639, 2
  %641 = zext i1 %640 to i8
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %641, i8* %642, align 1
  store %struct.Memory* %loadMem_403bd7, %struct.Memory** %MEMORY
  %loadMem_403bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 33
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %645 to i64*
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 9
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %RSI.i687 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 15
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %651 to i64*
  %652 = load i64, i64* %RBP.i688
  %653 = sub i64 %652, 4
  %654 = load i64, i64* %PC.i686
  %655 = add i64 %654, 4
  store i64 %655, i64* %PC.i686
  %656 = inttoptr i64 %653 to i32*
  %657 = load i32, i32* %656
  %658 = sext i32 %657 to i64
  store i64 %658, i64* %RSI.i687, align 8
  store %struct.Memory* %loadMem_403bda, %struct.Memory** %MEMORY
  %loadMem_403bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 33
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 9
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %RSI.i685 = bitcast %union.anon* %664 to i64*
  %665 = load i64, i64* %RSI.i685
  %666 = mul i64 %665, 4
  %667 = add i64 %666, 4356688
  %668 = load i64, i64* %PC.i684
  %669 = add i64 %668, 8
  store i64 %669, i64* %PC.i684
  %670 = inttoptr i64 %667 to i32*
  %671 = load i32, i32* %670
  %672 = sext i32 %671 to i64
  store i64 %672, i64* %RSI.i685, align 8
  store %struct.Memory* %loadMem_403bde, %struct.Memory** %MEMORY
  %loadMem_403be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 33
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 9
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %RSI.i683 = bitcast %union.anon* %678 to i64*
  %679 = load i64, i64* %RSI.i683
  %680 = load i64, i64* %PC.i682
  %681 = add i64 %680, 7
  store i64 %681, i64* %PC.i682
  %682 = sext i64 %679 to i128
  %683 = and i128 %682, -18446744073709551616
  %684 = zext i64 %679 to i128
  %685 = or i128 %683, %684
  %686 = mul i128 576, %685
  %687 = trunc i128 %686 to i64
  store i64 %687, i64* %RSI.i683, align 8
  %688 = sext i64 %687 to i128
  %689 = icmp ne i128 %688, %686
  %690 = zext i1 %689 to i8
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %690, i8* %691, align 1
  %692 = trunc i128 %686 to i32
  %693 = and i32 %692, 255
  %694 = call i32 @llvm.ctpop.i32(i32 %693)
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  %697 = xor i8 %696, 1
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %697, i8* %698, align 1
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %699, align 1
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %700, align 1
  %701 = lshr i64 %687, 63
  %702 = trunc i64 %701 to i8
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %702, i8* %703, align 1
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %690, i8* %704, align 1
  store %struct.Memory* %loadMem_403be6, %struct.Memory** %MEMORY
  %loadMem_403bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 33
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %707 to i64*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 7
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %RDX.i680 = bitcast %union.anon* %710 to i64*
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 9
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %RSI.i681 = bitcast %union.anon* %713 to i64*
  %714 = load i64, i64* %RDX.i680
  %715 = load i64, i64* %RSI.i681
  %716 = load i64, i64* %PC.i679
  %717 = add i64 %716, 3
  store i64 %717, i64* %PC.i679
  %718 = add i64 %715, %714
  store i64 %718, i64* %RDX.i680, align 8
  %719 = icmp ult i64 %718, %714
  %720 = icmp ult i64 %718, %715
  %721 = or i1 %719, %720
  %722 = zext i1 %721 to i8
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %722, i8* %723, align 1
  %724 = trunc i64 %718 to i32
  %725 = and i32 %724, 255
  %726 = call i32 @llvm.ctpop.i32(i32 %725)
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  %729 = xor i8 %728, 1
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %729, i8* %730, align 1
  %731 = xor i64 %715, %714
  %732 = xor i64 %731, %718
  %733 = lshr i64 %732, 4
  %734 = trunc i64 %733 to i8
  %735 = and i8 %734, 1
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %735, i8* %736, align 1
  %737 = icmp eq i64 %718, 0
  %738 = zext i1 %737 to i8
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %738, i8* %739, align 1
  %740 = lshr i64 %718, 63
  %741 = trunc i64 %740 to i8
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %741, i8* %742, align 1
  %743 = lshr i64 %714, 63
  %744 = lshr i64 %715, 63
  %745 = xor i64 %740, %743
  %746 = xor i64 %740, %744
  %747 = add i64 %745, %746
  %748 = icmp eq i64 %747, 2
  %749 = zext i1 %748 to i8
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %749, i8* %750, align 1
  store %struct.Memory* %loadMem_403bed, %struct.Memory** %MEMORY
  %loadMem_403bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 33
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %753 to i64*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 9
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %RSI.i677 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 15
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %RBP.i678
  %761 = sub i64 %760, 8
  %762 = load i64, i64* %PC.i676
  %763 = add i64 %762, 4
  store i64 %763, i64* %PC.i676
  %764 = inttoptr i64 %761 to i32*
  %765 = load i32, i32* %764
  %766 = sext i32 %765 to i64
  store i64 %766, i64* %RSI.i677, align 8
  store %struct.Memory* %loadMem_403bf0, %struct.Memory** %MEMORY
  %loadMem_403bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 33
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 9
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %RSI.i675 = bitcast %union.anon* %772 to i64*
  %773 = load i64, i64* %RSI.i675
  %774 = mul i64 %773, 4
  %775 = add i64 %774, 4356688
  %776 = load i64, i64* %PC.i674
  %777 = add i64 %776, 8
  store i64 %777, i64* %PC.i674
  %778 = inttoptr i64 %775 to i32*
  %779 = load i32, i32* %778
  %780 = sext i32 %779 to i64
  store i64 %780, i64* %RSI.i675, align 8
  store %struct.Memory* %loadMem_403bf4, %struct.Memory** %MEMORY
  %loadMem_403bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 33
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 1
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %EAX.i672 = bitcast %union.anon* %786 to i32*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 7
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RDX.i673 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 9
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %792 to i64*
  %793 = load i64, i64* %RDX.i673
  %794 = load i64, i64* %RSI.i
  %795 = mul i64 %794, 4
  %796 = add i64 %795, %793
  %797 = load i32, i32* %EAX.i672
  %798 = zext i32 %797 to i64
  %799 = load i64, i64* %PC.i671
  %800 = add i64 %799, 3
  store i64 %800, i64* %PC.i671
  %801 = inttoptr i64 %796 to i32*
  store i32 %797, i32* %801
  store %struct.Memory* %loadMem_403bfc, %struct.Memory** %MEMORY
  %loadMem_403bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 33
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 1
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %RAX.i669 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 15
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %810 to i64*
  %811 = load i64, i64* %RBP.i670
  %812 = sub i64 %811, 12
  %813 = load i64, i64* %PC.i668
  %814 = add i64 %813, 3
  store i64 %814, i64* %PC.i668
  %815 = inttoptr i64 %812 to i32*
  %816 = load i32, i32* %815
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %RAX.i669, align 8
  store %struct.Memory* %loadMem_403bff, %struct.Memory** %MEMORY
  %loadMem_403c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 1
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %EAX.i666 = bitcast %union.anon* %823 to i32*
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 15
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %826 to i64*
  %827 = load i32, i32* %EAX.i666
  %828 = zext i32 %827 to i64
  %829 = load i64, i64* %RBP.i667
  %830 = sub i64 %829, 16
  %831 = load i64, i64* %PC.i665
  %832 = add i64 %831, 3
  store i64 %832, i64* %PC.i665
  %833 = inttoptr i64 %830 to i32*
  %834 = load i32, i32* %833
  %835 = sub i32 %827, %834
  %836 = icmp ult i32 %827, %834
  %837 = zext i1 %836 to i8
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %837, i8* %838, align 1
  %839 = and i32 %835, 255
  %840 = call i32 @llvm.ctpop.i32(i32 %839)
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %843, i8* %844, align 1
  %845 = xor i32 %834, %827
  %846 = xor i32 %845, %835
  %847 = lshr i32 %846, 4
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %849, i8* %850, align 1
  %851 = icmp eq i32 %835, 0
  %852 = zext i1 %851 to i8
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %852, i8* %853, align 1
  %854 = lshr i32 %835, 31
  %855 = trunc i32 %854 to i8
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %855, i8* %856, align 1
  %857 = lshr i32 %827, 31
  %858 = lshr i32 %834, 31
  %859 = xor i32 %858, %857
  %860 = xor i32 %854, %857
  %861 = add i32 %860, %859
  %862 = icmp eq i32 %861, 2
  %863 = zext i1 %862 to i8
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %863, i8* %864, align 1
  store %struct.Memory* %loadMem_403c02, %struct.Memory** %MEMORY
  %loadMem_403c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 33
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %867 to i64*
  %868 = load i64, i64* %PC.i664
  %869 = add i64 %868, 17
  %870 = load i64, i64* %PC.i664
  %871 = add i64 %870, 6
  %872 = load i64, i64* %PC.i664
  %873 = add i64 %872, 6
  store i64 %873, i64* %PC.i664
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %875 = load i8, i8* %874, align 1
  %876 = icmp ne i8 %875, 0
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %878 = load i8, i8* %877, align 1
  %879 = icmp ne i8 %878, 0
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %881 = load i8, i8* %880, align 1
  %882 = icmp ne i8 %881, 0
  %883 = xor i1 %879, %882
  %884 = or i1 %876, %883
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %BRANCH_TAKEN, align 1
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %887 = select i1 %884, i64 %869, i64 %871
  store i64 %887, i64* %886, align 8
  store %struct.Memory* %loadMem_403c05, %struct.Memory** %MEMORY
  %loadBr_403c05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403c05 = icmp eq i8 %loadBr_403c05, 1
  br i1 %cmpBr_403c05, label %block_.L_403c16, label %block_403c0b

block_403c0b:                                     ; preds = %block_403b9a
  %loadMem_403c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 1
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %893 to i64*
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 15
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %896 to i64*
  %897 = load i64, i64* %RBP.i663
  %898 = sub i64 %897, 12
  %899 = load i64, i64* %PC.i661
  %900 = add i64 %899, 3
  store i64 %900, i64* %PC.i661
  %901 = inttoptr i64 %898 to i32*
  %902 = load i32, i32* %901
  %903 = zext i32 %902 to i64
  store i64 %903, i64* %RAX.i662, align 8
  store %struct.Memory* %loadMem_403c0b, %struct.Memory** %MEMORY
  %loadMem_403c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 33
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 1
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %EAX.i659 = bitcast %union.anon* %909 to i32*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 15
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %912 to i64*
  %913 = load i64, i64* %RBP.i660
  %914 = sub i64 %913, 20
  %915 = load i32, i32* %EAX.i659
  %916 = zext i32 %915 to i64
  %917 = load i64, i64* %PC.i658
  %918 = add i64 %917, 3
  store i64 %918, i64* %PC.i658
  %919 = inttoptr i64 %914 to i32*
  store i32 %915, i32* %919
  store %struct.Memory* %loadMem_403c0e, %struct.Memory** %MEMORY
  %loadMem_403c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %922 to i64*
  %923 = load i64, i64* %PC.i657
  %924 = add i64 %923, 11
  %925 = load i64, i64* %PC.i657
  %926 = add i64 %925, 5
  store i64 %926, i64* %PC.i657
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %924, i64* %927, align 8
  store %struct.Memory* %loadMem_403c11, %struct.Memory** %MEMORY
  br label %block_.L_403c1c

block_.L_403c16:                                  ; preds = %block_403b9a
  %loadMem_403c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 33
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 1
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RAX.i655 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 15
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RBP.i656 = bitcast %union.anon* %936 to i64*
  %937 = load i64, i64* %RBP.i656
  %938 = sub i64 %937, 16
  %939 = load i64, i64* %PC.i654
  %940 = add i64 %939, 3
  store i64 %940, i64* %PC.i654
  %941 = inttoptr i64 %938 to i32*
  %942 = load i32, i32* %941
  %943 = zext i32 %942 to i64
  store i64 %943, i64* %RAX.i655, align 8
  store %struct.Memory* %loadMem_403c16, %struct.Memory** %MEMORY
  %loadMem_403c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 33
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %946 to i64*
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 1
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %EAX.i652 = bitcast %union.anon* %949 to i32*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 15
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %952 to i64*
  %953 = load i64, i64* %RBP.i653
  %954 = sub i64 %953, 20
  %955 = load i32, i32* %EAX.i652
  %956 = zext i32 %955 to i64
  %957 = load i64, i64* %PC.i651
  %958 = add i64 %957, 3
  store i64 %958, i64* %PC.i651
  %959 = inttoptr i64 %954 to i32*
  store i32 %955, i32* %959
  store %struct.Memory* %loadMem_403c19, %struct.Memory** %MEMORY
  br label %block_.L_403c1c

block_.L_403c1c:                                  ; preds = %block_.L_403c16, %block_403c0b
  %loadMem_403c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 1
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RAX.i649 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i650
  %970 = sub i64 %969, 20
  %971 = load i64, i64* %PC.i648
  %972 = add i64 %971, 3
  store i64 %972, i64* %PC.i648
  %973 = inttoptr i64 %970 to i32*
  %974 = load i32, i32* %973
  %975 = zext i32 %974 to i64
  store i64 %975, i64* %RAX.i649, align 8
  store %struct.Memory* %loadMem_403c1c, %struct.Memory** %MEMORY
  %loadMem_403c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 5
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RCX.i647 = bitcast %union.anon* %981 to i64*
  %982 = load i64, i64* %PC.i646
  %983 = add i64 %982, 10
  store i64 %983, i64* %PC.i646
  store i64 ptrtoint (%G__0x88c1b0_type* @G__0x88c1b0 to i64), i64* %RCX.i647, align 8
  store %struct.Memory* %loadMem_403c1f, %struct.Memory** %MEMORY
  %loadMem_403c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 33
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %986 to i64*
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 7
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %RDX.i644 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 15
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %992 to i64*
  %993 = load i64, i64* %RBP.i645
  %994 = sub i64 %993, 4
  %995 = load i64, i64* %PC.i643
  %996 = add i64 %995, 4
  store i64 %996, i64* %PC.i643
  %997 = inttoptr i64 %994 to i32*
  %998 = load i32, i32* %997
  %999 = sext i32 %998 to i64
  store i64 %999, i64* %RDX.i644, align 8
  store %struct.Memory* %loadMem_403c29, %struct.Memory** %MEMORY
  %loadMem_403c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 33
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 7
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %RDX.i642 = bitcast %union.anon* %1005 to i64*
  %1006 = load i64, i64* %RDX.i642
  %1007 = mul i64 %1006, 4
  %1008 = add i64 %1007, 4356688
  %1009 = load i64, i64* %PC.i641
  %1010 = add i64 %1009, 8
  store i64 %1010, i64* %PC.i641
  %1011 = inttoptr i64 %1008 to i32*
  %1012 = load i32, i32* %1011
  %1013 = sext i32 %1012 to i64
  store i64 %1013, i64* %RDX.i642, align 8
  store %struct.Memory* %loadMem_403c2d, %struct.Memory** %MEMORY
  %loadMem_403c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 33
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %1016 to i64*
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 7
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %RDX.i640 = bitcast %union.anon* %1019 to i64*
  %1020 = load i64, i64* %RDX.i640
  %1021 = load i64, i64* %PC.i639
  %1022 = add i64 %1021, 7
  store i64 %1022, i64* %PC.i639
  %1023 = sext i64 %1020 to i128
  %1024 = and i128 %1023, -18446744073709551616
  %1025 = zext i64 %1020 to i128
  %1026 = or i128 %1024, %1025
  %1027 = mul i128 576, %1026
  %1028 = trunc i128 %1027 to i64
  store i64 %1028, i64* %RDX.i640, align 8
  %1029 = sext i64 %1028 to i128
  %1030 = icmp ne i128 %1029, %1027
  %1031 = zext i1 %1030 to i8
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1031, i8* %1032, align 1
  %1033 = trunc i128 %1027 to i32
  %1034 = and i32 %1033, 255
  %1035 = call i32 @llvm.ctpop.i32(i32 %1034)
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = xor i8 %1037, 1
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1038, i8* %1039, align 1
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1040, align 1
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1041, align 1
  %1042 = lshr i64 %1028, 63
  %1043 = trunc i64 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1043, i8* %1044, align 1
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1031, i8* %1045, align 1
  store %struct.Memory* %loadMem_403c35, %struct.Memory** %MEMORY
  %loadMem_403c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 33
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 5
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RCX.i637 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 7
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RDX.i638 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %RCX.i637
  %1056 = load i64, i64* %RDX.i638
  %1057 = load i64, i64* %PC.i636
  %1058 = add i64 %1057, 3
  store i64 %1058, i64* %PC.i636
  %1059 = add i64 %1056, %1055
  store i64 %1059, i64* %RCX.i637, align 8
  %1060 = icmp ult i64 %1059, %1055
  %1061 = icmp ult i64 %1059, %1056
  %1062 = or i1 %1060, %1061
  %1063 = zext i1 %1062 to i8
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1063, i8* %1064, align 1
  %1065 = trunc i64 %1059 to i32
  %1066 = and i32 %1065, 255
  %1067 = call i32 @llvm.ctpop.i32(i32 %1066)
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  %1070 = xor i8 %1069, 1
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1070, i8* %1071, align 1
  %1072 = xor i64 %1056, %1055
  %1073 = xor i64 %1072, %1059
  %1074 = lshr i64 %1073, 4
  %1075 = trunc i64 %1074 to i8
  %1076 = and i8 %1075, 1
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1076, i8* %1077, align 1
  %1078 = icmp eq i64 %1059, 0
  %1079 = zext i1 %1078 to i8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1079, i8* %1080, align 1
  %1081 = lshr i64 %1059, 63
  %1082 = trunc i64 %1081 to i8
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1082, i8* %1083, align 1
  %1084 = lshr i64 %1055, 63
  %1085 = lshr i64 %1056, 63
  %1086 = xor i64 %1081, %1084
  %1087 = xor i64 %1081, %1085
  %1088 = add i64 %1086, %1087
  %1089 = icmp eq i64 %1088, 2
  %1090 = zext i1 %1089 to i8
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1090, i8* %1091, align 1
  store %struct.Memory* %loadMem_403c3c, %struct.Memory** %MEMORY
  %loadMem_403c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 33
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1094 to i64*
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 7
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %RDX.i634 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 15
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %1100 to i64*
  %1101 = load i64, i64* %RBP.i635
  %1102 = sub i64 %1101, 8
  %1103 = load i64, i64* %PC.i633
  %1104 = add i64 %1103, 4
  store i64 %1104, i64* %PC.i633
  %1105 = inttoptr i64 %1102 to i32*
  %1106 = load i32, i32* %1105
  %1107 = sext i32 %1106 to i64
  store i64 %1107, i64* %RDX.i634, align 8
  store %struct.Memory* %loadMem_403c3f, %struct.Memory** %MEMORY
  %loadMem_403c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 7
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %RDX.i632 = bitcast %union.anon* %1113 to i64*
  %1114 = load i64, i64* %RDX.i632
  %1115 = mul i64 %1114, 4
  %1116 = add i64 %1115, 4356688
  %1117 = load i64, i64* %PC.i631
  %1118 = add i64 %1117, 8
  store i64 %1118, i64* %PC.i631
  %1119 = inttoptr i64 %1116 to i32*
  %1120 = load i32, i32* %1119
  %1121 = sext i32 %1120 to i64
  store i64 %1121, i64* %RDX.i632, align 8
  store %struct.Memory* %loadMem_403c43, %struct.Memory** %MEMORY
  %loadMem_403c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 33
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1124 to i64*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 1
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %EAX.i628 = bitcast %union.anon* %1127 to i32*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 5
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RCX.i629 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 7
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RDX.i630 = bitcast %union.anon* %1133 to i64*
  %1134 = load i64, i64* %RCX.i629
  %1135 = load i64, i64* %RDX.i630
  %1136 = mul i64 %1135, 4
  %1137 = add i64 %1136, %1134
  %1138 = load i32, i32* %EAX.i628
  %1139 = zext i32 %1138 to i64
  %1140 = load i64, i64* %PC.i627
  %1141 = add i64 %1140, 3
  store i64 %1141, i64* %PC.i627
  %1142 = inttoptr i64 %1137 to i32*
  store i32 %1138, i32* %1142
  store %struct.Memory* %loadMem_403c4b, %struct.Memory** %MEMORY
  %loadMem_403c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 33
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %1145 to i64*
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 1
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %RAX.i625 = bitcast %union.anon* %1148 to i64*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 15
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %1151 to i64*
  %1152 = load i64, i64* %RBP.i626
  %1153 = sub i64 %1152, 8
  %1154 = load i64, i64* %PC.i624
  %1155 = add i64 %1154, 3
  store i64 %1155, i64* %PC.i624
  %1156 = inttoptr i64 %1153 to i32*
  %1157 = load i32, i32* %1156
  %1158 = zext i32 %1157 to i64
  store i64 %1158, i64* %RAX.i625, align 8
  store %struct.Memory* %loadMem_403c4e, %struct.Memory** %MEMORY
  %loadMem_403c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 1
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %RAX.i623 = bitcast %union.anon* %1164 to i64*
  %1165 = load i64, i64* %RAX.i623
  %1166 = load i64, i64* %PC.i622
  %1167 = add i64 %1166, 3
  store i64 %1167, i64* %PC.i622
  %1168 = trunc i64 %1165 to i32
  %1169 = add i32 1, %1168
  %1170 = zext i32 %1169 to i64
  store i64 %1170, i64* %RAX.i623, align 8
  %1171 = icmp ult i32 %1169, %1168
  %1172 = icmp ult i32 %1169, 1
  %1173 = or i1 %1171, %1172
  %1174 = zext i1 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1174, i8* %1175, align 1
  %1176 = and i32 %1169, 255
  %1177 = call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1180, i8* %1181, align 1
  %1182 = xor i64 1, %1165
  %1183 = trunc i64 %1182 to i32
  %1184 = xor i32 %1183, %1169
  %1185 = lshr i32 %1184, 4
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1187, i8* %1188, align 1
  %1189 = icmp eq i32 %1169, 0
  %1190 = zext i1 %1189 to i8
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1190, i8* %1191, align 1
  %1192 = lshr i32 %1169, 31
  %1193 = trunc i32 %1192 to i8
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1193, i8* %1194, align 1
  %1195 = lshr i32 %1168, 31
  %1196 = xor i32 %1192, %1195
  %1197 = add i32 %1196, %1192
  %1198 = icmp eq i32 %1197, 2
  %1199 = zext i1 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1199, i8* %1200, align 1
  store %struct.Memory* %loadMem_403c51, %struct.Memory** %MEMORY
  %loadMem_403c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 1
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %EAX.i620 = bitcast %union.anon* %1206 to i32*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 15
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %1209 to i64*
  %1210 = load i64, i64* %RBP.i621
  %1211 = sub i64 %1210, 8
  %1212 = load i32, i32* %EAX.i620
  %1213 = zext i32 %1212 to i64
  %1214 = load i64, i64* %PC.i619
  %1215 = add i64 %1214, 3
  store i64 %1215, i64* %PC.i619
  %1216 = inttoptr i64 %1211 to i32*
  store i32 %1212, i32* %1216
  store %struct.Memory* %loadMem_403c54, %struct.Memory** %MEMORY
  %loadMem_403c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1218 = getelementptr inbounds %struct.GPR, %struct.GPR* %1217, i32 0, i32 33
  %1219 = getelementptr inbounds %struct.Reg, %struct.Reg* %1218, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %1219 to i64*
  %1220 = load i64, i64* %PC.i618
  %1221 = add i64 %1220, -199
  %1222 = load i64, i64* %PC.i618
  %1223 = add i64 %1222, 5
  store i64 %1223, i64* %PC.i618
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1221, i64* %1224, align 8
  store %struct.Memory* %loadMem_403c57, %struct.Memory** %MEMORY
  br label %block_.L_403b90

block_.L_403c5c:                                  ; preds = %block_.L_403b90
  %loadMem_403c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1227 to i64*
  %1228 = load i64, i64* %PC.i617
  %1229 = add i64 %1228, 5
  %1230 = load i64, i64* %PC.i617
  %1231 = add i64 %1230, 5
  store i64 %1231, i64* %PC.i617
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1229, i64* %1232, align 8
  store %struct.Memory* %loadMem_403c5c, %struct.Memory** %MEMORY
  br label %block_.L_403c61

block_.L_403c61:                                  ; preds = %block_.L_403c5c
  %loadMem_403c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 1
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %1238 to i64*
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 15
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %RBP.i616 = bitcast %union.anon* %1241 to i64*
  %1242 = load i64, i64* %RBP.i616
  %1243 = sub i64 %1242, 4
  %1244 = load i64, i64* %PC.i614
  %1245 = add i64 %1244, 3
  store i64 %1245, i64* %PC.i614
  %1246 = inttoptr i64 %1243 to i32*
  %1247 = load i32, i32* %1246
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %RAX.i615, align 8
  store %struct.Memory* %loadMem_403c61, %struct.Memory** %MEMORY
  %loadMem_403c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 1
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RAX.i613 = bitcast %union.anon* %1254 to i64*
  %1255 = load i64, i64* %RAX.i613
  %1256 = load i64, i64* %PC.i612
  %1257 = add i64 %1256, 3
  store i64 %1257, i64* %PC.i612
  %1258 = trunc i64 %1255 to i32
  %1259 = add i32 1, %1258
  %1260 = zext i32 %1259 to i64
  store i64 %1260, i64* %RAX.i613, align 8
  %1261 = icmp ult i32 %1259, %1258
  %1262 = icmp ult i32 %1259, 1
  %1263 = or i1 %1261, %1262
  %1264 = zext i1 %1263 to i8
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1264, i8* %1265, align 1
  %1266 = and i32 %1259, 255
  %1267 = call i32 @llvm.ctpop.i32(i32 %1266)
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  %1270 = xor i8 %1269, 1
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1270, i8* %1271, align 1
  %1272 = xor i64 1, %1255
  %1273 = trunc i64 %1272 to i32
  %1274 = xor i32 %1273, %1259
  %1275 = lshr i32 %1274, 4
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1277, i8* %1278, align 1
  %1279 = icmp eq i32 %1259, 0
  %1280 = zext i1 %1279 to i8
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1280, i8* %1281, align 1
  %1282 = lshr i32 %1259, 31
  %1283 = trunc i32 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1283, i8* %1284, align 1
  %1285 = lshr i32 %1258, 31
  %1286 = xor i32 %1282, %1285
  %1287 = add i32 %1286, %1282
  %1288 = icmp eq i32 %1287, 2
  %1289 = zext i1 %1288 to i8
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1289, i8* %1290, align 1
  store %struct.Memory* %loadMem_403c64, %struct.Memory** %MEMORY
  %loadMem_403c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %1293 to i64*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 1
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %EAX.i610 = bitcast %union.anon* %1296 to i32*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 15
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %1299 to i64*
  %1300 = load i64, i64* %RBP.i611
  %1301 = sub i64 %1300, 4
  %1302 = load i32, i32* %EAX.i610
  %1303 = zext i32 %1302 to i64
  %1304 = load i64, i64* %PC.i609
  %1305 = add i64 %1304, 3
  store i64 %1305, i64* %PC.i609
  %1306 = inttoptr i64 %1301 to i32*
  store i32 %1302, i32* %1306
  store %struct.Memory* %loadMem_403c67, %struct.Memory** %MEMORY
  %loadMem_403c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 33
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1309 to i64*
  %1310 = load i64, i64* %PC.i608
  %1311 = add i64 %1310, -235
  %1312 = load i64, i64* %PC.i608
  %1313 = add i64 %1312, 5
  store i64 %1313, i64* %PC.i608
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1311, i64* %1314, align 8
  store %struct.Memory* %loadMem_403c6a, %struct.Memory** %MEMORY
  br label %block_.L_403b7f

block_.L_403c6f:                                  ; preds = %block_.L_403b7f
  %loadMem_403c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 33
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 15
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %RBP.i607 = bitcast %union.anon* %1320 to i64*
  %1321 = load i64, i64* %RBP.i607
  %1322 = sub i64 %1321, 4
  %1323 = load i64, i64* %PC.i606
  %1324 = add i64 %1323, 7
  store i64 %1324, i64* %PC.i606
  %1325 = inttoptr i64 %1322 to i32*
  store i32 0, i32* %1325
  store %struct.Memory* %loadMem_403c6f, %struct.Memory** %MEMORY
  br label %block_.L_403c76

block_.L_403c76:                                  ; preds = %block_.L_404053, %block_.L_403c6f
  %loadMem_403c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 33
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %1328 to i64*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 15
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %1331 to i64*
  %1332 = load i64, i64* %RBP.i605
  %1333 = sub i64 %1332, 4
  %1334 = load i64, i64* %PC.i604
  %1335 = add i64 %1334, 7
  store i64 %1335, i64* %PC.i604
  %1336 = inttoptr i64 %1333 to i32*
  %1337 = load i32, i32* %1336
  %1338 = sub i32 %1337, 144
  %1339 = icmp ult i32 %1337, 144
  %1340 = zext i1 %1339 to i8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1340, i8* %1341, align 1
  %1342 = and i32 %1338, 255
  %1343 = call i32 @llvm.ctpop.i32(i32 %1342)
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  %1346 = xor i8 %1345, 1
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1346, i8* %1347, align 1
  %1348 = xor i32 %1337, 144
  %1349 = xor i32 %1348, %1338
  %1350 = lshr i32 %1349, 4
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1352, i8* %1353, align 1
  %1354 = icmp eq i32 %1338, 0
  %1355 = zext i1 %1354 to i8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1355, i8* %1356, align 1
  %1357 = lshr i32 %1338, 31
  %1358 = trunc i32 %1357 to i8
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1358, i8* %1359, align 1
  %1360 = lshr i32 %1337, 31
  %1361 = xor i32 %1357, %1360
  %1362 = add i32 %1361, %1360
  %1363 = icmp eq i32 %1362, 2
  %1364 = zext i1 %1363 to i8
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1364, i8* %1365, align 1
  store %struct.Memory* %loadMem_403c76, %struct.Memory** %MEMORY
  %loadMem_403c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %PC.i603
  %1370 = add i64 %1369, 996
  %1371 = load i64, i64* %PC.i603
  %1372 = add i64 %1371, 6
  %1373 = load i64, i64* %PC.i603
  %1374 = add i64 %1373, 6
  store i64 %1374, i64* %PC.i603
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1376 = load i8, i8* %1375, align 1
  %1377 = icmp ne i8 %1376, 0
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1379 = load i8, i8* %1378, align 1
  %1380 = icmp ne i8 %1379, 0
  %1381 = xor i1 %1377, %1380
  %1382 = xor i1 %1381, true
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %BRANCH_TAKEN, align 1
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1385 = select i1 %1381, i64 %1372, i64 %1370
  store i64 %1385, i64* %1384, align 8
  store %struct.Memory* %loadMem_403c7d, %struct.Memory** %MEMORY
  %loadBr_403c7d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403c7d = icmp eq i8 %loadBr_403c7d, 1
  br i1 %cmpBr_403c7d, label %block_.L_404061, label %block_403c83

block_403c83:                                     ; preds = %block_.L_403c76
  %loadMem_403c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 33
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 15
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %1391 to i64*
  %1392 = load i64, i64* %RBP.i602
  %1393 = sub i64 %1392, 8
  %1394 = load i64, i64* %PC.i601
  %1395 = add i64 %1394, 7
  store i64 %1395, i64* %PC.i601
  %1396 = inttoptr i64 %1393 to i32*
  store i32 0, i32* %1396
  store %struct.Memory* %loadMem_403c83, %struct.Memory** %MEMORY
  br label %block_.L_403c8a

block_.L_403c8a:                                  ; preds = %block_.L_404010, %block_403c83
  %loadMem_403c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 33
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %1399 to i64*
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 15
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %1402 to i64*
  %1403 = load i64, i64* %RBP.i600
  %1404 = sub i64 %1403, 8
  %1405 = load i64, i64* %PC.i599
  %1406 = add i64 %1405, 7
  store i64 %1406, i64* %PC.i599
  %1407 = inttoptr i64 %1404 to i32*
  %1408 = load i32, i32* %1407
  %1409 = sub i32 %1408, 144
  %1410 = icmp ult i32 %1408, 144
  %1411 = zext i1 %1410 to i8
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1411, i8* %1412, align 1
  %1413 = and i32 %1409, 255
  %1414 = call i32 @llvm.ctpop.i32(i32 %1413)
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  %1417 = xor i8 %1416, 1
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1417, i8* %1418, align 1
  %1419 = xor i32 %1408, 144
  %1420 = xor i32 %1419, %1409
  %1421 = lshr i32 %1420, 4
  %1422 = trunc i32 %1421 to i8
  %1423 = and i8 %1422, 1
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1423, i8* %1424, align 1
  %1425 = icmp eq i32 %1409, 0
  %1426 = zext i1 %1425 to i8
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1426, i8* %1427, align 1
  %1428 = lshr i32 %1409, 31
  %1429 = trunc i32 %1428 to i8
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1429, i8* %1430, align 1
  %1431 = lshr i32 %1408, 31
  %1432 = xor i32 %1428, %1431
  %1433 = add i32 %1432, %1431
  %1434 = icmp eq i32 %1433, 2
  %1435 = zext i1 %1434 to i8
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1435, i8* %1436, align 1
  store %struct.Memory* %loadMem_403c8a, %struct.Memory** %MEMORY
  %loadMem_403c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %PC.i598
  %1441 = add i64 %1440, 957
  %1442 = load i64, i64* %PC.i598
  %1443 = add i64 %1442, 6
  %1444 = load i64, i64* %PC.i598
  %1445 = add i64 %1444, 6
  store i64 %1445, i64* %PC.i598
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1447 = load i8, i8* %1446, align 1
  %1448 = icmp ne i8 %1447, 0
  %1449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1450 = load i8, i8* %1449, align 1
  %1451 = icmp ne i8 %1450, 0
  %1452 = xor i1 %1448, %1451
  %1453 = xor i1 %1452, true
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %BRANCH_TAKEN, align 1
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1456 = select i1 %1452, i64 %1443, i64 %1441
  store i64 %1456, i64* %1455, align 8
  store %struct.Memory* %loadMem_403c91, %struct.Memory** %MEMORY
  %loadBr_403c91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403c91 = icmp eq i8 %loadBr_403c91, 1
  br i1 %cmpBr_403c91, label %block_.L_40404e, label %block_403c97

block_403c97:                                     ; preds = %block_.L_403c8a
  %loadMem_403c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 33
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1459 to i64*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 1
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %1462 to i64*
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 15
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %RBP.i597 = bitcast %union.anon* %1465 to i64*
  %1466 = load i64, i64* %RBP.i597
  %1467 = sub i64 %1466, 4
  %1468 = load i64, i64* %PC.i595
  %1469 = add i64 %1468, 4
  store i64 %1469, i64* %PC.i595
  %1470 = inttoptr i64 %1467 to i32*
  %1471 = load i32, i32* %1470
  %1472 = sext i32 %1471 to i64
  store i64 %1472, i64* %RAX.i596, align 8
  store %struct.Memory* %loadMem_403c97, %struct.Memory** %MEMORY
  %loadMem_403c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 1
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 5
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RCX.i594 = bitcast %union.anon* %1481 to i64*
  %1482 = load i64, i64* %RAX.i593
  %1483 = mul i64 %1482, 4
  %1484 = add i64 %1483, 4348048
  %1485 = load i64, i64* %PC.i592
  %1486 = add i64 %1485, 7
  store i64 %1486, i64* %PC.i592
  %1487 = inttoptr i64 %1484 to i32*
  %1488 = load i32, i32* %1487
  %1489 = zext i32 %1488 to i64
  store i64 %1489, i64* %RCX.i594, align 8
  store %struct.Memory* %loadMem_403c9b, %struct.Memory** %MEMORY
  %loadMem_403ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 1
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %RAX.i590 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 15
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %1498 to i64*
  %1499 = load i64, i64* %RBP.i591
  %1500 = sub i64 %1499, 8
  %1501 = load i64, i64* %PC.i589
  %1502 = add i64 %1501, 4
  store i64 %1502, i64* %PC.i589
  %1503 = inttoptr i64 %1500 to i32*
  %1504 = load i32, i32* %1503
  %1505 = sext i32 %1504 to i64
  store i64 %1505, i64* %RAX.i590, align 8
  store %struct.Memory* %loadMem_403ca2, %struct.Memory** %MEMORY
  %loadMem_403ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 33
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 1
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 5
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %RCX.i588 = bitcast %union.anon* %1514 to i64*
  %1515 = load i64, i64* %RCX.i588
  %1516 = load i64, i64* %RAX.i587
  %1517 = mul i64 %1516, 4
  %1518 = add i64 %1517, 4348048
  %1519 = load i64, i64* %PC.i586
  %1520 = add i64 %1519, 7
  store i64 %1520, i64* %PC.i586
  %1521 = trunc i64 %1515 to i32
  %1522 = inttoptr i64 %1518 to i32*
  %1523 = load i32, i32* %1522
  %1524 = sub i32 %1521, %1523
  %1525 = zext i32 %1524 to i64
  store i64 %1525, i64* %RCX.i588, align 8
  %1526 = icmp ult i32 %1521, %1523
  %1527 = zext i1 %1526 to i8
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1527, i8* %1528, align 1
  %1529 = and i32 %1524, 255
  %1530 = call i32 @llvm.ctpop.i32(i32 %1529)
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = xor i8 %1532, 1
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1533, i8* %1534, align 1
  %1535 = xor i32 %1523, %1521
  %1536 = xor i32 %1535, %1524
  %1537 = lshr i32 %1536, 4
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1539, i8* %1540, align 1
  %1541 = icmp eq i32 %1524, 0
  %1542 = zext i1 %1541 to i8
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1542, i8* %1543, align 1
  %1544 = lshr i32 %1524, 31
  %1545 = trunc i32 %1544 to i8
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1545, i8* %1546, align 1
  %1547 = lshr i32 %1521, 31
  %1548 = lshr i32 %1523, 31
  %1549 = xor i32 %1548, %1547
  %1550 = xor i32 %1544, %1547
  %1551 = add i32 %1550, %1549
  %1552 = icmp eq i32 %1551, 2
  %1553 = zext i1 %1552 to i8
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1553, i8* %1554, align 1
  store %struct.Memory* %loadMem_403ca6, %struct.Memory** %MEMORY
  %loadMem_403cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 5
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %ECX.i584 = bitcast %union.anon* %1560 to i32*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 11
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RDI.i585 = bitcast %union.anon* %1563 to i64*
  %1564 = load i32, i32* %ECX.i584
  %1565 = zext i32 %1564 to i64
  %1566 = load i64, i64* %PC.i583
  %1567 = add i64 %1566, 2
  store i64 %1567, i64* %PC.i583
  %1568 = and i64 %1565, 4294967295
  store i64 %1568, i64* %RDI.i585, align 8
  store %struct.Memory* %loadMem_403cad, %struct.Memory** %MEMORY
  %loadMem1_403caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 33
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %1571 to i64*
  %1572 = load i64, i64* %PC.i582
  %1573 = add i64 %1572, -12335
  %1574 = load i64, i64* %PC.i582
  %1575 = add i64 %1574, 5
  %1576 = load i64, i64* %PC.i582
  %1577 = add i64 %1576, 5
  store i64 %1577, i64* %PC.i582
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1579 = load i64, i64* %1578, align 8
  %1580 = add i64 %1579, -8
  %1581 = inttoptr i64 %1580 to i64*
  store i64 %1575, i64* %1581
  store i64 %1580, i64* %1578, align 8
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1573, i64* %1582, align 8
  store %struct.Memory* %loadMem1_403caf, %struct.Memory** %MEMORY
  %loadMem2_403caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403caf = load i64, i64* %3
  %1583 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403caf)
  store %struct.Memory* %1583, %struct.Memory** %MEMORY
  %loadMem_403cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %1586 to i64*
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 7
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %RDX.i578 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 15
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %RBP.i579
  %1594 = sub i64 %1593, 4
  %1595 = load i64, i64* %PC.i577
  %1596 = add i64 %1595, 4
  store i64 %1596, i64* %PC.i577
  %1597 = inttoptr i64 %1594 to i32*
  %1598 = load i32, i32* %1597
  %1599 = sext i32 %1598 to i64
  store i64 %1599, i64* %RDX.i578, align 8
  store %struct.Memory* %loadMem_403cb4, %struct.Memory** %MEMORY
  %loadMem_403cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 33
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 5
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %RCX.i575 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 7
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %RDX.i576 = bitcast %union.anon* %1608 to i64*
  %1609 = load i64, i64* %RDX.i576
  %1610 = mul i64 %1609, 4
  %1611 = add i64 %1610, 4347472
  %1612 = load i64, i64* %PC.i574
  %1613 = add i64 %1612, 7
  store i64 %1613, i64* %PC.i574
  %1614 = inttoptr i64 %1611 to i32*
  %1615 = load i32, i32* %1614
  %1616 = zext i32 %1615 to i64
  store i64 %1616, i64* %RCX.i575, align 8
  store %struct.Memory* %loadMem_403cb8, %struct.Memory** %MEMORY
  %loadMem_403cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 33
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %1619 to i64*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 7
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %RDX.i572 = bitcast %union.anon* %1622 to i64*
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 15
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %1625 to i64*
  %1626 = load i64, i64* %RBP.i573
  %1627 = sub i64 %1626, 8
  %1628 = load i64, i64* %PC.i571
  %1629 = add i64 %1628, 4
  store i64 %1629, i64* %PC.i571
  %1630 = inttoptr i64 %1627 to i32*
  %1631 = load i32, i32* %1630
  %1632 = sext i32 %1631 to i64
  store i64 %1632, i64* %RDX.i572, align 8
  store %struct.Memory* %loadMem_403cbf, %struct.Memory** %MEMORY
  %loadMem_403cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 33
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 5
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %RCX.i569 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 7
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RDX.i570 = bitcast %union.anon* %1641 to i64*
  %1642 = load i64, i64* %RCX.i569
  %1643 = load i64, i64* %RDX.i570
  %1644 = mul i64 %1643, 4
  %1645 = add i64 %1644, 4347472
  %1646 = load i64, i64* %PC.i568
  %1647 = add i64 %1646, 7
  store i64 %1647, i64* %PC.i568
  %1648 = trunc i64 %1642 to i32
  %1649 = inttoptr i64 %1645 to i32*
  %1650 = load i32, i32* %1649
  %1651 = sub i32 %1648, %1650
  %1652 = zext i32 %1651 to i64
  store i64 %1652, i64* %RCX.i569, align 8
  %1653 = icmp ult i32 %1648, %1650
  %1654 = zext i1 %1653 to i8
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1654, i8* %1655, align 1
  %1656 = and i32 %1651, 255
  %1657 = call i32 @llvm.ctpop.i32(i32 %1656)
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = xor i8 %1659, 1
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1660, i8* %1661, align 1
  %1662 = xor i32 %1650, %1648
  %1663 = xor i32 %1662, %1651
  %1664 = lshr i32 %1663, 4
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1666, i8* %1667, align 1
  %1668 = icmp eq i32 %1651, 0
  %1669 = zext i1 %1668 to i8
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1669, i8* %1670, align 1
  %1671 = lshr i32 %1651, 31
  %1672 = trunc i32 %1671 to i8
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1672, i8* %1673, align 1
  %1674 = lshr i32 %1648, 31
  %1675 = lshr i32 %1650, 31
  %1676 = xor i32 %1675, %1674
  %1677 = xor i32 %1671, %1674
  %1678 = add i32 %1677, %1676
  %1679 = icmp eq i32 %1678, 2
  %1680 = zext i1 %1679 to i8
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1680, i8* %1681, align 1
  store %struct.Memory* %loadMem_403cc3, %struct.Memory** %MEMORY
  %loadMem_403cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 33
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 5
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %ECX.i566 = bitcast %union.anon* %1687 to i32*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 11
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %RDI.i567 = bitcast %union.anon* %1690 to i64*
  %1691 = load i32, i32* %ECX.i566
  %1692 = zext i32 %1691 to i64
  %1693 = load i64, i64* %PC.i565
  %1694 = add i64 %1693, 2
  store i64 %1694, i64* %PC.i565
  %1695 = and i64 %1692, 4294967295
  store i64 %1695, i64* %RDI.i567, align 8
  store %struct.Memory* %loadMem_403cca, %struct.Memory** %MEMORY
  %loadMem_403ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 33
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %1698 to i64*
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 1
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %EAX.i563 = bitcast %union.anon* %1701 to i32*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 15
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %1704 to i64*
  %1705 = load i64, i64* %RBP.i564
  %1706 = sub i64 %1705, 24
  %1707 = load i32, i32* %EAX.i563
  %1708 = zext i32 %1707 to i64
  %1709 = load i64, i64* %PC.i562
  %1710 = add i64 %1709, 3
  store i64 %1710, i64* %PC.i562
  %1711 = inttoptr i64 %1706 to i32*
  store i32 %1707, i32* %1711
  store %struct.Memory* %loadMem_403ccc, %struct.Memory** %MEMORY
  %loadMem1_403ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %1714 to i64*
  %1715 = load i64, i64* %PC.i561
  %1716 = add i64 %1715, -12367
  %1717 = load i64, i64* %PC.i561
  %1718 = add i64 %1717, 5
  %1719 = load i64, i64* %PC.i561
  %1720 = add i64 %1719, 5
  store i64 %1720, i64* %PC.i561
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1722 = load i64, i64* %1721, align 8
  %1723 = add i64 %1722, -8
  %1724 = inttoptr i64 %1723 to i64*
  store i64 %1718, i64* %1724
  store i64 %1723, i64* %1721, align 8
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1716, i64* %1725, align 8
  store %struct.Memory* %loadMem1_403ccf, %struct.Memory** %MEMORY
  %loadMem2_403ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403ccf = load i64, i64* %3
  %1726 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403ccf)
  store %struct.Memory* %1726, %struct.Memory** %MEMORY
  %loadMem_403cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 33
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 5
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %RCX.i556 = bitcast %union.anon* %1732 to i64*
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 15
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %1735 to i64*
  %1736 = load i64, i64* %RBP.i557
  %1737 = sub i64 %1736, 24
  %1738 = load i64, i64* %PC.i555
  %1739 = add i64 %1738, 3
  store i64 %1739, i64* %PC.i555
  %1740 = inttoptr i64 %1737 to i32*
  %1741 = load i32, i32* %1740
  %1742 = zext i32 %1741 to i64
  store i64 %1742, i64* %RCX.i556, align 8
  store %struct.Memory* %loadMem_403cd4, %struct.Memory** %MEMORY
  %loadMem_403cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 33
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %1745 to i64*
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 1
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %EAX.i553 = bitcast %union.anon* %1748 to i32*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 5
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %ECX.i554 = bitcast %union.anon* %1751 to i32*
  %1752 = load i32, i32* %ECX.i554
  %1753 = zext i32 %1752 to i64
  %1754 = load i32, i32* %EAX.i553
  %1755 = zext i32 %1754 to i64
  %1756 = load i64, i64* %PC.i552
  %1757 = add i64 %1756, 2
  store i64 %1757, i64* %PC.i552
  %1758 = sub i32 %1752, %1754
  %1759 = icmp ult i32 %1752, %1754
  %1760 = zext i1 %1759 to i8
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1760, i8* %1761, align 1
  %1762 = and i32 %1758, 255
  %1763 = call i32 @llvm.ctpop.i32(i32 %1762)
  %1764 = trunc i32 %1763 to i8
  %1765 = and i8 %1764, 1
  %1766 = xor i8 %1765, 1
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1766, i8* %1767, align 1
  %1768 = xor i64 %1755, %1753
  %1769 = trunc i64 %1768 to i32
  %1770 = xor i32 %1769, %1758
  %1771 = lshr i32 %1770, 4
  %1772 = trunc i32 %1771 to i8
  %1773 = and i8 %1772, 1
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1773, i8* %1774, align 1
  %1775 = icmp eq i32 %1758, 0
  %1776 = zext i1 %1775 to i8
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1776, i8* %1777, align 1
  %1778 = lshr i32 %1758, 31
  %1779 = trunc i32 %1778 to i8
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1779, i8* %1780, align 1
  %1781 = lshr i32 %1752, 31
  %1782 = lshr i32 %1754, 31
  %1783 = xor i32 %1782, %1781
  %1784 = xor i32 %1778, %1781
  %1785 = add i32 %1784, %1783
  %1786 = icmp eq i32 %1785, 2
  %1787 = zext i1 %1786 to i8
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1787, i8* %1788, align 1
  store %struct.Memory* %loadMem_403cd7, %struct.Memory** %MEMORY
  %loadMem_403cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %1791 to i64*
  %1792 = load i64, i64* %PC.i551
  %1793 = add i64 %1792, 43
  %1794 = load i64, i64* %PC.i551
  %1795 = add i64 %1794, 6
  %1796 = load i64, i64* %PC.i551
  %1797 = add i64 %1796, 6
  store i64 %1797, i64* %PC.i551
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1799 = load i8, i8* %1798, align 1
  %1800 = icmp ne i8 %1799, 0
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1802 = load i8, i8* %1801, align 1
  %1803 = icmp ne i8 %1802, 0
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1805 = load i8, i8* %1804, align 1
  %1806 = icmp ne i8 %1805, 0
  %1807 = xor i1 %1803, %1806
  %1808 = or i1 %1800, %1807
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %BRANCH_TAKEN, align 1
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1811 = select i1 %1808, i64 %1793, i64 %1795
  store i64 %1811, i64* %1810, align 8
  store %struct.Memory* %loadMem_403cd9, %struct.Memory** %MEMORY
  %loadBr_403cd9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403cd9 = icmp eq i8 %loadBr_403cd9, 1
  br i1 %cmpBr_403cd9, label %block_.L_403d04, label %block_403cdf

block_403cdf:                                     ; preds = %block_403c97
  %loadMem_403cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 1
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 15
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %1820 to i64*
  %1821 = load i64, i64* %RBP.i550
  %1822 = sub i64 %1821, 4
  %1823 = load i64, i64* %PC.i548
  %1824 = add i64 %1823, 4
  store i64 %1824, i64* %PC.i548
  %1825 = inttoptr i64 %1822 to i32*
  %1826 = load i32, i32* %1825
  %1827 = sext i32 %1826 to i64
  store i64 %1827, i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_403cdf, %struct.Memory** %MEMORY
  %loadMem_403ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 1
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %RAX.i546 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 5
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RCX.i547 = bitcast %union.anon* %1836 to i64*
  %1837 = load i64, i64* %RAX.i546
  %1838 = mul i64 %1837, 4
  %1839 = add i64 %1838, 4348048
  %1840 = load i64, i64* %PC.i545
  %1841 = add i64 %1840, 7
  store i64 %1841, i64* %PC.i545
  %1842 = inttoptr i64 %1839 to i32*
  %1843 = load i32, i32* %1842
  %1844 = zext i32 %1843 to i64
  store i64 %1844, i64* %RCX.i547, align 8
  store %struct.Memory* %loadMem_403ce3, %struct.Memory** %MEMORY
  %loadMem_403cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 33
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %1847 to i64*
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 1
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 15
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %1853 to i64*
  %1854 = load i64, i64* %RBP.i544
  %1855 = sub i64 %1854, 8
  %1856 = load i64, i64* %PC.i542
  %1857 = add i64 %1856, 4
  store i64 %1857, i64* %PC.i542
  %1858 = inttoptr i64 %1855 to i32*
  %1859 = load i32, i32* %1858
  %1860 = sext i32 %1859 to i64
  store i64 %1860, i64* %RAX.i543, align 8
  store %struct.Memory* %loadMem_403cea, %struct.Memory** %MEMORY
  %loadMem_403cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 33
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %1863 to i64*
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 1
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %1866 to i64*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 5
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %RCX.i541 = bitcast %union.anon* %1869 to i64*
  %1870 = load i64, i64* %RCX.i541
  %1871 = load i64, i64* %RAX.i540
  %1872 = mul i64 %1871, 4
  %1873 = add i64 %1872, 4348048
  %1874 = load i64, i64* %PC.i539
  %1875 = add i64 %1874, 7
  store i64 %1875, i64* %PC.i539
  %1876 = trunc i64 %1870 to i32
  %1877 = inttoptr i64 %1873 to i32*
  %1878 = load i32, i32* %1877
  %1879 = sub i32 %1876, %1878
  %1880 = zext i32 %1879 to i64
  store i64 %1880, i64* %RCX.i541, align 8
  %1881 = icmp ult i32 %1876, %1878
  %1882 = zext i1 %1881 to i8
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1882, i8* %1883, align 1
  %1884 = and i32 %1879, 255
  %1885 = call i32 @llvm.ctpop.i32(i32 %1884)
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  %1888 = xor i8 %1887, 1
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1888, i8* %1889, align 1
  %1890 = xor i32 %1878, %1876
  %1891 = xor i32 %1890, %1879
  %1892 = lshr i32 %1891, 4
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1894, i8* %1895, align 1
  %1896 = icmp eq i32 %1879, 0
  %1897 = zext i1 %1896 to i8
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1897, i8* %1898, align 1
  %1899 = lshr i32 %1879, 31
  %1900 = trunc i32 %1899 to i8
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1900, i8* %1901, align 1
  %1902 = lshr i32 %1876, 31
  %1903 = lshr i32 %1878, 31
  %1904 = xor i32 %1903, %1902
  %1905 = xor i32 %1899, %1902
  %1906 = add i32 %1905, %1904
  %1907 = icmp eq i32 %1906, 2
  %1908 = zext i1 %1907 to i8
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1908, i8* %1909, align 1
  store %struct.Memory* %loadMem_403cee, %struct.Memory** %MEMORY
  %loadMem_403cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 33
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %1912 to i64*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 5
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %ECX.i537 = bitcast %union.anon* %1915 to i32*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 11
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RDI.i538 = bitcast %union.anon* %1918 to i64*
  %1919 = load i32, i32* %ECX.i537
  %1920 = zext i32 %1919 to i64
  %1921 = load i64, i64* %PC.i536
  %1922 = add i64 %1921, 2
  store i64 %1922, i64* %PC.i536
  %1923 = and i64 %1920, 4294967295
  store i64 %1923, i64* %RDI.i538, align 8
  store %struct.Memory* %loadMem_403cf5, %struct.Memory** %MEMORY
  %loadMem1_403cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %PC.i535
  %1928 = add i64 %1927, -12407
  %1929 = load i64, i64* %PC.i535
  %1930 = add i64 %1929, 5
  %1931 = load i64, i64* %PC.i535
  %1932 = add i64 %1931, 5
  store i64 %1932, i64* %PC.i535
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1934 = load i64, i64* %1933, align 8
  %1935 = add i64 %1934, -8
  %1936 = inttoptr i64 %1935 to i64*
  store i64 %1930, i64* %1936
  store i64 %1935, i64* %1933, align 8
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1928, i64* %1937, align 8
  store %struct.Memory* %loadMem1_403cf7, %struct.Memory** %MEMORY
  %loadMem2_403cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403cf7 = load i64, i64* %3
  %1938 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403cf7)
  store %struct.Memory* %1938, %struct.Memory** %MEMORY
  %loadMem_403cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 1
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %EAX.i531 = bitcast %union.anon* %1944 to i32*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 15
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %1947 to i64*
  %1948 = load i64, i64* %RBP.i532
  %1949 = sub i64 %1948, 28
  %1950 = load i32, i32* %EAX.i531
  %1951 = zext i32 %1950 to i64
  %1952 = load i64, i64* %PC.i530
  %1953 = add i64 %1952, 3
  store i64 %1953, i64* %PC.i530
  %1954 = inttoptr i64 %1949 to i32*
  store i32 %1950, i32* %1954
  store %struct.Memory* %loadMem_403cfc, %struct.Memory** %MEMORY
  %loadMem_403cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 33
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %1957 to i64*
  %1958 = load i64, i64* %PC.i529
  %1959 = add i64 %1958, 37
  %1960 = load i64, i64* %PC.i529
  %1961 = add i64 %1960, 5
  store i64 %1961, i64* %PC.i529
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1959, i64* %1962, align 8
  store %struct.Memory* %loadMem_403cff, %struct.Memory** %MEMORY
  br label %block_.L_403d24

block_.L_403d04:                                  ; preds = %block_403c97
  %loadMem_403d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 33
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %1965 to i64*
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 1
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %RAX.i527 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 15
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RBP.i528 = bitcast %union.anon* %1971 to i64*
  %1972 = load i64, i64* %RBP.i528
  %1973 = sub i64 %1972, 4
  %1974 = load i64, i64* %PC.i526
  %1975 = add i64 %1974, 4
  store i64 %1975, i64* %PC.i526
  %1976 = inttoptr i64 %1973 to i32*
  %1977 = load i32, i32* %1976
  %1978 = sext i32 %1977 to i64
  store i64 %1978, i64* %RAX.i527, align 8
  store %struct.Memory* %loadMem_403d04, %struct.Memory** %MEMORY
  %loadMem_403d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 1
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 5
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %RAX.i524
  %1989 = mul i64 %1988, 4
  %1990 = add i64 %1989, 4347472
  %1991 = load i64, i64* %PC.i523
  %1992 = add i64 %1991, 7
  store i64 %1992, i64* %PC.i523
  %1993 = inttoptr i64 %1990 to i32*
  %1994 = load i32, i32* %1993
  %1995 = zext i32 %1994 to i64
  store i64 %1995, i64* %RCX.i525, align 8
  store %struct.Memory* %loadMem_403d08, %struct.Memory** %MEMORY
  %loadMem_403d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 33
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %1998 to i64*
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 1
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 15
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %2004 to i64*
  %2005 = load i64, i64* %RBP.i522
  %2006 = sub i64 %2005, 8
  %2007 = load i64, i64* %PC.i520
  %2008 = add i64 %2007, 4
  store i64 %2008, i64* %PC.i520
  %2009 = inttoptr i64 %2006 to i32*
  %2010 = load i32, i32* %2009
  %2011 = sext i32 %2010 to i64
  store i64 %2011, i64* %RAX.i521, align 8
  store %struct.Memory* %loadMem_403d0f, %struct.Memory** %MEMORY
  %loadMem_403d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 33
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 1
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 5
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RCX.i519 = bitcast %union.anon* %2020 to i64*
  %2021 = load i64, i64* %RCX.i519
  %2022 = load i64, i64* %RAX.i518
  %2023 = mul i64 %2022, 4
  %2024 = add i64 %2023, 4347472
  %2025 = load i64, i64* %PC.i517
  %2026 = add i64 %2025, 7
  store i64 %2026, i64* %PC.i517
  %2027 = trunc i64 %2021 to i32
  %2028 = inttoptr i64 %2024 to i32*
  %2029 = load i32, i32* %2028
  %2030 = sub i32 %2027, %2029
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RCX.i519, align 8
  %2032 = icmp ult i32 %2027, %2029
  %2033 = zext i1 %2032 to i8
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2033, i8* %2034, align 1
  %2035 = and i32 %2030, 255
  %2036 = call i32 @llvm.ctpop.i32(i32 %2035)
  %2037 = trunc i32 %2036 to i8
  %2038 = and i8 %2037, 1
  %2039 = xor i8 %2038, 1
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2039, i8* %2040, align 1
  %2041 = xor i32 %2029, %2027
  %2042 = xor i32 %2041, %2030
  %2043 = lshr i32 %2042, 4
  %2044 = trunc i32 %2043 to i8
  %2045 = and i8 %2044, 1
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2045, i8* %2046, align 1
  %2047 = icmp eq i32 %2030, 0
  %2048 = zext i1 %2047 to i8
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2048, i8* %2049, align 1
  %2050 = lshr i32 %2030, 31
  %2051 = trunc i32 %2050 to i8
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2051, i8* %2052, align 1
  %2053 = lshr i32 %2027, 31
  %2054 = lshr i32 %2029, 31
  %2055 = xor i32 %2054, %2053
  %2056 = xor i32 %2050, %2053
  %2057 = add i32 %2056, %2055
  %2058 = icmp eq i32 %2057, 2
  %2059 = zext i1 %2058 to i8
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2059, i8* %2060, align 1
  store %struct.Memory* %loadMem_403d13, %struct.Memory** %MEMORY
  %loadMem_403d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 33
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 5
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %ECX.i515 = bitcast %union.anon* %2066 to i32*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 11
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RDI.i516 = bitcast %union.anon* %2069 to i64*
  %2070 = load i32, i32* %ECX.i515
  %2071 = zext i32 %2070 to i64
  %2072 = load i64, i64* %PC.i514
  %2073 = add i64 %2072, 2
  store i64 %2073, i64* %PC.i514
  %2074 = and i64 %2071, 4294967295
  store i64 %2074, i64* %RDI.i516, align 8
  store %struct.Memory* %loadMem_403d1a, %struct.Memory** %MEMORY
  %loadMem1_403d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 33
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %PC.i513 = bitcast %union.anon* %2077 to i64*
  %2078 = load i64, i64* %PC.i513
  %2079 = add i64 %2078, -12444
  %2080 = load i64, i64* %PC.i513
  %2081 = add i64 %2080, 5
  %2082 = load i64, i64* %PC.i513
  %2083 = add i64 %2082, 5
  store i64 %2083, i64* %PC.i513
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2085 = load i64, i64* %2084, align 8
  %2086 = add i64 %2085, -8
  %2087 = inttoptr i64 %2086 to i64*
  store i64 %2081, i64* %2087
  store i64 %2086, i64* %2084, align 8
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2079, i64* %2088, align 8
  store %struct.Memory* %loadMem1_403d1c, %struct.Memory** %MEMORY
  %loadMem2_403d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403d1c = load i64, i64* %3
  %2089 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403d1c)
  store %struct.Memory* %2089, %struct.Memory** %MEMORY
  %loadMem_403d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 33
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %2092 to i64*
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 1
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %EAX.i508 = bitcast %union.anon* %2095 to i32*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 15
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %2098 to i64*
  %2099 = load i64, i64* %RBP.i509
  %2100 = sub i64 %2099, 28
  %2101 = load i32, i32* %EAX.i508
  %2102 = zext i32 %2101 to i64
  %2103 = load i64, i64* %PC.i507
  %2104 = add i64 %2103, 3
  store i64 %2104, i64* %PC.i507
  %2105 = inttoptr i64 %2100 to i32*
  store i32 %2101, i32* %2105
  store %struct.Memory* %loadMem_403d21, %struct.Memory** %MEMORY
  br label %block_.L_403d24

block_.L_403d24:                                  ; preds = %block_.L_403d04, %block_403cdf
  %loadMem_403d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 33
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 1
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 15
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %2114 to i64*
  %2115 = load i64, i64* %RBP.i506
  %2116 = sub i64 %2115, 28
  %2117 = load i64, i64* %PC.i504
  %2118 = add i64 %2117, 3
  store i64 %2118, i64* %PC.i504
  %2119 = inttoptr i64 %2116 to i32*
  %2120 = load i32, i32* %2119
  %2121 = zext i32 %2120 to i64
  store i64 %2121, i64* %RAX.i505, align 8
  store %struct.Memory* %loadMem_403d24, %struct.Memory** %MEMORY
  %loadMem_403d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 33
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %2124 to i64*
  %2125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2126 = getelementptr inbounds %struct.GPR, %struct.GPR* %2125, i32 0, i32 5
  %2127 = getelementptr inbounds %struct.Reg, %struct.Reg* %2126, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %2127 to i64*
  %2128 = load i64, i64* %PC.i502
  %2129 = add i64 %2128, 10
  store i64 %2129, i64* %PC.i502
  store i64 ptrtoint (%G__0x62ea40_type* @G__0x62ea40 to i64), i64* %RCX.i503, align 8
  store %struct.Memory* %loadMem_403d27, %struct.Memory** %MEMORY
  %loadMem_403d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 33
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %2132 to i64*
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 1
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %EAX.i500 = bitcast %union.anon* %2135 to i32*
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 7
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %RDX.i501 = bitcast %union.anon* %2138 to i64*
  %2139 = load i32, i32* %EAX.i500
  %2140 = zext i32 %2139 to i64
  %2141 = load i64, i64* %PC.i499
  %2142 = add i64 %2141, 3
  store i64 %2142, i64* %PC.i499
  %2143 = shl i64 %2140, 32
  %2144 = ashr exact i64 %2143, 32
  store i64 %2144, i64* %RDX.i501, align 8
  store %struct.Memory* %loadMem_403d31, %struct.Memory** %MEMORY
  %loadMem_403d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2146 = getelementptr inbounds %struct.GPR, %struct.GPR* %2145, i32 0, i32 33
  %2147 = getelementptr inbounds %struct.Reg, %struct.Reg* %2146, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %2147 to i64*
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 1
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %2150 to i64*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 7
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %RDX.i498 = bitcast %union.anon* %2153 to i64*
  %2154 = load i64, i64* %RDX.i498
  %2155 = mul i64 %2154, 4
  %2156 = add i64 %2155, 6472240
  %2157 = load i64, i64* %PC.i496
  %2158 = add i64 %2157, 7
  store i64 %2158, i64* %PC.i496
  %2159 = inttoptr i64 %2156 to i32*
  %2160 = load i32, i32* %2159
  %2161 = zext i32 %2160 to i64
  store i64 %2161, i64* %RAX.i497, align 8
  store %struct.Memory* %loadMem_403d34, %struct.Memory** %MEMORY
  %loadMem_403d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 1
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %2168 = bitcast %union.anon* %2167 to %struct.anon.2*
  %AL.i494 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2168, i32 0, i32 0
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 9
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %2172 = bitcast %union.anon* %2171 to %struct.anon.2*
  %SIL.i495 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2172, i32 0, i32 0
  %2173 = load i8, i8* %AL.i494
  %2174 = zext i8 %2173 to i64
  %2175 = load i64, i64* %PC.i493
  %2176 = add i64 %2175, 3
  store i64 %2176, i64* %PC.i493
  store i8 %2173, i8* %SIL.i495, align 1
  store %struct.Memory* %loadMem_403d3b, %struct.Memory** %MEMORY
  %loadMem_403d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 7
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %RDX.i491 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 15
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %2185 to i64*
  %2186 = load i64, i64* %RBP.i492
  %2187 = sub i64 %2186, 4
  %2188 = load i64, i64* %PC.i490
  %2189 = add i64 %2188, 4
  store i64 %2189, i64* %PC.i490
  %2190 = inttoptr i64 %2187 to i32*
  %2191 = load i32, i32* %2190
  %2192 = sext i32 %2191 to i64
  store i64 %2192, i64* %RDX.i491, align 8
  store %struct.Memory* %loadMem_403d3e, %struct.Memory** %MEMORY
  %loadMem_403d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 33
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2195 to i64*
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 7
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %RDX.i489 = bitcast %union.anon* %2198 to i64*
  %2199 = load i64, i64* %RDX.i489
  %2200 = load i64, i64* %PC.i488
  %2201 = add i64 %2200, 7
  store i64 %2201, i64* %PC.i488
  %2202 = sext i64 %2199 to i128
  %2203 = and i128 %2202, -18446744073709551616
  %2204 = zext i64 %2199 to i128
  %2205 = or i128 %2203, %2204
  %2206 = mul i128 144, %2205
  %2207 = trunc i128 %2206 to i64
  store i64 %2207, i64* %RDX.i489, align 8
  %2208 = sext i64 %2207 to i128
  %2209 = icmp ne i128 %2208, %2206
  %2210 = zext i1 %2209 to i8
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2210, i8* %2211, align 1
  %2212 = trunc i128 %2206 to i32
  %2213 = and i32 %2212, 255
  %2214 = call i32 @llvm.ctpop.i32(i32 %2213)
  %2215 = trunc i32 %2214 to i8
  %2216 = and i8 %2215, 1
  %2217 = xor i8 %2216, 1
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2217, i8* %2218, align 1
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2219, align 1
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2220, align 1
  %2221 = lshr i64 %2207, 63
  %2222 = trunc i64 %2221 to i8
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2222, i8* %2223, align 1
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2210, i8* %2224, align 1
  store %struct.Memory* %loadMem_403d42, %struct.Memory** %MEMORY
  %loadMem_403d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 33
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2227 to i64*
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 5
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 7
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %RDX.i487 = bitcast %union.anon* %2233 to i64*
  %2234 = load i64, i64* %RCX.i486
  %2235 = load i64, i64* %RDX.i487
  %2236 = load i64, i64* %PC.i485
  %2237 = add i64 %2236, 3
  store i64 %2237, i64* %PC.i485
  %2238 = add i64 %2235, %2234
  store i64 %2238, i64* %RCX.i486, align 8
  %2239 = icmp ult i64 %2238, %2234
  %2240 = icmp ult i64 %2238, %2235
  %2241 = or i1 %2239, %2240
  %2242 = zext i1 %2241 to i8
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2242, i8* %2243, align 1
  %2244 = trunc i64 %2238 to i32
  %2245 = and i32 %2244, 255
  %2246 = call i32 @llvm.ctpop.i32(i32 %2245)
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  %2249 = xor i8 %2248, 1
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2249, i8* %2250, align 1
  %2251 = xor i64 %2235, %2234
  %2252 = xor i64 %2251, %2238
  %2253 = lshr i64 %2252, 4
  %2254 = trunc i64 %2253 to i8
  %2255 = and i8 %2254, 1
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2255, i8* %2256, align 1
  %2257 = icmp eq i64 %2238, 0
  %2258 = zext i1 %2257 to i8
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2258, i8* %2259, align 1
  %2260 = lshr i64 %2238, 63
  %2261 = trunc i64 %2260 to i8
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2261, i8* %2262, align 1
  %2263 = lshr i64 %2234, 63
  %2264 = lshr i64 %2235, 63
  %2265 = xor i64 %2260, %2263
  %2266 = xor i64 %2260, %2264
  %2267 = add i64 %2265, %2266
  %2268 = icmp eq i64 %2267, 2
  %2269 = zext i1 %2268 to i8
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2269, i8* %2270, align 1
  store %struct.Memory* %loadMem_403d49, %struct.Memory** %MEMORY
  %loadMem_403d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 33
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2273 to i64*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 7
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %RDX.i483 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 15
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %2279 to i64*
  %2280 = load i64, i64* %RBP.i484
  %2281 = sub i64 %2280, 8
  %2282 = load i64, i64* %PC.i482
  %2283 = add i64 %2282, 4
  store i64 %2283, i64* %PC.i482
  %2284 = inttoptr i64 %2281 to i32*
  %2285 = load i32, i32* %2284
  %2286 = sext i32 %2285 to i64
  store i64 %2286, i64* %RDX.i483, align 8
  store %struct.Memory* %loadMem_403d4c, %struct.Memory** %MEMORY
  %loadMem_403d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 33
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 9
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %2293 = bitcast %union.anon* %2292 to %struct.anon.2*
  %SIL.i479 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2293, i32 0, i32 0
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 5
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %RCX.i480 = bitcast %union.anon* %2296 to i64*
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 7
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %RDX.i481 = bitcast %union.anon* %2299 to i64*
  %2300 = load i64, i64* %RCX.i480
  %2301 = load i64, i64* %RDX.i481
  %2302 = add i64 %2301, %2300
  %2303 = load i8, i8* %SIL.i479
  %2304 = zext i8 %2303 to i64
  %2305 = load i64, i64* %PC.i478
  %2306 = add i64 %2305, 4
  store i64 %2306, i64* %PC.i478
  %2307 = inttoptr i64 %2302 to i8*
  store i8 %2303, i8* %2307
  store %struct.Memory* %loadMem_403d50, %struct.Memory** %MEMORY
  %loadMem_403d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2309 = getelementptr inbounds %struct.GPR, %struct.GPR* %2308, i32 0, i32 33
  %2310 = getelementptr inbounds %struct.Reg, %struct.Reg* %2309, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %2310 to i64*
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2312 = getelementptr inbounds %struct.GPR, %struct.GPR* %2311, i32 0, i32 5
  %2313 = getelementptr inbounds %struct.Reg, %struct.Reg* %2312, i32 0, i32 0
  %RCX.i476 = bitcast %union.anon* %2313 to i64*
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 15
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %2316 to i64*
  %2317 = load i64, i64* %RBP.i477
  %2318 = sub i64 %2317, 4
  %2319 = load i64, i64* %PC.i475
  %2320 = add i64 %2319, 4
  store i64 %2320, i64* %PC.i475
  %2321 = inttoptr i64 %2318 to i32*
  %2322 = load i32, i32* %2321
  %2323 = sext i32 %2322 to i64
  store i64 %2323, i64* %RCX.i476, align 8
  store %struct.Memory* %loadMem_403d54, %struct.Memory** %MEMORY
  %loadMem_403d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 1
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 5
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RCX.i474 = bitcast %union.anon* %2332 to i64*
  %2333 = load i64, i64* %RCX.i474
  %2334 = mul i64 %2333, 4
  %2335 = add i64 %2334, 4348048
  %2336 = load i64, i64* %PC.i472
  %2337 = add i64 %2336, 7
  store i64 %2337, i64* %PC.i472
  %2338 = inttoptr i64 %2335 to i32*
  %2339 = load i32, i32* %2338
  %2340 = zext i32 %2339 to i64
  store i64 %2340, i64* %RAX.i473, align 8
  store %struct.Memory* %loadMem_403d58, %struct.Memory** %MEMORY
  %loadMem_403d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 33
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 5
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %RCX.i470 = bitcast %union.anon* %2346 to i64*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 15
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %2349 to i64*
  %2350 = load i64, i64* %RBP.i471
  %2351 = sub i64 %2350, 8
  %2352 = load i64, i64* %PC.i469
  %2353 = add i64 %2352, 4
  store i64 %2353, i64* %PC.i469
  %2354 = inttoptr i64 %2351 to i32*
  %2355 = load i32, i32* %2354
  %2356 = sext i32 %2355 to i64
  store i64 %2356, i64* %RCX.i470, align 8
  store %struct.Memory* %loadMem_403d5f, %struct.Memory** %MEMORY
  %loadMem_403d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 33
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 1
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %2362 to i64*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 5
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %RCX.i468 = bitcast %union.anon* %2365 to i64*
  %2366 = load i64, i64* %RAX.i467
  %2367 = load i64, i64* %RCX.i468
  %2368 = mul i64 %2367, 4
  %2369 = add i64 %2368, 4348048
  %2370 = load i64, i64* %PC.i466
  %2371 = add i64 %2370, 7
  store i64 %2371, i64* %PC.i466
  %2372 = trunc i64 %2366 to i32
  %2373 = inttoptr i64 %2369 to i32*
  %2374 = load i32, i32* %2373
  %2375 = sub i32 %2372, %2374
  %2376 = zext i32 %2375 to i64
  store i64 %2376, i64* %RAX.i467, align 8
  %2377 = icmp ult i32 %2372, %2374
  %2378 = zext i1 %2377 to i8
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2378, i8* %2379, align 1
  %2380 = and i32 %2375, 255
  %2381 = call i32 @llvm.ctpop.i32(i32 %2380)
  %2382 = trunc i32 %2381 to i8
  %2383 = and i8 %2382, 1
  %2384 = xor i8 %2383, 1
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2384, i8* %2385, align 1
  %2386 = xor i32 %2374, %2372
  %2387 = xor i32 %2386, %2375
  %2388 = lshr i32 %2387, 4
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2390, i8* %2391, align 1
  %2392 = icmp eq i32 %2375, 0
  %2393 = zext i1 %2392 to i8
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2393, i8* %2394, align 1
  %2395 = lshr i32 %2375, 31
  %2396 = trunc i32 %2395 to i8
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2396, i8* %2397, align 1
  %2398 = lshr i32 %2372, 31
  %2399 = lshr i32 %2374, 31
  %2400 = xor i32 %2399, %2398
  %2401 = xor i32 %2395, %2398
  %2402 = add i32 %2401, %2400
  %2403 = icmp eq i32 %2402, 2
  %2404 = zext i1 %2403 to i8
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2404, i8* %2405, align 1
  store %struct.Memory* %loadMem_403d63, %struct.Memory** %MEMORY
  %loadMem_403d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 33
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %2408 to i64*
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 1
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %EAX.i464 = bitcast %union.anon* %2411 to i32*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 11
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %RDI.i465 = bitcast %union.anon* %2414 to i64*
  %2415 = load i32, i32* %EAX.i464
  %2416 = zext i32 %2415 to i64
  %2417 = load i64, i64* %PC.i463
  %2418 = add i64 %2417, 2
  store i64 %2418, i64* %PC.i463
  %2419 = and i64 %2416, 4294967295
  store i64 %2419, i64* %RDI.i465, align 8
  store %struct.Memory* %loadMem_403d6a, %struct.Memory** %MEMORY
  %loadMem1_403d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 33
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %2422 to i64*
  %2423 = load i64, i64* %PC.i462
  %2424 = add i64 %2423, -12524
  %2425 = load i64, i64* %PC.i462
  %2426 = add i64 %2425, 5
  %2427 = load i64, i64* %PC.i462
  %2428 = add i64 %2427, 5
  store i64 %2428, i64* %PC.i462
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2430 = load i64, i64* %2429, align 8
  %2431 = add i64 %2430, -8
  %2432 = inttoptr i64 %2431 to i64*
  store i64 %2426, i64* %2432
  store i64 %2431, i64* %2429, align 8
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2424, i64* %2433, align 8
  store %struct.Memory* %loadMem1_403d6c, %struct.Memory** %MEMORY
  %loadMem2_403d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403d6c = load i64, i64* %3
  %2434 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403d6c)
  store %struct.Memory* %2434, %struct.Memory** %MEMORY
  %loadMem_403d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 33
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 5
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 15
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %2443 to i64*
  %2444 = load i64, i64* %RBP.i458
  %2445 = sub i64 %2444, 4
  %2446 = load i64, i64* %PC.i456
  %2447 = add i64 %2446, 4
  store i64 %2447, i64* %PC.i456
  %2448 = inttoptr i64 %2445 to i32*
  %2449 = load i32, i32* %2448
  %2450 = sext i32 %2449 to i64
  store i64 %2450, i64* %RCX.i457, align 8
  store %struct.Memory* %loadMem_403d71, %struct.Memory** %MEMORY
  %loadMem_403d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 5
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %2456 to i64*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 11
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %RDI.i455 = bitcast %union.anon* %2459 to i64*
  %2460 = load i64, i64* %RCX.i454
  %2461 = mul i64 %2460, 4
  %2462 = add i64 %2461, 4347472
  %2463 = load i64, i64* %PC.i453
  %2464 = add i64 %2463, 7
  store i64 %2464, i64* %PC.i453
  %2465 = inttoptr i64 %2462 to i32*
  %2466 = load i32, i32* %2465
  %2467 = zext i32 %2466 to i64
  store i64 %2467, i64* %RDI.i455, align 8
  store %struct.Memory* %loadMem_403d75, %struct.Memory** %MEMORY
  %loadMem_403d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 33
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 5
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %2473 to i64*
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 15
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %2476 to i64*
  %2477 = load i64, i64* %RBP.i452
  %2478 = sub i64 %2477, 8
  %2479 = load i64, i64* %PC.i450
  %2480 = add i64 %2479, 4
  store i64 %2480, i64* %PC.i450
  %2481 = inttoptr i64 %2478 to i32*
  %2482 = load i32, i32* %2481
  %2483 = sext i32 %2482 to i64
  store i64 %2483, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_403d7c, %struct.Memory** %MEMORY
  %loadMem_403d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 33
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %2486 to i64*
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 5
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %RCX.i448 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 11
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RDI.i449 = bitcast %union.anon* %2492 to i64*
  %2493 = load i64, i64* %RDI.i449
  %2494 = load i64, i64* %RCX.i448
  %2495 = mul i64 %2494, 4
  %2496 = add i64 %2495, 4347472
  %2497 = load i64, i64* %PC.i447
  %2498 = add i64 %2497, 7
  store i64 %2498, i64* %PC.i447
  %2499 = trunc i64 %2493 to i32
  %2500 = inttoptr i64 %2496 to i32*
  %2501 = load i32, i32* %2500
  %2502 = sub i32 %2499, %2501
  %2503 = zext i32 %2502 to i64
  store i64 %2503, i64* %RDI.i449, align 8
  %2504 = icmp ult i32 %2499, %2501
  %2505 = zext i1 %2504 to i8
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2505, i8* %2506, align 1
  %2507 = and i32 %2502, 255
  %2508 = call i32 @llvm.ctpop.i32(i32 %2507)
  %2509 = trunc i32 %2508 to i8
  %2510 = and i8 %2509, 1
  %2511 = xor i8 %2510, 1
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2511, i8* %2512, align 1
  %2513 = xor i32 %2501, %2499
  %2514 = xor i32 %2513, %2502
  %2515 = lshr i32 %2514, 4
  %2516 = trunc i32 %2515 to i8
  %2517 = and i8 %2516, 1
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2517, i8* %2518, align 1
  %2519 = icmp eq i32 %2502, 0
  %2520 = zext i1 %2519 to i8
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2520, i8* %2521, align 1
  %2522 = lshr i32 %2502, 31
  %2523 = trunc i32 %2522 to i8
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2523, i8* %2524, align 1
  %2525 = lshr i32 %2499, 31
  %2526 = lshr i32 %2501, 31
  %2527 = xor i32 %2526, %2525
  %2528 = xor i32 %2522, %2525
  %2529 = add i32 %2528, %2527
  %2530 = icmp eq i32 %2529, 2
  %2531 = zext i1 %2530 to i8
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2531, i8* %2532, align 1
  store %struct.Memory* %loadMem_403d80, %struct.Memory** %MEMORY
  %loadMem_403d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 33
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %2535 to i64*
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 1
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %EAX.i445 = bitcast %union.anon* %2538 to i32*
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 15
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %2541 to i64*
  %2542 = load i64, i64* %RBP.i446
  %2543 = sub i64 %2542, 32
  %2544 = load i32, i32* %EAX.i445
  %2545 = zext i32 %2544 to i64
  %2546 = load i64, i64* %PC.i444
  %2547 = add i64 %2546, 3
  store i64 %2547, i64* %PC.i444
  %2548 = inttoptr i64 %2543 to i32*
  store i32 %2544, i32* %2548
  store %struct.Memory* %loadMem_403d87, %struct.Memory** %MEMORY
  %loadMem1_403d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2550 = getelementptr inbounds %struct.GPR, %struct.GPR* %2549, i32 0, i32 33
  %2551 = getelementptr inbounds %struct.Reg, %struct.Reg* %2550, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %2551 to i64*
  %2552 = load i64, i64* %PC.i443
  %2553 = add i64 %2552, -12554
  %2554 = load i64, i64* %PC.i443
  %2555 = add i64 %2554, 5
  %2556 = load i64, i64* %PC.i443
  %2557 = add i64 %2556, 5
  store i64 %2557, i64* %PC.i443
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2559 = load i64, i64* %2558, align 8
  %2560 = add i64 %2559, -8
  %2561 = inttoptr i64 %2560 to i64*
  store i64 %2555, i64* %2561
  store i64 %2560, i64* %2558, align 8
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2553, i64* %2562, align 8
  store %struct.Memory* %loadMem1_403d8a, %struct.Memory** %MEMORY
  %loadMem2_403d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403d8a = load i64, i64* %3
  %2563 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403d8a)
  store %struct.Memory* %2563, %struct.Memory** %MEMORY
  %loadMem_403d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 11
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RDI.i440 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 15
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %2572 to i64*
  %2573 = load i64, i64* %RBP.i441
  %2574 = sub i64 %2573, 32
  %2575 = load i64, i64* %PC.i439
  %2576 = add i64 %2575, 3
  store i64 %2576, i64* %PC.i439
  %2577 = inttoptr i64 %2574 to i32*
  %2578 = load i32, i32* %2577
  %2579 = zext i32 %2578 to i64
  store i64 %2579, i64* %RDI.i440, align 8
  store %struct.Memory* %loadMem_403d8f, %struct.Memory** %MEMORY
  %loadMem_403d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 1
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %EAX.i437 = bitcast %union.anon* %2585 to i32*
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 11
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %EDI.i438 = bitcast %union.anon* %2588 to i32*
  %2589 = load i32, i32* %EDI.i438
  %2590 = zext i32 %2589 to i64
  %2591 = load i32, i32* %EAX.i437
  %2592 = zext i32 %2591 to i64
  %2593 = load i64, i64* %PC.i436
  %2594 = add i64 %2593, 2
  store i64 %2594, i64* %PC.i436
  %2595 = sub i32 %2589, %2591
  %2596 = icmp ult i32 %2589, %2591
  %2597 = zext i1 %2596 to i8
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2597, i8* %2598, align 1
  %2599 = and i32 %2595, 255
  %2600 = call i32 @llvm.ctpop.i32(i32 %2599)
  %2601 = trunc i32 %2600 to i8
  %2602 = and i8 %2601, 1
  %2603 = xor i8 %2602, 1
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2603, i8* %2604, align 1
  %2605 = xor i64 %2592, %2590
  %2606 = trunc i64 %2605 to i32
  %2607 = xor i32 %2606, %2595
  %2608 = lshr i32 %2607, 4
  %2609 = trunc i32 %2608 to i8
  %2610 = and i8 %2609, 1
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2610, i8* %2611, align 1
  %2612 = icmp eq i32 %2595, 0
  %2613 = zext i1 %2612 to i8
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2613, i8* %2614, align 1
  %2615 = lshr i32 %2595, 31
  %2616 = trunc i32 %2615 to i8
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2616, i8* %2617, align 1
  %2618 = lshr i32 %2589, 31
  %2619 = lshr i32 %2591, 31
  %2620 = xor i32 %2619, %2618
  %2621 = xor i32 %2615, %2618
  %2622 = add i32 %2621, %2620
  %2623 = icmp eq i32 %2622, 2
  %2624 = zext i1 %2623 to i8
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2624, i8* %2625, align 1
  store %struct.Memory* %loadMem_403d92, %struct.Memory** %MEMORY
  %loadMem_403d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 33
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %2628 to i64*
  %2629 = load i64, i64* %PC.i435
  %2630 = add i64 %2629, 43
  %2631 = load i64, i64* %PC.i435
  %2632 = add i64 %2631, 6
  %2633 = load i64, i64* %PC.i435
  %2634 = add i64 %2633, 6
  store i64 %2634, i64* %PC.i435
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2636 = load i8, i8* %2635, align 1
  %2637 = icmp ne i8 %2636, 0
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2639 = load i8, i8* %2638, align 1
  %2640 = icmp ne i8 %2639, 0
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2642 = load i8, i8* %2641, align 1
  %2643 = icmp ne i8 %2642, 0
  %2644 = xor i1 %2640, %2643
  %2645 = or i1 %2637, %2644
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %BRANCH_TAKEN, align 1
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2648 = select i1 %2645, i64 %2630, i64 %2632
  store i64 %2648, i64* %2647, align 8
  store %struct.Memory* %loadMem_403d94, %struct.Memory** %MEMORY
  %loadBr_403d94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403d94 = icmp eq i8 %loadBr_403d94, 1
  br i1 %cmpBr_403d94, label %block_.L_403dbf, label %block_403d9a

block_403d9a:                                     ; preds = %block_.L_403d24
  %loadMem_403d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 33
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %2651 to i64*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 1
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 15
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %2657 to i64*
  %2658 = load i64, i64* %RBP.i434
  %2659 = sub i64 %2658, 4
  %2660 = load i64, i64* %PC.i432
  %2661 = add i64 %2660, 4
  store i64 %2661, i64* %PC.i432
  %2662 = inttoptr i64 %2659 to i32*
  %2663 = load i32, i32* %2662
  %2664 = sext i32 %2663 to i64
  store i64 %2664, i64* %RAX.i433, align 8
  store %struct.Memory* %loadMem_403d9a, %struct.Memory** %MEMORY
  %loadMem_403d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 33
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %2667 to i64*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 1
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %2670 to i64*
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 5
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %RCX.i431 = bitcast %union.anon* %2673 to i64*
  %2674 = load i64, i64* %RAX.i430
  %2675 = mul i64 %2674, 4
  %2676 = add i64 %2675, 4348048
  %2677 = load i64, i64* %PC.i429
  %2678 = add i64 %2677, 7
  store i64 %2678, i64* %PC.i429
  %2679 = inttoptr i64 %2676 to i32*
  %2680 = load i32, i32* %2679
  %2681 = zext i32 %2680 to i64
  store i64 %2681, i64* %RCX.i431, align 8
  store %struct.Memory* %loadMem_403d9e, %struct.Memory** %MEMORY
  %loadMem_403da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 33
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 1
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %2687 to i64*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 15
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %2690 to i64*
  %2691 = load i64, i64* %RBP.i428
  %2692 = sub i64 %2691, 8
  %2693 = load i64, i64* %PC.i426
  %2694 = add i64 %2693, 4
  store i64 %2694, i64* %PC.i426
  %2695 = inttoptr i64 %2692 to i32*
  %2696 = load i32, i32* %2695
  %2697 = sext i32 %2696 to i64
  store i64 %2697, i64* %RAX.i427, align 8
  store %struct.Memory* %loadMem_403da5, %struct.Memory** %MEMORY
  %loadMem_403da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 1
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 5
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %2706 to i64*
  %2707 = load i64, i64* %RCX.i425
  %2708 = load i64, i64* %RAX.i424
  %2709 = mul i64 %2708, 4
  %2710 = add i64 %2709, 4348048
  %2711 = load i64, i64* %PC.i423
  %2712 = add i64 %2711, 7
  store i64 %2712, i64* %PC.i423
  %2713 = trunc i64 %2707 to i32
  %2714 = inttoptr i64 %2710 to i32*
  %2715 = load i32, i32* %2714
  %2716 = sub i32 %2713, %2715
  %2717 = zext i32 %2716 to i64
  store i64 %2717, i64* %RCX.i425, align 8
  %2718 = icmp ult i32 %2713, %2715
  %2719 = zext i1 %2718 to i8
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2719, i8* %2720, align 1
  %2721 = and i32 %2716, 255
  %2722 = call i32 @llvm.ctpop.i32(i32 %2721)
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  %2725 = xor i8 %2724, 1
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2725, i8* %2726, align 1
  %2727 = xor i32 %2715, %2713
  %2728 = xor i32 %2727, %2716
  %2729 = lshr i32 %2728, 4
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2731, i8* %2732, align 1
  %2733 = icmp eq i32 %2716, 0
  %2734 = zext i1 %2733 to i8
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2734, i8* %2735, align 1
  %2736 = lshr i32 %2716, 31
  %2737 = trunc i32 %2736 to i8
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2737, i8* %2738, align 1
  %2739 = lshr i32 %2713, 31
  %2740 = lshr i32 %2715, 31
  %2741 = xor i32 %2740, %2739
  %2742 = xor i32 %2736, %2739
  %2743 = add i32 %2742, %2741
  %2744 = icmp eq i32 %2743, 2
  %2745 = zext i1 %2744 to i8
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2745, i8* %2746, align 1
  store %struct.Memory* %loadMem_403da9, %struct.Memory** %MEMORY
  %loadMem_403db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 33
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %2749 to i64*
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 5
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %ECX.i421 = bitcast %union.anon* %2752 to i32*
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 11
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %RDI.i422 = bitcast %union.anon* %2755 to i64*
  %2756 = load i32, i32* %ECX.i421
  %2757 = zext i32 %2756 to i64
  %2758 = load i64, i64* %PC.i420
  %2759 = add i64 %2758, 2
  store i64 %2759, i64* %PC.i420
  %2760 = and i64 %2757, 4294967295
  store i64 %2760, i64* %RDI.i422, align 8
  store %struct.Memory* %loadMem_403db0, %struct.Memory** %MEMORY
  %loadMem1_403db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %2763 to i64*
  %2764 = load i64, i64* %PC.i419
  %2765 = add i64 %2764, -12594
  %2766 = load i64, i64* %PC.i419
  %2767 = add i64 %2766, 5
  %2768 = load i64, i64* %PC.i419
  %2769 = add i64 %2768, 5
  store i64 %2769, i64* %PC.i419
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2771 = load i64, i64* %2770, align 8
  %2772 = add i64 %2771, -8
  %2773 = inttoptr i64 %2772 to i64*
  store i64 %2767, i64* %2773
  store i64 %2772, i64* %2770, align 8
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2765, i64* %2774, align 8
  store %struct.Memory* %loadMem1_403db2, %struct.Memory** %MEMORY
  %loadMem2_403db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403db2 = load i64, i64* %3
  %2775 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403db2)
  store %struct.Memory* %2775, %struct.Memory** %MEMORY
  %loadMem_403db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 33
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %2778 to i64*
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 1
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %EAX.i414 = bitcast %union.anon* %2781 to i32*
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 15
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %2784 to i64*
  %2785 = load i64, i64* %RBP.i415
  %2786 = sub i64 %2785, 36
  %2787 = load i32, i32* %EAX.i414
  %2788 = zext i32 %2787 to i64
  %2789 = load i64, i64* %PC.i413
  %2790 = add i64 %2789, 3
  store i64 %2790, i64* %PC.i413
  %2791 = inttoptr i64 %2786 to i32*
  store i32 %2787, i32* %2791
  store %struct.Memory* %loadMem_403db7, %struct.Memory** %MEMORY
  %loadMem_403dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 33
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %2794 to i64*
  %2795 = load i64, i64* %PC.i412
  %2796 = add i64 %2795, 37
  %2797 = load i64, i64* %PC.i412
  %2798 = add i64 %2797, 5
  store i64 %2798, i64* %PC.i412
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2796, i64* %2799, align 8
  store %struct.Memory* %loadMem_403dba, %struct.Memory** %MEMORY
  br label %block_.L_403ddf

block_.L_403dbf:                                  ; preds = %block_.L_403d24
  %loadMem_403dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 33
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %2802 to i64*
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 1
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %2805 to i64*
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 15
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %2808 to i64*
  %2809 = load i64, i64* %RBP.i411
  %2810 = sub i64 %2809, 4
  %2811 = load i64, i64* %PC.i409
  %2812 = add i64 %2811, 4
  store i64 %2812, i64* %PC.i409
  %2813 = inttoptr i64 %2810 to i32*
  %2814 = load i32, i32* %2813
  %2815 = sext i32 %2814 to i64
  store i64 %2815, i64* %RAX.i410, align 8
  store %struct.Memory* %loadMem_403dbf, %struct.Memory** %MEMORY
  %loadMem_403dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 33
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 1
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %2821 to i64*
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 5
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %2824 to i64*
  %2825 = load i64, i64* %RAX.i407
  %2826 = mul i64 %2825, 4
  %2827 = add i64 %2826, 4347472
  %2828 = load i64, i64* %PC.i406
  %2829 = add i64 %2828, 7
  store i64 %2829, i64* %PC.i406
  %2830 = inttoptr i64 %2827 to i32*
  %2831 = load i32, i32* %2830
  %2832 = zext i32 %2831 to i64
  store i64 %2832, i64* %RCX.i408, align 8
  store %struct.Memory* %loadMem_403dc3, %struct.Memory** %MEMORY
  %loadMem_403dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 33
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %2835 to i64*
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 1
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 15
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %2841 to i64*
  %2842 = load i64, i64* %RBP.i405
  %2843 = sub i64 %2842, 8
  %2844 = load i64, i64* %PC.i403
  %2845 = add i64 %2844, 4
  store i64 %2845, i64* %PC.i403
  %2846 = inttoptr i64 %2843 to i32*
  %2847 = load i32, i32* %2846
  %2848 = sext i32 %2847 to i64
  store i64 %2848, i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_403dca, %struct.Memory** %MEMORY
  %loadMem_403dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 33
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %2851 to i64*
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 1
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %RAX.i401 = bitcast %union.anon* %2854 to i64*
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 5
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %RCX.i402 = bitcast %union.anon* %2857 to i64*
  %2858 = load i64, i64* %RCX.i402
  %2859 = load i64, i64* %RAX.i401
  %2860 = mul i64 %2859, 4
  %2861 = add i64 %2860, 4347472
  %2862 = load i64, i64* %PC.i400
  %2863 = add i64 %2862, 7
  store i64 %2863, i64* %PC.i400
  %2864 = trunc i64 %2858 to i32
  %2865 = inttoptr i64 %2861 to i32*
  %2866 = load i32, i32* %2865
  %2867 = sub i32 %2864, %2866
  %2868 = zext i32 %2867 to i64
  store i64 %2868, i64* %RCX.i402, align 8
  %2869 = icmp ult i32 %2864, %2866
  %2870 = zext i1 %2869 to i8
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2870, i8* %2871, align 1
  %2872 = and i32 %2867, 255
  %2873 = call i32 @llvm.ctpop.i32(i32 %2872)
  %2874 = trunc i32 %2873 to i8
  %2875 = and i8 %2874, 1
  %2876 = xor i8 %2875, 1
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2876, i8* %2877, align 1
  %2878 = xor i32 %2866, %2864
  %2879 = xor i32 %2878, %2867
  %2880 = lshr i32 %2879, 4
  %2881 = trunc i32 %2880 to i8
  %2882 = and i8 %2881, 1
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2882, i8* %2883, align 1
  %2884 = icmp eq i32 %2867, 0
  %2885 = zext i1 %2884 to i8
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2885, i8* %2886, align 1
  %2887 = lshr i32 %2867, 31
  %2888 = trunc i32 %2887 to i8
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2888, i8* %2889, align 1
  %2890 = lshr i32 %2864, 31
  %2891 = lshr i32 %2866, 31
  %2892 = xor i32 %2891, %2890
  %2893 = xor i32 %2887, %2890
  %2894 = add i32 %2893, %2892
  %2895 = icmp eq i32 %2894, 2
  %2896 = zext i1 %2895 to i8
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2896, i8* %2897, align 1
  store %struct.Memory* %loadMem_403dce, %struct.Memory** %MEMORY
  %loadMem_403dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 33
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 5
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %ECX.i398 = bitcast %union.anon* %2903 to i32*
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 11
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %RDI.i399 = bitcast %union.anon* %2906 to i64*
  %2907 = load i32, i32* %ECX.i398
  %2908 = zext i32 %2907 to i64
  %2909 = load i64, i64* %PC.i397
  %2910 = add i64 %2909, 2
  store i64 %2910, i64* %PC.i397
  %2911 = and i64 %2908, 4294967295
  store i64 %2911, i64* %RDI.i399, align 8
  store %struct.Memory* %loadMem_403dd5, %struct.Memory** %MEMORY
  %loadMem1_403dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 33
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %2914 to i64*
  %2915 = load i64, i64* %PC.i396
  %2916 = add i64 %2915, -12631
  %2917 = load i64, i64* %PC.i396
  %2918 = add i64 %2917, 5
  %2919 = load i64, i64* %PC.i396
  %2920 = add i64 %2919, 5
  store i64 %2920, i64* %PC.i396
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2922 = load i64, i64* %2921, align 8
  %2923 = add i64 %2922, -8
  %2924 = inttoptr i64 %2923 to i64*
  store i64 %2918, i64* %2924
  store i64 %2923, i64* %2921, align 8
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2916, i64* %2925, align 8
  store %struct.Memory* %loadMem1_403dd7, %struct.Memory** %MEMORY
  %loadMem2_403dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403dd7 = load i64, i64* %3
  %2926 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403dd7)
  store %struct.Memory* %2926, %struct.Memory** %MEMORY
  %loadMem_403ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 33
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %2929 to i64*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 1
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %EAX.i391 = bitcast %union.anon* %2932 to i32*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 15
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %2935 to i64*
  %2936 = load i64, i64* %RBP.i392
  %2937 = sub i64 %2936, 36
  %2938 = load i32, i32* %EAX.i391
  %2939 = zext i32 %2938 to i64
  %2940 = load i64, i64* %PC.i390
  %2941 = add i64 %2940, 3
  store i64 %2941, i64* %PC.i390
  %2942 = inttoptr i64 %2937 to i32*
  store i32 %2938, i32* %2942
  store %struct.Memory* %loadMem_403ddc, %struct.Memory** %MEMORY
  br label %block_.L_403ddf

block_.L_403ddf:                                  ; preds = %block_.L_403dbf, %block_403d9a
  %loadMem_403ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2944 = getelementptr inbounds %struct.GPR, %struct.GPR* %2943, i32 0, i32 33
  %2945 = getelementptr inbounds %struct.Reg, %struct.Reg* %2944, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %2945 to i64*
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2947 = getelementptr inbounds %struct.GPR, %struct.GPR* %2946, i32 0, i32 1
  %2948 = getelementptr inbounds %struct.Reg, %struct.Reg* %2947, i32 0, i32 0
  %RAX.i388 = bitcast %union.anon* %2948 to i64*
  %2949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2950 = getelementptr inbounds %struct.GPR, %struct.GPR* %2949, i32 0, i32 15
  %2951 = getelementptr inbounds %struct.Reg, %struct.Reg* %2950, i32 0, i32 0
  %RBP.i389 = bitcast %union.anon* %2951 to i64*
  %2952 = load i64, i64* %RBP.i389
  %2953 = sub i64 %2952, 36
  %2954 = load i64, i64* %PC.i387
  %2955 = add i64 %2954, 3
  store i64 %2955, i64* %PC.i387
  %2956 = inttoptr i64 %2953 to i32*
  %2957 = load i32, i32* %2956
  %2958 = zext i32 %2957 to i64
  store i64 %2958, i64* %RAX.i388, align 8
  store %struct.Memory* %loadMem_403ddf, %struct.Memory** %MEMORY
  %loadMem_403de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2960 = getelementptr inbounds %struct.GPR, %struct.GPR* %2959, i32 0, i32 33
  %2961 = getelementptr inbounds %struct.Reg, %struct.Reg* %2960, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %2961 to i64*
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 5
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %RCX.i386 = bitcast %union.anon* %2964 to i64*
  %2965 = load i64, i64* %PC.i385
  %2966 = add i64 %2965, 10
  store i64 %2966, i64* %PC.i385
  store i64 ptrtoint (%G__0x8667b0_type* @G__0x8667b0 to i64), i64* %RCX.i386, align 8
  store %struct.Memory* %loadMem_403de2, %struct.Memory** %MEMORY
  %loadMem_403dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 33
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 1
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %EAX.i383 = bitcast %union.anon* %2972 to i32*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 7
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RDX.i384 = bitcast %union.anon* %2975 to i64*
  %2976 = load i32, i32* %EAX.i383
  %2977 = zext i32 %2976 to i64
  %2978 = load i64, i64* %PC.i382
  %2979 = add i64 %2978, 3
  store i64 %2979, i64* %PC.i382
  %2980 = shl i64 %2977, 32
  %2981 = ashr exact i64 %2980, 32
  store i64 %2981, i64* %RDX.i384, align 8
  store %struct.Memory* %loadMem_403dec, %struct.Memory** %MEMORY
  %loadMem_403def = load %struct.Memory*, %struct.Memory** %MEMORY
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 33
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %2984 to i64*
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 1
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %2987 to i64*
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 7
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %RDX.i381 = bitcast %union.anon* %2990 to i64*
  %2991 = load i64, i64* %RDX.i381
  %2992 = mul i64 %2991, 4
  %2993 = add i64 %2992, 6472432
  %2994 = load i64, i64* %PC.i379
  %2995 = add i64 %2994, 7
  store i64 %2995, i64* %PC.i379
  %2996 = inttoptr i64 %2993 to i32*
  %2997 = load i32, i32* %2996
  %2998 = zext i32 %2997 to i64
  store i64 %2998, i64* %RAX.i380, align 8
  store %struct.Memory* %loadMem_403def, %struct.Memory** %MEMORY
  %loadMem_403df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 33
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3001 to i64*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 1
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %3005 = bitcast %union.anon* %3004 to %struct.anon.2*
  %AL.i377 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3005, i32 0, i32 0
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 9
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %3009 = bitcast %union.anon* %3008 to %struct.anon.2*
  %SIL.i378 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3009, i32 0, i32 0
  %3010 = load i8, i8* %AL.i377
  %3011 = zext i8 %3010 to i64
  %3012 = load i64, i64* %PC.i376
  %3013 = add i64 %3012, 3
  store i64 %3013, i64* %PC.i376
  store i8 %3010, i8* %SIL.i378, align 1
  store %struct.Memory* %loadMem_403df6, %struct.Memory** %MEMORY
  %loadMem_403df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3015 = getelementptr inbounds %struct.GPR, %struct.GPR* %3014, i32 0, i32 33
  %3016 = getelementptr inbounds %struct.Reg, %struct.Reg* %3015, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3016 to i64*
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3018 = getelementptr inbounds %struct.GPR, %struct.GPR* %3017, i32 0, i32 7
  %3019 = getelementptr inbounds %struct.Reg, %struct.Reg* %3018, i32 0, i32 0
  %RDX.i374 = bitcast %union.anon* %3019 to i64*
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3021 = getelementptr inbounds %struct.GPR, %struct.GPR* %3020, i32 0, i32 15
  %3022 = getelementptr inbounds %struct.Reg, %struct.Reg* %3021, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %3022 to i64*
  %3023 = load i64, i64* %RBP.i375
  %3024 = sub i64 %3023, 4
  %3025 = load i64, i64* %PC.i373
  %3026 = add i64 %3025, 4
  store i64 %3026, i64* %PC.i373
  %3027 = inttoptr i64 %3024 to i32*
  %3028 = load i32, i32* %3027
  %3029 = sext i32 %3028 to i64
  store i64 %3029, i64* %RDX.i374, align 8
  store %struct.Memory* %loadMem_403df9, %struct.Memory** %MEMORY
  %loadMem_403dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 33
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %3032 to i64*
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3034 = getelementptr inbounds %struct.GPR, %struct.GPR* %3033, i32 0, i32 7
  %3035 = getelementptr inbounds %struct.Reg, %struct.Reg* %3034, i32 0, i32 0
  %RDX.i372 = bitcast %union.anon* %3035 to i64*
  %3036 = load i64, i64* %RDX.i372
  %3037 = load i64, i64* %PC.i371
  %3038 = add i64 %3037, 7
  store i64 %3038, i64* %PC.i371
  %3039 = sext i64 %3036 to i128
  %3040 = and i128 %3039, -18446744073709551616
  %3041 = zext i64 %3036 to i128
  %3042 = or i128 %3040, %3041
  %3043 = mul i128 144, %3042
  %3044 = trunc i128 %3043 to i64
  store i64 %3044, i64* %RDX.i372, align 8
  %3045 = sext i64 %3044 to i128
  %3046 = icmp ne i128 %3045, %3043
  %3047 = zext i1 %3046 to i8
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3047, i8* %3048, align 1
  %3049 = trunc i128 %3043 to i32
  %3050 = and i32 %3049, 255
  %3051 = call i32 @llvm.ctpop.i32(i32 %3050)
  %3052 = trunc i32 %3051 to i8
  %3053 = and i8 %3052, 1
  %3054 = xor i8 %3053, 1
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3054, i8* %3055, align 1
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3056, align 1
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3057, align 1
  %3058 = lshr i64 %3044, 63
  %3059 = trunc i64 %3058 to i8
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3059, i8* %3060, align 1
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3047, i8* %3061, align 1
  store %struct.Memory* %loadMem_403dfd, %struct.Memory** %MEMORY
  %loadMem_403e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 5
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %RCX.i369 = bitcast %union.anon* %3067 to i64*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 7
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %RDX.i370 = bitcast %union.anon* %3070 to i64*
  %3071 = load i64, i64* %RCX.i369
  %3072 = load i64, i64* %RDX.i370
  %3073 = load i64, i64* %PC.i368
  %3074 = add i64 %3073, 3
  store i64 %3074, i64* %PC.i368
  %3075 = add i64 %3072, %3071
  store i64 %3075, i64* %RCX.i369, align 8
  %3076 = icmp ult i64 %3075, %3071
  %3077 = icmp ult i64 %3075, %3072
  %3078 = or i1 %3076, %3077
  %3079 = zext i1 %3078 to i8
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3079, i8* %3080, align 1
  %3081 = trunc i64 %3075 to i32
  %3082 = and i32 %3081, 255
  %3083 = call i32 @llvm.ctpop.i32(i32 %3082)
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  %3086 = xor i8 %3085, 1
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3086, i8* %3087, align 1
  %3088 = xor i64 %3072, %3071
  %3089 = xor i64 %3088, %3075
  %3090 = lshr i64 %3089, 4
  %3091 = trunc i64 %3090 to i8
  %3092 = and i8 %3091, 1
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3092, i8* %3093, align 1
  %3094 = icmp eq i64 %3075, 0
  %3095 = zext i1 %3094 to i8
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3095, i8* %3096, align 1
  %3097 = lshr i64 %3075, 63
  %3098 = trunc i64 %3097 to i8
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3098, i8* %3099, align 1
  %3100 = lshr i64 %3071, 63
  %3101 = lshr i64 %3072, 63
  %3102 = xor i64 %3097, %3100
  %3103 = xor i64 %3097, %3101
  %3104 = add i64 %3102, %3103
  %3105 = icmp eq i64 %3104, 2
  %3106 = zext i1 %3105 to i8
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3106, i8* %3107, align 1
  store %struct.Memory* %loadMem_403e04, %struct.Memory** %MEMORY
  %loadMem_403e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3109 = getelementptr inbounds %struct.GPR, %struct.GPR* %3108, i32 0, i32 33
  %3110 = getelementptr inbounds %struct.Reg, %struct.Reg* %3109, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %3110 to i64*
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 7
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %RDX.i366 = bitcast %union.anon* %3113 to i64*
  %3114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3115 = getelementptr inbounds %struct.GPR, %struct.GPR* %3114, i32 0, i32 15
  %3116 = getelementptr inbounds %struct.Reg, %struct.Reg* %3115, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %3116 to i64*
  %3117 = load i64, i64* %RBP.i367
  %3118 = sub i64 %3117, 8
  %3119 = load i64, i64* %PC.i365
  %3120 = add i64 %3119, 4
  store i64 %3120, i64* %PC.i365
  %3121 = inttoptr i64 %3118 to i32*
  %3122 = load i32, i32* %3121
  %3123 = sext i32 %3122 to i64
  store i64 %3123, i64* %RDX.i366, align 8
  store %struct.Memory* %loadMem_403e07, %struct.Memory** %MEMORY
  %loadMem_403e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 33
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %3126 to i64*
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 9
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %3130 = bitcast %union.anon* %3129 to %struct.anon.2*
  %SIL.i362 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3130, i32 0, i32 0
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 5
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %RCX.i363 = bitcast %union.anon* %3133 to i64*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 7
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %3136 to i64*
  %3137 = load i64, i64* %RCX.i363
  %3138 = load i64, i64* %RDX.i364
  %3139 = add i64 %3138, %3137
  %3140 = load i8, i8* %SIL.i362
  %3141 = zext i8 %3140 to i64
  %3142 = load i64, i64* %PC.i361
  %3143 = add i64 %3142, 4
  store i64 %3143, i64* %PC.i361
  %3144 = inttoptr i64 %3139 to i8*
  store i8 %3140, i8* %3144
  store %struct.Memory* %loadMem_403e0b, %struct.Memory** %MEMORY
  %loadMem_403e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 33
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %3147 to i64*
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 5
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %RCX.i359 = bitcast %union.anon* %3150 to i64*
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 15
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %3153 to i64*
  %3154 = load i64, i64* %RBP.i360
  %3155 = sub i64 %3154, 4
  %3156 = load i64, i64* %PC.i358
  %3157 = add i64 %3156, 4
  store i64 %3157, i64* %PC.i358
  %3158 = inttoptr i64 %3155 to i32*
  %3159 = load i32, i32* %3158
  %3160 = sext i32 %3159 to i64
  store i64 %3160, i64* %RCX.i359, align 8
  store %struct.Memory* %loadMem_403e0f, %struct.Memory** %MEMORY
  %loadMem_403e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 33
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 1
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 5
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %3169 to i64*
  %3170 = load i64, i64* %RCX.i357
  %3171 = mul i64 %3170, 4
  %3172 = add i64 %3171, 4348048
  %3173 = load i64, i64* %PC.i355
  %3174 = add i64 %3173, 7
  store i64 %3174, i64* %PC.i355
  %3175 = inttoptr i64 %3172 to i32*
  %3176 = load i32, i32* %3175
  %3177 = zext i32 %3176 to i64
  store i64 %3177, i64* %RAX.i356, align 8
  store %struct.Memory* %loadMem_403e13, %struct.Memory** %MEMORY
  %loadMem_403e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 5
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %3183 to i64*
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 15
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %3186 to i64*
  %3187 = load i64, i64* %RBP.i354
  %3188 = sub i64 %3187, 8
  %3189 = load i64, i64* %PC.i352
  %3190 = add i64 %3189, 4
  store i64 %3190, i64* %PC.i352
  %3191 = inttoptr i64 %3188 to i32*
  %3192 = load i32, i32* %3191
  %3193 = sext i32 %3192 to i64
  store i64 %3193, i64* %RCX.i353, align 8
  store %struct.Memory* %loadMem_403e1a, %struct.Memory** %MEMORY
  %loadMem_403e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 1
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %3199 to i64*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 5
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %3202 to i64*
  %3203 = load i64, i64* %RAX.i350
  %3204 = load i64, i64* %RCX.i351
  %3205 = mul i64 %3204, 4
  %3206 = add i64 %3205, 4348048
  %3207 = load i64, i64* %PC.i349
  %3208 = add i64 %3207, 7
  store i64 %3208, i64* %PC.i349
  %3209 = trunc i64 %3203 to i32
  %3210 = inttoptr i64 %3206 to i32*
  %3211 = load i32, i32* %3210
  %3212 = sub i32 %3209, %3211
  %3213 = zext i32 %3212 to i64
  store i64 %3213, i64* %RAX.i350, align 8
  %3214 = icmp ult i32 %3209, %3211
  %3215 = zext i1 %3214 to i8
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3215, i8* %3216, align 1
  %3217 = and i32 %3212, 255
  %3218 = call i32 @llvm.ctpop.i32(i32 %3217)
  %3219 = trunc i32 %3218 to i8
  %3220 = and i8 %3219, 1
  %3221 = xor i8 %3220, 1
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3221, i8* %3222, align 1
  %3223 = xor i32 %3211, %3209
  %3224 = xor i32 %3223, %3212
  %3225 = lshr i32 %3224, 4
  %3226 = trunc i32 %3225 to i8
  %3227 = and i8 %3226, 1
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3227, i8* %3228, align 1
  %3229 = icmp eq i32 %3212, 0
  %3230 = zext i1 %3229 to i8
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3230, i8* %3231, align 1
  %3232 = lshr i32 %3212, 31
  %3233 = trunc i32 %3232 to i8
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3233, i8* %3234, align 1
  %3235 = lshr i32 %3209, 31
  %3236 = lshr i32 %3211, 31
  %3237 = xor i32 %3236, %3235
  %3238 = xor i32 %3232, %3235
  %3239 = add i32 %3238, %3237
  %3240 = icmp eq i32 %3239, 2
  %3241 = zext i1 %3240 to i8
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3241, i8* %3242, align 1
  store %struct.Memory* %loadMem_403e1e, %struct.Memory** %MEMORY
  %loadMem_403e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 33
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 1
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %EAX.i347 = bitcast %union.anon* %3248 to i32*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 11
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %RDI.i348 = bitcast %union.anon* %3251 to i64*
  %3252 = load i32, i32* %EAX.i347
  %3253 = zext i32 %3252 to i64
  %3254 = load i64, i64* %PC.i346
  %3255 = add i64 %3254, 2
  store i64 %3255, i64* %PC.i346
  %3256 = and i64 %3253, 4294967295
  store i64 %3256, i64* %RDI.i348, align 8
  store %struct.Memory* %loadMem_403e25, %struct.Memory** %MEMORY
  %loadMem1_403e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3258 = getelementptr inbounds %struct.GPR, %struct.GPR* %3257, i32 0, i32 33
  %3259 = getelementptr inbounds %struct.Reg, %struct.Reg* %3258, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %3259 to i64*
  %3260 = load i64, i64* %PC.i345
  %3261 = add i64 %3260, -12711
  %3262 = load i64, i64* %PC.i345
  %3263 = add i64 %3262, 5
  %3264 = load i64, i64* %PC.i345
  %3265 = add i64 %3264, 5
  store i64 %3265, i64* %PC.i345
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3267 = load i64, i64* %3266, align 8
  %3268 = add i64 %3267, -8
  %3269 = inttoptr i64 %3268 to i64*
  store i64 %3263, i64* %3269
  store i64 %3268, i64* %3266, align 8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3261, i64* %3270, align 8
  store %struct.Memory* %loadMem1_403e27, %struct.Memory** %MEMORY
  %loadMem2_403e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403e27 = load i64, i64* %3
  %3271 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403e27)
  store %struct.Memory* %3271, %struct.Memory** %MEMORY
  %loadMem_403e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 33
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %3274 to i64*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 5
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %3277 to i64*
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 15
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %3280 to i64*
  %3281 = load i64, i64* %RBP.i342
  %3282 = sub i64 %3281, 4
  %3283 = load i64, i64* %PC.i340
  %3284 = add i64 %3283, 4
  store i64 %3284, i64* %PC.i340
  %3285 = inttoptr i64 %3282 to i32*
  %3286 = load i32, i32* %3285
  %3287 = sext i32 %3286 to i64
  store i64 %3287, i64* %RCX.i341, align 8
  store %struct.Memory* %loadMem_403e2c, %struct.Memory** %MEMORY
  %loadMem_403e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 33
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 5
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RCX.i338 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 11
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RDI.i339 = bitcast %union.anon* %3296 to i64*
  %3297 = load i64, i64* %RCX.i338
  %3298 = mul i64 %3297, 4
  %3299 = add i64 %3298, 4347472
  %3300 = load i64, i64* %PC.i337
  %3301 = add i64 %3300, 7
  store i64 %3301, i64* %PC.i337
  %3302 = inttoptr i64 %3299 to i32*
  %3303 = load i32, i32* %3302
  %3304 = zext i32 %3303 to i64
  store i64 %3304, i64* %RDI.i339, align 8
  store %struct.Memory* %loadMem_403e30, %struct.Memory** %MEMORY
  %loadMem_403e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 5
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 15
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %3313 to i64*
  %3314 = load i64, i64* %RBP.i336
  %3315 = sub i64 %3314, 8
  %3316 = load i64, i64* %PC.i334
  %3317 = add i64 %3316, 4
  store i64 %3317, i64* %PC.i334
  %3318 = inttoptr i64 %3315 to i32*
  %3319 = load i32, i32* %3318
  %3320 = sext i32 %3319 to i64
  store i64 %3320, i64* %RCX.i335, align 8
  store %struct.Memory* %loadMem_403e37, %struct.Memory** %MEMORY
  %loadMem_403e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 5
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 11
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RDI.i333 = bitcast %union.anon* %3329 to i64*
  %3330 = load i64, i64* %RDI.i333
  %3331 = load i64, i64* %RCX.i332
  %3332 = mul i64 %3331, 4
  %3333 = add i64 %3332, 4347472
  %3334 = load i64, i64* %PC.i331
  %3335 = add i64 %3334, 7
  store i64 %3335, i64* %PC.i331
  %3336 = trunc i64 %3330 to i32
  %3337 = inttoptr i64 %3333 to i32*
  %3338 = load i32, i32* %3337
  %3339 = sub i32 %3336, %3338
  %3340 = zext i32 %3339 to i64
  store i64 %3340, i64* %RDI.i333, align 8
  %3341 = icmp ult i32 %3336, %3338
  %3342 = zext i1 %3341 to i8
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3342, i8* %3343, align 1
  %3344 = and i32 %3339, 255
  %3345 = call i32 @llvm.ctpop.i32(i32 %3344)
  %3346 = trunc i32 %3345 to i8
  %3347 = and i8 %3346, 1
  %3348 = xor i8 %3347, 1
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3348, i8* %3349, align 1
  %3350 = xor i32 %3338, %3336
  %3351 = xor i32 %3350, %3339
  %3352 = lshr i32 %3351, 4
  %3353 = trunc i32 %3352 to i8
  %3354 = and i8 %3353, 1
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3354, i8* %3355, align 1
  %3356 = icmp eq i32 %3339, 0
  %3357 = zext i1 %3356 to i8
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3357, i8* %3358, align 1
  %3359 = lshr i32 %3339, 31
  %3360 = trunc i32 %3359 to i8
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3360, i8* %3361, align 1
  %3362 = lshr i32 %3336, 31
  %3363 = lshr i32 %3338, 31
  %3364 = xor i32 %3363, %3362
  %3365 = xor i32 %3359, %3362
  %3366 = add i32 %3365, %3364
  %3367 = icmp eq i32 %3366, 2
  %3368 = zext i1 %3367 to i8
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3368, i8* %3369, align 1
  store %struct.Memory* %loadMem_403e3b, %struct.Memory** %MEMORY
  %loadMem_403e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 33
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 1
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %EAX.i329 = bitcast %union.anon* %3375 to i32*
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 15
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %3378 to i64*
  %3379 = load i64, i64* %RBP.i330
  %3380 = sub i64 %3379, 40
  %3381 = load i32, i32* %EAX.i329
  %3382 = zext i32 %3381 to i64
  %3383 = load i64, i64* %PC.i328
  %3384 = add i64 %3383, 3
  store i64 %3384, i64* %PC.i328
  %3385 = inttoptr i64 %3380 to i32*
  store i32 %3381, i32* %3385
  store %struct.Memory* %loadMem_403e42, %struct.Memory** %MEMORY
  %loadMem1_403e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %3388 to i64*
  %3389 = load i64, i64* %PC.i327
  %3390 = add i64 %3389, -12741
  %3391 = load i64, i64* %PC.i327
  %3392 = add i64 %3391, 5
  %3393 = load i64, i64* %PC.i327
  %3394 = add i64 %3393, 5
  store i64 %3394, i64* %PC.i327
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3396 = load i64, i64* %3395, align 8
  %3397 = add i64 %3396, -8
  %3398 = inttoptr i64 %3397 to i64*
  store i64 %3392, i64* %3398
  store i64 %3397, i64* %3395, align 8
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3390, i64* %3399, align 8
  store %struct.Memory* %loadMem1_403e45, %struct.Memory** %MEMORY
  %loadMem2_403e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403e45 = load i64, i64* %3
  %3400 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403e45)
  store %struct.Memory* %3400, %struct.Memory** %MEMORY
  %loadMem_403e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 33
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 11
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %RDI.i322 = bitcast %union.anon* %3406 to i64*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 15
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %3409 to i64*
  %3410 = load i64, i64* %RBP.i323
  %3411 = sub i64 %3410, 40
  %3412 = load i64, i64* %PC.i321
  %3413 = add i64 %3412, 3
  store i64 %3413, i64* %PC.i321
  %3414 = inttoptr i64 %3411 to i32*
  %3415 = load i32, i32* %3414
  %3416 = zext i32 %3415 to i64
  store i64 %3416, i64* %RDI.i322, align 8
  store %struct.Memory* %loadMem_403e4a, %struct.Memory** %MEMORY
  %loadMem_403e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 33
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %3419 to i64*
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 1
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %EAX.i319 = bitcast %union.anon* %3422 to i32*
  %3423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3424 = getelementptr inbounds %struct.GPR, %struct.GPR* %3423, i32 0, i32 11
  %3425 = getelementptr inbounds %struct.Reg, %struct.Reg* %3424, i32 0, i32 0
  %EDI.i320 = bitcast %union.anon* %3425 to i32*
  %3426 = load i32, i32* %EDI.i320
  %3427 = zext i32 %3426 to i64
  %3428 = load i32, i32* %EAX.i319
  %3429 = zext i32 %3428 to i64
  %3430 = load i64, i64* %PC.i318
  %3431 = add i64 %3430, 2
  store i64 %3431, i64* %PC.i318
  %3432 = sub i32 %3426, %3428
  %3433 = icmp ult i32 %3426, %3428
  %3434 = zext i1 %3433 to i8
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3434, i8* %3435, align 1
  %3436 = and i32 %3432, 255
  %3437 = call i32 @llvm.ctpop.i32(i32 %3436)
  %3438 = trunc i32 %3437 to i8
  %3439 = and i8 %3438, 1
  %3440 = xor i8 %3439, 1
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3440, i8* %3441, align 1
  %3442 = xor i64 %3429, %3427
  %3443 = trunc i64 %3442 to i32
  %3444 = xor i32 %3443, %3432
  %3445 = lshr i32 %3444, 4
  %3446 = trunc i32 %3445 to i8
  %3447 = and i8 %3446, 1
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3447, i8* %3448, align 1
  %3449 = icmp eq i32 %3432, 0
  %3450 = zext i1 %3449 to i8
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3450, i8* %3451, align 1
  %3452 = lshr i32 %3432, 31
  %3453 = trunc i32 %3452 to i8
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3453, i8* %3454, align 1
  %3455 = lshr i32 %3426, 31
  %3456 = lshr i32 %3428, 31
  %3457 = xor i32 %3456, %3455
  %3458 = xor i32 %3452, %3455
  %3459 = add i32 %3458, %3457
  %3460 = icmp eq i32 %3459, 2
  %3461 = zext i1 %3460 to i8
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3461, i8* %3462, align 1
  store %struct.Memory* %loadMem_403e4d, %struct.Memory** %MEMORY
  %loadMem_403e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3464 = getelementptr inbounds %struct.GPR, %struct.GPR* %3463, i32 0, i32 33
  %3465 = getelementptr inbounds %struct.Reg, %struct.Reg* %3464, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %3465 to i64*
  %3466 = load i64, i64* %PC.i317
  %3467 = add i64 %3466, 43
  %3468 = load i64, i64* %PC.i317
  %3469 = add i64 %3468, 6
  %3470 = load i64, i64* %PC.i317
  %3471 = add i64 %3470, 6
  store i64 %3471, i64* %PC.i317
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3473 = load i8, i8* %3472, align 1
  %3474 = icmp ne i8 %3473, 0
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3476 = load i8, i8* %3475, align 1
  %3477 = icmp ne i8 %3476, 0
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3479 = load i8, i8* %3478, align 1
  %3480 = icmp ne i8 %3479, 0
  %3481 = xor i1 %3477, %3480
  %3482 = or i1 %3474, %3481
  %3483 = zext i1 %3482 to i8
  store i8 %3483, i8* %BRANCH_TAKEN, align 1
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3485 = select i1 %3482, i64 %3467, i64 %3469
  store i64 %3485, i64* %3484, align 8
  store %struct.Memory* %loadMem_403e4f, %struct.Memory** %MEMORY
  %loadBr_403e4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403e4f = icmp eq i8 %loadBr_403e4f, 1
  br i1 %cmpBr_403e4f, label %block_.L_403e7a, label %block_403e55

block_403e55:                                     ; preds = %block_.L_403ddf
  %loadMem_403e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3487 = getelementptr inbounds %struct.GPR, %struct.GPR* %3486, i32 0, i32 33
  %3488 = getelementptr inbounds %struct.Reg, %struct.Reg* %3487, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %3488 to i64*
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 1
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %3491 to i64*
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 15
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %3494 to i64*
  %3495 = load i64, i64* %RBP.i316
  %3496 = sub i64 %3495, 4
  %3497 = load i64, i64* %PC.i314
  %3498 = add i64 %3497, 4
  store i64 %3498, i64* %PC.i314
  %3499 = inttoptr i64 %3496 to i32*
  %3500 = load i32, i32* %3499
  %3501 = sext i32 %3500 to i64
  store i64 %3501, i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_403e55, %struct.Memory** %MEMORY
  %loadMem_403e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3503 = getelementptr inbounds %struct.GPR, %struct.GPR* %3502, i32 0, i32 33
  %3504 = getelementptr inbounds %struct.Reg, %struct.Reg* %3503, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %3504 to i64*
  %3505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3506 = getelementptr inbounds %struct.GPR, %struct.GPR* %3505, i32 0, i32 1
  %3507 = getelementptr inbounds %struct.Reg, %struct.Reg* %3506, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %3507 to i64*
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3509 = getelementptr inbounds %struct.GPR, %struct.GPR* %3508, i32 0, i32 5
  %3510 = getelementptr inbounds %struct.Reg, %struct.Reg* %3509, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %3510 to i64*
  %3511 = load i64, i64* %RAX.i312
  %3512 = mul i64 %3511, 4
  %3513 = add i64 %3512, 4348048
  %3514 = load i64, i64* %PC.i311
  %3515 = add i64 %3514, 7
  store i64 %3515, i64* %PC.i311
  %3516 = inttoptr i64 %3513 to i32*
  %3517 = load i32, i32* %3516
  %3518 = zext i32 %3517 to i64
  store i64 %3518, i64* %RCX.i313, align 8
  store %struct.Memory* %loadMem_403e59, %struct.Memory** %MEMORY
  %loadMem_403e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3520 = getelementptr inbounds %struct.GPR, %struct.GPR* %3519, i32 0, i32 33
  %3521 = getelementptr inbounds %struct.Reg, %struct.Reg* %3520, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %3521 to i64*
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3523 = getelementptr inbounds %struct.GPR, %struct.GPR* %3522, i32 0, i32 1
  %3524 = getelementptr inbounds %struct.Reg, %struct.Reg* %3523, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %3524 to i64*
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3526 = getelementptr inbounds %struct.GPR, %struct.GPR* %3525, i32 0, i32 15
  %3527 = getelementptr inbounds %struct.Reg, %struct.Reg* %3526, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %3527 to i64*
  %3528 = load i64, i64* %RBP.i310
  %3529 = sub i64 %3528, 8
  %3530 = load i64, i64* %PC.i308
  %3531 = add i64 %3530, 4
  store i64 %3531, i64* %PC.i308
  %3532 = inttoptr i64 %3529 to i32*
  %3533 = load i32, i32* %3532
  %3534 = sext i32 %3533 to i64
  store i64 %3534, i64* %RAX.i309, align 8
  store %struct.Memory* %loadMem_403e60, %struct.Memory** %MEMORY
  %loadMem_403e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 33
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %3537 to i64*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 1
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %3540 to i64*
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 5
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %3543 to i64*
  %3544 = load i64, i64* %RCX.i307
  %3545 = load i64, i64* %RAX.i306
  %3546 = mul i64 %3545, 4
  %3547 = add i64 %3546, 4348048
  %3548 = load i64, i64* %PC.i305
  %3549 = add i64 %3548, 7
  store i64 %3549, i64* %PC.i305
  %3550 = trunc i64 %3544 to i32
  %3551 = inttoptr i64 %3547 to i32*
  %3552 = load i32, i32* %3551
  %3553 = sub i32 %3550, %3552
  %3554 = zext i32 %3553 to i64
  store i64 %3554, i64* %RCX.i307, align 8
  %3555 = icmp ult i32 %3550, %3552
  %3556 = zext i1 %3555 to i8
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3556, i8* %3557, align 1
  %3558 = and i32 %3553, 255
  %3559 = call i32 @llvm.ctpop.i32(i32 %3558)
  %3560 = trunc i32 %3559 to i8
  %3561 = and i8 %3560, 1
  %3562 = xor i8 %3561, 1
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3562, i8* %3563, align 1
  %3564 = xor i32 %3552, %3550
  %3565 = xor i32 %3564, %3553
  %3566 = lshr i32 %3565, 4
  %3567 = trunc i32 %3566 to i8
  %3568 = and i8 %3567, 1
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3568, i8* %3569, align 1
  %3570 = icmp eq i32 %3553, 0
  %3571 = zext i1 %3570 to i8
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3571, i8* %3572, align 1
  %3573 = lshr i32 %3553, 31
  %3574 = trunc i32 %3573 to i8
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3574, i8* %3575, align 1
  %3576 = lshr i32 %3550, 31
  %3577 = lshr i32 %3552, 31
  %3578 = xor i32 %3577, %3576
  %3579 = xor i32 %3573, %3576
  %3580 = add i32 %3579, %3578
  %3581 = icmp eq i32 %3580, 2
  %3582 = zext i1 %3581 to i8
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3582, i8* %3583, align 1
  store %struct.Memory* %loadMem_403e64, %struct.Memory** %MEMORY
  %loadMem_403e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 33
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %3586 to i64*
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3588 = getelementptr inbounds %struct.GPR, %struct.GPR* %3587, i32 0, i32 5
  %3589 = getelementptr inbounds %struct.Reg, %struct.Reg* %3588, i32 0, i32 0
  %ECX.i303 = bitcast %union.anon* %3589 to i32*
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 11
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %RDI.i304 = bitcast %union.anon* %3592 to i64*
  %3593 = load i32, i32* %ECX.i303
  %3594 = zext i32 %3593 to i64
  %3595 = load i64, i64* %PC.i302
  %3596 = add i64 %3595, 2
  store i64 %3596, i64* %PC.i302
  %3597 = and i64 %3594, 4294967295
  store i64 %3597, i64* %RDI.i304, align 8
  store %struct.Memory* %loadMem_403e6b, %struct.Memory** %MEMORY
  %loadMem1_403e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3599 = getelementptr inbounds %struct.GPR, %struct.GPR* %3598, i32 0, i32 33
  %3600 = getelementptr inbounds %struct.Reg, %struct.Reg* %3599, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %3600 to i64*
  %3601 = load i64, i64* %PC.i301
  %3602 = add i64 %3601, -12781
  %3603 = load i64, i64* %PC.i301
  %3604 = add i64 %3603, 5
  %3605 = load i64, i64* %PC.i301
  %3606 = add i64 %3605, 5
  store i64 %3606, i64* %PC.i301
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3608 = load i64, i64* %3607, align 8
  %3609 = add i64 %3608, -8
  %3610 = inttoptr i64 %3609 to i64*
  store i64 %3604, i64* %3610
  store i64 %3609, i64* %3607, align 8
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3602, i64* %3611, align 8
  store %struct.Memory* %loadMem1_403e6d, %struct.Memory** %MEMORY
  %loadMem2_403e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403e6d = load i64, i64* %3
  %3612 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403e6d)
  store %struct.Memory* %3612, %struct.Memory** %MEMORY
  %loadMem_403e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 33
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %3615 to i64*
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 1
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %EAX.i297 = bitcast %union.anon* %3618 to i32*
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 15
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %3621 to i64*
  %3622 = load i64, i64* %RBP.i298
  %3623 = sub i64 %3622, 44
  %3624 = load i32, i32* %EAX.i297
  %3625 = zext i32 %3624 to i64
  %3626 = load i64, i64* %PC.i296
  %3627 = add i64 %3626, 3
  store i64 %3627, i64* %PC.i296
  %3628 = inttoptr i64 %3623 to i32*
  store i32 %3624, i32* %3628
  store %struct.Memory* %loadMem_403e72, %struct.Memory** %MEMORY
  %loadMem_403e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 33
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %3631 to i64*
  %3632 = load i64, i64* %PC.i295
  %3633 = add i64 %3632, 37
  %3634 = load i64, i64* %PC.i295
  %3635 = add i64 %3634, 5
  store i64 %3635, i64* %PC.i295
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3633, i64* %3636, align 8
  store %struct.Memory* %loadMem_403e75, %struct.Memory** %MEMORY
  br label %block_.L_403e9a

block_.L_403e7a:                                  ; preds = %block_.L_403ddf
  %loadMem_403e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 33
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %3639 to i64*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 1
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %3642 to i64*
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 15
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %3645 to i64*
  %3646 = load i64, i64* %RBP.i294
  %3647 = sub i64 %3646, 4
  %3648 = load i64, i64* %PC.i292
  %3649 = add i64 %3648, 4
  store i64 %3649, i64* %PC.i292
  %3650 = inttoptr i64 %3647 to i32*
  %3651 = load i32, i32* %3650
  %3652 = sext i32 %3651 to i64
  store i64 %3652, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_403e7a, %struct.Memory** %MEMORY
  %loadMem_403e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 33
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3655 to i64*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 1
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %3658 to i64*
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 5
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %3661 to i64*
  %3662 = load i64, i64* %RAX.i290
  %3663 = mul i64 %3662, 4
  %3664 = add i64 %3663, 4347472
  %3665 = load i64, i64* %PC.i289
  %3666 = add i64 %3665, 7
  store i64 %3666, i64* %PC.i289
  %3667 = inttoptr i64 %3664 to i32*
  %3668 = load i32, i32* %3667
  %3669 = zext i32 %3668 to i64
  store i64 %3669, i64* %RCX.i291, align 8
  store %struct.Memory* %loadMem_403e7e, %struct.Memory** %MEMORY
  %loadMem_403e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 33
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 1
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %3675 to i64*
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 15
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %3678 to i64*
  %3679 = load i64, i64* %RBP.i288
  %3680 = sub i64 %3679, 8
  %3681 = load i64, i64* %PC.i286
  %3682 = add i64 %3681, 4
  store i64 %3682, i64* %PC.i286
  %3683 = inttoptr i64 %3680 to i32*
  %3684 = load i32, i32* %3683
  %3685 = sext i32 %3684 to i64
  store i64 %3685, i64* %RAX.i287, align 8
  store %struct.Memory* %loadMem_403e85, %struct.Memory** %MEMORY
  %loadMem_403e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 33
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %3688 to i64*
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 1
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %3691 to i64*
  %3692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3693 = getelementptr inbounds %struct.GPR, %struct.GPR* %3692, i32 0, i32 5
  %3694 = getelementptr inbounds %struct.Reg, %struct.Reg* %3693, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %3694 to i64*
  %3695 = load i64, i64* %RCX.i285
  %3696 = load i64, i64* %RAX.i284
  %3697 = mul i64 %3696, 4
  %3698 = add i64 %3697, 4347472
  %3699 = load i64, i64* %PC.i283
  %3700 = add i64 %3699, 7
  store i64 %3700, i64* %PC.i283
  %3701 = trunc i64 %3695 to i32
  %3702 = inttoptr i64 %3698 to i32*
  %3703 = load i32, i32* %3702
  %3704 = sub i32 %3701, %3703
  %3705 = zext i32 %3704 to i64
  store i64 %3705, i64* %RCX.i285, align 8
  %3706 = icmp ult i32 %3701, %3703
  %3707 = zext i1 %3706 to i8
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3707, i8* %3708, align 1
  %3709 = and i32 %3704, 255
  %3710 = call i32 @llvm.ctpop.i32(i32 %3709)
  %3711 = trunc i32 %3710 to i8
  %3712 = and i8 %3711, 1
  %3713 = xor i8 %3712, 1
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3713, i8* %3714, align 1
  %3715 = xor i32 %3703, %3701
  %3716 = xor i32 %3715, %3704
  %3717 = lshr i32 %3716, 4
  %3718 = trunc i32 %3717 to i8
  %3719 = and i8 %3718, 1
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3719, i8* %3720, align 1
  %3721 = icmp eq i32 %3704, 0
  %3722 = zext i1 %3721 to i8
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3722, i8* %3723, align 1
  %3724 = lshr i32 %3704, 31
  %3725 = trunc i32 %3724 to i8
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3725, i8* %3726, align 1
  %3727 = lshr i32 %3701, 31
  %3728 = lshr i32 %3703, 31
  %3729 = xor i32 %3728, %3727
  %3730 = xor i32 %3724, %3727
  %3731 = add i32 %3730, %3729
  %3732 = icmp eq i32 %3731, 2
  %3733 = zext i1 %3732 to i8
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3733, i8* %3734, align 1
  store %struct.Memory* %loadMem_403e89, %struct.Memory** %MEMORY
  %loadMem_403e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3736 = getelementptr inbounds %struct.GPR, %struct.GPR* %3735, i32 0, i32 33
  %3737 = getelementptr inbounds %struct.Reg, %struct.Reg* %3736, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %3737 to i64*
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 5
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %ECX.i281 = bitcast %union.anon* %3740 to i32*
  %3741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3742 = getelementptr inbounds %struct.GPR, %struct.GPR* %3741, i32 0, i32 11
  %3743 = getelementptr inbounds %struct.Reg, %struct.Reg* %3742, i32 0, i32 0
  %RDI.i282 = bitcast %union.anon* %3743 to i64*
  %3744 = load i32, i32* %ECX.i281
  %3745 = zext i32 %3744 to i64
  %3746 = load i64, i64* %PC.i280
  %3747 = add i64 %3746, 2
  store i64 %3747, i64* %PC.i280
  %3748 = and i64 %3745, 4294967295
  store i64 %3748, i64* %RDI.i282, align 8
  store %struct.Memory* %loadMem_403e90, %struct.Memory** %MEMORY
  %loadMem1_403e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 33
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %3751 to i64*
  %3752 = load i64, i64* %PC.i279
  %3753 = add i64 %3752, -12818
  %3754 = load i64, i64* %PC.i279
  %3755 = add i64 %3754, 5
  %3756 = load i64, i64* %PC.i279
  %3757 = add i64 %3756, 5
  store i64 %3757, i64* %PC.i279
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3759 = load i64, i64* %3758, align 8
  %3760 = add i64 %3759, -8
  %3761 = inttoptr i64 %3760 to i64*
  store i64 %3755, i64* %3761
  store i64 %3760, i64* %3758, align 8
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3753, i64* %3762, align 8
  store %struct.Memory* %loadMem1_403e92, %struct.Memory** %MEMORY
  %loadMem2_403e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403e92 = load i64, i64* %3
  %3763 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403e92)
  store %struct.Memory* %3763, %struct.Memory** %MEMORY
  %loadMem_403e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 33
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %3766 to i64*
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3768 = getelementptr inbounds %struct.GPR, %struct.GPR* %3767, i32 0, i32 1
  %3769 = getelementptr inbounds %struct.Reg, %struct.Reg* %3768, i32 0, i32 0
  %EAX.i274 = bitcast %union.anon* %3769 to i32*
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3771 = getelementptr inbounds %struct.GPR, %struct.GPR* %3770, i32 0, i32 15
  %3772 = getelementptr inbounds %struct.Reg, %struct.Reg* %3771, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %3772 to i64*
  %3773 = load i64, i64* %RBP.i275
  %3774 = sub i64 %3773, 44
  %3775 = load i32, i32* %EAX.i274
  %3776 = zext i32 %3775 to i64
  %3777 = load i64, i64* %PC.i273
  %3778 = add i64 %3777, 3
  store i64 %3778, i64* %PC.i273
  %3779 = inttoptr i64 %3774 to i32*
  store i32 %3775, i32* %3779
  store %struct.Memory* %loadMem_403e97, %struct.Memory** %MEMORY
  br label %block_.L_403e9a

block_.L_403e9a:                                  ; preds = %block_.L_403e7a, %block_403e55
  %loadMem_403e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 33
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %3782 to i64*
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 1
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %3785 to i64*
  %3786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3787 = getelementptr inbounds %struct.GPR, %struct.GPR* %3786, i32 0, i32 15
  %3788 = getelementptr inbounds %struct.Reg, %struct.Reg* %3787, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %3788 to i64*
  %3789 = load i64, i64* %RBP.i272
  %3790 = sub i64 %3789, 44
  %3791 = load i64, i64* %PC.i270
  %3792 = add i64 %3791, 3
  store i64 %3792, i64* %PC.i270
  %3793 = inttoptr i64 %3790 to i32*
  %3794 = load i32, i32* %3793
  %3795 = zext i32 %3794 to i64
  store i64 %3795, i64* %RAX.i271, align 8
  store %struct.Memory* %loadMem_403e9a, %struct.Memory** %MEMORY
  %loadMem_403e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 33
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %3798 to i64*
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 5
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %3801 to i64*
  %3802 = load i64, i64* %PC.i268
  %3803 = add i64 %3802, 10
  store i64 %3803, i64* %PC.i268
  store i64 ptrtoint (%G__0x8870b0_type* @G__0x8870b0 to i64), i64* %RCX.i269, align 8
  store %struct.Memory* %loadMem_403e9d, %struct.Memory** %MEMORY
  %loadMem_403ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 33
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %3806 to i64*
  %3807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3808 = getelementptr inbounds %struct.GPR, %struct.GPR* %3807, i32 0, i32 1
  %3809 = getelementptr inbounds %struct.Reg, %struct.Reg* %3808, i32 0, i32 0
  %EAX.i266 = bitcast %union.anon* %3809 to i32*
  %3810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3811 = getelementptr inbounds %struct.GPR, %struct.GPR* %3810, i32 0, i32 7
  %3812 = getelementptr inbounds %struct.Reg, %struct.Reg* %3811, i32 0, i32 0
  %RDX.i267 = bitcast %union.anon* %3812 to i64*
  %3813 = load i32, i32* %EAX.i266
  %3814 = zext i32 %3813 to i64
  %3815 = load i64, i64* %PC.i265
  %3816 = add i64 %3815, 3
  store i64 %3816, i64* %PC.i265
  %3817 = shl i64 %3814, 32
  %3818 = ashr exact i64 %3817, 32
  store i64 %3818, i64* %RDX.i267, align 8
  store %struct.Memory* %loadMem_403ea7, %struct.Memory** %MEMORY
  %loadMem_403eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 1
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %3824 to i64*
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 7
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %RDX.i264 = bitcast %union.anon* %3827 to i64*
  %3828 = load i64, i64* %RDX.i264
  %3829 = mul i64 %3828, 4
  %3830 = add i64 %3829, 6472336
  %3831 = load i64, i64* %PC.i262
  %3832 = add i64 %3831, 7
  store i64 %3832, i64* %PC.i262
  %3833 = inttoptr i64 %3830 to i32*
  %3834 = load i32, i32* %3833
  %3835 = zext i32 %3834 to i64
  store i64 %3835, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_403eaa, %struct.Memory** %MEMORY
  %loadMem_403eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 33
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 1
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %3842 = bitcast %union.anon* %3841 to %struct.anon.2*
  %AL.i260 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3842, i32 0, i32 0
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3844 = getelementptr inbounds %struct.GPR, %struct.GPR* %3843, i32 0, i32 9
  %3845 = getelementptr inbounds %struct.Reg, %struct.Reg* %3844, i32 0, i32 0
  %3846 = bitcast %union.anon* %3845 to %struct.anon.2*
  %SIL.i261 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3846, i32 0, i32 0
  %3847 = load i8, i8* %AL.i260
  %3848 = zext i8 %3847 to i64
  %3849 = load i64, i64* %PC.i259
  %3850 = add i64 %3849, 3
  store i64 %3850, i64* %PC.i259
  store i8 %3847, i8* %SIL.i261, align 1
  store %struct.Memory* %loadMem_403eb1, %struct.Memory** %MEMORY
  %loadMem_403eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 33
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 7
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RDX.i257 = bitcast %union.anon* %3856 to i64*
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3858 = getelementptr inbounds %struct.GPR, %struct.GPR* %3857, i32 0, i32 15
  %3859 = getelementptr inbounds %struct.Reg, %struct.Reg* %3858, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %3859 to i64*
  %3860 = load i64, i64* %RBP.i258
  %3861 = sub i64 %3860, 4
  %3862 = load i64, i64* %PC.i256
  %3863 = add i64 %3862, 4
  store i64 %3863, i64* %PC.i256
  %3864 = inttoptr i64 %3861 to i32*
  %3865 = load i32, i32* %3864
  %3866 = sext i32 %3865 to i64
  store i64 %3866, i64* %RDX.i257, align 8
  store %struct.Memory* %loadMem_403eb4, %struct.Memory** %MEMORY
  %loadMem_403eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 33
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %3869 to i64*
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 7
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %RDX.i255 = bitcast %union.anon* %3872 to i64*
  %3873 = load i64, i64* %RDX.i255
  %3874 = load i64, i64* %PC.i254
  %3875 = add i64 %3874, 7
  store i64 %3875, i64* %PC.i254
  %3876 = sext i64 %3873 to i128
  %3877 = and i128 %3876, -18446744073709551616
  %3878 = zext i64 %3873 to i128
  %3879 = or i128 %3877, %3878
  %3880 = mul i128 144, %3879
  %3881 = trunc i128 %3880 to i64
  store i64 %3881, i64* %RDX.i255, align 8
  %3882 = sext i64 %3881 to i128
  %3883 = icmp ne i128 %3882, %3880
  %3884 = zext i1 %3883 to i8
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3884, i8* %3885, align 1
  %3886 = trunc i128 %3880 to i32
  %3887 = and i32 %3886, 255
  %3888 = call i32 @llvm.ctpop.i32(i32 %3887)
  %3889 = trunc i32 %3888 to i8
  %3890 = and i8 %3889, 1
  %3891 = xor i8 %3890, 1
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3891, i8* %3892, align 1
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3893, align 1
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3894, align 1
  %3895 = lshr i64 %3881, 63
  %3896 = trunc i64 %3895 to i8
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3896, i8* %3897, align 1
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3884, i8* %3898, align 1
  store %struct.Memory* %loadMem_403eb8, %struct.Memory** %MEMORY
  %loadMem_403ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 33
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %3901 to i64*
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 5
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %3904 to i64*
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 7
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %RDX.i253 = bitcast %union.anon* %3907 to i64*
  %3908 = load i64, i64* %RCX.i252
  %3909 = load i64, i64* %RDX.i253
  %3910 = load i64, i64* %PC.i251
  %3911 = add i64 %3910, 3
  store i64 %3911, i64* %PC.i251
  %3912 = add i64 %3909, %3908
  store i64 %3912, i64* %RCX.i252, align 8
  %3913 = icmp ult i64 %3912, %3908
  %3914 = icmp ult i64 %3912, %3909
  %3915 = or i1 %3913, %3914
  %3916 = zext i1 %3915 to i8
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3916, i8* %3917, align 1
  %3918 = trunc i64 %3912 to i32
  %3919 = and i32 %3918, 255
  %3920 = call i32 @llvm.ctpop.i32(i32 %3919)
  %3921 = trunc i32 %3920 to i8
  %3922 = and i8 %3921, 1
  %3923 = xor i8 %3922, 1
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3923, i8* %3924, align 1
  %3925 = xor i64 %3909, %3908
  %3926 = xor i64 %3925, %3912
  %3927 = lshr i64 %3926, 4
  %3928 = trunc i64 %3927 to i8
  %3929 = and i8 %3928, 1
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3929, i8* %3930, align 1
  %3931 = icmp eq i64 %3912, 0
  %3932 = zext i1 %3931 to i8
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3932, i8* %3933, align 1
  %3934 = lshr i64 %3912, 63
  %3935 = trunc i64 %3934 to i8
  %3936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3935, i8* %3936, align 1
  %3937 = lshr i64 %3908, 63
  %3938 = lshr i64 %3909, 63
  %3939 = xor i64 %3934, %3937
  %3940 = xor i64 %3934, %3938
  %3941 = add i64 %3939, %3940
  %3942 = icmp eq i64 %3941, 2
  %3943 = zext i1 %3942 to i8
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3943, i8* %3944, align 1
  store %struct.Memory* %loadMem_403ebf, %struct.Memory** %MEMORY
  %loadMem_403ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 33
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %3947 to i64*
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 7
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %RDX.i249 = bitcast %union.anon* %3950 to i64*
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 15
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %3953 to i64*
  %3954 = load i64, i64* %RBP.i250
  %3955 = sub i64 %3954, 8
  %3956 = load i64, i64* %PC.i248
  %3957 = add i64 %3956, 4
  store i64 %3957, i64* %PC.i248
  %3958 = inttoptr i64 %3955 to i32*
  %3959 = load i32, i32* %3958
  %3960 = sext i32 %3959 to i64
  store i64 %3960, i64* %RDX.i249, align 8
  store %struct.Memory* %loadMem_403ec2, %struct.Memory** %MEMORY
  %loadMem_403ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 33
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %3963 to i64*
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 9
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %3967 = bitcast %union.anon* %3966 to %struct.anon.2*
  %SIL.i245 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3967, i32 0, i32 0
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 5
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %3970 to i64*
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3972 = getelementptr inbounds %struct.GPR, %struct.GPR* %3971, i32 0, i32 7
  %3973 = getelementptr inbounds %struct.Reg, %struct.Reg* %3972, i32 0, i32 0
  %RDX.i247 = bitcast %union.anon* %3973 to i64*
  %3974 = load i64, i64* %RCX.i246
  %3975 = load i64, i64* %RDX.i247
  %3976 = add i64 %3975, %3974
  %3977 = load i8, i8* %SIL.i245
  %3978 = zext i8 %3977 to i64
  %3979 = load i64, i64* %PC.i244
  %3980 = add i64 %3979, 4
  store i64 %3980, i64* %PC.i244
  %3981 = inttoptr i64 %3976 to i8*
  store i8 %3977, i8* %3981
  store %struct.Memory* %loadMem_403ec6, %struct.Memory** %MEMORY
  %loadMem_403eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 33
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %3984 to i64*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 5
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %3987 to i64*
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 15
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %3990 to i64*
  %3991 = load i64, i64* %RBP.i243
  %3992 = sub i64 %3991, 4
  %3993 = load i64, i64* %PC.i241
  %3994 = add i64 %3993, 4
  store i64 %3994, i64* %PC.i241
  %3995 = inttoptr i64 %3992 to i32*
  %3996 = load i32, i32* %3995
  %3997 = sext i32 %3996 to i64
  store i64 %3997, i64* %RCX.i242, align 8
  store %struct.Memory* %loadMem_403eca, %struct.Memory** %MEMORY
  %loadMem_403ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3999 = getelementptr inbounds %struct.GPR, %struct.GPR* %3998, i32 0, i32 33
  %4000 = getelementptr inbounds %struct.Reg, %struct.Reg* %3999, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4000 to i64*
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4002 = getelementptr inbounds %struct.GPR, %struct.GPR* %4001, i32 0, i32 1
  %4003 = getelementptr inbounds %struct.Reg, %struct.Reg* %4002, i32 0, i32 0
  %RAX.i239 = bitcast %union.anon* %4003 to i64*
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 5
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %RCX.i240 = bitcast %union.anon* %4006 to i64*
  %4007 = load i64, i64* %RCX.i240
  %4008 = mul i64 %4007, 4
  %4009 = add i64 %4008, 4348048
  %4010 = load i64, i64* %PC.i238
  %4011 = add i64 %4010, 7
  store i64 %4011, i64* %PC.i238
  %4012 = inttoptr i64 %4009 to i32*
  %4013 = load i32, i32* %4012
  %4014 = zext i32 %4013 to i64
  store i64 %4014, i64* %RAX.i239, align 8
  store %struct.Memory* %loadMem_403ece, %struct.Memory** %MEMORY
  %loadMem_403ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4016 = getelementptr inbounds %struct.GPR, %struct.GPR* %4015, i32 0, i32 33
  %4017 = getelementptr inbounds %struct.Reg, %struct.Reg* %4016, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4017 to i64*
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 5
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 15
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %4023 to i64*
  %4024 = load i64, i64* %RBP.i237
  %4025 = sub i64 %4024, 8
  %4026 = load i64, i64* %PC.i235
  %4027 = add i64 %4026, 4
  store i64 %4027, i64* %PC.i235
  %4028 = inttoptr i64 %4025 to i32*
  %4029 = load i32, i32* %4028
  %4030 = sext i32 %4029 to i64
  store i64 %4030, i64* %RCX.i236, align 8
  store %struct.Memory* %loadMem_403ed5, %struct.Memory** %MEMORY
  %loadMem_403ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4032 = getelementptr inbounds %struct.GPR, %struct.GPR* %4031, i32 0, i32 33
  %4033 = getelementptr inbounds %struct.Reg, %struct.Reg* %4032, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %4033 to i64*
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 1
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %4036 to i64*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 5
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %RCX.i234 = bitcast %union.anon* %4039 to i64*
  %4040 = load i64, i64* %RAX.i233
  %4041 = load i64, i64* %RCX.i234
  %4042 = mul i64 %4041, 4
  %4043 = add i64 %4042, 4348048
  %4044 = load i64, i64* %PC.i232
  %4045 = add i64 %4044, 7
  store i64 %4045, i64* %PC.i232
  %4046 = trunc i64 %4040 to i32
  %4047 = inttoptr i64 %4043 to i32*
  %4048 = load i32, i32* %4047
  %4049 = sub i32 %4046, %4048
  %4050 = zext i32 %4049 to i64
  store i64 %4050, i64* %RAX.i233, align 8
  %4051 = icmp ult i32 %4046, %4048
  %4052 = zext i1 %4051 to i8
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4052, i8* %4053, align 1
  %4054 = and i32 %4049, 255
  %4055 = call i32 @llvm.ctpop.i32(i32 %4054)
  %4056 = trunc i32 %4055 to i8
  %4057 = and i8 %4056, 1
  %4058 = xor i8 %4057, 1
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4058, i8* %4059, align 1
  %4060 = xor i32 %4048, %4046
  %4061 = xor i32 %4060, %4049
  %4062 = lshr i32 %4061, 4
  %4063 = trunc i32 %4062 to i8
  %4064 = and i8 %4063, 1
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4064, i8* %4065, align 1
  %4066 = icmp eq i32 %4049, 0
  %4067 = zext i1 %4066 to i8
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4067, i8* %4068, align 1
  %4069 = lshr i32 %4049, 31
  %4070 = trunc i32 %4069 to i8
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4070, i8* %4071, align 1
  %4072 = lshr i32 %4046, 31
  %4073 = lshr i32 %4048, 31
  %4074 = xor i32 %4073, %4072
  %4075 = xor i32 %4069, %4072
  %4076 = add i32 %4075, %4074
  %4077 = icmp eq i32 %4076, 2
  %4078 = zext i1 %4077 to i8
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4078, i8* %4079, align 1
  store %struct.Memory* %loadMem_403ed9, %struct.Memory** %MEMORY
  %loadMem_403ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 33
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %4082 to i64*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 1
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %EAX.i230 = bitcast %union.anon* %4085 to i32*
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4087 = getelementptr inbounds %struct.GPR, %struct.GPR* %4086, i32 0, i32 11
  %4088 = getelementptr inbounds %struct.Reg, %struct.Reg* %4087, i32 0, i32 0
  %RDI.i231 = bitcast %union.anon* %4088 to i64*
  %4089 = load i32, i32* %EAX.i230
  %4090 = zext i32 %4089 to i64
  %4091 = load i64, i64* %PC.i229
  %4092 = add i64 %4091, 2
  store i64 %4092, i64* %PC.i229
  %4093 = and i64 %4090, 4294967295
  store i64 %4093, i64* %RDI.i231, align 8
  store %struct.Memory* %loadMem_403ee0, %struct.Memory** %MEMORY
  %loadMem1_403ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4095 = getelementptr inbounds %struct.GPR, %struct.GPR* %4094, i32 0, i32 33
  %4096 = getelementptr inbounds %struct.Reg, %struct.Reg* %4095, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %4096 to i64*
  %4097 = load i64, i64* %PC.i228
  %4098 = add i64 %4097, -12898
  %4099 = load i64, i64* %PC.i228
  %4100 = add i64 %4099, 5
  %4101 = load i64, i64* %PC.i228
  %4102 = add i64 %4101, 5
  store i64 %4102, i64* %PC.i228
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4104 = load i64, i64* %4103, align 8
  %4105 = add i64 %4104, -8
  %4106 = inttoptr i64 %4105 to i64*
  store i64 %4100, i64* %4106
  store i64 %4105, i64* %4103, align 8
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4098, i64* %4107, align 8
  store %struct.Memory* %loadMem1_403ee2, %struct.Memory** %MEMORY
  %loadMem2_403ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403ee2 = load i64, i64* %3
  %4108 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403ee2)
  store %struct.Memory* %4108, %struct.Memory** %MEMORY
  %loadMem_403ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 33
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %4111 to i64*
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 5
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 15
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %4117 to i64*
  %4118 = load i64, i64* %RBP.i226
  %4119 = sub i64 %4118, 4
  %4120 = load i64, i64* %PC.i224
  %4121 = add i64 %4120, 4
  store i64 %4121, i64* %PC.i224
  %4122 = inttoptr i64 %4119 to i32*
  %4123 = load i32, i32* %4122
  %4124 = sext i32 %4123 to i64
  store i64 %4124, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_403ee7, %struct.Memory** %MEMORY
  %loadMem_403eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 33
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %4127 to i64*
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 5
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %4130 to i64*
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 11
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %RDI.i223 = bitcast %union.anon* %4133 to i64*
  %4134 = load i64, i64* %RCX.i222
  %4135 = mul i64 %4134, 4
  %4136 = add i64 %4135, 4347472
  %4137 = load i64, i64* %PC.i221
  %4138 = add i64 %4137, 7
  store i64 %4138, i64* %PC.i221
  %4139 = inttoptr i64 %4136 to i32*
  %4140 = load i32, i32* %4139
  %4141 = zext i32 %4140 to i64
  store i64 %4141, i64* %RDI.i223, align 8
  store %struct.Memory* %loadMem_403eeb, %struct.Memory** %MEMORY
  %loadMem_403ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 33
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %4144 to i64*
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4146 = getelementptr inbounds %struct.GPR, %struct.GPR* %4145, i32 0, i32 5
  %4147 = getelementptr inbounds %struct.Reg, %struct.Reg* %4146, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %4147 to i64*
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 15
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %4150 to i64*
  %4151 = load i64, i64* %RBP.i220
  %4152 = sub i64 %4151, 8
  %4153 = load i64, i64* %PC.i218
  %4154 = add i64 %4153, 4
  store i64 %4154, i64* %PC.i218
  %4155 = inttoptr i64 %4152 to i32*
  %4156 = load i32, i32* %4155
  %4157 = sext i32 %4156 to i64
  store i64 %4157, i64* %RCX.i219, align 8
  store %struct.Memory* %loadMem_403ef2, %struct.Memory** %MEMORY
  %loadMem_403ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 33
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4160 to i64*
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4162 = getelementptr inbounds %struct.GPR, %struct.GPR* %4161, i32 0, i32 5
  %4163 = getelementptr inbounds %struct.Reg, %struct.Reg* %4162, i32 0, i32 0
  %RCX.i216 = bitcast %union.anon* %4163 to i64*
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 11
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %RDI.i217 = bitcast %union.anon* %4166 to i64*
  %4167 = load i64, i64* %RDI.i217
  %4168 = load i64, i64* %RCX.i216
  %4169 = mul i64 %4168, 4
  %4170 = add i64 %4169, 4347472
  %4171 = load i64, i64* %PC.i215
  %4172 = add i64 %4171, 7
  store i64 %4172, i64* %PC.i215
  %4173 = trunc i64 %4167 to i32
  %4174 = inttoptr i64 %4170 to i32*
  %4175 = load i32, i32* %4174
  %4176 = sub i32 %4173, %4175
  %4177 = zext i32 %4176 to i64
  store i64 %4177, i64* %RDI.i217, align 8
  %4178 = icmp ult i32 %4173, %4175
  %4179 = zext i1 %4178 to i8
  %4180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4179, i8* %4180, align 1
  %4181 = and i32 %4176, 255
  %4182 = call i32 @llvm.ctpop.i32(i32 %4181)
  %4183 = trunc i32 %4182 to i8
  %4184 = and i8 %4183, 1
  %4185 = xor i8 %4184, 1
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4185, i8* %4186, align 1
  %4187 = xor i32 %4175, %4173
  %4188 = xor i32 %4187, %4176
  %4189 = lshr i32 %4188, 4
  %4190 = trunc i32 %4189 to i8
  %4191 = and i8 %4190, 1
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4191, i8* %4192, align 1
  %4193 = icmp eq i32 %4176, 0
  %4194 = zext i1 %4193 to i8
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4194, i8* %4195, align 1
  %4196 = lshr i32 %4176, 31
  %4197 = trunc i32 %4196 to i8
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4197, i8* %4198, align 1
  %4199 = lshr i32 %4173, 31
  %4200 = lshr i32 %4175, 31
  %4201 = xor i32 %4200, %4199
  %4202 = xor i32 %4196, %4199
  %4203 = add i32 %4202, %4201
  %4204 = icmp eq i32 %4203, 2
  %4205 = zext i1 %4204 to i8
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4205, i8* %4206, align 1
  store %struct.Memory* %loadMem_403ef6, %struct.Memory** %MEMORY
  %loadMem_403efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 33
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %4209 to i64*
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4211 = getelementptr inbounds %struct.GPR, %struct.GPR* %4210, i32 0, i32 1
  %4212 = getelementptr inbounds %struct.Reg, %struct.Reg* %4211, i32 0, i32 0
  %EAX.i213 = bitcast %union.anon* %4212 to i32*
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 15
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %4215 to i64*
  %4216 = load i64, i64* %RBP.i214
  %4217 = sub i64 %4216, 48
  %4218 = load i32, i32* %EAX.i213
  %4219 = zext i32 %4218 to i64
  %4220 = load i64, i64* %PC.i212
  %4221 = add i64 %4220, 3
  store i64 %4221, i64* %PC.i212
  %4222 = inttoptr i64 %4217 to i32*
  store i32 %4218, i32* %4222
  store %struct.Memory* %loadMem_403efd, %struct.Memory** %MEMORY
  %loadMem1_403f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 33
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %4225 to i64*
  %4226 = load i64, i64* %PC.i211
  %4227 = add i64 %4226, -12928
  %4228 = load i64, i64* %PC.i211
  %4229 = add i64 %4228, 5
  %4230 = load i64, i64* %PC.i211
  %4231 = add i64 %4230, 5
  store i64 %4231, i64* %PC.i211
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4233 = load i64, i64* %4232, align 8
  %4234 = add i64 %4233, -8
  %4235 = inttoptr i64 %4234 to i64*
  store i64 %4229, i64* %4235
  store i64 %4234, i64* %4232, align 8
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4227, i64* %4236, align 8
  store %struct.Memory* %loadMem1_403f00, %struct.Memory** %MEMORY
  %loadMem2_403f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403f00 = load i64, i64* %3
  %4237 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403f00)
  store %struct.Memory* %4237, %struct.Memory** %MEMORY
  %loadMem_403f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 33
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %4240 to i64*
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 11
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %RDI.i207 = bitcast %union.anon* %4243 to i64*
  %4244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4245 = getelementptr inbounds %struct.GPR, %struct.GPR* %4244, i32 0, i32 15
  %4246 = getelementptr inbounds %struct.Reg, %struct.Reg* %4245, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %4246 to i64*
  %4247 = load i64, i64* %RBP.i208
  %4248 = sub i64 %4247, 48
  %4249 = load i64, i64* %PC.i206
  %4250 = add i64 %4249, 3
  store i64 %4250, i64* %PC.i206
  %4251 = inttoptr i64 %4248 to i32*
  %4252 = load i32, i32* %4251
  %4253 = zext i32 %4252 to i64
  store i64 %4253, i64* %RDI.i207, align 8
  store %struct.Memory* %loadMem_403f05, %struct.Memory** %MEMORY
  %loadMem_403f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 33
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 1
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %EAX.i204 = bitcast %union.anon* %4259 to i32*
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 11
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %EDI.i205 = bitcast %union.anon* %4262 to i32*
  %4263 = load i32, i32* %EDI.i205
  %4264 = zext i32 %4263 to i64
  %4265 = load i32, i32* %EAX.i204
  %4266 = zext i32 %4265 to i64
  %4267 = load i64, i64* %PC.i203
  %4268 = add i64 %4267, 2
  store i64 %4268, i64* %PC.i203
  %4269 = sub i32 %4263, %4265
  %4270 = icmp ult i32 %4263, %4265
  %4271 = zext i1 %4270 to i8
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4271, i8* %4272, align 1
  %4273 = and i32 %4269, 255
  %4274 = call i32 @llvm.ctpop.i32(i32 %4273)
  %4275 = trunc i32 %4274 to i8
  %4276 = and i8 %4275, 1
  %4277 = xor i8 %4276, 1
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4277, i8* %4278, align 1
  %4279 = xor i64 %4266, %4264
  %4280 = trunc i64 %4279 to i32
  %4281 = xor i32 %4280, %4269
  %4282 = lshr i32 %4281, 4
  %4283 = trunc i32 %4282 to i8
  %4284 = and i8 %4283, 1
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4284, i8* %4285, align 1
  %4286 = icmp eq i32 %4269, 0
  %4287 = zext i1 %4286 to i8
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4287, i8* %4288, align 1
  %4289 = lshr i32 %4269, 31
  %4290 = trunc i32 %4289 to i8
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4290, i8* %4291, align 1
  %4292 = lshr i32 %4263, 31
  %4293 = lshr i32 %4265, 31
  %4294 = xor i32 %4293, %4292
  %4295 = xor i32 %4289, %4292
  %4296 = add i32 %4295, %4294
  %4297 = icmp eq i32 %4296, 2
  %4298 = zext i1 %4297 to i8
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4298, i8* %4299, align 1
  store %struct.Memory* %loadMem_403f08, %struct.Memory** %MEMORY
  %loadMem_403f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 33
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %4302 to i64*
  %4303 = load i64, i64* %PC.i202
  %4304 = add i64 %4303, 43
  %4305 = load i64, i64* %PC.i202
  %4306 = add i64 %4305, 6
  %4307 = load i64, i64* %PC.i202
  %4308 = add i64 %4307, 6
  store i64 %4308, i64* %PC.i202
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4310 = load i8, i8* %4309, align 1
  %4311 = icmp ne i8 %4310, 0
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4313 = load i8, i8* %4312, align 1
  %4314 = icmp ne i8 %4313, 0
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4316 = load i8, i8* %4315, align 1
  %4317 = icmp ne i8 %4316, 0
  %4318 = xor i1 %4314, %4317
  %4319 = or i1 %4311, %4318
  %4320 = zext i1 %4319 to i8
  store i8 %4320, i8* %BRANCH_TAKEN, align 1
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4322 = select i1 %4319, i64 %4304, i64 %4306
  store i64 %4322, i64* %4321, align 8
  store %struct.Memory* %loadMem_403f0a, %struct.Memory** %MEMORY
  %loadBr_403f0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403f0a = icmp eq i8 %loadBr_403f0a, 1
  br i1 %cmpBr_403f0a, label %block_.L_403f35, label %block_403f10

block_403f10:                                     ; preds = %block_.L_403e9a
  %loadMem_403f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 33
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %4325 to i64*
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4327 = getelementptr inbounds %struct.GPR, %struct.GPR* %4326, i32 0, i32 1
  %4328 = getelementptr inbounds %struct.Reg, %struct.Reg* %4327, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %4328 to i64*
  %4329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4330 = getelementptr inbounds %struct.GPR, %struct.GPR* %4329, i32 0, i32 15
  %4331 = getelementptr inbounds %struct.Reg, %struct.Reg* %4330, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %4331 to i64*
  %4332 = load i64, i64* %RBP.i201
  %4333 = sub i64 %4332, 4
  %4334 = load i64, i64* %PC.i199
  %4335 = add i64 %4334, 4
  store i64 %4335, i64* %PC.i199
  %4336 = inttoptr i64 %4333 to i32*
  %4337 = load i32, i32* %4336
  %4338 = sext i32 %4337 to i64
  store i64 %4338, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_403f10, %struct.Memory** %MEMORY
  %loadMem_403f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 33
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %4341 to i64*
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 1
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %4344 to i64*
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 5
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %4347 to i64*
  %4348 = load i64, i64* %RAX.i197
  %4349 = mul i64 %4348, 4
  %4350 = add i64 %4349, 4348048
  %4351 = load i64, i64* %PC.i196
  %4352 = add i64 %4351, 7
  store i64 %4352, i64* %PC.i196
  %4353 = inttoptr i64 %4350 to i32*
  %4354 = load i32, i32* %4353
  %4355 = zext i32 %4354 to i64
  store i64 %4355, i64* %RCX.i198, align 8
  store %struct.Memory* %loadMem_403f14, %struct.Memory** %MEMORY
  %loadMem_403f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 33
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %4358 to i64*
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 1
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 15
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %4364 to i64*
  %4365 = load i64, i64* %RBP.i195
  %4366 = sub i64 %4365, 8
  %4367 = load i64, i64* %PC.i193
  %4368 = add i64 %4367, 4
  store i64 %4368, i64* %PC.i193
  %4369 = inttoptr i64 %4366 to i32*
  %4370 = load i32, i32* %4369
  %4371 = sext i32 %4370 to i64
  store i64 %4371, i64* %RAX.i194, align 8
  store %struct.Memory* %loadMem_403f1b, %struct.Memory** %MEMORY
  %loadMem_403f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 33
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %4374 to i64*
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 1
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %4377 to i64*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 5
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %4380 to i64*
  %4381 = load i64, i64* %RCX.i192
  %4382 = load i64, i64* %RAX.i191
  %4383 = mul i64 %4382, 4
  %4384 = add i64 %4383, 4348048
  %4385 = load i64, i64* %PC.i190
  %4386 = add i64 %4385, 7
  store i64 %4386, i64* %PC.i190
  %4387 = trunc i64 %4381 to i32
  %4388 = inttoptr i64 %4384 to i32*
  %4389 = load i32, i32* %4388
  %4390 = sub i32 %4387, %4389
  %4391 = zext i32 %4390 to i64
  store i64 %4391, i64* %RCX.i192, align 8
  %4392 = icmp ult i32 %4387, %4389
  %4393 = zext i1 %4392 to i8
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4393, i8* %4394, align 1
  %4395 = and i32 %4390, 255
  %4396 = call i32 @llvm.ctpop.i32(i32 %4395)
  %4397 = trunc i32 %4396 to i8
  %4398 = and i8 %4397, 1
  %4399 = xor i8 %4398, 1
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4399, i8* %4400, align 1
  %4401 = xor i32 %4389, %4387
  %4402 = xor i32 %4401, %4390
  %4403 = lshr i32 %4402, 4
  %4404 = trunc i32 %4403 to i8
  %4405 = and i8 %4404, 1
  %4406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4405, i8* %4406, align 1
  %4407 = icmp eq i32 %4390, 0
  %4408 = zext i1 %4407 to i8
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4408, i8* %4409, align 1
  %4410 = lshr i32 %4390, 31
  %4411 = trunc i32 %4410 to i8
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4411, i8* %4412, align 1
  %4413 = lshr i32 %4387, 31
  %4414 = lshr i32 %4389, 31
  %4415 = xor i32 %4414, %4413
  %4416 = xor i32 %4410, %4413
  %4417 = add i32 %4416, %4415
  %4418 = icmp eq i32 %4417, 2
  %4419 = zext i1 %4418 to i8
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4419, i8* %4420, align 1
  store %struct.Memory* %loadMem_403f1f, %struct.Memory** %MEMORY
  %loadMem_403f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 33
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %4423 to i64*
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 5
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %ECX.i188 = bitcast %union.anon* %4426 to i32*
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 11
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %RDI.i189 = bitcast %union.anon* %4429 to i64*
  %4430 = load i32, i32* %ECX.i188
  %4431 = zext i32 %4430 to i64
  %4432 = load i64, i64* %PC.i187
  %4433 = add i64 %4432, 2
  store i64 %4433, i64* %PC.i187
  %4434 = and i64 %4431, 4294967295
  store i64 %4434, i64* %RDI.i189, align 8
  store %struct.Memory* %loadMem_403f26, %struct.Memory** %MEMORY
  %loadMem1_403f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4436 = getelementptr inbounds %struct.GPR, %struct.GPR* %4435, i32 0, i32 33
  %4437 = getelementptr inbounds %struct.Reg, %struct.Reg* %4436, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %4437 to i64*
  %4438 = load i64, i64* %PC.i186
  %4439 = add i64 %4438, -12968
  %4440 = load i64, i64* %PC.i186
  %4441 = add i64 %4440, 5
  %4442 = load i64, i64* %PC.i186
  %4443 = add i64 %4442, 5
  store i64 %4443, i64* %PC.i186
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4445 = load i64, i64* %4444, align 8
  %4446 = add i64 %4445, -8
  %4447 = inttoptr i64 %4446 to i64*
  store i64 %4441, i64* %4447
  store i64 %4446, i64* %4444, align 8
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4439, i64* %4448, align 8
  store %struct.Memory* %loadMem1_403f28, %struct.Memory** %MEMORY
  %loadMem2_403f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403f28 = load i64, i64* %3
  %4449 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403f28)
  store %struct.Memory* %4449, %struct.Memory** %MEMORY
  %loadMem_403f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 33
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 1
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %EAX.i182 = bitcast %union.anon* %4455 to i32*
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4457 = getelementptr inbounds %struct.GPR, %struct.GPR* %4456, i32 0, i32 15
  %4458 = getelementptr inbounds %struct.Reg, %struct.Reg* %4457, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %4458 to i64*
  %4459 = load i64, i64* %RBP.i183
  %4460 = sub i64 %4459, 52
  %4461 = load i32, i32* %EAX.i182
  %4462 = zext i32 %4461 to i64
  %4463 = load i64, i64* %PC.i181
  %4464 = add i64 %4463, 3
  store i64 %4464, i64* %PC.i181
  %4465 = inttoptr i64 %4460 to i32*
  store i32 %4461, i32* %4465
  store %struct.Memory* %loadMem_403f2d, %struct.Memory** %MEMORY
  %loadMem_403f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4467 = getelementptr inbounds %struct.GPR, %struct.GPR* %4466, i32 0, i32 33
  %4468 = getelementptr inbounds %struct.Reg, %struct.Reg* %4467, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %4468 to i64*
  %4469 = load i64, i64* %PC.i180
  %4470 = add i64 %4469, 37
  %4471 = load i64, i64* %PC.i180
  %4472 = add i64 %4471, 5
  store i64 %4472, i64* %PC.i180
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4470, i64* %4473, align 8
  store %struct.Memory* %loadMem_403f30, %struct.Memory** %MEMORY
  br label %block_.L_403f55

block_.L_403f35:                                  ; preds = %block_.L_403e9a
  %loadMem_403f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 33
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 1
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %4479 to i64*
  %4480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4481 = getelementptr inbounds %struct.GPR, %struct.GPR* %4480, i32 0, i32 15
  %4482 = getelementptr inbounds %struct.Reg, %struct.Reg* %4481, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %4482 to i64*
  %4483 = load i64, i64* %RBP.i179
  %4484 = sub i64 %4483, 4
  %4485 = load i64, i64* %PC.i177
  %4486 = add i64 %4485, 4
  store i64 %4486, i64* %PC.i177
  %4487 = inttoptr i64 %4484 to i32*
  %4488 = load i32, i32* %4487
  %4489 = sext i32 %4488 to i64
  store i64 %4489, i64* %RAX.i178, align 8
  store %struct.Memory* %loadMem_403f35, %struct.Memory** %MEMORY
  %loadMem_403f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 33
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %4492 to i64*
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 1
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %4495 to i64*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 5
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %4498 to i64*
  %4499 = load i64, i64* %RAX.i175
  %4500 = mul i64 %4499, 4
  %4501 = add i64 %4500, 4347472
  %4502 = load i64, i64* %PC.i174
  %4503 = add i64 %4502, 7
  store i64 %4503, i64* %PC.i174
  %4504 = inttoptr i64 %4501 to i32*
  %4505 = load i32, i32* %4504
  %4506 = zext i32 %4505 to i64
  store i64 %4506, i64* %RCX.i176, align 8
  store %struct.Memory* %loadMem_403f39, %struct.Memory** %MEMORY
  %loadMem_403f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 33
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4509 to i64*
  %4510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4511 = getelementptr inbounds %struct.GPR, %struct.GPR* %4510, i32 0, i32 1
  %4512 = getelementptr inbounds %struct.Reg, %struct.Reg* %4511, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %4512 to i64*
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 15
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %4515 to i64*
  %4516 = load i64, i64* %RBP.i173
  %4517 = sub i64 %4516, 8
  %4518 = load i64, i64* %PC.i171
  %4519 = add i64 %4518, 4
  store i64 %4519, i64* %PC.i171
  %4520 = inttoptr i64 %4517 to i32*
  %4521 = load i32, i32* %4520
  %4522 = sext i32 %4521 to i64
  store i64 %4522, i64* %RAX.i172, align 8
  store %struct.Memory* %loadMem_403f40, %struct.Memory** %MEMORY
  %loadMem_403f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 33
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4525 to i64*
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4527 = getelementptr inbounds %struct.GPR, %struct.GPR* %4526, i32 0, i32 1
  %4528 = getelementptr inbounds %struct.Reg, %struct.Reg* %4527, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %4528 to i64*
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4530 = getelementptr inbounds %struct.GPR, %struct.GPR* %4529, i32 0, i32 5
  %4531 = getelementptr inbounds %struct.Reg, %struct.Reg* %4530, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %4531 to i64*
  %4532 = load i64, i64* %RCX.i170
  %4533 = load i64, i64* %RAX.i169
  %4534 = mul i64 %4533, 4
  %4535 = add i64 %4534, 4347472
  %4536 = load i64, i64* %PC.i168
  %4537 = add i64 %4536, 7
  store i64 %4537, i64* %PC.i168
  %4538 = trunc i64 %4532 to i32
  %4539 = inttoptr i64 %4535 to i32*
  %4540 = load i32, i32* %4539
  %4541 = sub i32 %4538, %4540
  %4542 = zext i32 %4541 to i64
  store i64 %4542, i64* %RCX.i170, align 8
  %4543 = icmp ult i32 %4538, %4540
  %4544 = zext i1 %4543 to i8
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4544, i8* %4545, align 1
  %4546 = and i32 %4541, 255
  %4547 = call i32 @llvm.ctpop.i32(i32 %4546)
  %4548 = trunc i32 %4547 to i8
  %4549 = and i8 %4548, 1
  %4550 = xor i8 %4549, 1
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4550, i8* %4551, align 1
  %4552 = xor i32 %4540, %4538
  %4553 = xor i32 %4552, %4541
  %4554 = lshr i32 %4553, 4
  %4555 = trunc i32 %4554 to i8
  %4556 = and i8 %4555, 1
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4556, i8* %4557, align 1
  %4558 = icmp eq i32 %4541, 0
  %4559 = zext i1 %4558 to i8
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4559, i8* %4560, align 1
  %4561 = lshr i32 %4541, 31
  %4562 = trunc i32 %4561 to i8
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4562, i8* %4563, align 1
  %4564 = lshr i32 %4538, 31
  %4565 = lshr i32 %4540, 31
  %4566 = xor i32 %4565, %4564
  %4567 = xor i32 %4561, %4564
  %4568 = add i32 %4567, %4566
  %4569 = icmp eq i32 %4568, 2
  %4570 = zext i1 %4569 to i8
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4570, i8* %4571, align 1
  store %struct.Memory* %loadMem_403f44, %struct.Memory** %MEMORY
  %loadMem_403f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 33
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %4574 to i64*
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 5
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %ECX.i166 = bitcast %union.anon* %4577 to i32*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 11
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %RDI.i167 = bitcast %union.anon* %4580 to i64*
  %4581 = load i32, i32* %ECX.i166
  %4582 = zext i32 %4581 to i64
  %4583 = load i64, i64* %PC.i165
  %4584 = add i64 %4583, 2
  store i64 %4584, i64* %PC.i165
  %4585 = and i64 %4582, 4294967295
  store i64 %4585, i64* %RDI.i167, align 8
  store %struct.Memory* %loadMem_403f4b, %struct.Memory** %MEMORY
  %loadMem1_403f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4587 = getelementptr inbounds %struct.GPR, %struct.GPR* %4586, i32 0, i32 33
  %4588 = getelementptr inbounds %struct.Reg, %struct.Reg* %4587, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %4588 to i64*
  %4589 = load i64, i64* %PC.i164
  %4590 = add i64 %4589, -13005
  %4591 = load i64, i64* %PC.i164
  %4592 = add i64 %4591, 5
  %4593 = load i64, i64* %PC.i164
  %4594 = add i64 %4593, 5
  store i64 %4594, i64* %PC.i164
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4596 = load i64, i64* %4595, align 8
  %4597 = add i64 %4596, -8
  %4598 = inttoptr i64 %4597 to i64*
  store i64 %4592, i64* %4598
  store i64 %4597, i64* %4595, align 8
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4590, i64* %4599, align 8
  store %struct.Memory* %loadMem1_403f4d, %struct.Memory** %MEMORY
  %loadMem2_403f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403f4d = load i64, i64* %3
  %4600 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403f4d)
  store %struct.Memory* %4600, %struct.Memory** %MEMORY
  %loadMem_403f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4602 = getelementptr inbounds %struct.GPR, %struct.GPR* %4601, i32 0, i32 33
  %4603 = getelementptr inbounds %struct.Reg, %struct.Reg* %4602, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %4603 to i64*
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 1
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %EAX.i161 = bitcast %union.anon* %4606 to i32*
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 15
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %4609 to i64*
  %4610 = load i64, i64* %RBP.i162
  %4611 = sub i64 %4610, 52
  %4612 = load i32, i32* %EAX.i161
  %4613 = zext i32 %4612 to i64
  %4614 = load i64, i64* %PC.i160
  %4615 = add i64 %4614, 3
  store i64 %4615, i64* %PC.i160
  %4616 = inttoptr i64 %4611 to i32*
  store i32 %4612, i32* %4616
  store %struct.Memory* %loadMem_403f52, %struct.Memory** %MEMORY
  br label %block_.L_403f55

block_.L_403f55:                                  ; preds = %block_.L_403f35, %block_403f10
  %loadMem_403f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 33
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4619 to i64*
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 1
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 15
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %4625 to i64*
  %4626 = load i64, i64* %RBP.i159
  %4627 = sub i64 %4626, 52
  %4628 = load i64, i64* %PC.i157
  %4629 = add i64 %4628, 3
  store i64 %4629, i64* %PC.i157
  %4630 = inttoptr i64 %4627 to i32*
  %4631 = load i32, i32* %4630
  %4632 = zext i32 %4631 to i64
  store i64 %4632, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_403f55, %struct.Memory** %MEMORY
  %loadMem_403f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 33
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %4635 to i64*
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 5
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %4638 to i64*
  %4639 = load i64, i64* %PC.i155
  %4640 = add i64 %4639, 10
  store i64 %4640, i64* %PC.i155
  store i64 ptrtoint (%G__0x633b60_type* @G__0x633b60 to i64), i64* %RCX.i156, align 8
  store %struct.Memory* %loadMem_403f58, %struct.Memory** %MEMORY
  %loadMem_403f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4642 = getelementptr inbounds %struct.GPR, %struct.GPR* %4641, i32 0, i32 33
  %4643 = getelementptr inbounds %struct.Reg, %struct.Reg* %4642, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4643 to i64*
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 1
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %EAX.i153 = bitcast %union.anon* %4646 to i32*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 7
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %RDX.i154 = bitcast %union.anon* %4649 to i64*
  %4650 = load i32, i32* %EAX.i153
  %4651 = zext i32 %4650 to i64
  %4652 = load i64, i64* %PC.i152
  %4653 = add i64 %4652, 3
  store i64 %4653, i64* %PC.i152
  %4654 = shl i64 %4651, 32
  %4655 = ashr exact i64 %4654, 32
  store i64 %4655, i64* %RDX.i154, align 8
  store %struct.Memory* %loadMem_403f62, %struct.Memory** %MEMORY
  %loadMem_403f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 33
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4658 to i64*
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4660 = getelementptr inbounds %struct.GPR, %struct.GPR* %4659, i32 0, i32 1
  %4661 = getelementptr inbounds %struct.Reg, %struct.Reg* %4660, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %4661 to i64*
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 7
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %RDX.i151 = bitcast %union.anon* %4664 to i64*
  %4665 = load i64, i64* %RDX.i151
  %4666 = mul i64 %4665, 4
  %4667 = add i64 %4666, 6472288
  %4668 = load i64, i64* %PC.i149
  %4669 = add i64 %4668, 7
  store i64 %4669, i64* %PC.i149
  %4670 = inttoptr i64 %4667 to i32*
  %4671 = load i32, i32* %4670
  %4672 = zext i32 %4671 to i64
  store i64 %4672, i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_403f65, %struct.Memory** %MEMORY
  %loadMem_403f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4674 = getelementptr inbounds %struct.GPR, %struct.GPR* %4673, i32 0, i32 33
  %4675 = getelementptr inbounds %struct.Reg, %struct.Reg* %4674, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4675 to i64*
  %4676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4677 = getelementptr inbounds %struct.GPR, %struct.GPR* %4676, i32 0, i32 1
  %4678 = getelementptr inbounds %struct.Reg, %struct.Reg* %4677, i32 0, i32 0
  %4679 = bitcast %union.anon* %4678 to %struct.anon.2*
  %AL.i147 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4679, i32 0, i32 0
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 9
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %4683 = bitcast %union.anon* %4682 to %struct.anon.2*
  %SIL.i148 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4683, i32 0, i32 0
  %4684 = load i8, i8* %AL.i147
  %4685 = zext i8 %4684 to i64
  %4686 = load i64, i64* %PC.i146
  %4687 = add i64 %4686, 3
  store i64 %4687, i64* %PC.i146
  store i8 %4684, i8* %SIL.i148, align 1
  store %struct.Memory* %loadMem_403f6c, %struct.Memory** %MEMORY
  %loadMem_403f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 33
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %4690 to i64*
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 7
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %RDX.i144 = bitcast %union.anon* %4693 to i64*
  %4694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4695 = getelementptr inbounds %struct.GPR, %struct.GPR* %4694, i32 0, i32 15
  %4696 = getelementptr inbounds %struct.Reg, %struct.Reg* %4695, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %4696 to i64*
  %4697 = load i64, i64* %RBP.i145
  %4698 = sub i64 %4697, 4
  %4699 = load i64, i64* %PC.i143
  %4700 = add i64 %4699, 4
  store i64 %4700, i64* %PC.i143
  %4701 = inttoptr i64 %4698 to i32*
  %4702 = load i32, i32* %4701
  %4703 = sext i32 %4702 to i64
  store i64 %4703, i64* %RDX.i144, align 8
  store %struct.Memory* %loadMem_403f6f, %struct.Memory** %MEMORY
  %loadMem_403f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 33
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %4706 to i64*
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 7
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %4709 to i64*
  %4710 = load i64, i64* %RDX.i142
  %4711 = load i64, i64* %PC.i141
  %4712 = add i64 %4711, 7
  store i64 %4712, i64* %PC.i141
  %4713 = sext i64 %4710 to i128
  %4714 = and i128 %4713, -18446744073709551616
  %4715 = zext i64 %4710 to i128
  %4716 = or i128 %4714, %4715
  %4717 = mul i128 144, %4716
  %4718 = trunc i128 %4717 to i64
  store i64 %4718, i64* %RDX.i142, align 8
  %4719 = sext i64 %4718 to i128
  %4720 = icmp ne i128 %4719, %4717
  %4721 = zext i1 %4720 to i8
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4721, i8* %4722, align 1
  %4723 = trunc i128 %4717 to i32
  %4724 = and i32 %4723, 255
  %4725 = call i32 @llvm.ctpop.i32(i32 %4724)
  %4726 = trunc i32 %4725 to i8
  %4727 = and i8 %4726, 1
  %4728 = xor i8 %4727, 1
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4728, i8* %4729, align 1
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4730, align 1
  %4731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4731, align 1
  %4732 = lshr i64 %4718, 63
  %4733 = trunc i64 %4732 to i8
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4733, i8* %4734, align 1
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4721, i8* %4735, align 1
  store %struct.Memory* %loadMem_403f73, %struct.Memory** %MEMORY
  %loadMem_403f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4737 = getelementptr inbounds %struct.GPR, %struct.GPR* %4736, i32 0, i32 33
  %4738 = getelementptr inbounds %struct.Reg, %struct.Reg* %4737, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %4738 to i64*
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4740 = getelementptr inbounds %struct.GPR, %struct.GPR* %4739, i32 0, i32 5
  %4741 = getelementptr inbounds %struct.Reg, %struct.Reg* %4740, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %4741 to i64*
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4743 = getelementptr inbounds %struct.GPR, %struct.GPR* %4742, i32 0, i32 7
  %4744 = getelementptr inbounds %struct.Reg, %struct.Reg* %4743, i32 0, i32 0
  %RDX.i140 = bitcast %union.anon* %4744 to i64*
  %4745 = load i64, i64* %RCX.i139
  %4746 = load i64, i64* %RDX.i140
  %4747 = load i64, i64* %PC.i138
  %4748 = add i64 %4747, 3
  store i64 %4748, i64* %PC.i138
  %4749 = add i64 %4746, %4745
  store i64 %4749, i64* %RCX.i139, align 8
  %4750 = icmp ult i64 %4749, %4745
  %4751 = icmp ult i64 %4749, %4746
  %4752 = or i1 %4750, %4751
  %4753 = zext i1 %4752 to i8
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4753, i8* %4754, align 1
  %4755 = trunc i64 %4749 to i32
  %4756 = and i32 %4755, 255
  %4757 = call i32 @llvm.ctpop.i32(i32 %4756)
  %4758 = trunc i32 %4757 to i8
  %4759 = and i8 %4758, 1
  %4760 = xor i8 %4759, 1
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4760, i8* %4761, align 1
  %4762 = xor i64 %4746, %4745
  %4763 = xor i64 %4762, %4749
  %4764 = lshr i64 %4763, 4
  %4765 = trunc i64 %4764 to i8
  %4766 = and i8 %4765, 1
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4766, i8* %4767, align 1
  %4768 = icmp eq i64 %4749, 0
  %4769 = zext i1 %4768 to i8
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4769, i8* %4770, align 1
  %4771 = lshr i64 %4749, 63
  %4772 = trunc i64 %4771 to i8
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4772, i8* %4773, align 1
  %4774 = lshr i64 %4745, 63
  %4775 = lshr i64 %4746, 63
  %4776 = xor i64 %4771, %4774
  %4777 = xor i64 %4771, %4775
  %4778 = add i64 %4776, %4777
  %4779 = icmp eq i64 %4778, 2
  %4780 = zext i1 %4779 to i8
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4780, i8* %4781, align 1
  store %struct.Memory* %loadMem_403f7a, %struct.Memory** %MEMORY
  %loadMem_403f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4783 = getelementptr inbounds %struct.GPR, %struct.GPR* %4782, i32 0, i32 33
  %4784 = getelementptr inbounds %struct.Reg, %struct.Reg* %4783, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %4784 to i64*
  %4785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4786 = getelementptr inbounds %struct.GPR, %struct.GPR* %4785, i32 0, i32 7
  %4787 = getelementptr inbounds %struct.Reg, %struct.Reg* %4786, i32 0, i32 0
  %RDX.i136 = bitcast %union.anon* %4787 to i64*
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 15
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %4790 to i64*
  %4791 = load i64, i64* %RBP.i137
  %4792 = sub i64 %4791, 8
  %4793 = load i64, i64* %PC.i135
  %4794 = add i64 %4793, 4
  store i64 %4794, i64* %PC.i135
  %4795 = inttoptr i64 %4792 to i32*
  %4796 = load i32, i32* %4795
  %4797 = sext i32 %4796 to i64
  store i64 %4797, i64* %RDX.i136, align 8
  store %struct.Memory* %loadMem_403f7d, %struct.Memory** %MEMORY
  %loadMem_403f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4799 = getelementptr inbounds %struct.GPR, %struct.GPR* %4798, i32 0, i32 33
  %4800 = getelementptr inbounds %struct.Reg, %struct.Reg* %4799, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4800 to i64*
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4802 = getelementptr inbounds %struct.GPR, %struct.GPR* %4801, i32 0, i32 9
  %4803 = getelementptr inbounds %struct.Reg, %struct.Reg* %4802, i32 0, i32 0
  %4804 = bitcast %union.anon* %4803 to %struct.anon.2*
  %SIL.i132 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %4804, i32 0, i32 0
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 5
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %4807 to i64*
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 7
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %RDX.i134 = bitcast %union.anon* %4810 to i64*
  %4811 = load i64, i64* %RCX.i133
  %4812 = load i64, i64* %RDX.i134
  %4813 = add i64 %4812, %4811
  %4814 = load i8, i8* %SIL.i132
  %4815 = zext i8 %4814 to i64
  %4816 = load i64, i64* %PC.i131
  %4817 = add i64 %4816, 4
  store i64 %4817, i64* %PC.i131
  %4818 = inttoptr i64 %4813 to i8*
  store i8 %4814, i8* %4818
  store %struct.Memory* %loadMem_403f81, %struct.Memory** %MEMORY
  %loadMem_403f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4820 = getelementptr inbounds %struct.GPR, %struct.GPR* %4819, i32 0, i32 33
  %4821 = getelementptr inbounds %struct.Reg, %struct.Reg* %4820, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %4821 to i64*
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 5
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %RCX.i129 = bitcast %union.anon* %4824 to i64*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 15
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %4827 to i64*
  %4828 = load i64, i64* %RBP.i130
  %4829 = sub i64 %4828, 4
  %4830 = load i64, i64* %PC.i128
  %4831 = add i64 %4830, 4
  store i64 %4831, i64* %PC.i128
  %4832 = inttoptr i64 %4829 to i32*
  %4833 = load i32, i32* %4832
  %4834 = sext i32 %4833 to i64
  store i64 %4834, i64* %RCX.i129, align 8
  store %struct.Memory* %loadMem_403f85, %struct.Memory** %MEMORY
  %loadMem_403f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4836 = getelementptr inbounds %struct.GPR, %struct.GPR* %4835, i32 0, i32 33
  %4837 = getelementptr inbounds %struct.Reg, %struct.Reg* %4836, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4837 to i64*
  %4838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4839 = getelementptr inbounds %struct.GPR, %struct.GPR* %4838, i32 0, i32 1
  %4840 = getelementptr inbounds %struct.Reg, %struct.Reg* %4839, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %4840 to i64*
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4842 = getelementptr inbounds %struct.GPR, %struct.GPR* %4841, i32 0, i32 5
  %4843 = getelementptr inbounds %struct.Reg, %struct.Reg* %4842, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %4843 to i64*
  %4844 = load i64, i64* %RCX.i127
  %4845 = mul i64 %4844, 4
  %4846 = add i64 %4845, 4348048
  %4847 = load i64, i64* %PC.i125
  %4848 = add i64 %4847, 7
  store i64 %4848, i64* %PC.i125
  %4849 = inttoptr i64 %4846 to i32*
  %4850 = load i32, i32* %4849
  %4851 = zext i32 %4850 to i64
  store i64 %4851, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_403f89, %struct.Memory** %MEMORY
  %loadMem_403f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 33
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4854 to i64*
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 5
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %RCX.i123 = bitcast %union.anon* %4857 to i64*
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4859 = getelementptr inbounds %struct.GPR, %struct.GPR* %4858, i32 0, i32 15
  %4860 = getelementptr inbounds %struct.Reg, %struct.Reg* %4859, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %4860 to i64*
  %4861 = load i64, i64* %RBP.i124
  %4862 = sub i64 %4861, 8
  %4863 = load i64, i64* %PC.i122
  %4864 = add i64 %4863, 4
  store i64 %4864, i64* %PC.i122
  %4865 = inttoptr i64 %4862 to i32*
  %4866 = load i32, i32* %4865
  %4867 = sext i32 %4866 to i64
  store i64 %4867, i64* %RCX.i123, align 8
  store %struct.Memory* %loadMem_403f90, %struct.Memory** %MEMORY
  %loadMem_403f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 33
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %4870 to i64*
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4872 = getelementptr inbounds %struct.GPR, %struct.GPR* %4871, i32 0, i32 1
  %4873 = getelementptr inbounds %struct.Reg, %struct.Reg* %4872, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %4873 to i64*
  %4874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4875 = getelementptr inbounds %struct.GPR, %struct.GPR* %4874, i32 0, i32 5
  %4876 = getelementptr inbounds %struct.Reg, %struct.Reg* %4875, i32 0, i32 0
  %RCX.i121 = bitcast %union.anon* %4876 to i64*
  %4877 = load i64, i64* %RAX.i120
  %4878 = load i64, i64* %RCX.i121
  %4879 = mul i64 %4878, 4
  %4880 = add i64 %4879, 4348048
  %4881 = load i64, i64* %PC.i119
  %4882 = add i64 %4881, 7
  store i64 %4882, i64* %PC.i119
  %4883 = trunc i64 %4877 to i32
  %4884 = inttoptr i64 %4880 to i32*
  %4885 = load i32, i32* %4884
  %4886 = sub i32 %4883, %4885
  %4887 = zext i32 %4886 to i64
  store i64 %4887, i64* %RAX.i120, align 8
  %4888 = icmp ult i32 %4883, %4885
  %4889 = zext i1 %4888 to i8
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4889, i8* %4890, align 1
  %4891 = and i32 %4886, 255
  %4892 = call i32 @llvm.ctpop.i32(i32 %4891)
  %4893 = trunc i32 %4892 to i8
  %4894 = and i8 %4893, 1
  %4895 = xor i8 %4894, 1
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4895, i8* %4896, align 1
  %4897 = xor i32 %4885, %4883
  %4898 = xor i32 %4897, %4886
  %4899 = lshr i32 %4898, 4
  %4900 = trunc i32 %4899 to i8
  %4901 = and i8 %4900, 1
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4901, i8* %4902, align 1
  %4903 = icmp eq i32 %4886, 0
  %4904 = zext i1 %4903 to i8
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4904, i8* %4905, align 1
  %4906 = lshr i32 %4886, 31
  %4907 = trunc i32 %4906 to i8
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4907, i8* %4908, align 1
  %4909 = lshr i32 %4883, 31
  %4910 = lshr i32 %4885, 31
  %4911 = xor i32 %4910, %4909
  %4912 = xor i32 %4906, %4909
  %4913 = add i32 %4912, %4911
  %4914 = icmp eq i32 %4913, 2
  %4915 = zext i1 %4914 to i8
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4915, i8* %4916, align 1
  store %struct.Memory* %loadMem_403f94, %struct.Memory** %MEMORY
  %loadMem_403f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 33
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4919 to i64*
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 1
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %EAX.i117 = bitcast %union.anon* %4922 to i32*
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 11
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %RDI.i118 = bitcast %union.anon* %4925 to i64*
  %4926 = load i32, i32* %EAX.i117
  %4927 = zext i32 %4926 to i64
  %4928 = load i64, i64* %PC.i116
  %4929 = add i64 %4928, 2
  store i64 %4929, i64* %PC.i116
  %4930 = and i64 %4927, 4294967295
  store i64 %4930, i64* %RDI.i118, align 8
  store %struct.Memory* %loadMem_403f9b, %struct.Memory** %MEMORY
  %loadMem1_403f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 33
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %4933 to i64*
  %4934 = load i64, i64* %PC.i115
  %4935 = add i64 %4934, -13085
  %4936 = load i64, i64* %PC.i115
  %4937 = add i64 %4936, 5
  %4938 = load i64, i64* %PC.i115
  %4939 = add i64 %4938, 5
  store i64 %4939, i64* %PC.i115
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4941 = load i64, i64* %4940, align 8
  %4942 = add i64 %4941, -8
  %4943 = inttoptr i64 %4942 to i64*
  store i64 %4937, i64* %4943
  store i64 %4942, i64* %4940, align 8
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4935, i64* %4944, align 8
  store %struct.Memory* %loadMem1_403f9d, %struct.Memory** %MEMORY
  %loadMem2_403f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403f9d = load i64, i64* %3
  %4945 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403f9d)
  store %struct.Memory* %4945, %struct.Memory** %MEMORY
  %loadMem_403fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4947 = getelementptr inbounds %struct.GPR, %struct.GPR* %4946, i32 0, i32 33
  %4948 = getelementptr inbounds %struct.Reg, %struct.Reg* %4947, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4948 to i64*
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4950 = getelementptr inbounds %struct.GPR, %struct.GPR* %4949, i32 0, i32 5
  %4951 = getelementptr inbounds %struct.Reg, %struct.Reg* %4950, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %4951 to i64*
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4953 = getelementptr inbounds %struct.GPR, %struct.GPR* %4952, i32 0, i32 15
  %4954 = getelementptr inbounds %struct.Reg, %struct.Reg* %4953, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %4954 to i64*
  %4955 = load i64, i64* %RBP.i112
  %4956 = sub i64 %4955, 4
  %4957 = load i64, i64* %PC.i110
  %4958 = add i64 %4957, 4
  store i64 %4958, i64* %PC.i110
  %4959 = inttoptr i64 %4956 to i32*
  %4960 = load i32, i32* %4959
  %4961 = sext i32 %4960 to i64
  store i64 %4961, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_403fa2, %struct.Memory** %MEMORY
  %loadMem_403fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4963 = getelementptr inbounds %struct.GPR, %struct.GPR* %4962, i32 0, i32 33
  %4964 = getelementptr inbounds %struct.Reg, %struct.Reg* %4963, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4964 to i64*
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4966 = getelementptr inbounds %struct.GPR, %struct.GPR* %4965, i32 0, i32 5
  %4967 = getelementptr inbounds %struct.Reg, %struct.Reg* %4966, i32 0, i32 0
  %RCX.i108 = bitcast %union.anon* %4967 to i64*
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4969 = getelementptr inbounds %struct.GPR, %struct.GPR* %4968, i32 0, i32 11
  %4970 = getelementptr inbounds %struct.Reg, %struct.Reg* %4969, i32 0, i32 0
  %RDI.i109 = bitcast %union.anon* %4970 to i64*
  %4971 = load i64, i64* %RCX.i108
  %4972 = mul i64 %4971, 4
  %4973 = add i64 %4972, 4347472
  %4974 = load i64, i64* %PC.i107
  %4975 = add i64 %4974, 7
  store i64 %4975, i64* %PC.i107
  %4976 = inttoptr i64 %4973 to i32*
  %4977 = load i32, i32* %4976
  %4978 = zext i32 %4977 to i64
  store i64 %4978, i64* %RDI.i109, align 8
  store %struct.Memory* %loadMem_403fa6, %struct.Memory** %MEMORY
  %loadMem_403fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4980 = getelementptr inbounds %struct.GPR, %struct.GPR* %4979, i32 0, i32 33
  %4981 = getelementptr inbounds %struct.Reg, %struct.Reg* %4980, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4981 to i64*
  %4982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4983 = getelementptr inbounds %struct.GPR, %struct.GPR* %4982, i32 0, i32 5
  %4984 = getelementptr inbounds %struct.Reg, %struct.Reg* %4983, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %4984 to i64*
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4986 = getelementptr inbounds %struct.GPR, %struct.GPR* %4985, i32 0, i32 15
  %4987 = getelementptr inbounds %struct.Reg, %struct.Reg* %4986, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %4987 to i64*
  %4988 = load i64, i64* %RBP.i106
  %4989 = sub i64 %4988, 8
  %4990 = load i64, i64* %PC.i104
  %4991 = add i64 %4990, 4
  store i64 %4991, i64* %PC.i104
  %4992 = inttoptr i64 %4989 to i32*
  %4993 = load i32, i32* %4992
  %4994 = sext i32 %4993 to i64
  store i64 %4994, i64* %RCX.i105, align 8
  store %struct.Memory* %loadMem_403fad, %struct.Memory** %MEMORY
  %loadMem_403fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4996 = getelementptr inbounds %struct.GPR, %struct.GPR* %4995, i32 0, i32 33
  %4997 = getelementptr inbounds %struct.Reg, %struct.Reg* %4996, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4997 to i64*
  %4998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4999 = getelementptr inbounds %struct.GPR, %struct.GPR* %4998, i32 0, i32 5
  %5000 = getelementptr inbounds %struct.Reg, %struct.Reg* %4999, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %5000 to i64*
  %5001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5002 = getelementptr inbounds %struct.GPR, %struct.GPR* %5001, i32 0, i32 11
  %5003 = getelementptr inbounds %struct.Reg, %struct.Reg* %5002, i32 0, i32 0
  %RDI.i103 = bitcast %union.anon* %5003 to i64*
  %5004 = load i64, i64* %RDI.i103
  %5005 = load i64, i64* %RCX.i102
  %5006 = mul i64 %5005, 4
  %5007 = add i64 %5006, 4347472
  %5008 = load i64, i64* %PC.i101
  %5009 = add i64 %5008, 7
  store i64 %5009, i64* %PC.i101
  %5010 = trunc i64 %5004 to i32
  %5011 = inttoptr i64 %5007 to i32*
  %5012 = load i32, i32* %5011
  %5013 = sub i32 %5010, %5012
  %5014 = zext i32 %5013 to i64
  store i64 %5014, i64* %RDI.i103, align 8
  %5015 = icmp ult i32 %5010, %5012
  %5016 = zext i1 %5015 to i8
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5016, i8* %5017, align 1
  %5018 = and i32 %5013, 255
  %5019 = call i32 @llvm.ctpop.i32(i32 %5018)
  %5020 = trunc i32 %5019 to i8
  %5021 = and i8 %5020, 1
  %5022 = xor i8 %5021, 1
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5022, i8* %5023, align 1
  %5024 = xor i32 %5012, %5010
  %5025 = xor i32 %5024, %5013
  %5026 = lshr i32 %5025, 4
  %5027 = trunc i32 %5026 to i8
  %5028 = and i8 %5027, 1
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5028, i8* %5029, align 1
  %5030 = icmp eq i32 %5013, 0
  %5031 = zext i1 %5030 to i8
  %5032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5031, i8* %5032, align 1
  %5033 = lshr i32 %5013, 31
  %5034 = trunc i32 %5033 to i8
  %5035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5034, i8* %5035, align 1
  %5036 = lshr i32 %5010, 31
  %5037 = lshr i32 %5012, 31
  %5038 = xor i32 %5037, %5036
  %5039 = xor i32 %5033, %5036
  %5040 = add i32 %5039, %5038
  %5041 = icmp eq i32 %5040, 2
  %5042 = zext i1 %5041 to i8
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5042, i8* %5043, align 1
  store %struct.Memory* %loadMem_403fb1, %struct.Memory** %MEMORY
  %loadMem_403fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5045 = getelementptr inbounds %struct.GPR, %struct.GPR* %5044, i32 0, i32 33
  %5046 = getelementptr inbounds %struct.Reg, %struct.Reg* %5045, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %5046 to i64*
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5048 = getelementptr inbounds %struct.GPR, %struct.GPR* %5047, i32 0, i32 1
  %5049 = getelementptr inbounds %struct.Reg, %struct.Reg* %5048, i32 0, i32 0
  %EAX.i99 = bitcast %union.anon* %5049 to i32*
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 15
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %5052 to i64*
  %5053 = load i64, i64* %RBP.i100
  %5054 = sub i64 %5053, 56
  %5055 = load i32, i32* %EAX.i99
  %5056 = zext i32 %5055 to i64
  %5057 = load i64, i64* %PC.i98
  %5058 = add i64 %5057, 3
  store i64 %5058, i64* %PC.i98
  %5059 = inttoptr i64 %5054 to i32*
  store i32 %5055, i32* %5059
  store %struct.Memory* %loadMem_403fb8, %struct.Memory** %MEMORY
  %loadMem1_403fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5061 = getelementptr inbounds %struct.GPR, %struct.GPR* %5060, i32 0, i32 33
  %5062 = getelementptr inbounds %struct.Reg, %struct.Reg* %5061, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5062 to i64*
  %5063 = load i64, i64* %PC.i97
  %5064 = add i64 %5063, -13115
  %5065 = load i64, i64* %PC.i97
  %5066 = add i64 %5065, 5
  %5067 = load i64, i64* %PC.i97
  %5068 = add i64 %5067, 5
  store i64 %5068, i64* %PC.i97
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5070 = load i64, i64* %5069, align 8
  %5071 = add i64 %5070, -8
  %5072 = inttoptr i64 %5071 to i64*
  store i64 %5066, i64* %5072
  store i64 %5071, i64* %5069, align 8
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5064, i64* %5073, align 8
  store %struct.Memory* %loadMem1_403fbb, %struct.Memory** %MEMORY
  %loadMem2_403fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403fbb = load i64, i64* %3
  %5074 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403fbb)
  store %struct.Memory* %5074, %struct.Memory** %MEMORY
  %loadMem_403fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 33
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %5077 to i64*
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5079 = getelementptr inbounds %struct.GPR, %struct.GPR* %5078, i32 0, i32 11
  %5080 = getelementptr inbounds %struct.Reg, %struct.Reg* %5079, i32 0, i32 0
  %RDI.i93 = bitcast %union.anon* %5080 to i64*
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5082 = getelementptr inbounds %struct.GPR, %struct.GPR* %5081, i32 0, i32 15
  %5083 = getelementptr inbounds %struct.Reg, %struct.Reg* %5082, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %5083 to i64*
  %5084 = load i64, i64* %RBP.i94
  %5085 = sub i64 %5084, 56
  %5086 = load i64, i64* %PC.i92
  %5087 = add i64 %5086, 3
  store i64 %5087, i64* %PC.i92
  %5088 = inttoptr i64 %5085 to i32*
  %5089 = load i32, i32* %5088
  %5090 = zext i32 %5089 to i64
  store i64 %5090, i64* %RDI.i93, align 8
  store %struct.Memory* %loadMem_403fc0, %struct.Memory** %MEMORY
  %loadMem_403fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5092 = getelementptr inbounds %struct.GPR, %struct.GPR* %5091, i32 0, i32 33
  %5093 = getelementptr inbounds %struct.Reg, %struct.Reg* %5092, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %5093 to i64*
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5095 = getelementptr inbounds %struct.GPR, %struct.GPR* %5094, i32 0, i32 1
  %5096 = getelementptr inbounds %struct.Reg, %struct.Reg* %5095, i32 0, i32 0
  %EAX.i91 = bitcast %union.anon* %5096 to i32*
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5098 = getelementptr inbounds %struct.GPR, %struct.GPR* %5097, i32 0, i32 11
  %5099 = getelementptr inbounds %struct.Reg, %struct.Reg* %5098, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %5099 to i32*
  %5100 = load i32, i32* %EDI.i
  %5101 = zext i32 %5100 to i64
  %5102 = load i32, i32* %EAX.i91
  %5103 = zext i32 %5102 to i64
  %5104 = load i64, i64* %PC.i90
  %5105 = add i64 %5104, 2
  store i64 %5105, i64* %PC.i90
  %5106 = sub i32 %5100, %5102
  %5107 = icmp ult i32 %5100, %5102
  %5108 = zext i1 %5107 to i8
  %5109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5108, i8* %5109, align 1
  %5110 = and i32 %5106, 255
  %5111 = call i32 @llvm.ctpop.i32(i32 %5110)
  %5112 = trunc i32 %5111 to i8
  %5113 = and i8 %5112, 1
  %5114 = xor i8 %5113, 1
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5114, i8* %5115, align 1
  %5116 = xor i64 %5103, %5101
  %5117 = trunc i64 %5116 to i32
  %5118 = xor i32 %5117, %5106
  %5119 = lshr i32 %5118, 4
  %5120 = trunc i32 %5119 to i8
  %5121 = and i8 %5120, 1
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5121, i8* %5122, align 1
  %5123 = icmp eq i32 %5106, 0
  %5124 = zext i1 %5123 to i8
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5124, i8* %5125, align 1
  %5126 = lshr i32 %5106, 31
  %5127 = trunc i32 %5126 to i8
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5127, i8* %5128, align 1
  %5129 = lshr i32 %5100, 31
  %5130 = lshr i32 %5102, 31
  %5131 = xor i32 %5130, %5129
  %5132 = xor i32 %5126, %5129
  %5133 = add i32 %5132, %5131
  %5134 = icmp eq i32 %5133, 2
  %5135 = zext i1 %5134 to i8
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5135, i8* %5136, align 1
  store %struct.Memory* %loadMem_403fc3, %struct.Memory** %MEMORY
  %loadMem_403fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5138 = getelementptr inbounds %struct.GPR, %struct.GPR* %5137, i32 0, i32 33
  %5139 = getelementptr inbounds %struct.Reg, %struct.Reg* %5138, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %5139 to i64*
  %5140 = load i64, i64* %PC.i89
  %5141 = add i64 %5140, 43
  %5142 = load i64, i64* %PC.i89
  %5143 = add i64 %5142, 6
  %5144 = load i64, i64* %PC.i89
  %5145 = add i64 %5144, 6
  store i64 %5145, i64* %PC.i89
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5147 = load i8, i8* %5146, align 1
  %5148 = icmp ne i8 %5147, 0
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5150 = load i8, i8* %5149, align 1
  %5151 = icmp ne i8 %5150, 0
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5153 = load i8, i8* %5152, align 1
  %5154 = icmp ne i8 %5153, 0
  %5155 = xor i1 %5151, %5154
  %5156 = or i1 %5148, %5155
  %5157 = zext i1 %5156 to i8
  store i8 %5157, i8* %BRANCH_TAKEN, align 1
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5159 = select i1 %5156, i64 %5141, i64 %5143
  store i64 %5159, i64* %5158, align 8
  store %struct.Memory* %loadMem_403fc5, %struct.Memory** %MEMORY
  %loadBr_403fc5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403fc5 = icmp eq i8 %loadBr_403fc5, 1
  br i1 %cmpBr_403fc5, label %block_.L_403ff0, label %block_403fcb

block_403fcb:                                     ; preds = %block_.L_403f55
  %loadMem_403fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5161 = getelementptr inbounds %struct.GPR, %struct.GPR* %5160, i32 0, i32 33
  %5162 = getelementptr inbounds %struct.Reg, %struct.Reg* %5161, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %5162 to i64*
  %5163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5164 = getelementptr inbounds %struct.GPR, %struct.GPR* %5163, i32 0, i32 1
  %5165 = getelementptr inbounds %struct.Reg, %struct.Reg* %5164, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %5165 to i64*
  %5166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5167 = getelementptr inbounds %struct.GPR, %struct.GPR* %5166, i32 0, i32 15
  %5168 = getelementptr inbounds %struct.Reg, %struct.Reg* %5167, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %5168 to i64*
  %5169 = load i64, i64* %RBP.i88
  %5170 = sub i64 %5169, 4
  %5171 = load i64, i64* %PC.i86
  %5172 = add i64 %5171, 4
  store i64 %5172, i64* %PC.i86
  %5173 = inttoptr i64 %5170 to i32*
  %5174 = load i32, i32* %5173
  %5175 = sext i32 %5174 to i64
  store i64 %5175, i64* %RAX.i87, align 8
  store %struct.Memory* %loadMem_403fcb, %struct.Memory** %MEMORY
  %loadMem_403fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 33
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %5178 to i64*
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5180 = getelementptr inbounds %struct.GPR, %struct.GPR* %5179, i32 0, i32 1
  %5181 = getelementptr inbounds %struct.Reg, %struct.Reg* %5180, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %5181 to i64*
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5183 = getelementptr inbounds %struct.GPR, %struct.GPR* %5182, i32 0, i32 5
  %5184 = getelementptr inbounds %struct.Reg, %struct.Reg* %5183, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %5184 to i64*
  %5185 = load i64, i64* %RAX.i84
  %5186 = mul i64 %5185, 4
  %5187 = add i64 %5186, 4348048
  %5188 = load i64, i64* %PC.i83
  %5189 = add i64 %5188, 7
  store i64 %5189, i64* %PC.i83
  %5190 = inttoptr i64 %5187 to i32*
  %5191 = load i32, i32* %5190
  %5192 = zext i32 %5191 to i64
  store i64 %5192, i64* %RCX.i85, align 8
  store %struct.Memory* %loadMem_403fcf, %struct.Memory** %MEMORY
  %loadMem_403fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5194 = getelementptr inbounds %struct.GPR, %struct.GPR* %5193, i32 0, i32 33
  %5195 = getelementptr inbounds %struct.Reg, %struct.Reg* %5194, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %5195 to i64*
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 1
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 15
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %5201 to i64*
  %5202 = load i64, i64* %RBP.i82
  %5203 = sub i64 %5202, 8
  %5204 = load i64, i64* %PC.i80
  %5205 = add i64 %5204, 4
  store i64 %5205, i64* %PC.i80
  %5206 = inttoptr i64 %5203 to i32*
  %5207 = load i32, i32* %5206
  %5208 = sext i32 %5207 to i64
  store i64 %5208, i64* %RAX.i81, align 8
  store %struct.Memory* %loadMem_403fd6, %struct.Memory** %MEMORY
  %loadMem_403fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5210 = getelementptr inbounds %struct.GPR, %struct.GPR* %5209, i32 0, i32 33
  %5211 = getelementptr inbounds %struct.Reg, %struct.Reg* %5210, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %5211 to i64*
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 1
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %5214 to i64*
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 5
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %5217 to i64*
  %5218 = load i64, i64* %RCX.i79
  %5219 = load i64, i64* %RAX.i78
  %5220 = mul i64 %5219, 4
  %5221 = add i64 %5220, 4348048
  %5222 = load i64, i64* %PC.i77
  %5223 = add i64 %5222, 7
  store i64 %5223, i64* %PC.i77
  %5224 = trunc i64 %5218 to i32
  %5225 = inttoptr i64 %5221 to i32*
  %5226 = load i32, i32* %5225
  %5227 = sub i32 %5224, %5226
  %5228 = zext i32 %5227 to i64
  store i64 %5228, i64* %RCX.i79, align 8
  %5229 = icmp ult i32 %5224, %5226
  %5230 = zext i1 %5229 to i8
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5230, i8* %5231, align 1
  %5232 = and i32 %5227, 255
  %5233 = call i32 @llvm.ctpop.i32(i32 %5232)
  %5234 = trunc i32 %5233 to i8
  %5235 = and i8 %5234, 1
  %5236 = xor i8 %5235, 1
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5236, i8* %5237, align 1
  %5238 = xor i32 %5226, %5224
  %5239 = xor i32 %5238, %5227
  %5240 = lshr i32 %5239, 4
  %5241 = trunc i32 %5240 to i8
  %5242 = and i8 %5241, 1
  %5243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5242, i8* %5243, align 1
  %5244 = icmp eq i32 %5227, 0
  %5245 = zext i1 %5244 to i8
  %5246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5245, i8* %5246, align 1
  %5247 = lshr i32 %5227, 31
  %5248 = trunc i32 %5247 to i8
  %5249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5248, i8* %5249, align 1
  %5250 = lshr i32 %5224, 31
  %5251 = lshr i32 %5226, 31
  %5252 = xor i32 %5251, %5250
  %5253 = xor i32 %5247, %5250
  %5254 = add i32 %5253, %5252
  %5255 = icmp eq i32 %5254, 2
  %5256 = zext i1 %5255 to i8
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5256, i8* %5257, align 1
  store %struct.Memory* %loadMem_403fda, %struct.Memory** %MEMORY
  %loadMem_403fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 33
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %5260 to i64*
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 5
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %ECX.i75 = bitcast %union.anon* %5263 to i32*
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5265 = getelementptr inbounds %struct.GPR, %struct.GPR* %5264, i32 0, i32 11
  %5266 = getelementptr inbounds %struct.Reg, %struct.Reg* %5265, i32 0, i32 0
  %RDI.i76 = bitcast %union.anon* %5266 to i64*
  %5267 = load i32, i32* %ECX.i75
  %5268 = zext i32 %5267 to i64
  %5269 = load i64, i64* %PC.i74
  %5270 = add i64 %5269, 2
  store i64 %5270, i64* %PC.i74
  %5271 = and i64 %5268, 4294967295
  store i64 %5271, i64* %RDI.i76, align 8
  store %struct.Memory* %loadMem_403fe1, %struct.Memory** %MEMORY
  %loadMem1_403fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 33
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %5274 to i64*
  %5275 = load i64, i64* %PC.i73
  %5276 = add i64 %5275, -13155
  %5277 = load i64, i64* %PC.i73
  %5278 = add i64 %5277, 5
  %5279 = load i64, i64* %PC.i73
  %5280 = add i64 %5279, 5
  store i64 %5280, i64* %PC.i73
  %5281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5282 = load i64, i64* %5281, align 8
  %5283 = add i64 %5282, -8
  %5284 = inttoptr i64 %5283 to i64*
  store i64 %5278, i64* %5284
  store i64 %5283, i64* %5281, align 8
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5276, i64* %5285, align 8
  store %struct.Memory* %loadMem1_403fe3, %struct.Memory** %MEMORY
  %loadMem2_403fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403fe3 = load i64, i64* %3
  %5286 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_403fe3)
  store %struct.Memory* %5286, %struct.Memory** %MEMORY
  %loadMem_403fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5288 = getelementptr inbounds %struct.GPR, %struct.GPR* %5287, i32 0, i32 33
  %5289 = getelementptr inbounds %struct.Reg, %struct.Reg* %5288, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %5289 to i64*
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 1
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %EAX.i69 = bitcast %union.anon* %5292 to i32*
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 15
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %5295 to i64*
  %5296 = load i64, i64* %RBP.i70
  %5297 = sub i64 %5296, 60
  %5298 = load i32, i32* %EAX.i69
  %5299 = zext i32 %5298 to i64
  %5300 = load i64, i64* %PC.i68
  %5301 = add i64 %5300, 3
  store i64 %5301, i64* %PC.i68
  %5302 = inttoptr i64 %5297 to i32*
  store i32 %5298, i32* %5302
  store %struct.Memory* %loadMem_403fe8, %struct.Memory** %MEMORY
  %loadMem_403feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 33
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %5305 to i64*
  %5306 = load i64, i64* %PC.i67
  %5307 = add i64 %5306, 37
  %5308 = load i64, i64* %PC.i67
  %5309 = add i64 %5308, 5
  store i64 %5309, i64* %PC.i67
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5307, i64* %5310, align 8
  store %struct.Memory* %loadMem_403feb, %struct.Memory** %MEMORY
  br label %block_.L_404010

block_.L_403ff0:                                  ; preds = %block_.L_403f55
  %loadMem_403ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5312 = getelementptr inbounds %struct.GPR, %struct.GPR* %5311, i32 0, i32 33
  %5313 = getelementptr inbounds %struct.Reg, %struct.Reg* %5312, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5313 to i64*
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5315 = getelementptr inbounds %struct.GPR, %struct.GPR* %5314, i32 0, i32 1
  %5316 = getelementptr inbounds %struct.Reg, %struct.Reg* %5315, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %5316 to i64*
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5318 = getelementptr inbounds %struct.GPR, %struct.GPR* %5317, i32 0, i32 15
  %5319 = getelementptr inbounds %struct.Reg, %struct.Reg* %5318, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %5319 to i64*
  %5320 = load i64, i64* %RBP.i66
  %5321 = sub i64 %5320, 4
  %5322 = load i64, i64* %PC.i64
  %5323 = add i64 %5322, 4
  store i64 %5323, i64* %PC.i64
  %5324 = inttoptr i64 %5321 to i32*
  %5325 = load i32, i32* %5324
  %5326 = sext i32 %5325 to i64
  store i64 %5326, i64* %RAX.i65, align 8
  store %struct.Memory* %loadMem_403ff0, %struct.Memory** %MEMORY
  %loadMem_403ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 33
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %5329 to i64*
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 1
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %5332 to i64*
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5334 = getelementptr inbounds %struct.GPR, %struct.GPR* %5333, i32 0, i32 5
  %5335 = getelementptr inbounds %struct.Reg, %struct.Reg* %5334, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %5335 to i64*
  %5336 = load i64, i64* %RAX.i62
  %5337 = mul i64 %5336, 4
  %5338 = add i64 %5337, 4347472
  %5339 = load i64, i64* %PC.i61
  %5340 = add i64 %5339, 7
  store i64 %5340, i64* %PC.i61
  %5341 = inttoptr i64 %5338 to i32*
  %5342 = load i32, i32* %5341
  %5343 = zext i32 %5342 to i64
  store i64 %5343, i64* %RCX.i63, align 8
  store %struct.Memory* %loadMem_403ff4, %struct.Memory** %MEMORY
  %loadMem_403ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5345 = getelementptr inbounds %struct.GPR, %struct.GPR* %5344, i32 0, i32 33
  %5346 = getelementptr inbounds %struct.Reg, %struct.Reg* %5345, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %5346 to i64*
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5348 = getelementptr inbounds %struct.GPR, %struct.GPR* %5347, i32 0, i32 1
  %5349 = getelementptr inbounds %struct.Reg, %struct.Reg* %5348, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %5349 to i64*
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5351 = getelementptr inbounds %struct.GPR, %struct.GPR* %5350, i32 0, i32 15
  %5352 = getelementptr inbounds %struct.Reg, %struct.Reg* %5351, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %5352 to i64*
  %5353 = load i64, i64* %RBP.i60
  %5354 = sub i64 %5353, 8
  %5355 = load i64, i64* %PC.i58
  %5356 = add i64 %5355, 4
  store i64 %5356, i64* %PC.i58
  %5357 = inttoptr i64 %5354 to i32*
  %5358 = load i32, i32* %5357
  %5359 = sext i32 %5358 to i64
  store i64 %5359, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_403ffb, %struct.Memory** %MEMORY
  %loadMem_403fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5361 = getelementptr inbounds %struct.GPR, %struct.GPR* %5360, i32 0, i32 33
  %5362 = getelementptr inbounds %struct.Reg, %struct.Reg* %5361, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %5362 to i64*
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5364 = getelementptr inbounds %struct.GPR, %struct.GPR* %5363, i32 0, i32 1
  %5365 = getelementptr inbounds %struct.Reg, %struct.Reg* %5364, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %5365 to i64*
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5367 = getelementptr inbounds %struct.GPR, %struct.GPR* %5366, i32 0, i32 5
  %5368 = getelementptr inbounds %struct.Reg, %struct.Reg* %5367, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %5368 to i64*
  %5369 = load i64, i64* %RCX.i57
  %5370 = load i64, i64* %RAX.i56
  %5371 = mul i64 %5370, 4
  %5372 = add i64 %5371, 4347472
  %5373 = load i64, i64* %PC.i55
  %5374 = add i64 %5373, 7
  store i64 %5374, i64* %PC.i55
  %5375 = trunc i64 %5369 to i32
  %5376 = inttoptr i64 %5372 to i32*
  %5377 = load i32, i32* %5376
  %5378 = sub i32 %5375, %5377
  %5379 = zext i32 %5378 to i64
  store i64 %5379, i64* %RCX.i57, align 8
  %5380 = icmp ult i32 %5375, %5377
  %5381 = zext i1 %5380 to i8
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5381, i8* %5382, align 1
  %5383 = and i32 %5378, 255
  %5384 = call i32 @llvm.ctpop.i32(i32 %5383)
  %5385 = trunc i32 %5384 to i8
  %5386 = and i8 %5385, 1
  %5387 = xor i8 %5386, 1
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5387, i8* %5388, align 1
  %5389 = xor i32 %5377, %5375
  %5390 = xor i32 %5389, %5378
  %5391 = lshr i32 %5390, 4
  %5392 = trunc i32 %5391 to i8
  %5393 = and i8 %5392, 1
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5393, i8* %5394, align 1
  %5395 = icmp eq i32 %5378, 0
  %5396 = zext i1 %5395 to i8
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5396, i8* %5397, align 1
  %5398 = lshr i32 %5378, 31
  %5399 = trunc i32 %5398 to i8
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5399, i8* %5400, align 1
  %5401 = lshr i32 %5375, 31
  %5402 = lshr i32 %5377, 31
  %5403 = xor i32 %5402, %5401
  %5404 = xor i32 %5398, %5401
  %5405 = add i32 %5404, %5403
  %5406 = icmp eq i32 %5405, 2
  %5407 = zext i1 %5406 to i8
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5407, i8* %5408, align 1
  store %struct.Memory* %loadMem_403fff, %struct.Memory** %MEMORY
  %loadMem_404006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5410 = getelementptr inbounds %struct.GPR, %struct.GPR* %5409, i32 0, i32 33
  %5411 = getelementptr inbounds %struct.Reg, %struct.Reg* %5410, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5411 to i64*
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 5
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %5414 to i32*
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 11
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5417 to i64*
  %5418 = load i32, i32* %ECX.i
  %5419 = zext i32 %5418 to i64
  %5420 = load i64, i64* %PC.i54
  %5421 = add i64 %5420, 2
  store i64 %5421, i64* %PC.i54
  %5422 = and i64 %5419, 4294967295
  store i64 %5422, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_404006, %struct.Memory** %MEMORY
  %loadMem1_404008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 33
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %5425 to i64*
  %5426 = load i64, i64* %PC.i53
  %5427 = add i64 %5426, -13192
  %5428 = load i64, i64* %PC.i53
  %5429 = add i64 %5428, 5
  %5430 = load i64, i64* %PC.i53
  %5431 = add i64 %5430, 5
  store i64 %5431, i64* %PC.i53
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5433 = load i64, i64* %5432, align 8
  %5434 = add i64 %5433, -8
  %5435 = inttoptr i64 %5434 to i64*
  store i64 %5429, i64* %5435
  store i64 %5434, i64* %5432, align 8
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5427, i64* %5436, align 8
  store %struct.Memory* %loadMem1_404008, %struct.Memory** %MEMORY
  %loadMem2_404008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_404008 = load i64, i64* %3
  %5437 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %loadMem2_404008)
  store %struct.Memory* %5437, %struct.Memory** %MEMORY
  %loadMem_40400d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5439 = getelementptr inbounds %struct.GPR, %struct.GPR* %5438, i32 0, i32 33
  %5440 = getelementptr inbounds %struct.Reg, %struct.Reg* %5439, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %5440 to i64*
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5442 = getelementptr inbounds %struct.GPR, %struct.GPR* %5441, i32 0, i32 1
  %5443 = getelementptr inbounds %struct.Reg, %struct.Reg* %5442, i32 0, i32 0
  %EAX.i48 = bitcast %union.anon* %5443 to i32*
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 15
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %5446 to i64*
  %5447 = load i64, i64* %RBP.i49
  %5448 = sub i64 %5447, 60
  %5449 = load i32, i32* %EAX.i48
  %5450 = zext i32 %5449 to i64
  %5451 = load i64, i64* %PC.i47
  %5452 = add i64 %5451, 3
  store i64 %5452, i64* %PC.i47
  %5453 = inttoptr i64 %5448 to i32*
  store i32 %5449, i32* %5453
  store %struct.Memory* %loadMem_40400d, %struct.Memory** %MEMORY
  br label %block_.L_404010

block_.L_404010:                                  ; preds = %block_.L_403ff0, %block_403fcb
  %loadMem_404010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 33
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5456 to i64*
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 1
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %5459 to i64*
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 15
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %5462 to i64*
  %5463 = load i64, i64* %RBP.i46
  %5464 = sub i64 %5463, 60
  %5465 = load i64, i64* %PC.i44
  %5466 = add i64 %5465, 3
  store i64 %5466, i64* %PC.i44
  %5467 = inttoptr i64 %5464 to i32*
  %5468 = load i32, i32* %5467
  %5469 = zext i32 %5468 to i64
  store i64 %5469, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_404010, %struct.Memory** %MEMORY
  %loadMem_404013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5471 = getelementptr inbounds %struct.GPR, %struct.GPR* %5470, i32 0, i32 33
  %5472 = getelementptr inbounds %struct.Reg, %struct.Reg* %5471, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5472 to i64*
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5474 = getelementptr inbounds %struct.GPR, %struct.GPR* %5473, i32 0, i32 5
  %5475 = getelementptr inbounds %struct.Reg, %struct.Reg* %5474, i32 0, i32 0
  %RCX.i43 = bitcast %union.anon* %5475 to i64*
  %5476 = load i64, i64* %PC.i42
  %5477 = add i64 %5476, 10
  store i64 %5477, i64* %PC.i42
  store i64 ptrtoint (%G__0x85f3f0_type* @G__0x85f3f0 to i64), i64* %RCX.i43, align 8
  store %struct.Memory* %loadMem_404013, %struct.Memory** %MEMORY
  %loadMem_40401d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5479 = getelementptr inbounds %struct.GPR, %struct.GPR* %5478, i32 0, i32 33
  %5480 = getelementptr inbounds %struct.Reg, %struct.Reg* %5479, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5480 to i64*
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 1
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %EAX.i40 = bitcast %union.anon* %5483 to i32*
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 7
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %RDX.i41 = bitcast %union.anon* %5486 to i64*
  %5487 = load i32, i32* %EAX.i40
  %5488 = zext i32 %5487 to i64
  %5489 = load i64, i64* %PC.i39
  %5490 = add i64 %5489, 3
  store i64 %5490, i64* %PC.i39
  %5491 = shl i64 %5488, 32
  %5492 = ashr exact i64 %5491, 32
  store i64 %5492, i64* %RDX.i41, align 8
  store %struct.Memory* %loadMem_40401d, %struct.Memory** %MEMORY
  %loadMem_404020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5494 = getelementptr inbounds %struct.GPR, %struct.GPR* %5493, i32 0, i32 33
  %5495 = getelementptr inbounds %struct.Reg, %struct.Reg* %5494, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5495 to i64*
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5497 = getelementptr inbounds %struct.GPR, %struct.GPR* %5496, i32 0, i32 1
  %5498 = getelementptr inbounds %struct.Reg, %struct.Reg* %5497, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %5498 to i64*
  %5499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5500 = getelementptr inbounds %struct.GPR, %struct.GPR* %5499, i32 0, i32 7
  %5501 = getelementptr inbounds %struct.Reg, %struct.Reg* %5500, i32 0, i32 0
  %RDX.i38 = bitcast %union.anon* %5501 to i64*
  %5502 = load i64, i64* %RDX.i38
  %5503 = mul i64 %5502, 4
  %5504 = add i64 %5503, 6472384
  %5505 = load i64, i64* %PC.i36
  %5506 = add i64 %5505, 7
  store i64 %5506, i64* %PC.i36
  %5507 = inttoptr i64 %5504 to i32*
  %5508 = load i32, i32* %5507
  %5509 = zext i32 %5508 to i64
  store i64 %5509, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_404020, %struct.Memory** %MEMORY
  %loadMem_404027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5511 = getelementptr inbounds %struct.GPR, %struct.GPR* %5510, i32 0, i32 33
  %5512 = getelementptr inbounds %struct.Reg, %struct.Reg* %5511, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5512 to i64*
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5514 = getelementptr inbounds %struct.GPR, %struct.GPR* %5513, i32 0, i32 1
  %5515 = getelementptr inbounds %struct.Reg, %struct.Reg* %5514, i32 0, i32 0
  %5516 = bitcast %union.anon* %5515 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5516, i32 0, i32 0
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 9
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %5520 = bitcast %union.anon* %5519 to %struct.anon.2*
  %SIL.i35 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5520, i32 0, i32 0
  %5521 = load i8, i8* %AL.i
  %5522 = zext i8 %5521 to i64
  %5523 = load i64, i64* %PC.i34
  %5524 = add i64 %5523, 3
  store i64 %5524, i64* %PC.i34
  store i8 %5521, i8* %SIL.i35, align 1
  store %struct.Memory* %loadMem_404027, %struct.Memory** %MEMORY
  %loadMem_40402a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5526 = getelementptr inbounds %struct.GPR, %struct.GPR* %5525, i32 0, i32 33
  %5527 = getelementptr inbounds %struct.Reg, %struct.Reg* %5526, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5527 to i64*
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 7
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %RDX.i32 = bitcast %union.anon* %5530 to i64*
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5532 = getelementptr inbounds %struct.GPR, %struct.GPR* %5531, i32 0, i32 15
  %5533 = getelementptr inbounds %struct.Reg, %struct.Reg* %5532, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %5533 to i64*
  %5534 = load i64, i64* %RBP.i33
  %5535 = sub i64 %5534, 4
  %5536 = load i64, i64* %PC.i31
  %5537 = add i64 %5536, 4
  store i64 %5537, i64* %PC.i31
  %5538 = inttoptr i64 %5535 to i32*
  %5539 = load i32, i32* %5538
  %5540 = sext i32 %5539 to i64
  store i64 %5540, i64* %RDX.i32, align 8
  store %struct.Memory* %loadMem_40402a, %struct.Memory** %MEMORY
  %loadMem_40402e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5542 = getelementptr inbounds %struct.GPR, %struct.GPR* %5541, i32 0, i32 33
  %5543 = getelementptr inbounds %struct.Reg, %struct.Reg* %5542, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5543 to i64*
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 7
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %RDX.i30 = bitcast %union.anon* %5546 to i64*
  %5547 = load i64, i64* %RDX.i30
  %5548 = load i64, i64* %PC.i29
  %5549 = add i64 %5548, 7
  store i64 %5549, i64* %PC.i29
  %5550 = sext i64 %5547 to i128
  %5551 = and i128 %5550, -18446744073709551616
  %5552 = zext i64 %5547 to i128
  %5553 = or i128 %5551, %5552
  %5554 = mul i128 144, %5553
  %5555 = trunc i128 %5554 to i64
  store i64 %5555, i64* %RDX.i30, align 8
  %5556 = sext i64 %5555 to i128
  %5557 = icmp ne i128 %5556, %5554
  %5558 = zext i1 %5557 to i8
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5558, i8* %5559, align 1
  %5560 = trunc i128 %5554 to i32
  %5561 = and i32 %5560, 255
  %5562 = call i32 @llvm.ctpop.i32(i32 %5561)
  %5563 = trunc i32 %5562 to i8
  %5564 = and i8 %5563, 1
  %5565 = xor i8 %5564, 1
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5565, i8* %5566, align 1
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5567, align 1
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5568, align 1
  %5569 = lshr i64 %5555, 63
  %5570 = trunc i64 %5569 to i8
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5570, i8* %5571, align 1
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5558, i8* %5572, align 1
  store %struct.Memory* %loadMem_40402e, %struct.Memory** %MEMORY
  %loadMem_404035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5574 = getelementptr inbounds %struct.GPR, %struct.GPR* %5573, i32 0, i32 33
  %5575 = getelementptr inbounds %struct.Reg, %struct.Reg* %5574, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5575 to i64*
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5577 = getelementptr inbounds %struct.GPR, %struct.GPR* %5576, i32 0, i32 5
  %5578 = getelementptr inbounds %struct.Reg, %struct.Reg* %5577, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %5578 to i64*
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5580 = getelementptr inbounds %struct.GPR, %struct.GPR* %5579, i32 0, i32 7
  %5581 = getelementptr inbounds %struct.Reg, %struct.Reg* %5580, i32 0, i32 0
  %RDX.i28 = bitcast %union.anon* %5581 to i64*
  %5582 = load i64, i64* %RCX.i27
  %5583 = load i64, i64* %RDX.i28
  %5584 = load i64, i64* %PC.i26
  %5585 = add i64 %5584, 3
  store i64 %5585, i64* %PC.i26
  %5586 = add i64 %5583, %5582
  store i64 %5586, i64* %RCX.i27, align 8
  %5587 = icmp ult i64 %5586, %5582
  %5588 = icmp ult i64 %5586, %5583
  %5589 = or i1 %5587, %5588
  %5590 = zext i1 %5589 to i8
  %5591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5590, i8* %5591, align 1
  %5592 = trunc i64 %5586 to i32
  %5593 = and i32 %5592, 255
  %5594 = call i32 @llvm.ctpop.i32(i32 %5593)
  %5595 = trunc i32 %5594 to i8
  %5596 = and i8 %5595, 1
  %5597 = xor i8 %5596, 1
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5597, i8* %5598, align 1
  %5599 = xor i64 %5583, %5582
  %5600 = xor i64 %5599, %5586
  %5601 = lshr i64 %5600, 4
  %5602 = trunc i64 %5601 to i8
  %5603 = and i8 %5602, 1
  %5604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5603, i8* %5604, align 1
  %5605 = icmp eq i64 %5586, 0
  %5606 = zext i1 %5605 to i8
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5606, i8* %5607, align 1
  %5608 = lshr i64 %5586, 63
  %5609 = trunc i64 %5608 to i8
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5609, i8* %5610, align 1
  %5611 = lshr i64 %5582, 63
  %5612 = lshr i64 %5583, 63
  %5613 = xor i64 %5608, %5611
  %5614 = xor i64 %5608, %5612
  %5615 = add i64 %5613, %5614
  %5616 = icmp eq i64 %5615, 2
  %5617 = zext i1 %5616 to i8
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5617, i8* %5618, align 1
  store %struct.Memory* %loadMem_404035, %struct.Memory** %MEMORY
  %loadMem_404038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5620 = getelementptr inbounds %struct.GPR, %struct.GPR* %5619, i32 0, i32 33
  %5621 = getelementptr inbounds %struct.Reg, %struct.Reg* %5620, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5621 to i64*
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5623 = getelementptr inbounds %struct.GPR, %struct.GPR* %5622, i32 0, i32 7
  %5624 = getelementptr inbounds %struct.Reg, %struct.Reg* %5623, i32 0, i32 0
  %RDX.i24 = bitcast %union.anon* %5624 to i64*
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5626 = getelementptr inbounds %struct.GPR, %struct.GPR* %5625, i32 0, i32 15
  %5627 = getelementptr inbounds %struct.Reg, %struct.Reg* %5626, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %5627 to i64*
  %5628 = load i64, i64* %RBP.i25
  %5629 = sub i64 %5628, 8
  %5630 = load i64, i64* %PC.i23
  %5631 = add i64 %5630, 4
  store i64 %5631, i64* %PC.i23
  %5632 = inttoptr i64 %5629 to i32*
  %5633 = load i32, i32* %5632
  %5634 = sext i32 %5633 to i64
  store i64 %5634, i64* %RDX.i24, align 8
  store %struct.Memory* %loadMem_404038, %struct.Memory** %MEMORY
  %loadMem_40403c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5636 = getelementptr inbounds %struct.GPR, %struct.GPR* %5635, i32 0, i32 33
  %5637 = getelementptr inbounds %struct.Reg, %struct.Reg* %5636, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5637 to i64*
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5639 = getelementptr inbounds %struct.GPR, %struct.GPR* %5638, i32 0, i32 9
  %5640 = getelementptr inbounds %struct.Reg, %struct.Reg* %5639, i32 0, i32 0
  %5641 = bitcast %union.anon* %5640 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5641, i32 0, i32 0
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 5
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5644 to i64*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 7
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5647 to i64*
  %5648 = load i64, i64* %RCX.i
  %5649 = load i64, i64* %RDX.i
  %5650 = add i64 %5649, %5648
  %5651 = load i8, i8* %SIL.i
  %5652 = zext i8 %5651 to i64
  %5653 = load i64, i64* %PC.i22
  %5654 = add i64 %5653, 4
  store i64 %5654, i64* %PC.i22
  %5655 = inttoptr i64 %5650 to i8*
  store i8 %5651, i8* %5655
  store %struct.Memory* %loadMem_40403c, %struct.Memory** %MEMORY
  %loadMem_404040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5657 = getelementptr inbounds %struct.GPR, %struct.GPR* %5656, i32 0, i32 33
  %5658 = getelementptr inbounds %struct.Reg, %struct.Reg* %5657, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5658 to i64*
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5660 = getelementptr inbounds %struct.GPR, %struct.GPR* %5659, i32 0, i32 1
  %5661 = getelementptr inbounds %struct.Reg, %struct.Reg* %5660, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %5661 to i64*
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 15
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %5664 to i64*
  %5665 = load i64, i64* %RBP.i21
  %5666 = sub i64 %5665, 8
  %5667 = load i64, i64* %PC.i19
  %5668 = add i64 %5667, 3
  store i64 %5668, i64* %PC.i19
  %5669 = inttoptr i64 %5666 to i32*
  %5670 = load i32, i32* %5669
  %5671 = zext i32 %5670 to i64
  store i64 %5671, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_404040, %struct.Memory** %MEMORY
  %loadMem_404043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5673 = getelementptr inbounds %struct.GPR, %struct.GPR* %5672, i32 0, i32 33
  %5674 = getelementptr inbounds %struct.Reg, %struct.Reg* %5673, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5674 to i64*
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5676 = getelementptr inbounds %struct.GPR, %struct.GPR* %5675, i32 0, i32 1
  %5677 = getelementptr inbounds %struct.Reg, %struct.Reg* %5676, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %5677 to i64*
  %5678 = load i64, i64* %RAX.i18
  %5679 = load i64, i64* %PC.i17
  %5680 = add i64 %5679, 3
  store i64 %5680, i64* %PC.i17
  %5681 = trunc i64 %5678 to i32
  %5682 = add i32 1, %5681
  %5683 = zext i32 %5682 to i64
  store i64 %5683, i64* %RAX.i18, align 8
  %5684 = icmp ult i32 %5682, %5681
  %5685 = icmp ult i32 %5682, 1
  %5686 = or i1 %5684, %5685
  %5687 = zext i1 %5686 to i8
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5687, i8* %5688, align 1
  %5689 = and i32 %5682, 255
  %5690 = call i32 @llvm.ctpop.i32(i32 %5689)
  %5691 = trunc i32 %5690 to i8
  %5692 = and i8 %5691, 1
  %5693 = xor i8 %5692, 1
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5693, i8* %5694, align 1
  %5695 = xor i64 1, %5678
  %5696 = trunc i64 %5695 to i32
  %5697 = xor i32 %5696, %5682
  %5698 = lshr i32 %5697, 4
  %5699 = trunc i32 %5698 to i8
  %5700 = and i8 %5699, 1
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5700, i8* %5701, align 1
  %5702 = icmp eq i32 %5682, 0
  %5703 = zext i1 %5702 to i8
  %5704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5703, i8* %5704, align 1
  %5705 = lshr i32 %5682, 31
  %5706 = trunc i32 %5705 to i8
  %5707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5706, i8* %5707, align 1
  %5708 = lshr i32 %5681, 31
  %5709 = xor i32 %5705, %5708
  %5710 = add i32 %5709, %5705
  %5711 = icmp eq i32 %5710, 2
  %5712 = zext i1 %5711 to i8
  %5713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5712, i8* %5713, align 1
  store %struct.Memory* %loadMem_404043, %struct.Memory** %MEMORY
  %loadMem_404046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5715 = getelementptr inbounds %struct.GPR, %struct.GPR* %5714, i32 0, i32 33
  %5716 = getelementptr inbounds %struct.Reg, %struct.Reg* %5715, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5716 to i64*
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5718 = getelementptr inbounds %struct.GPR, %struct.GPR* %5717, i32 0, i32 1
  %5719 = getelementptr inbounds %struct.Reg, %struct.Reg* %5718, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %5719 to i32*
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5721 = getelementptr inbounds %struct.GPR, %struct.GPR* %5720, i32 0, i32 15
  %5722 = getelementptr inbounds %struct.Reg, %struct.Reg* %5721, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %5722 to i64*
  %5723 = load i64, i64* %RBP.i16
  %5724 = sub i64 %5723, 8
  %5725 = load i32, i32* %EAX.i15
  %5726 = zext i32 %5725 to i64
  %5727 = load i64, i64* %PC.i14
  %5728 = add i64 %5727, 3
  store i64 %5728, i64* %PC.i14
  %5729 = inttoptr i64 %5724 to i32*
  store i32 %5725, i32* %5729
  store %struct.Memory* %loadMem_404046, %struct.Memory** %MEMORY
  %loadMem_404049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5731 = getelementptr inbounds %struct.GPR, %struct.GPR* %5730, i32 0, i32 33
  %5732 = getelementptr inbounds %struct.Reg, %struct.Reg* %5731, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5732 to i64*
  %5733 = load i64, i64* %PC.i13
  %5734 = add i64 %5733, -959
  %5735 = load i64, i64* %PC.i13
  %5736 = add i64 %5735, 5
  store i64 %5736, i64* %PC.i13
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5734, i64* %5737, align 8
  store %struct.Memory* %loadMem_404049, %struct.Memory** %MEMORY
  br label %block_.L_403c8a

block_.L_40404e:                                  ; preds = %block_.L_403c8a
  %loadMem_40404e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5739 = getelementptr inbounds %struct.GPR, %struct.GPR* %5738, i32 0, i32 33
  %5740 = getelementptr inbounds %struct.Reg, %struct.Reg* %5739, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5740 to i64*
  %5741 = load i64, i64* %PC.i12
  %5742 = add i64 %5741, 5
  %5743 = load i64, i64* %PC.i12
  %5744 = add i64 %5743, 5
  store i64 %5744, i64* %PC.i12
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5742, i64* %5745, align 8
  store %struct.Memory* %loadMem_40404e, %struct.Memory** %MEMORY
  br label %block_.L_404053

block_.L_404053:                                  ; preds = %block_.L_40404e
  %loadMem_404053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 33
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5748 to i64*
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5750 = getelementptr inbounds %struct.GPR, %struct.GPR* %5749, i32 0, i32 1
  %5751 = getelementptr inbounds %struct.Reg, %struct.Reg* %5750, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %5751 to i64*
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5753 = getelementptr inbounds %struct.GPR, %struct.GPR* %5752, i32 0, i32 15
  %5754 = getelementptr inbounds %struct.Reg, %struct.Reg* %5753, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %5754 to i64*
  %5755 = load i64, i64* %RBP.i11
  %5756 = sub i64 %5755, 4
  %5757 = load i64, i64* %PC.i9
  %5758 = add i64 %5757, 3
  store i64 %5758, i64* %PC.i9
  %5759 = inttoptr i64 %5756 to i32*
  %5760 = load i32, i32* %5759
  %5761 = zext i32 %5760 to i64
  store i64 %5761, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_404053, %struct.Memory** %MEMORY
  %loadMem_404056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5763 = getelementptr inbounds %struct.GPR, %struct.GPR* %5762, i32 0, i32 33
  %5764 = getelementptr inbounds %struct.Reg, %struct.Reg* %5763, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %5764 to i64*
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5766 = getelementptr inbounds %struct.GPR, %struct.GPR* %5765, i32 0, i32 1
  %5767 = getelementptr inbounds %struct.Reg, %struct.Reg* %5766, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5767 to i64*
  %5768 = load i64, i64* %RAX.i
  %5769 = load i64, i64* %PC.i8
  %5770 = add i64 %5769, 3
  store i64 %5770, i64* %PC.i8
  %5771 = trunc i64 %5768 to i32
  %5772 = add i32 1, %5771
  %5773 = zext i32 %5772 to i64
  store i64 %5773, i64* %RAX.i, align 8
  %5774 = icmp ult i32 %5772, %5771
  %5775 = icmp ult i32 %5772, 1
  %5776 = or i1 %5774, %5775
  %5777 = zext i1 %5776 to i8
  %5778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5777, i8* %5778, align 1
  %5779 = and i32 %5772, 255
  %5780 = call i32 @llvm.ctpop.i32(i32 %5779)
  %5781 = trunc i32 %5780 to i8
  %5782 = and i8 %5781, 1
  %5783 = xor i8 %5782, 1
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5783, i8* %5784, align 1
  %5785 = xor i64 1, %5768
  %5786 = trunc i64 %5785 to i32
  %5787 = xor i32 %5786, %5772
  %5788 = lshr i32 %5787, 4
  %5789 = trunc i32 %5788 to i8
  %5790 = and i8 %5789, 1
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5790, i8* %5791, align 1
  %5792 = icmp eq i32 %5772, 0
  %5793 = zext i1 %5792 to i8
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5793, i8* %5794, align 1
  %5795 = lshr i32 %5772, 31
  %5796 = trunc i32 %5795 to i8
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5796, i8* %5797, align 1
  %5798 = lshr i32 %5771, 31
  %5799 = xor i32 %5795, %5798
  %5800 = add i32 %5799, %5795
  %5801 = icmp eq i32 %5800, 2
  %5802 = zext i1 %5801 to i8
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5802, i8* %5803, align 1
  store %struct.Memory* %loadMem_404056, %struct.Memory** %MEMORY
  %loadMem_404059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 33
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5806 to i64*
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 1
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5809 to i32*
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 15
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %5812 to i64*
  %5813 = load i64, i64* %RBP.i7
  %5814 = sub i64 %5813, 4
  %5815 = load i32, i32* %EAX.i
  %5816 = zext i32 %5815 to i64
  %5817 = load i64, i64* %PC.i6
  %5818 = add i64 %5817, 3
  store i64 %5818, i64* %PC.i6
  %5819 = inttoptr i64 %5814 to i32*
  store i32 %5815, i32* %5819
  store %struct.Memory* %loadMem_404059, %struct.Memory** %MEMORY
  %loadMem_40405c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 33
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5822 to i64*
  %5823 = load i64, i64* %PC.i5
  %5824 = add i64 %5823, -998
  %5825 = load i64, i64* %PC.i5
  %5826 = add i64 %5825, 5
  store i64 %5826, i64* %PC.i5
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5824, i64* %5827, align 8
  store %struct.Memory* %loadMem_40405c, %struct.Memory** %MEMORY
  br label %block_.L_403c76

block_.L_404061:                                  ; preds = %block_.L_403c76
  %loadMem_404061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 33
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 13
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5833 to i64*
  %5834 = load i64, i64* %RSP.i
  %5835 = load i64, i64* %PC.i4
  %5836 = add i64 %5835, 4
  store i64 %5836, i64* %PC.i4
  %5837 = add i64 64, %5834
  store i64 %5837, i64* %RSP.i, align 8
  %5838 = icmp ult i64 %5837, %5834
  %5839 = icmp ult i64 %5837, 64
  %5840 = or i1 %5838, %5839
  %5841 = zext i1 %5840 to i8
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5841, i8* %5842, align 1
  %5843 = trunc i64 %5837 to i32
  %5844 = and i32 %5843, 255
  %5845 = call i32 @llvm.ctpop.i32(i32 %5844)
  %5846 = trunc i32 %5845 to i8
  %5847 = and i8 %5846, 1
  %5848 = xor i8 %5847, 1
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5848, i8* %5849, align 1
  %5850 = xor i64 64, %5834
  %5851 = xor i64 %5850, %5837
  %5852 = lshr i64 %5851, 4
  %5853 = trunc i64 %5852 to i8
  %5854 = and i8 %5853, 1
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5854, i8* %5855, align 1
  %5856 = icmp eq i64 %5837, 0
  %5857 = zext i1 %5856 to i8
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5857, i8* %5858, align 1
  %5859 = lshr i64 %5837, 63
  %5860 = trunc i64 %5859 to i8
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5860, i8* %5861, align 1
  %5862 = lshr i64 %5834, 63
  %5863 = xor i64 %5859, %5862
  %5864 = add i64 %5863, %5859
  %5865 = icmp eq i64 %5864, 2
  %5866 = zext i1 %5865 to i8
  %5867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5866, i8* %5867, align 1
  store %struct.Memory* %loadMem_404061, %struct.Memory** %MEMORY
  %loadMem_404065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5869 = getelementptr inbounds %struct.GPR, %struct.GPR* %5868, i32 0, i32 33
  %5870 = getelementptr inbounds %struct.Reg, %struct.Reg* %5869, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5870 to i64*
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 15
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5873 to i64*
  %5874 = load i64, i64* %PC.i2
  %5875 = add i64 %5874, 1
  store i64 %5875, i64* %PC.i2
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5877 = load i64, i64* %5876, align 8
  %5878 = add i64 %5877, 8
  %5879 = inttoptr i64 %5877 to i64*
  %5880 = load i64, i64* %5879
  store i64 %5880, i64* %RBP.i3, align 8
  store i64 %5878, i64* %5876, align 8
  store %struct.Memory* %loadMem_404065, %struct.Memory** %MEMORY
  %loadMem_404066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5882 = getelementptr inbounds %struct.GPR, %struct.GPR* %5881, i32 0, i32 33
  %5883 = getelementptr inbounds %struct.Reg, %struct.Reg* %5882, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5883 to i64*
  %5884 = load i64, i64* %PC.i1
  %5885 = add i64 %5884, 1
  store i64 %5885, i64* %PC.i1
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5888 = load i64, i64* %5887, align 8
  %5889 = inttoptr i64 %5888 to i64*
  %5890 = load i64, i64* %5889
  store i64 %5890, i64* %5886, align 8
  %5891 = add i64 %5888, 8
  store i64 %5891, i64* %5887, align 8
  store %struct.Memory* %loadMem_404066, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_404066
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

define %struct.Memory* @routine_cmpl__0x40__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 64
  %16 = icmp ult i32 %14, 64
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
  %25 = xor i32 %14, 64
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

define %struct.Memory* @routine_jge_.L_403c6f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x40__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 64
  %16 = icmp ult i32 %14, 64
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
  %25 = xor i32 %14, 64
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

define %struct.Memory* @routine_jge_.L_403c5c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_andl__0x7___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 7, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_andl__0x7___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 7, %9
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

define %struct.Memory* @routine_subl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_callq_.abs_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_sarl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 32
  %13 = ashr exact i64 %12, 32
  %14 = ashr i64 %13, 2
  %15 = lshr i64 %14, 1
  %16 = trunc i64 %14 to i8
  %17 = and i8 %16, 1
  %18 = trunc i64 %15 to i32
  %19 = and i64 %15, 4294967295
  store i64 %19, i64* %RAX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %18, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %32 = lshr i32 %18, 31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %31, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_sarl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 32
  %13 = ashr exact i64 %12, 32
  %14 = ashr i64 %13, 2
  %15 = lshr i64 %14, 1
  %16 = trunc i64 %14 to i8
  %17 = and i8 %16, 1
  %18 = trunc i64 %15 to i32
  %19 = and i64 %15, 4294967295
  store i64 %19, i64* %RCX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %18, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %32 = lshr i32 %18, 31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %31, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x84ad50___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x84ad50_type* @G__0x84ad50 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movslq_0x427a50___rsi_4____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 4356688
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x240___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 576, %15
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

define %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
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

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_403c16(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_403c1c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x88c1b0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x88c1b0_type* @G__0x88c1b0 to i64), i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq_0x427a50___rdx_4____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 4356688
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x240___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 576, %15
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

define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_403b90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_403c61(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_403b7f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x90__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 144
  %16 = icmp ult i32 %14, 144
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
  %25 = xor i32 %14, 144
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

define %struct.Memory* @routine_jge_.L_404061(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x90__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 144
  %16 = icmp ult i32 %14, 144
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
  %25 = xor i32 %14, 144
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

define %struct.Memory* @routine_jge_.L_40404e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x425890___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 4348048
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x425890___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 4348048
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %18, %20
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RCX, align 8
  %23 = icmp ult i32 %18, %20
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %21, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i32 %20, %18
  %33 = xor i32 %32, %21
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %21, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %21, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %18, 31
  %45 = lshr i32 %20, 31
  %46 = xor i32 %45, %44
  %47 = xor i32 %41, %44
  %48 = add i32 %47, %46
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x425650___rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4347472
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x425650___rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4347472
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %18, %20
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RCX, align 8
  %23 = icmp ult i32 %18, %20
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %21, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i32 %20, %18
  %33 = xor i32 %32, %21
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %21, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %21, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %18, 31
  %45 = lshr i32 %20, 31
  %46 = xor i32 %45, %44
  %47 = xor i32 %41, %44
  %48 = add i32 %47, %46
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_jle_.L_403d04(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_403d24(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x425650___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 4347472
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x425650___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 4347472
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %18, %20
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RCX, align 8
  %23 = icmp ult i32 %18, %20
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %21, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i32 %20, %18
  %33 = xor i32 %32, %21
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %21, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %21, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %18, 31
  %45 = lshr i32 %20, 31
  %46 = xor i32 %45, %44
  %47 = xor i32 %41, %44
  %48 = add i32 %47, %46
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
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

define %struct.Memory* @routine_movq__0x62ea40___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x62ea40_type* @G__0x62ea40 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x62c230___rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6472240
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__al___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x90___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 144, %15
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

define %struct.Memory* @routine_movb__sil____rcx__rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %SIL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
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

define %struct.Memory* @routine_movl_0x425890___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4348048
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_subl_0x425890___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4348048
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %18, %20
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %18, %20
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %21, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i32 %20, %18
  %33 = xor i32 %32, %21
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %21, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %21, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %18, 31
  %45 = lshr i32 %20, 31
  %46 = xor i32 %45, %44
  %47 = xor i32 %41, %44
  %48 = add i32 %47, %46
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x425650___rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 4347472
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x425650___rcx_4____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 4347472
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %18, %20
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RDI, align 8
  %23 = icmp ult i32 %18, %20
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %21, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i32 %20, %18
  %33 = xor i32 %32, %21
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %21, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %21, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %18, 31
  %45 = lshr i32 %20, 31
  %46 = xor i32 %45, %44
  %47 = xor i32 %41, %44
  %48 = add i32 %47, %46
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
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

define %struct.Memory* @routine_cmpl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %EDI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_jle_.L_403dbf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_403ddf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x8667b0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x8667b0_type* @G__0x8667b0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x62c2f0___rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6472432
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_403e7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_403e9a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x8870b0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x8870b0_type* @G__0x8870b0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x62c290___rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6472336
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_403f35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_403f55(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x633b60___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x633b60_type* @G__0x633b60 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x62c260___rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6472288
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jle_.L_403ff0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_404010(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x85f3f0___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x85f3f0_type* @G__0x85f3f0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x62c2c0___rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6472384
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_403c8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_404053(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_403c76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
