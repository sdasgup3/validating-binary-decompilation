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
%G_0x3b100__rip__type = type <{ [8 x i8] }>
%G__0x45712f_type = type <{ [8 x i8] }>
%G__0x457138_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x3b100__rip_ = global %G_0x3b100__rip__type zeroinitializer
@G__0x45712f = global %G__0x45712f_type zeroinitializer
@G__0x457138 = global %G__0x457138_type zeroinitializer

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

declare %struct.Memory* @sub_4194a0.ExtremeValueP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @PrintXMGRDistribution(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4195e0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4195e0, %struct.Memory** %MEMORY
  %loadMem_4195e1 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4195e1, %struct.Memory** %MEMORY
  %loadMem_4195e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i27 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i27
  %36 = load i64, i64* %PC.i26
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i26
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i27, align 8
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
  store %struct.Memory* %loadMem_4195e4, %struct.Memory** %MEMORY
  %loadMem_4195e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i87 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i88
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i87
  %79 = load i64, i64* %PC.i86
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i86
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_4195e8, %struct.Memory** %MEMORY
  %loadMem_4195ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RSI.i110 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i111
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %RSI.i110
  %94 = load i64, i64* %PC.i109
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC.i109
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  store %struct.Memory* %loadMem_4195ec, %struct.Memory** %MEMORY
  %loadMem_4195f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 15
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %102 to i64*
  %103 = load i64, i64* %RBP.i190
  %104 = sub i64 %103, 24
  %105 = load i64, i64* %PC.i189
  %106 = add i64 %105, 7
  store i64 %106, i64* %PC.i189
  %107 = inttoptr i64 %104 to i32*
  store i32 0, i32* %107
  store %struct.Memory* %loadMem_4195f0, %struct.Memory** %MEMORY
  %loadMem_4195f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 33
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %110 to i64*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 9
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %RSI.i187 = bitcast %union.anon* %113 to i64*
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 15
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %116 to i64*
  %117 = load i64, i64* %RBP.i188
  %118 = sub i64 %117, 16
  %119 = load i64, i64* %PC.i186
  %120 = add i64 %119, 4
  store i64 %120, i64* %PC.i186
  %121 = inttoptr i64 %118 to i64*
  %122 = load i64, i64* %121
  store i64 %122, i64* %RSI.i187, align 8
  store %struct.Memory* %loadMem_4195f7, %struct.Memory** %MEMORY
  %loadMem_4195fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 9
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RSI.i185 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RSI.i185
  %133 = add i64 %132, 20
  %134 = load i64, i64* %PC.i183
  %135 = add i64 %134, 3
  store i64 %135, i64* %PC.i183
  %136 = inttoptr i64 %133 to i32*
  %137 = load i32, i32* %136
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_4195fb, %struct.Memory** %MEMORY
  %loadMem_4195fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %EAX.i181 = bitcast %union.anon* %144 to i32*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %RBP.i182
  %149 = sub i64 %148, 20
  %150 = load i32, i32* %EAX.i181
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %PC.i180
  %153 = add i64 %152, 3
  store i64 %153, i64* %PC.i180
  %154 = inttoptr i64 %149 to i32*
  store i32 %150, i32* %154
  store %struct.Memory* %loadMem_4195fe, %struct.Memory** %MEMORY
  br label %block_.L_419601

block_.L_419601:                                  ; preds = %block_419611, %entry
  %loadMem_419601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 15
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %RBP.i179
  %165 = sub i64 %164, 20
  %166 = load i64, i64* %PC.i177
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC.i177
  %168 = inttoptr i64 %165 to i32*
  %169 = load i32, i32* %168
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RAX.i178, align 8
  store %struct.Memory* %loadMem_419601, %struct.Memory** %MEMORY
  %loadMem_419604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 15
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %179 to i64*
  %180 = load i64, i64* %RBP.i176
  %181 = sub i64 %180, 16
  %182 = load i64, i64* %PC.i174
  %183 = add i64 %182, 4
  store i64 %183, i64* %PC.i174
  %184 = inttoptr i64 %181 to i64*
  %185 = load i64, i64* %184
  store i64 %185, i64* %RCX.i175, align 8
  store %struct.Memory* %loadMem_419604, %struct.Memory** %MEMORY
  %loadMem_419608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 33
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %EAX.i172 = bitcast %union.anon* %191 to i32*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %194 to i64*
  %195 = load i32, i32* %EAX.i172
  %196 = zext i32 %195 to i64
  %197 = load i64, i64* %RCX.i173
  %198 = add i64 %197, 16
  %199 = load i64, i64* %PC.i171
  %200 = add i64 %199, 3
  store i64 %200, i64* %PC.i171
  %201 = inttoptr i64 %198 to i32*
  %202 = load i32, i32* %201
  %203 = sub i32 %195, %202
  %204 = icmp ult i32 %195, %202
  %205 = zext i1 %204 to i8
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %205, i8* %206, align 1
  %207 = and i32 %203, 255
  %208 = call i32 @llvm.ctpop.i32(i32 %207)
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  %211 = xor i8 %210, 1
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %211, i8* %212, align 1
  %213 = xor i32 %202, %195
  %214 = xor i32 %213, %203
  %215 = lshr i32 %214, 4
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %217, i8* %218, align 1
  %219 = icmp eq i32 %203, 0
  %220 = zext i1 %219 to i8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %220, i8* %221, align 1
  %222 = lshr i32 %203, 31
  %223 = trunc i32 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %223, i8* %224, align 1
  %225 = lshr i32 %195, 31
  %226 = lshr i32 %202, 31
  %227 = xor i32 %226, %225
  %228 = xor i32 %222, %225
  %229 = add i32 %228, %227
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %231, i8* %232, align 1
  store %struct.Memory* %loadMem_419608, %struct.Memory** %MEMORY
  %loadMem_41960b = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %PC.i170
  %237 = add i64 %236, 103
  %238 = load i64, i64* %PC.i170
  %239 = add i64 %238, 6
  %240 = load i64, i64* %PC.i170
  %241 = add i64 %240, 6
  store i64 %241, i64* %PC.i170
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %243 = load i8, i8* %242, align 1
  %244 = icmp eq i8 %243, 0
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %246 = load i8, i8* %245, align 1
  %247 = icmp ne i8 %246, 0
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %249 = load i8, i8* %248, align 1
  %250 = icmp ne i8 %249, 0
  %251 = xor i1 %247, %250
  %252 = xor i1 %251, true
  %253 = and i1 %244, %252
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %BRANCH_TAKEN, align 1
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %256 = select i1 %253, i64 %237, i64 %239
  store i64 %256, i64* %255, align 8
  store %struct.Memory* %loadMem_41960b, %struct.Memory** %MEMORY
  %loadBr_41960b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41960b = icmp eq i8 %loadBr_41960b, 1
  br i1 %cmpBr_41960b, label %block_.L_419672, label %block_419611

block_419611:                                     ; preds = %block_.L_419601
  %loadMem_419611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 33
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %259 to i64*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 9
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %RSI.i169 = bitcast %union.anon* %262 to i64*
  %263 = load i64, i64* %PC.i168
  %264 = add i64 %263, 10
  store i64 %264, i64* %PC.i168
  store i64 ptrtoint (%G__0x45712f_type* @G__0x45712f to i64), i64* %RSI.i169, align 8
  store %struct.Memory* %loadMem_419611, %struct.Memory** %MEMORY
  %loadMem_41961b = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %270 to i64*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 15
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %273 to i64*
  %274 = load i64, i64* %RBP.i167
  %275 = sub i64 %274, 16
  %276 = load i64, i64* %PC.i165
  %277 = add i64 %276, 4
  store i64 %277, i64* %PC.i165
  %278 = inttoptr i64 %275 to i64*
  %279 = load i64, i64* %278
  store i64 %279, i64* %RAX.i166, align 8
  store %struct.Memory* %loadMem_41961b, %struct.Memory** %MEMORY
  %loadMem_41961f = load %struct.Memory*, %struct.Memory** %MEMORY
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 33
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %285 to i64*
  %286 = load i64, i64* %RAX.i164
  %287 = load i64, i64* %PC.i163
  %288 = add i64 %287, 3
  store i64 %288, i64* %PC.i163
  %289 = inttoptr i64 %286 to i64*
  %290 = load i64, i64* %289
  store i64 %290, i64* %RAX.i164, align 8
  store %struct.Memory* %loadMem_41961f, %struct.Memory** %MEMORY
  %loadMem_419622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 33
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 15
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %RBP.i162
  %301 = sub i64 %300, 20
  %302 = load i64, i64* %PC.i160
  %303 = add i64 %302, 3
  store i64 %303, i64* %PC.i160
  %304 = inttoptr i64 %301 to i32*
  %305 = load i32, i32* %304
  %306 = zext i32 %305 to i64
  store i64 %306, i64* %RCX.i161, align 8
  store %struct.Memory* %loadMem_419622, %struct.Memory** %MEMORY
  %loadMem_419625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 33
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 7
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RDX.i158 = bitcast %union.anon* %312 to i64*
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 15
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %315 to i64*
  %316 = load i64, i64* %RBP.i159
  %317 = sub i64 %316, 16
  %318 = load i64, i64* %PC.i157
  %319 = add i64 %318, 4
  store i64 %319, i64* %PC.i157
  %320 = inttoptr i64 %317 to i64*
  %321 = load i64, i64* %320
  store i64 %321, i64* %RDX.i158, align 8
  store %struct.Memory* %loadMem_419625, %struct.Memory** %MEMORY
  %loadMem_419629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 33
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 5
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 7
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %330 to i64*
  %331 = load i64, i64* %RCX.i155
  %332 = load i64, i64* %RDX.i156
  %333 = add i64 %332, 8
  %334 = load i64, i64* %PC.i154
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC.i154
  %336 = trunc i64 %331 to i32
  %337 = inttoptr i64 %333 to i32*
  %338 = load i32, i32* %337
  %339 = sub i32 %336, %338
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RCX.i155, align 8
  %341 = icmp ult i32 %336, %338
  %342 = zext i1 %341 to i8
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %342, i8* %343, align 1
  %344 = and i32 %339, 255
  %345 = call i32 @llvm.ctpop.i32(i32 %344)
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %348, i8* %349, align 1
  %350 = xor i32 %338, %336
  %351 = xor i32 %350, %339
  %352 = lshr i32 %351, 4
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %354, i8* %355, align 1
  %356 = icmp eq i32 %339, 0
  %357 = zext i1 %356 to i8
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %357, i8* %358, align 1
  %359 = lshr i32 %339, 31
  %360 = trunc i32 %359 to i8
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %360, i8* %361, align 1
  %362 = lshr i32 %336, 31
  %363 = lshr i32 %338, 31
  %364 = xor i32 %363, %362
  %365 = xor i32 %359, %362
  %366 = add i32 %365, %364
  %367 = icmp eq i32 %366, 2
  %368 = zext i1 %367 to i8
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %368, i8* %369, align 1
  store %struct.Memory* %loadMem_419629, %struct.Memory** %MEMORY
  %loadMem_41962c = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 5
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %ECX.i152 = bitcast %union.anon* %375 to i32*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 7
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RDX.i153 = bitcast %union.anon* %378 to i64*
  %379 = load i32, i32* %ECX.i152
  %380 = zext i32 %379 to i64
  %381 = load i64, i64* %PC.i151
  %382 = add i64 %381, 3
  store i64 %382, i64* %PC.i151
  %383 = shl i64 %380, 32
  %384 = ashr exact i64 %383, 32
  store i64 %384, i64* %RDX.i153, align 8
  store %struct.Memory* %loadMem_41962c, %struct.Memory** %MEMORY
  %loadMem_41962f = load %struct.Memory*, %struct.Memory** %MEMORY
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 33
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 5
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 7
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RDX.i150 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %RAX.i148
  %398 = load i64, i64* %RDX.i150
  %399 = mul i64 %398, 4
  %400 = add i64 %399, %397
  %401 = load i64, i64* %PC.i147
  %402 = add i64 %401, 3
  store i64 %402, i64* %PC.i147
  %403 = inttoptr i64 %400 to i32*
  %404 = load i32, i32* %403
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RCX.i149, align 8
  store %struct.Memory* %loadMem_41962f, %struct.Memory** %MEMORY
  %loadMem_419632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 15
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %RCX.i145
  %416 = load i64, i64* %RBP.i146
  %417 = sub i64 %416, 24
  %418 = load i64, i64* %PC.i144
  %419 = add i64 %418, 3
  store i64 %419, i64* %PC.i144
  %420 = trunc i64 %415 to i32
  %421 = inttoptr i64 %417 to i32*
  %422 = load i32, i32* %421
  %423 = add i32 %422, %420
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RCX.i145, align 8
  %425 = icmp ult i32 %423, %420
  %426 = icmp ult i32 %423, %422
  %427 = or i1 %425, %426
  %428 = zext i1 %427 to i8
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %428, i8* %429, align 1
  %430 = and i32 %423, 255
  %431 = call i32 @llvm.ctpop.i32(i32 %430)
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %434, i8* %435, align 1
  %436 = xor i32 %422, %420
  %437 = xor i32 %436, %423
  %438 = lshr i32 %437, 4
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %440, i8* %441, align 1
  %442 = icmp eq i32 %423, 0
  %443 = zext i1 %442 to i8
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %443, i8* %444, align 1
  %445 = lshr i32 %423, 31
  %446 = trunc i32 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %446, i8* %447, align 1
  %448 = lshr i32 %420, 31
  %449 = lshr i32 %422, 31
  %450 = xor i32 %445, %448
  %451 = xor i32 %445, %449
  %452 = add i32 %450, %451
  %453 = icmp eq i32 %452, 2
  %454 = zext i1 %453 to i8
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %454, i8* %455, align 1
  store %struct.Memory* %loadMem_419632, %struct.Memory** %MEMORY
  %loadMem_419635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 5
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %ECX.i142 = bitcast %union.anon* %461 to i32*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 15
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %464 to i64*
  %465 = load i64, i64* %RBP.i143
  %466 = sub i64 %465, 24
  %467 = load i32, i32* %ECX.i142
  %468 = zext i32 %467 to i64
  %469 = load i64, i64* %PC.i141
  %470 = add i64 %469, 3
  store i64 %470, i64* %PC.i141
  %471 = inttoptr i64 %466 to i32*
  store i32 %467, i32* %471
  store %struct.Memory* %loadMem_419635, %struct.Memory** %MEMORY
  %loadMem_419638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 33
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 11
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %RDI.i139 = bitcast %union.anon* %477 to i64*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 15
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %480 to i64*
  %481 = load i64, i64* %RBP.i140
  %482 = sub i64 %481, 8
  %483 = load i64, i64* %PC.i138
  %484 = add i64 %483, 4
  store i64 %484, i64* %PC.i138
  %485 = inttoptr i64 %482 to i64*
  %486 = load i64, i64* %485
  store i64 %486, i64* %RDI.i139, align 8
  store %struct.Memory* %loadMem_419638, %struct.Memory** %MEMORY
  %loadMem_41963c = load %struct.Memory*, %struct.Memory** %MEMORY
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 33
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %489 to i64*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 5
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 15
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %495 to i64*
  %496 = load i64, i64* %RBP.i137
  %497 = sub i64 %496, 20
  %498 = load i64, i64* %PC.i135
  %499 = add i64 %498, 3
  store i64 %499, i64* %PC.i135
  %500 = inttoptr i64 %497 to i32*
  %501 = load i32, i32* %500
  %502 = zext i32 %501 to i64
  store i64 %502, i64* %RCX.i136, align 8
  store %struct.Memory* %loadMem_41963c, %struct.Memory** %MEMORY
  %loadMem_41963f = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 5
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %RCX.i134
  %510 = load i64, i64* %PC.i133
  %511 = add i64 %510, 3
  store i64 %511, i64* %PC.i133
  %512 = trunc i64 %509 to i32
  %513 = add i32 1, %512
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RCX.i134, align 8
  %515 = icmp ult i32 %513, %512
  %516 = icmp ult i32 %513, 1
  %517 = or i1 %515, %516
  %518 = zext i1 %517 to i8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %518, i8* %519, align 1
  %520 = and i32 %513, 255
  %521 = call i32 @llvm.ctpop.i32(i32 %520)
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %524, i8* %525, align 1
  %526 = xor i64 1, %509
  %527 = trunc i64 %526 to i32
  %528 = xor i32 %527, %513
  %529 = lshr i32 %528, 4
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %531, i8* %532, align 1
  %533 = icmp eq i32 %513, 0
  %534 = zext i1 %533 to i8
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %534, i8* %535, align 1
  %536 = lshr i32 %513, 31
  %537 = trunc i32 %536 to i8
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %537, i8* %538, align 1
  %539 = lshr i32 %512, 31
  %540 = xor i32 %536, %539
  %541 = add i32 %540, %536
  %542 = icmp eq i32 %541, 2
  %543 = zext i1 %542 to i8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %543, i8* %544, align 1
  store %struct.Memory* %loadMem_41963f, %struct.Memory** %MEMORY
  %loadMem_419642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 33
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 15
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %552 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %551, i64 0, i64 0
  %YMM0.i132 = bitcast %union.VectorReg* %552 to %"class.std::bitset"*
  %553 = bitcast %"class.std::bitset"* %YMM0.i132 to i8*
  %554 = load i64, i64* %RBP.i131
  %555 = sub i64 %554, 24
  %556 = load i64, i64* %PC.i130
  %557 = add i64 %556, 5
  store i64 %557, i64* %PC.i130
  %558 = bitcast i8* %553 to <2 x i32>*
  %559 = load <2 x i32>, <2 x i32>* %558, align 1
  %560 = getelementptr inbounds i8, i8* %553, i64 8
  %561 = bitcast i8* %560 to <2 x i32>*
  %562 = load <2 x i32>, <2 x i32>* %561, align 1
  %563 = inttoptr i64 %555 to i32*
  %564 = load i32, i32* %563
  %565 = sitofp i32 %564 to float
  %566 = bitcast i8* %553 to float*
  store float %565, float* %566, align 1
  %567 = extractelement <2 x i32> %559, i32 1
  %568 = getelementptr inbounds i8, i8* %553, i64 4
  %569 = bitcast i8* %568 to i32*
  store i32 %567, i32* %569, align 1
  %570 = extractelement <2 x i32> %562, i32 0
  %571 = bitcast i8* %560 to i32*
  store i32 %570, i32* %571, align 1
  %572 = extractelement <2 x i32> %562, i32 1
  %573 = getelementptr inbounds i8, i8* %553, i64 12
  %574 = bitcast i8* %573 to i32*
  store i32 %572, i32* %574, align 1
  store %struct.Memory* %loadMem_419642, %struct.Memory** %MEMORY
  %loadMem_419647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 33
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 1
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 15
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %583 to i64*
  %584 = load i64, i64* %RBP.i129
  %585 = sub i64 %584, 16
  %586 = load i64, i64* %PC.i127
  %587 = add i64 %586, 4
  store i64 %587, i64* %PC.i127
  %588 = inttoptr i64 %585 to i64*
  %589 = load i64, i64* %588
  store i64 %589, i64* %RAX.i128, align 8
  store %struct.Memory* %loadMem_419647, %struct.Memory** %MEMORY
  %loadMem_41964b = load %struct.Memory*, %struct.Memory** %MEMORY
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 33
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %592 to i64*
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %597 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %596, i64 0, i64 1
  %YMM1.i126 = bitcast %union.VectorReg* %597 to %"class.std::bitset"*
  %598 = bitcast %"class.std::bitset"* %YMM1.i126 to i8*
  %599 = load i64, i64* %RAX.i125
  %600 = add i64 %599, 28
  %601 = load i64, i64* %PC.i124
  %602 = add i64 %601, 5
  store i64 %602, i64* %PC.i124
  %603 = bitcast i8* %598 to <2 x i32>*
  %604 = load <2 x i32>, <2 x i32>* %603, align 1
  %605 = getelementptr inbounds i8, i8* %598, i64 8
  %606 = bitcast i8* %605 to <2 x i32>*
  %607 = load <2 x i32>, <2 x i32>* %606, align 1
  %608 = inttoptr i64 %600 to i32*
  %609 = load i32, i32* %608
  %610 = sitofp i32 %609 to float
  %611 = bitcast i8* %598 to float*
  store float %610, float* %611, align 1
  %612 = extractelement <2 x i32> %604, i32 1
  %613 = getelementptr inbounds i8, i8* %598, i64 4
  %614 = bitcast i8* %613 to i32*
  store i32 %612, i32* %614, align 1
  %615 = extractelement <2 x i32> %607, i32 0
  %616 = bitcast i8* %605 to i32*
  store i32 %615, i32* %616, align 1
  %617 = extractelement <2 x i32> %607, i32 1
  %618 = getelementptr inbounds i8, i8* %598, i64 12
  %619 = bitcast i8* %618 to i32*
  store i32 %617, i32* %619, align 1
  store %struct.Memory* %loadMem_41964b, %struct.Memory** %MEMORY
  %loadMem_419650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 33
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %622 to i64*
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %624 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %623, i64 0, i64 0
  %YMM0.i122 = bitcast %union.VectorReg* %624 to %"class.std::bitset"*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %626 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %625, i64 0, i64 1
  %XMM1.i123 = bitcast %union.VectorReg* %626 to %union.vec128_t*
  %627 = bitcast %"class.std::bitset"* %YMM0.i122 to i8*
  %628 = bitcast %"class.std::bitset"* %YMM0.i122 to i8*
  %629 = bitcast %union.vec128_t* %XMM1.i123 to i8*
  %630 = load i64, i64* %PC.i121
  %631 = add i64 %630, 4
  store i64 %631, i64* %PC.i121
  %632 = bitcast i8* %628 to <2 x float>*
  %633 = load <2 x float>, <2 x float>* %632, align 1
  %634 = getelementptr inbounds i8, i8* %628, i64 8
  %635 = bitcast i8* %634 to <2 x i32>*
  %636 = load <2 x i32>, <2 x i32>* %635, align 1
  %637 = bitcast i8* %629 to <2 x float>*
  %638 = load <2 x float>, <2 x float>* %637, align 1
  %639 = extractelement <2 x float> %633, i32 0
  %640 = extractelement <2 x float> %638, i32 0
  %641 = fdiv float %639, %640
  %642 = bitcast i8* %627 to float*
  store float %641, float* %642, align 1
  %643 = bitcast <2 x float> %633 to <2 x i32>
  %644 = extractelement <2 x i32> %643, i32 1
  %645 = getelementptr inbounds i8, i8* %627, i64 4
  %646 = bitcast i8* %645 to i32*
  store i32 %644, i32* %646, align 1
  %647 = extractelement <2 x i32> %636, i32 0
  %648 = getelementptr inbounds i8, i8* %627, i64 8
  %649 = bitcast i8* %648 to i32*
  store i32 %647, i32* %649, align 1
  %650 = extractelement <2 x i32> %636, i32 1
  %651 = getelementptr inbounds i8, i8* %627, i64 12
  %652 = bitcast i8* %651 to i32*
  store i32 %650, i32* %652, align 1
  store %struct.Memory* %loadMem_419650, %struct.Memory** %MEMORY
  %loadMem_419654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 33
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %655 to i64*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %657 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %656, i64 0, i64 0
  %YMM0.i119 = bitcast %union.VectorReg* %657 to %"class.std::bitset"*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %659 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %658, i64 0, i64 0
  %XMM0.i120 = bitcast %union.VectorReg* %659 to %union.vec128_t*
  %660 = bitcast %"class.std::bitset"* %YMM0.i119 to i8*
  %661 = bitcast %union.vec128_t* %XMM0.i120 to i8*
  %662 = load i64, i64* %PC.i118
  %663 = add i64 %662, 4
  store i64 %663, i64* %PC.i118
  %664 = bitcast i8* %661 to <2 x float>*
  %665 = load <2 x float>, <2 x float>* %664, align 1
  %666 = extractelement <2 x float> %665, i32 0
  %667 = fpext float %666 to double
  %668 = bitcast i8* %660 to double*
  store double %667, double* %668, align 1
  store %struct.Memory* %loadMem_419654, %struct.Memory** %MEMORY
  %loadMem_419658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 33
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %671 to i64*
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 5
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %ECX.i116 = bitcast %union.anon* %674 to i32*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 7
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RDX.i117 = bitcast %union.anon* %677 to i64*
  %678 = load i32, i32* %ECX.i116
  %679 = zext i32 %678 to i64
  %680 = load i64, i64* %PC.i115
  %681 = add i64 %680, 2
  store i64 %681, i64* %PC.i115
  %682 = and i64 %679, 4294967295
  store i64 %682, i64* %RDX.i117, align 8
  store %struct.Memory* %loadMem_419658, %struct.Memory** %MEMORY
  %loadMem_41965a = load %struct.Memory*, %struct.Memory** %MEMORY
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 33
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 1
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %689 = bitcast %union.anon* %688 to %struct.anon.2*
  %AL.i114 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %689, i32 0, i32 0
  %690 = load i64, i64* %PC.i113
  %691 = add i64 %690, 2
  store i64 %691, i64* %PC.i113
  store i8 1, i8* %AL.i114, align 1
  store %struct.Memory* %loadMem_41965a, %struct.Memory** %MEMORY
  %loadMem1_41965c = load %struct.Memory*, %struct.Memory** %MEMORY
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 33
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %694 to i64*
  %695 = load i64, i64* %PC.i112
  %696 = add i64 %695, -98540
  %697 = load i64, i64* %PC.i112
  %698 = add i64 %697, 5
  %699 = load i64, i64* %PC.i112
  %700 = add i64 %699, 5
  store i64 %700, i64* %PC.i112
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %702 = load i64, i64* %701, align 8
  %703 = add i64 %702, -8
  %704 = inttoptr i64 %703 to i64*
  store i64 %698, i64* %704
  store i64 %703, i64* %701, align 8
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %696, i64* %705, align 8
  store %struct.Memory* %loadMem1_41965c, %struct.Memory** %MEMORY
  %loadMem2_41965c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41965c = load i64, i64* %3
  %706 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_41965c)
  store %struct.Memory* %706, %struct.Memory** %MEMORY
  %loadMem_419661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 33
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %709 to i64*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 1
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %EAX.i107 = bitcast %union.anon* %712 to i32*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 15
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %715 to i64*
  %716 = load i64, i64* %RBP.i108
  %717 = sub i64 %716, 36
  %718 = load i32, i32* %EAX.i107
  %719 = zext i32 %718 to i64
  %720 = load i64, i64* %PC.i106
  %721 = add i64 %720, 3
  store i64 %721, i64* %PC.i106
  %722 = inttoptr i64 %717 to i32*
  store i32 %718, i32* %722
  store %struct.Memory* %loadMem_419661, %struct.Memory** %MEMORY
  %loadMem_419664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 33
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %725 to i64*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 1
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 15
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %731 to i64*
  %732 = load i64, i64* %RBP.i105
  %733 = sub i64 %732, 20
  %734 = load i64, i64* %PC.i103
  %735 = add i64 %734, 3
  store i64 %735, i64* %PC.i103
  %736 = inttoptr i64 %733 to i32*
  %737 = load i32, i32* %736
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RAX.i104, align 8
  store %struct.Memory* %loadMem_419664, %struct.Memory** %MEMORY
  %loadMem_419667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 33
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %741 to i64*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 1
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %744 to i64*
  %745 = load i64, i64* %RAX.i102
  %746 = load i64, i64* %PC.i101
  %747 = add i64 %746, 3
  store i64 %747, i64* %PC.i101
  %748 = trunc i64 %745 to i32
  %749 = add i32 1, %748
  %750 = zext i32 %749 to i64
  store i64 %750, i64* %RAX.i102, align 8
  %751 = icmp ult i32 %749, %748
  %752 = icmp ult i32 %749, 1
  %753 = or i1 %751, %752
  %754 = zext i1 %753 to i8
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %754, i8* %755, align 1
  %756 = and i32 %749, 255
  %757 = call i32 @llvm.ctpop.i32(i32 %756)
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %760, i8* %761, align 1
  %762 = xor i64 1, %745
  %763 = trunc i64 %762 to i32
  %764 = xor i32 %763, %749
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %767, i8* %768, align 1
  %769 = icmp eq i32 %749, 0
  %770 = zext i1 %769 to i8
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %770, i8* %771, align 1
  %772 = lshr i32 %749, 31
  %773 = trunc i32 %772 to i8
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %773, i8* %774, align 1
  %775 = lshr i32 %748, 31
  %776 = xor i32 %772, %775
  %777 = add i32 %776, %772
  %778 = icmp eq i32 %777, 2
  %779 = zext i1 %778 to i8
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %779, i8* %780, align 1
  store %struct.Memory* %loadMem_419667, %struct.Memory** %MEMORY
  %loadMem_41966a = load %struct.Memory*, %struct.Memory** %MEMORY
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 33
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 1
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %EAX.i99 = bitcast %union.anon* %786 to i32*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 15
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %789 to i64*
  %790 = load i64, i64* %RBP.i100
  %791 = sub i64 %790, 20
  %792 = load i32, i32* %EAX.i99
  %793 = zext i32 %792 to i64
  %794 = load i64, i64* %PC.i98
  %795 = add i64 %794, 3
  store i64 %795, i64* %PC.i98
  %796 = inttoptr i64 %791 to i32*
  store i32 %792, i32* %796
  store %struct.Memory* %loadMem_41966a, %struct.Memory** %MEMORY
  %loadMem_41966d = load %struct.Memory*, %struct.Memory** %MEMORY
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 33
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %799 to i64*
  %800 = load i64, i64* %PC.i97
  %801 = add i64 %800, -108
  %802 = load i64, i64* %PC.i97
  %803 = add i64 %802, 5
  store i64 %803, i64* %PC.i97
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %801, i64* %804, align 8
  store %struct.Memory* %loadMem_41966d, %struct.Memory** %MEMORY
  br label %block_.L_419601

block_.L_419672:                                  ; preds = %block_.L_419601
  %loadMem_419672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 33
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 9
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RSI.i96 = bitcast %union.anon* %810 to i64*
  %811 = load i64, i64* %PC.i95
  %812 = add i64 %811, 10
  store i64 %812, i64* %PC.i95
  store i64 ptrtoint (%G__0x457138_type* @G__0x457138 to i64), i64* %RSI.i96, align 8
  store %struct.Memory* %loadMem_419672, %struct.Memory** %MEMORY
  %loadMem_41967c = load %struct.Memory*, %struct.Memory** %MEMORY
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 33
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %815 to i64*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 11
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %RDI.i93 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 15
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %821 to i64*
  %822 = load i64, i64* %RBP.i94
  %823 = sub i64 %822, 8
  %824 = load i64, i64* %PC.i92
  %825 = add i64 %824, 4
  store i64 %825, i64* %PC.i92
  %826 = inttoptr i64 %823 to i64*
  %827 = load i64, i64* %826
  store i64 %827, i64* %RDI.i93, align 8
  store %struct.Memory* %loadMem_41967c, %struct.Memory** %MEMORY
  %loadMem_419680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 33
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %830 to i64*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 1
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %834 = bitcast %union.anon* %833 to %struct.anon.2*
  %AL.i91 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %834, i32 0, i32 0
  %835 = load i64, i64* %PC.i90
  %836 = add i64 %835, 2
  store i64 %836, i64* %PC.i90
  store i8 0, i8* %AL.i91, align 1
  store %struct.Memory* %loadMem_419680, %struct.Memory** %MEMORY
  %loadMem1_419682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 33
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %839 to i64*
  %840 = load i64, i64* %PC.i89
  %841 = add i64 %840, -98578
  %842 = load i64, i64* %PC.i89
  %843 = add i64 %842, 5
  %844 = load i64, i64* %PC.i89
  %845 = add i64 %844, 5
  store i64 %845, i64* %PC.i89
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %847 = load i64, i64* %846, align 8
  %848 = add i64 %847, -8
  %849 = inttoptr i64 %848 to i64*
  store i64 %843, i64* %849
  store i64 %848, i64* %846, align 8
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %841, i64* %850, align 8
  store %struct.Memory* %loadMem1_419682, %struct.Memory** %MEMORY
  %loadMem2_419682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_419682 = load i64, i64* %3
  %851 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_419682)
  store %struct.Memory* %851, %struct.Memory** %MEMORY
  %loadMem_419687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %853 = getelementptr inbounds %struct.GPR, %struct.GPR* %852, i32 0, i32 33
  %854 = getelementptr inbounds %struct.Reg, %struct.Reg* %853, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %854 to i64*
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 9
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %RSI.i84 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 15
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %860 to i64*
  %861 = load i64, i64* %RBP.i85
  %862 = sub i64 %861, 16
  %863 = load i64, i64* %PC.i83
  %864 = add i64 %863, 4
  store i64 %864, i64* %PC.i83
  %865 = inttoptr i64 %862 to i64*
  %866 = load i64, i64* %865
  store i64 %866, i64* %RSI.i84, align 8
  store %struct.Memory* %loadMem_419687, %struct.Memory** %MEMORY
  %loadMem_41968b = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 9
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RSI.i82 = bitcast %union.anon* %872 to i64*
  %873 = load i64, i64* %RSI.i82
  %874 = add i64 %873, 40
  %875 = load i64, i64* %PC.i81
  %876 = add i64 %875, 4
  store i64 %876, i64* %PC.i81
  %877 = inttoptr i64 %874 to i32*
  %878 = load i32, i32* %877
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %879, align 1
  %880 = and i32 %878, 255
  %881 = call i32 @llvm.ctpop.i32(i32 %880)
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = xor i8 %883, 1
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %884, i8* %885, align 1
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %886, align 1
  %887 = icmp eq i32 %878, 0
  %888 = zext i1 %887 to i8
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %888, i8* %889, align 1
  %890 = lshr i32 %878, 31
  %891 = trunc i32 %890 to i8
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %891, i8* %892, align 1
  %893 = lshr i32 %878, 31
  %894 = xor i32 %890, %893
  %895 = add i32 %894, %893
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %897, i8* %898, align 1
  store %struct.Memory* %loadMem_41968b, %struct.Memory** %MEMORY
  %loadMem_41968f = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 1
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %EAX.i79 = bitcast %union.anon* %904 to i32*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 15
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %907 to i64*
  %908 = load i64, i64* %RBP.i80
  %909 = sub i64 %908, 40
  %910 = load i32, i32* %EAX.i79
  %911 = zext i32 %910 to i64
  %912 = load i64, i64* %PC.i78
  %913 = add i64 %912, 3
  store i64 %913, i64* %PC.i78
  %914 = inttoptr i64 %909 to i32*
  store i32 %910, i32* %914
  store %struct.Memory* %loadMem_41968f, %struct.Memory** %MEMORY
  %loadMem_419692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %917 to i64*
  %918 = load i64, i64* %PC.i77
  %919 = add i64 %918, 147
  %920 = load i64, i64* %PC.i77
  %921 = add i64 %920, 6
  %922 = load i64, i64* %PC.i77
  %923 = add i64 %922, 6
  store i64 %923, i64* %PC.i77
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %925 = load i8, i8* %924, align 1
  store i8 %925, i8* %BRANCH_TAKEN, align 1
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %927 = icmp ne i8 %925, 0
  %928 = select i1 %927, i64 %919, i64 %921
  store i64 %928, i64* %926, align 8
  store %struct.Memory* %loadMem_419692, %struct.Memory** %MEMORY
  %loadBr_419692 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_419692 = icmp eq i8 %loadBr_419692, 1
  br i1 %cmpBr_419692, label %block_.L_419725, label %block_419698

block_419698:                                     ; preds = %block_.L_419672
  %loadMem_419698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 33
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 1
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %934 to i64*
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 15
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %937 to i64*
  %938 = load i64, i64* %RBP.i76
  %939 = sub i64 %938, 16
  %940 = load i64, i64* %PC.i74
  %941 = add i64 %940, 4
  store i64 %941, i64* %PC.i74
  %942 = inttoptr i64 %939 to i64*
  %943 = load i64, i64* %942
  store i64 %943, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_419698, %struct.Memory** %MEMORY
  %loadMem_41969c = load %struct.Memory*, %struct.Memory** %MEMORY
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 33
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %946 to i64*
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 1
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 5
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %952 to i64*
  %953 = load i64, i64* %RAX.i72
  %954 = add i64 %953, 20
  %955 = load i64, i64* %PC.i71
  %956 = add i64 %955, 3
  store i64 %956, i64* %PC.i71
  %957 = inttoptr i64 %954 to i32*
  %958 = load i32, i32* %957
  %959 = zext i32 %958 to i64
  store i64 %959, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_41969c, %struct.Memory** %MEMORY
  %loadMem_41969f = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 5
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %965 to i32*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i70
  %970 = sub i64 %969, 20
  %971 = load i32, i32* %ECX.i
  %972 = zext i32 %971 to i64
  %973 = load i64, i64* %PC.i69
  %974 = add i64 %973, 3
  store i64 %974, i64* %PC.i69
  %975 = inttoptr i64 %970 to i32*
  store i32 %971, i32* %975
  store %struct.Memory* %loadMem_41969f, %struct.Memory** %MEMORY
  br label %block_.L_4196a2

block_.L_4196a2:                                  ; preds = %block_4196b2, %block_419698
  %loadMem_4196a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 1
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 15
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %984 to i64*
  %985 = load i64, i64* %RBP.i68
  %986 = sub i64 %985, 20
  %987 = load i64, i64* %PC.i66
  %988 = add i64 %987, 3
  store i64 %988, i64* %PC.i66
  %989 = inttoptr i64 %986 to i32*
  %990 = load i32, i32* %989
  %991 = zext i32 %990 to i64
  store i64 %991, i64* %RAX.i67, align 8
  store %struct.Memory* %loadMem_4196a2, %struct.Memory** %MEMORY
  %loadMem_4196a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 5
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %997 to i64*
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 15
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %1000 to i64*
  %1001 = load i64, i64* %RBP.i65
  %1002 = sub i64 %1001, 16
  %1003 = load i64, i64* %PC.i63
  %1004 = add i64 %1003, 4
  store i64 %1004, i64* %PC.i63
  %1005 = inttoptr i64 %1002 to i64*
  %1006 = load i64, i64* %1005
  store i64 %1006, i64* %RCX.i64, align 8
  store %struct.Memory* %loadMem_4196a5, %struct.Memory** %MEMORY
  %loadMem_4196a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 33
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 1
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %EAX.i62 = bitcast %union.anon* %1012 to i32*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 5
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1015 to i64*
  %1016 = load i32, i32* %EAX.i62
  %1017 = zext i32 %1016 to i64
  %1018 = load i64, i64* %RCX.i
  %1019 = add i64 %1018, 16
  %1020 = load i64, i64* %PC.i61
  %1021 = add i64 %1020, 3
  store i64 %1021, i64* %PC.i61
  %1022 = inttoptr i64 %1019 to i32*
  %1023 = load i32, i32* %1022
  %1024 = sub i32 %1016, %1023
  %1025 = icmp ult i32 %1016, %1023
  %1026 = zext i1 %1025 to i8
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1026, i8* %1027, align 1
  %1028 = and i32 %1024, 255
  %1029 = call i32 @llvm.ctpop.i32(i32 %1028)
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = xor i8 %1031, 1
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1032, i8* %1033, align 1
  %1034 = xor i32 %1023, %1016
  %1035 = xor i32 %1034, %1024
  %1036 = lshr i32 %1035, 4
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1038, i8* %1039, align 1
  %1040 = icmp eq i32 %1024, 0
  %1041 = zext i1 %1040 to i8
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1041, i8* %1042, align 1
  %1043 = lshr i32 %1024, 31
  %1044 = trunc i32 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1044, i8* %1045, align 1
  %1046 = lshr i32 %1016, 31
  %1047 = lshr i32 %1023, 31
  %1048 = xor i32 %1047, %1046
  %1049 = xor i32 %1043, %1046
  %1050 = add i32 %1049, %1048
  %1051 = icmp eq i32 %1050, 2
  %1052 = zext i1 %1051 to i8
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1052, i8* %1053, align 1
  store %struct.Memory* %loadMem_4196a9, %struct.Memory** %MEMORY
  %loadMem_4196ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %1056 to i64*
  %1057 = load i64, i64* %PC.i60
  %1058 = add i64 %1057, 97
  %1059 = load i64, i64* %PC.i60
  %1060 = add i64 %1059, 6
  %1061 = load i64, i64* %PC.i60
  %1062 = add i64 %1061, 6
  store i64 %1062, i64* %PC.i60
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1064 = load i8, i8* %1063, align 1
  %1065 = icmp eq i8 %1064, 0
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1067 = load i8, i8* %1066, align 1
  %1068 = icmp ne i8 %1067, 0
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1070 = load i8, i8* %1069, align 1
  %1071 = icmp ne i8 %1070, 0
  %1072 = xor i1 %1068, %1071
  %1073 = xor i1 %1072, true
  %1074 = and i1 %1065, %1073
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %BRANCH_TAKEN, align 1
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1077 = select i1 %1074, i64 %1058, i64 %1060
  store i64 %1077, i64* %1076, align 8
  store %struct.Memory* %loadMem_4196ac, %struct.Memory** %MEMORY
  %loadBr_4196ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4196ac = icmp eq i8 %loadBr_4196ac, 1
  br i1 %cmpBr_4196ac, label %block_.L_41970d, label %block_4196b2

block_4196b2:                                     ; preds = %block_.L_4196a2
  %loadMem_4196b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 33
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %1080 to i64*
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 15
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1085 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1084, i64 0, i64 0
  %YMM0.i59 = bitcast %union.VectorReg* %1085 to %"class.std::bitset"*
  %1086 = bitcast %"class.std::bitset"* %YMM0.i59 to i8*
  %1087 = load i64, i64* %RBP.i58
  %1088 = sub i64 %1087, 20
  %1089 = load i64, i64* %PC.i57
  %1090 = add i64 %1089, 5
  store i64 %1090, i64* %PC.i57
  %1091 = bitcast i8* %1086 to <2 x i32>*
  %1092 = load <2 x i32>, <2 x i32>* %1091, align 1
  %1093 = getelementptr inbounds i8, i8* %1086, i64 8
  %1094 = bitcast i8* %1093 to <2 x i32>*
  %1095 = load <2 x i32>, <2 x i32>* %1094, align 1
  %1096 = inttoptr i64 %1088 to i32*
  %1097 = load i32, i32* %1096
  %1098 = sitofp i32 %1097 to float
  %1099 = bitcast i8* %1086 to float*
  store float %1098, float* %1099, align 1
  %1100 = extractelement <2 x i32> %1092, i32 1
  %1101 = getelementptr inbounds i8, i8* %1086, i64 4
  %1102 = bitcast i8* %1101 to i32*
  store i32 %1100, i32* %1102, align 1
  %1103 = extractelement <2 x i32> %1095, i32 0
  %1104 = bitcast i8* %1093 to i32*
  store i32 %1103, i32* %1104, align 1
  %1105 = extractelement <2 x i32> %1095, i32 1
  %1106 = getelementptr inbounds i8, i8* %1086, i64 12
  %1107 = bitcast i8* %1106 to i32*
  store i32 %1105, i32* %1107, align 1
  store %struct.Memory* %loadMem_4196b2, %struct.Memory** %MEMORY
  %loadMem_4196b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 1
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 15
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %1116 to i64*
  %1117 = load i64, i64* %RBP.i56
  %1118 = sub i64 %1117, 16
  %1119 = load i64, i64* %PC.i54
  %1120 = add i64 %1119, 4
  store i64 %1120, i64* %PC.i54
  %1121 = inttoptr i64 %1118 to i64*
  %1122 = load i64, i64* %1121
  store i64 %1122, i64* %RAX.i55, align 8
  store %struct.Memory* %loadMem_4196b7, %struct.Memory** %MEMORY
  %loadMem_4196bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 33
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %1125 to i64*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 1
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %1128 to i64*
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1130 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1129, i64 0, i64 1
  %YMM1.i53 = bitcast %union.VectorReg* %1130 to %"class.std::bitset"*
  %1131 = bitcast %"class.std::bitset"* %YMM1.i53 to i8*
  %1132 = load i64, i64* %RAX.i52
  %1133 = add i64 %1132, 44
  %1134 = load i64, i64* %PC.i51
  %1135 = add i64 %1134, 5
  store i64 %1135, i64* %PC.i51
  %1136 = inttoptr i64 %1133 to float*
  %1137 = load float, float* %1136
  %1138 = bitcast i8* %1131 to float*
  store float %1137, float* %1138, align 1
  %1139 = getelementptr inbounds i8, i8* %1131, i64 4
  %1140 = bitcast i8* %1139 to float*
  store float 0.000000e+00, float* %1140, align 1
  %1141 = getelementptr inbounds i8, i8* %1131, i64 8
  %1142 = bitcast i8* %1141 to float*
  store float 0.000000e+00, float* %1142, align 1
  %1143 = getelementptr inbounds i8, i8* %1131, i64 12
  %1144 = bitcast i8* %1143 to float*
  store float 0.000000e+00, float* %1144, align 1
  store %struct.Memory* %loadMem_4196bb, %struct.Memory** %MEMORY
  %loadMem_4196c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 33
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 1
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 15
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %1153 to i64*
  %1154 = load i64, i64* %RBP.i50
  %1155 = sub i64 %1154, 16
  %1156 = load i64, i64* %PC.i48
  %1157 = add i64 %1156, 4
  store i64 %1157, i64* %PC.i48
  %1158 = inttoptr i64 %1155 to i64*
  %1159 = load i64, i64* %1158
  store i64 %1159, i64* %RAX.i49, align 8
  store %struct.Memory* %loadMem_4196c0, %struct.Memory** %MEMORY
  %loadMem_4196c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 33
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 1
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1167 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1166, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %1167 to %"class.std::bitset"*
  %1168 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %1169 = load i64, i64* %RAX.i47
  %1170 = add i64 %1169, 48
  %1171 = load i64, i64* %PC.i46
  %1172 = add i64 %1171, 5
  store i64 %1172, i64* %PC.i46
  %1173 = inttoptr i64 %1170 to float*
  %1174 = load float, float* %1173
  %1175 = bitcast i8* %1168 to float*
  store float %1174, float* %1175, align 1
  %1176 = getelementptr inbounds i8, i8* %1168, i64 4
  %1177 = bitcast i8* %1176 to float*
  store float 0.000000e+00, float* %1177, align 1
  %1178 = getelementptr inbounds i8, i8* %1168, i64 8
  %1179 = bitcast i8* %1178 to float*
  store float 0.000000e+00, float* %1179, align 1
  %1180 = getelementptr inbounds i8, i8* %1168, i64 12
  %1181 = bitcast i8* %1180 to float*
  store float 0.000000e+00, float* %1181, align 1
  store %struct.Memory* %loadMem_4196c4, %struct.Memory** %MEMORY
  %loadMem1_4196c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 33
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %1184 to i64*
  %1185 = load i64, i64* %PC.i45
  %1186 = add i64 %1185, -553
  %1187 = load i64, i64* %PC.i45
  %1188 = add i64 %1187, 5
  %1189 = load i64, i64* %PC.i45
  %1190 = add i64 %1189, 5
  store i64 %1190, i64* %PC.i45
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1192 = load i64, i64* %1191, align 8
  %1193 = add i64 %1192, -8
  %1194 = inttoptr i64 %1193 to i64*
  store i64 %1188, i64* %1194
  store i64 %1193, i64* %1191, align 8
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1186, i64* %1195, align 8
  store %struct.Memory* %loadMem1_4196c9, %struct.Memory** %MEMORY
  %loadMem2_4196c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4196c9 = load i64, i64* %3
  %call2_4196c9 = call %struct.Memory* @sub_4194a0.ExtremeValueP(%struct.State* %0, i64 %loadPC_4196c9, %struct.Memory* %loadMem2_4196c9)
  store %struct.Memory* %call2_4196c9, %struct.Memory** %MEMORY
  %loadMem_4196ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 33
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %1198 to i64*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 9
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %RSI.i44 = bitcast %union.anon* %1201 to i64*
  %1202 = load i64, i64* %PC.i43
  %1203 = add i64 %1202, 10
  store i64 %1203, i64* %PC.i43
  store i64 ptrtoint (%G__0x45712f_type* @G__0x45712f to i64), i64* %RSI.i44, align 8
  store %struct.Memory* %loadMem_4196ce, %struct.Memory** %MEMORY
  %loadMem_4196d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 33
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1208 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1207, i64 0, i64 1
  %YMM1.i42 = bitcast %union.VectorReg* %1208 to %"class.std::bitset"*
  %1209 = bitcast %"class.std::bitset"* %YMM1.i42 to i8*
  %1210 = load i64, i64* %PC.i41
  %1211 = add i64 %1210, ptrtoint (%G_0x3b100__rip__type* @G_0x3b100__rip_ to i64)
  %1212 = load i64, i64* %PC.i41
  %1213 = add i64 %1212, 8
  store i64 %1213, i64* %PC.i41
  %1214 = inttoptr i64 %1211 to double*
  %1215 = load double, double* %1214
  %1216 = bitcast i8* %1209 to double*
  store double %1215, double* %1216, align 1
  %1217 = getelementptr inbounds i8, i8* %1209, i64 8
  %1218 = bitcast i8* %1217 to double*
  store double 0.000000e+00, double* %1218, align 1
  store %struct.Memory* %loadMem_4196d8, %struct.Memory** %MEMORY
  %loadMem_4196e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 33
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %1221 to i64*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1223 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1222, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %1223 to %"class.std::bitset"*
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1225 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1224, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %1225 to %union.vec128_t*
  %1226 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1227 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1228 = bitcast %union.vec128_t* %XMM0.i to i8*
  %1229 = load i64, i64* %PC.i40
  %1230 = add i64 %1229, 4
  store i64 %1230, i64* %PC.i40
  %1231 = bitcast i8* %1227 to double*
  %1232 = load double, double* %1231, align 1
  %1233 = getelementptr inbounds i8, i8* %1227, i64 8
  %1234 = bitcast i8* %1233 to i64*
  %1235 = load i64, i64* %1234, align 1
  %1236 = bitcast i8* %1228 to double*
  %1237 = load double, double* %1236, align 1
  %1238 = fsub double %1232, %1237
  %1239 = bitcast i8* %1226 to double*
  store double %1238, double* %1239, align 1
  %1240 = getelementptr inbounds i8, i8* %1226, i64 8
  %1241 = bitcast i8* %1240 to i64*
  store i64 %1235, i64* %1241, align 1
  store %struct.Memory* %loadMem_4196e0, %struct.Memory** %MEMORY
  %loadMem_4196e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 33
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 15
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %1247 to i64*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1249 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1248, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %1249 to %union.vec128_t*
  %1250 = load i64, i64* %RBP.i39
  %1251 = sub i64 %1250, 32
  %1252 = bitcast %union.vec128_t* %XMM1.i to i8*
  %1253 = load i64, i64* %PC.i38
  %1254 = add i64 %1253, 5
  store i64 %1254, i64* %PC.i38
  %1255 = bitcast i8* %1252 to double*
  %1256 = load double, double* %1255, align 1
  %1257 = inttoptr i64 %1251 to double*
  store double %1256, double* %1257
  store %struct.Memory* %loadMem_4196e4, %struct.Memory** %MEMORY
  %loadMem_4196e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 11
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RDI.i36 = bitcast %union.anon* %1263 to i64*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 15
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %1266 to i64*
  %1267 = load i64, i64* %RBP.i37
  %1268 = sub i64 %1267, 8
  %1269 = load i64, i64* %PC.i35
  %1270 = add i64 %1269, 4
  store i64 %1270, i64* %PC.i35
  %1271 = inttoptr i64 %1268 to i64*
  %1272 = load i64, i64* %1271
  store i64 %1272, i64* %RDI.i36, align 8
  store %struct.Memory* %loadMem_4196e9, %struct.Memory** %MEMORY
  %loadMem_4196ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 33
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 7
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1278 to i64*
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1280 = getelementptr inbounds %struct.GPR, %struct.GPR* %1279, i32 0, i32 15
  %1281 = getelementptr inbounds %struct.Reg, %struct.Reg* %1280, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %1281 to i64*
  %1282 = load i64, i64* %RBP.i34
  %1283 = sub i64 %1282, 20
  %1284 = load i64, i64* %PC.i33
  %1285 = add i64 %1284, 3
  store i64 %1285, i64* %PC.i33
  %1286 = inttoptr i64 %1283 to i32*
  %1287 = load i32, i32* %1286
  %1288 = zext i32 %1287 to i64
  store i64 %1288, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4196ed, %struct.Memory** %MEMORY
  %loadMem_4196f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 33
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %1291 to i64*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 15
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %1294 to i64*
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1296 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1295, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %1296 to %"class.std::bitset"*
  %1297 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %1298 = load i64, i64* %RBP.i32
  %1299 = sub i64 %1298, 32
  %1300 = load i64, i64* %PC.i31
  %1301 = add i64 %1300, 5
  store i64 %1301, i64* %PC.i31
  %1302 = inttoptr i64 %1299 to double*
  %1303 = load double, double* %1302
  %1304 = bitcast i8* %1297 to double*
  store double %1303, double* %1304, align 1
  %1305 = getelementptr inbounds i8, i8* %1297, i64 8
  %1306 = bitcast i8* %1305 to double*
  store double 0.000000e+00, double* %1306, align 1
  store %struct.Memory* %loadMem_4196f0, %struct.Memory** %MEMORY
  %loadMem_4196f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 33
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %1309 to i64*
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 1
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %1313 = bitcast %union.anon* %1312 to %struct.anon.2*
  %AL.i30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1313, i32 0, i32 0
  %1314 = load i64, i64* %PC.i29
  %1315 = add i64 %1314, 2
  store i64 %1315, i64* %PC.i29
  store i8 1, i8* %AL.i30, align 1
  store %struct.Memory* %loadMem_4196f5, %struct.Memory** %MEMORY
  %loadMem1_4196f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 33
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %1318 to i64*
  %1319 = load i64, i64* %PC.i28
  %1320 = add i64 %1319, -98695
  %1321 = load i64, i64* %PC.i28
  %1322 = add i64 %1321, 5
  %1323 = load i64, i64* %PC.i28
  %1324 = add i64 %1323, 5
  store i64 %1324, i64* %PC.i28
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1326 = load i64, i64* %1325, align 8
  %1327 = add i64 %1326, -8
  %1328 = inttoptr i64 %1327 to i64*
  store i64 %1322, i64* %1328
  store i64 %1327, i64* %1325, align 8
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1320, i64* %1329, align 8
  store %struct.Memory* %loadMem1_4196f7, %struct.Memory** %MEMORY
  %loadMem2_4196f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4196f7 = load i64, i64* %3
  %1330 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_4196f7)
  store %struct.Memory* %1330, %struct.Memory** %MEMORY
  %loadMem_4196fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 33
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %1333 to i64*
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1335 = getelementptr inbounds %struct.GPR, %struct.GPR* %1334, i32 0, i32 1
  %1336 = getelementptr inbounds %struct.Reg, %struct.Reg* %1335, i32 0, i32 0
  %EAX.i24 = bitcast %union.anon* %1336 to i32*
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1338 = getelementptr inbounds %struct.GPR, %struct.GPR* %1337, i32 0, i32 15
  %1339 = getelementptr inbounds %struct.Reg, %struct.Reg* %1338, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %1339 to i64*
  %1340 = load i64, i64* %RBP.i25
  %1341 = sub i64 %1340, 44
  %1342 = load i32, i32* %EAX.i24
  %1343 = zext i32 %1342 to i64
  %1344 = load i64, i64* %PC.i23
  %1345 = add i64 %1344, 3
  store i64 %1345, i64* %PC.i23
  %1346 = inttoptr i64 %1341 to i32*
  store i32 %1342, i32* %1346
  store %struct.Memory* %loadMem_4196fc, %struct.Memory** %MEMORY
  %loadMem_4196ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 33
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 1
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 15
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %1355 to i64*
  %1356 = load i64, i64* %RBP.i22
  %1357 = sub i64 %1356, 20
  %1358 = load i64, i64* %PC.i20
  %1359 = add i64 %1358, 3
  store i64 %1359, i64* %PC.i20
  %1360 = inttoptr i64 %1357 to i32*
  %1361 = load i32, i32* %1360
  %1362 = zext i32 %1361 to i64
  store i64 %1362, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_4196ff, %struct.Memory** %MEMORY
  %loadMem_419702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 33
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %1365 to i64*
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 1
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %RAX.i
  %1370 = load i64, i64* %PC.i19
  %1371 = add i64 %1370, 3
  store i64 %1371, i64* %PC.i19
  %1372 = trunc i64 %1369 to i32
  %1373 = add i32 1, %1372
  %1374 = zext i32 %1373 to i64
  store i64 %1374, i64* %RAX.i, align 8
  %1375 = icmp ult i32 %1373, %1372
  %1376 = icmp ult i32 %1373, 1
  %1377 = or i1 %1375, %1376
  %1378 = zext i1 %1377 to i8
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1378, i8* %1379, align 1
  %1380 = and i32 %1373, 255
  %1381 = call i32 @llvm.ctpop.i32(i32 %1380)
  %1382 = trunc i32 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = xor i8 %1383, 1
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1384, i8* %1385, align 1
  %1386 = xor i64 1, %1369
  %1387 = trunc i64 %1386 to i32
  %1388 = xor i32 %1387, %1373
  %1389 = lshr i32 %1388, 4
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1391, i8* %1392, align 1
  %1393 = icmp eq i32 %1373, 0
  %1394 = zext i1 %1393 to i8
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1394, i8* %1395, align 1
  %1396 = lshr i32 %1373, 31
  %1397 = trunc i32 %1396 to i8
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1397, i8* %1398, align 1
  %1399 = lshr i32 %1372, 31
  %1400 = xor i32 %1396, %1399
  %1401 = add i32 %1400, %1396
  %1402 = icmp eq i32 %1401, 2
  %1403 = zext i1 %1402 to i8
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1403, i8* %1404, align 1
  store %struct.Memory* %loadMem_419702, %struct.Memory** %MEMORY
  %loadMem_419705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 33
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 1
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %EAX.i17 = bitcast %union.anon* %1410 to i32*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 15
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %RBP.i18
  %1415 = sub i64 %1414, 20
  %1416 = load i32, i32* %EAX.i17
  %1417 = zext i32 %1416 to i64
  %1418 = load i64, i64* %PC.i16
  %1419 = add i64 %1418, 3
  store i64 %1419, i64* %PC.i16
  %1420 = inttoptr i64 %1415 to i32*
  store i32 %1416, i32* %1420
  store %struct.Memory* %loadMem_419705, %struct.Memory** %MEMORY
  %loadMem_419708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 33
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %1423 to i64*
  %1424 = load i64, i64* %PC.i15
  %1425 = add i64 %1424, -102
  %1426 = load i64, i64* %PC.i15
  %1427 = add i64 %1426, 5
  store i64 %1427, i64* %PC.i15
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1425, i64* %1428, align 8
  store %struct.Memory* %loadMem_419708, %struct.Memory** %MEMORY
  br label %block_.L_4196a2

block_.L_41970d:                                  ; preds = %block_.L_4196a2
  %loadMem_41970d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 33
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 9
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1434 to i64*
  %1435 = load i64, i64* %PC.i14
  %1436 = add i64 %1435, 10
  store i64 %1436, i64* %PC.i14
  store i64 ptrtoint (%G__0x457138_type* @G__0x457138 to i64), i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_41970d, %struct.Memory** %MEMORY
  %loadMem_419717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 33
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %1439 to i64*
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 11
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1442 to i64*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 15
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %1445 to i64*
  %1446 = load i64, i64* %RBP.i13
  %1447 = sub i64 %1446, 8
  %1448 = load i64, i64* %PC.i12
  %1449 = add i64 %1448, 4
  store i64 %1449, i64* %PC.i12
  %1450 = inttoptr i64 %1447 to i64*
  %1451 = load i64, i64* %1450
  store i64 %1451, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_419717, %struct.Memory** %MEMORY
  %loadMem_41971b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 1
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %1458 = bitcast %union.anon* %1457 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1458, i32 0, i32 0
  %1459 = load i64, i64* %PC.i11
  %1460 = add i64 %1459, 2
  store i64 %1460, i64* %PC.i11
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_41971b, %struct.Memory** %MEMORY
  %loadMem1_41971d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 33
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %PC.i10
  %1465 = add i64 %1464, -98733
  %1466 = load i64, i64* %PC.i10
  %1467 = add i64 %1466, 5
  %1468 = load i64, i64* %PC.i10
  %1469 = add i64 %1468, 5
  store i64 %1469, i64* %PC.i10
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1471 = load i64, i64* %1470, align 8
  %1472 = add i64 %1471, -8
  %1473 = inttoptr i64 %1472 to i64*
  store i64 %1467, i64* %1473
  store i64 %1472, i64* %1470, align 8
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1465, i64* %1474, align 8
  store %struct.Memory* %loadMem1_41971d, %struct.Memory** %MEMORY
  %loadMem2_41971d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41971d = load i64, i64* %3
  %1475 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %loadMem2_41971d)
  store %struct.Memory* %1475, %struct.Memory** %MEMORY
  %loadMem_419722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 33
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 1
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1481 to i32*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 15
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %1484 to i64*
  %1485 = load i64, i64* %RBP.i6
  %1486 = sub i64 %1485, 48
  %1487 = load i32, i32* %EAX.i
  %1488 = zext i32 %1487 to i64
  %1489 = load i64, i64* %PC.i5
  %1490 = add i64 %1489, 3
  store i64 %1490, i64* %PC.i5
  %1491 = inttoptr i64 %1486 to i32*
  store i32 %1487, i32* %1491
  store %struct.Memory* %loadMem_419722, %struct.Memory** %MEMORY
  br label %block_.L_419725

block_.L_419725:                                  ; preds = %block_.L_41970d, %block_.L_419672
  %loadMem_419725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 33
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1494 to i64*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 13
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %1497 to i64*
  %1498 = load i64, i64* %RSP.i
  %1499 = load i64, i64* %PC.i4
  %1500 = add i64 %1499, 4
  store i64 %1500, i64* %PC.i4
  %1501 = add i64 48, %1498
  store i64 %1501, i64* %RSP.i, align 8
  %1502 = icmp ult i64 %1501, %1498
  %1503 = icmp ult i64 %1501, 48
  %1504 = or i1 %1502, %1503
  %1505 = zext i1 %1504 to i8
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1505, i8* %1506, align 1
  %1507 = trunc i64 %1501 to i32
  %1508 = and i32 %1507, 255
  %1509 = call i32 @llvm.ctpop.i32(i32 %1508)
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  %1512 = xor i8 %1511, 1
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1512, i8* %1513, align 1
  %1514 = xor i64 48, %1498
  %1515 = xor i64 %1514, %1501
  %1516 = lshr i64 %1515, 4
  %1517 = trunc i64 %1516 to i8
  %1518 = and i8 %1517, 1
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1518, i8* %1519, align 1
  %1520 = icmp eq i64 %1501, 0
  %1521 = zext i1 %1520 to i8
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1521, i8* %1522, align 1
  %1523 = lshr i64 %1501, 63
  %1524 = trunc i64 %1523 to i8
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1524, i8* %1525, align 1
  %1526 = lshr i64 %1498, 63
  %1527 = xor i64 %1523, %1526
  %1528 = add i64 %1527, %1523
  %1529 = icmp eq i64 %1528, 2
  %1530 = zext i1 %1529 to i8
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1530, i8* %1531, align 1
  store %struct.Memory* %loadMem_419725, %struct.Memory** %MEMORY
  %loadMem_419729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 33
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 15
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1537 to i64*
  %1538 = load i64, i64* %PC.i2
  %1539 = add i64 %1538, 1
  store i64 %1539, i64* %PC.i2
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1541 = load i64, i64* %1540, align 8
  %1542 = add i64 %1541, 8
  %1543 = inttoptr i64 %1541 to i64*
  %1544 = load i64, i64* %1543
  store i64 %1544, i64* %RBP.i3, align 8
  store i64 %1542, i64* %1540, align 8
  store %struct.Memory* %loadMem_419729, %struct.Memory** %MEMORY
  %loadMem_41972a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 33
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1547 to i64*
  %1548 = load i64, i64* %PC.i1
  %1549 = add i64 %1548, 1
  store i64 %1549, i64* %PC.i1
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1552 = load i64, i64* %1551, align 8
  %1553 = inttoptr i64 %1552 to i64*
  %1554 = load i64, i64* %1553
  store i64 %1554, i64* %1550, align 8
  %1555 = add i64 %1552, 8
  store i64 %1555, i64* %1551, align 8
  store %struct.Memory* %loadMem_41972a, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41972a
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x14__rsi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 20
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x10__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jg_.L_419672(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = xor i1 %21, true
  %23 = and i1 %14, %22
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %BRANCH_TAKEN, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = select i1 %23, i64 %7, i64 %9
  store i64 %26, i64* %25, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45712f___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45712f_type* @G__0x45712f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_0x8__rdx____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 8
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

define %struct.Memory* @routine_addl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
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

define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvtsi2ssl_0x1c__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 28
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

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = bitcast i8* %11 to <2 x float>*
  %15 = load <2 x float>, <2 x float>* %14, align 1
  %16 = extractelement <2 x float> %15, i32 0
  %17 = fpext float %16 to double
  %18 = bitcast i8* %10 to double*
  store double %17, double* %18, align 1
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

define %struct.Memory* @routine_movb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_419601(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x457138___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x457138_type* @G__0x457138 to i64), i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x28__rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 40
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

define %struct.Memory* @routine_je_.L_419725(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jg_.L_41970d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  %21 = xor i1 %17, %20
  %22 = xor i1 %21, true
  %23 = and i1 %14, %22
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %BRANCH_TAKEN, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %26 = select i1 %23, i64 %7, i64 %9
  store i64 %26, i64* %25, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2ssl_MINUS0x14__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss_0x2c__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 44
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

define %struct.Memory* @routine_movss_0x30__rax____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 48
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

define %struct.Memory* @routine_callq_.ExtremeValueP(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x3b100__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x3b100__rip__type* @G_0x3b100__rip_ to i64)
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

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 32
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

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_4196a2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
