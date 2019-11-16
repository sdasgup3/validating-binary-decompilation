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
%G__0x45b227_type = type <{ [8 x i8] }>
%G__0x45b23a_type = type <{ [8 x i8] }>
%G__0x45b259_type = type <{ [8 x i8] }>
%G__0x45b278_type = type <{ [8 x i8] }>
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
@G__0x45b227 = global %G__0x45b227_type zeroinitializer
@G__0x45b23a = global %G__0x45b23a_type zeroinitializer
@G__0x45b259 = global %G__0x45b259_type zeroinitializer
@G__0x45b278 = global %G__0x45b278_type zeroinitializer

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
define %struct.Memory* @TophitsReport(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_44d1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_44d1e0, %struct.Memory** %MEMORY
  %loadMem_44d1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_44d1e1, %struct.Memory** %MEMORY
  %loadMem_44d1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i16 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i16
  %36 = load i64, i64* %PC.i15
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i15
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i16, align 8
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
  store %struct.Memory* %loadMem_44d1e4, %struct.Memory** %MEMORY
  %loadMem_44d1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i28 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i29
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i28
  %79 = load i64, i64* %PC.i27
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i27
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_44d1e8, %struct.Memory** %MEMORY
  %loadMem_44d1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 15
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %89 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %88, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %89 to %union.vec128_t*
  %90 = load i64, i64* %RBP.i42
  %91 = sub i64 %90, 16
  %92 = bitcast %union.vec128_t* %XMM0.i to i8*
  %93 = load i64, i64* %PC.i41
  %94 = add i64 %93, 5
  store i64 %94, i64* %PC.i41
  %95 = bitcast i8* %92 to double*
  %96 = load double, double* %95, align 1
  %97 = inttoptr i64 %91 to double*
  store double %96, double* %97
  store %struct.Memory* %loadMem_44d1ec, %struct.Memory** %MEMORY
  %loadMem_44d1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %ESI.i57 = bitcast %union.anon* %103 to i32*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i58
  %108 = sub i64 %107, 20
  %109 = load i32, i32* %ESI.i57
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC.i56
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC.i56
  %113 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %113
  store %struct.Memory* %loadMem_44d1f1, %struct.Memory** %MEMORY
  %loadMem_44d1f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 11
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RDI.i87 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i88
  %124 = sub i64 %123, 8
  %125 = load i64, i64* %PC.i86
  %126 = add i64 %125, 4
  store i64 %126, i64* %PC.i86
  %127 = inttoptr i64 %124 to i64*
  %128 = load i64, i64* %127
  store i64 %128, i64* %RDI.i87, align 8
  store %struct.Memory* %loadMem_44d1f4, %struct.Memory** %MEMORY
  %loadMem_44d1f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 11
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RDI.i145 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %RDI.i145
  %136 = add i64 %135, 16
  %137 = load i64, i64* %PC.i144
  %138 = add i64 %137, 4
  store i64 %138, i64* %PC.i144
  %139 = inttoptr i64 %136 to i32*
  %140 = load i32, i32* %139
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %RDI.i145, align 8
  store %struct.Memory* %loadMem_44d1f8, %struct.Memory** %MEMORY
  %loadMem_44d1fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 33
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 11
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RDI.i198 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %RDI.i198
  %149 = load i64, i64* %PC.i197
  %150 = add i64 %149, 4
  store i64 %150, i64* %PC.i197
  %151 = sext i64 %148 to i128
  %152 = and i128 %151, -18446744073709551616
  %153 = zext i64 %148 to i128
  %154 = or i128 %152, %153
  %155 = mul i128 104, %154
  %156 = trunc i128 %155 to i64
  store i64 %156, i64* %RDI.i198, align 8
  %157 = sext i64 %156 to i128
  %158 = icmp ne i128 %157, %155
  %159 = zext i1 %158 to i8
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %159, i8* %160, align 1
  %161 = trunc i128 %155 to i32
  %162 = and i32 %161, 255
  %163 = call i32 @llvm.ctpop.i32(i32 %162)
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %166, i8* %167, align 1
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %168, align 1
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %169, align 1
  %170 = lshr i64 %156, 63
  %171 = trunc i64 %170 to i8
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %171, i8* %172, align 1
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %159, i8* %173, align 1
  store %struct.Memory* %loadMem_44d1fc, %struct.Memory** %MEMORY
  %loadMem_44d200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 33
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 11
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %RDI.i442 = bitcast %union.anon* %179 to i64*
  %180 = load i64, i64* %RDI.i442
  %181 = load i64, i64* %PC.i441
  %182 = add i64 %181, 4
  store i64 %182, i64* %PC.i441
  %183 = add i64 32, %180
  store i64 %183, i64* %RDI.i442, align 8
  %184 = icmp ult i64 %183, %180
  %185 = icmp ult i64 %183, 32
  %186 = or i1 %184, %185
  %187 = zext i1 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %187, i8* %188, align 1
  %189 = trunc i64 %183 to i32
  %190 = and i32 %189, 255
  %191 = call i32 @llvm.ctpop.i32(i32 %190)
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  %194 = xor i8 %193, 1
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %194, i8* %195, align 1
  %196 = xor i64 32, %180
  %197 = xor i64 %196, %183
  %198 = lshr i64 %197, 4
  %199 = trunc i64 %198 to i8
  %200 = and i8 %199, 1
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %200, i8* %201, align 1
  %202 = icmp eq i64 %183, 0
  %203 = zext i1 %202 to i8
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %203, i8* %204, align 1
  %205 = lshr i64 %183, 63
  %206 = trunc i64 %205 to i8
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %206, i8* %207, align 1
  %208 = lshr i64 %180, 63
  %209 = xor i64 %205, %208
  %210 = add i64 %209, %205
  %211 = icmp eq i64 %210, 2
  %212 = zext i1 %211 to i8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %212, i8* %213, align 1
  store %struct.Memory* %loadMem_44d200, %struct.Memory** %MEMORY
  %loadMem_44d204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 33
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 11
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %219 to i32*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 9
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %RSI.i491 = bitcast %union.anon* %222 to i64*
  %223 = load i32, i32* %EDI.i
  %224 = zext i32 %223 to i64
  %225 = load i64, i64* %PC.i490
  %226 = add i64 %225, 2
  store i64 %226, i64* %PC.i490
  %227 = and i64 %224, 4294967295
  store i64 %227, i64* %RSI.i491, align 8
  store %struct.Memory* %loadMem_44d204, %struct.Memory** %MEMORY
  %loadMem_44d206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 33
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %230 to i64*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 9
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %ESI.i540 = bitcast %union.anon* %233 to i32*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 15
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RBP.i541 = bitcast %union.anon* %236 to i64*
  %237 = load i64, i64* %RBP.i541
  %238 = sub i64 %237, 28
  %239 = load i32, i32* %ESI.i540
  %240 = zext i32 %239 to i64
  %241 = load i64, i64* %PC.i539
  %242 = add i64 %241, 3
  store i64 %242, i64* %PC.i539
  %243 = inttoptr i64 %238 to i32*
  store i32 %239, i32* %243
  store %struct.Memory* %loadMem_44d206, %struct.Memory** %MEMORY
  %loadMem_44d209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 33
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %246 to i64*
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 15
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %249 to i64*
  %250 = load i64, i64* %RBP.i586
  %251 = sub i64 %250, 24
  %252 = load i64, i64* %PC.i585
  %253 = add i64 %252, 7
  store i64 %253, i64* %PC.i585
  %254 = inttoptr i64 %251 to i32*
  store i32 0, i32* %254
  store %struct.Memory* %loadMem_44d209, %struct.Memory** %MEMORY
  br label %block_.L_44d210

block_.L_44d210:                                  ; preds = %block_.L_44d4dd, %entry
  %loadMem_44d210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 15
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RBP.i584 = bitcast %union.anon* %263 to i64*
  %264 = load i64, i64* %RBP.i584
  %265 = sub i64 %264, 24
  %266 = load i64, i64* %PC.i582
  %267 = add i64 %266, 3
  store i64 %267, i64* %PC.i582
  %268 = inttoptr i64 %265 to i32*
  %269 = load i32, i32* %268
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RAX.i583, align 8
  store %struct.Memory* %loadMem_44d210, %struct.Memory** %MEMORY
  %loadMem_44d213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 33
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %RCX.i580 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 15
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %279 to i64*
  %280 = load i64, i64* %RBP.i581
  %281 = sub i64 %280, 8
  %282 = load i64, i64* %PC.i579
  %283 = add i64 %282, 4
  store i64 %283, i64* %PC.i579
  %284 = inttoptr i64 %281 to i64*
  %285 = load i64, i64* %284
  store i64 %285, i64* %RCX.i580, align 8
  store %struct.Memory* %loadMem_44d213, %struct.Memory** %MEMORY
  %loadMem_44d217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %EAX.i577 = bitcast %union.anon* %291 to i32*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 5
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %RCX.i578 = bitcast %union.anon* %294 to i64*
  %295 = load i32, i32* %EAX.i577
  %296 = zext i32 %295 to i64
  %297 = load i64, i64* %RCX.i578
  %298 = add i64 %297, 20
  %299 = load i64, i64* %PC.i576
  %300 = add i64 %299, 3
  store i64 %300, i64* %PC.i576
  %301 = inttoptr i64 %298 to i32*
  %302 = load i32, i32* %301
  %303 = sub i32 %295, %302
  %304 = icmp ult i32 %295, %302
  %305 = zext i1 %304 to i8
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %305, i8* %306, align 1
  %307 = and i32 %303, 255
  %308 = call i32 @llvm.ctpop.i32(i32 %307)
  %309 = trunc i32 %308 to i8
  %310 = and i8 %309, 1
  %311 = xor i8 %310, 1
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %311, i8* %312, align 1
  %313 = xor i32 %302, %295
  %314 = xor i32 %313, %303
  %315 = lshr i32 %314, 4
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %317, i8* %318, align 1
  %319 = icmp eq i32 %303, 0
  %320 = zext i1 %319 to i8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %320, i8* %321, align 1
  %322 = lshr i32 %303, 31
  %323 = trunc i32 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %323, i8* %324, align 1
  %325 = lshr i32 %295, 31
  %326 = lshr i32 %302, 31
  %327 = xor i32 %326, %325
  %328 = xor i32 %322, %325
  %329 = add i32 %328, %327
  %330 = icmp eq i32 %329, 2
  %331 = zext i1 %330 to i8
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %331, i8* %332, align 1
  store %struct.Memory* %loadMem_44d217, %struct.Memory** %MEMORY
  %loadMem_44d21a = load %struct.Memory*, %struct.Memory** %MEMORY
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 33
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %335 to i64*
  %336 = load i64, i64* %PC.i575
  %337 = add i64 %336, 721
  %338 = load i64, i64* %PC.i575
  %339 = add i64 %338, 6
  %340 = load i64, i64* %PC.i575
  %341 = add i64 %340, 6
  store i64 %341, i64* %PC.i575
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %343 = load i8, i8* %342, align 1
  %344 = icmp ne i8 %343, 0
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %346 = load i8, i8* %345, align 1
  %347 = icmp ne i8 %346, 0
  %348 = xor i1 %344, %347
  %349 = xor i1 %348, true
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %BRANCH_TAKEN, align 1
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %352 = select i1 %348, i64 %339, i64 %337
  store i64 %352, i64* %351, align 8
  store %struct.Memory* %loadMem_44d21a, %struct.Memory** %MEMORY
  %loadBr_44d21a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d21a = icmp eq i8 %loadBr_44d21a, 1
  br i1 %cmpBr_44d21a, label %block_.L_44d4eb, label %block_44d220

block_44d220:                                     ; preds = %block_.L_44d210
  %loadMem_44d220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 33
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %355 to i64*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %358 to i64*
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 15
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %361 to i64*
  %362 = load i64, i64* %RBP.i574
  %363 = sub i64 %362, 8
  %364 = load i64, i64* %PC.i572
  %365 = add i64 %364, 4
  store i64 %365, i64* %PC.i572
  %366 = inttoptr i64 %363 to i64*
  %367 = load i64, i64* %366
  store i64 %367, i64* %RAX.i573, align 8
  store %struct.Memory* %loadMem_44d220, %struct.Memory** %MEMORY
  %loadMem_44d224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %RAX.i571 = bitcast %union.anon* %373 to i64*
  %374 = load i64, i64* %RAX.i571
  %375 = add i64 %374, 8
  %376 = load i64, i64* %PC.i570
  %377 = add i64 %376, 4
  store i64 %377, i64* %PC.i570
  %378 = inttoptr i64 %375 to i64*
  %379 = load i64, i64* %378
  store i64 %379, i64* %RAX.i571, align 8
  store %struct.Memory* %loadMem_44d224, %struct.Memory** %MEMORY
  %loadMem_44d228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 33
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %382 to i64*
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 5
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 15
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %388 to i64*
  %389 = load i64, i64* %RBP.i569
  %390 = sub i64 %389, 24
  %391 = load i64, i64* %PC.i567
  %392 = add i64 %391, 4
  store i64 %392, i64* %PC.i567
  %393 = inttoptr i64 %390 to i32*
  %394 = load i32, i32* %393
  %395 = sext i32 %394 to i64
  store i64 %395, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_44d228, %struct.Memory** %MEMORY
  %loadMem_44d22c = load %struct.Memory*, %struct.Memory** %MEMORY
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 33
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 5
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RCX.i566 = bitcast %union.anon* %401 to i64*
  %402 = load i64, i64* %RCX.i566
  %403 = load i64, i64* %PC.i565
  %404 = add i64 %403, 4
  store i64 %404, i64* %PC.i565
  %405 = sext i64 %402 to i128
  %406 = and i128 %405, -18446744073709551616
  %407 = zext i64 %402 to i128
  %408 = or i128 %406, %407
  %409 = mul i128 104, %408
  %410 = trunc i128 %409 to i64
  store i64 %410, i64* %RCX.i566, align 8
  %411 = sext i64 %410 to i128
  %412 = icmp ne i128 %411, %409
  %413 = zext i1 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %413, i8* %414, align 1
  %415 = trunc i128 %409 to i32
  %416 = and i32 %415, 255
  %417 = call i32 @llvm.ctpop.i32(i32 %416)
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  %420 = xor i8 %419, 1
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %420, i8* %421, align 1
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %422, align 1
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %423, align 1
  %424 = lshr i64 %410, 63
  %425 = trunc i64 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %425, i8* %426, align 1
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %413, i8* %427, align 1
  store %struct.Memory* %loadMem_44d22c, %struct.Memory** %MEMORY
  %loadMem_44d230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 33
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RAX.i563 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 5
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RCX.i564 = bitcast %union.anon* %436 to i64*
  %437 = load i64, i64* %RAX.i563
  %438 = load i64, i64* %RCX.i564
  %439 = load i64, i64* %PC.i562
  %440 = add i64 %439, 3
  store i64 %440, i64* %PC.i562
  %441 = add i64 %438, %437
  store i64 %441, i64* %RAX.i563, align 8
  %442 = icmp ult i64 %441, %437
  %443 = icmp ult i64 %441, %438
  %444 = or i1 %442, %443
  %445 = zext i1 %444 to i8
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %445, i8* %446, align 1
  %447 = trunc i64 %441 to i32
  %448 = and i32 %447, 255
  %449 = call i32 @llvm.ctpop.i32(i32 %448)
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %452, i8* %453, align 1
  %454 = xor i64 %438, %437
  %455 = xor i64 %454, %441
  %456 = lshr i64 %455, 4
  %457 = trunc i64 %456 to i8
  %458 = and i8 %457, 1
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %458, i8* %459, align 1
  %460 = icmp eq i64 %441, 0
  %461 = zext i1 %460 to i8
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %461, i8* %462, align 1
  %463 = lshr i64 %441, 63
  %464 = trunc i64 %463 to i8
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %464, i8* %465, align 1
  %466 = lshr i64 %437, 63
  %467 = lshr i64 %438, 63
  %468 = xor i64 %463, %466
  %469 = xor i64 %463, %467
  %470 = add i64 %468, %469
  %471 = icmp eq i64 %470, 2
  %472 = zext i1 %471 to i8
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %472, i8* %473, align 1
  store %struct.Memory* %loadMem_44d230, %struct.Memory** %MEMORY
  %loadMem_44d233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 33
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %476 to i64*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %478 = getelementptr inbounds %struct.GPR, %struct.GPR* %477, i32 0, i32 1
  %479 = getelementptr inbounds %struct.Reg, %struct.Reg* %478, i32 0, i32 0
  %RAX.i561 = bitcast %union.anon* %479 to i64*
  %480 = load i64, i64* %RAX.i561
  %481 = add i64 %480, 40
  %482 = load i64, i64* %PC.i560
  %483 = add i64 %482, 5
  store i64 %483, i64* %PC.i560
  %484 = inttoptr i64 %481 to i64*
  %485 = load i64, i64* %484
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %486, align 1
  %487 = trunc i64 %485 to i32
  %488 = and i32 %487, 255
  %489 = call i32 @llvm.ctpop.i32(i32 %488)
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %492, i8* %493, align 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %494, align 1
  %495 = icmp eq i64 %485, 0
  %496 = zext i1 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %496, i8* %497, align 1
  %498 = lshr i64 %485, 63
  %499 = trunc i64 %498 to i8
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %499, i8* %500, align 1
  %501 = lshr i64 %485, 63
  %502 = xor i64 %498, %501
  %503 = add i64 %502, %501
  %504 = icmp eq i64 %503, 2
  %505 = zext i1 %504 to i8
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %505, i8* %506, align 1
  store %struct.Memory* %loadMem_44d233, %struct.Memory** %MEMORY
  %loadMem_44d238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 33
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %509 to i64*
  %510 = load i64, i64* %PC.i559
  %511 = add i64 %510, 50
  %512 = load i64, i64* %PC.i559
  %513 = add i64 %512, 6
  %514 = load i64, i64* %PC.i559
  %515 = add i64 %514, 6
  store i64 %515, i64* %PC.i559
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %517 = load i8, i8* %516, align 1
  store i8 %517, i8* %BRANCH_TAKEN, align 1
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %519 = icmp ne i8 %517, 0
  %520 = select i1 %519, i64 %511, i64 %513
  store i64 %520, i64* %518, align 8
  store %struct.Memory* %loadMem_44d238, %struct.Memory** %MEMORY
  %loadBr_44d238 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d238 = icmp eq i8 %loadBr_44d238, 1
  br i1 %cmpBr_44d238, label %block_.L_44d26a, label %block_44d23e

block_44d23e:                                     ; preds = %block_44d220
  %loadMem_44d23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 33
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %523 to i64*
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %525 = getelementptr inbounds %struct.GPR, %struct.GPR* %524, i32 0, i32 1
  %526 = getelementptr inbounds %struct.Reg, %struct.Reg* %525, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %526 to i64*
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 15
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %RBP.i558 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %RBP.i558
  %531 = sub i64 %530, 8
  %532 = load i64, i64* %PC.i556
  %533 = add i64 %532, 4
  store i64 %533, i64* %PC.i556
  %534 = inttoptr i64 %531 to i64*
  %535 = load i64, i64* %534
  store i64 %535, i64* %RAX.i557, align 8
  store %struct.Memory* %loadMem_44d23e, %struct.Memory** %MEMORY
  %loadMem_44d242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 33
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 1
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %RAX.i555
  %543 = add i64 %542, 8
  %544 = load i64, i64* %PC.i554
  %545 = add i64 %544, 4
  store i64 %545, i64* %PC.i554
  %546 = inttoptr i64 %543 to i64*
  %547 = load i64, i64* %546
  store i64 %547, i64* %RAX.i555, align 8
  store %struct.Memory* %loadMem_44d242, %struct.Memory** %MEMORY
  %loadMem_44d246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 5
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 15
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %556 to i64*
  %557 = load i64, i64* %RBP.i553
  %558 = sub i64 %557, 24
  %559 = load i64, i64* %PC.i551
  %560 = add i64 %559, 4
  store i64 %560, i64* %PC.i551
  %561 = inttoptr i64 %558 to i32*
  %562 = load i32, i32* %561
  %563 = sext i32 %562 to i64
  store i64 %563, i64* %RCX.i552, align 8
  store %struct.Memory* %loadMem_44d246, %struct.Memory** %MEMORY
  %loadMem_44d24a = load %struct.Memory*, %struct.Memory** %MEMORY
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %565 = getelementptr inbounds %struct.GPR, %struct.GPR* %564, i32 0, i32 33
  %566 = getelementptr inbounds %struct.Reg, %struct.Reg* %565, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %566 to i64*
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 5
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %569 to i64*
  %570 = load i64, i64* %RCX.i550
  %571 = load i64, i64* %PC.i549
  %572 = add i64 %571, 4
  store i64 %572, i64* %PC.i549
  %573 = sext i64 %570 to i128
  %574 = and i128 %573, -18446744073709551616
  %575 = zext i64 %570 to i128
  %576 = or i128 %574, %575
  %577 = mul i128 104, %576
  %578 = trunc i128 %577 to i64
  store i64 %578, i64* %RCX.i550, align 8
  %579 = sext i64 %578 to i128
  %580 = icmp ne i128 %579, %577
  %581 = zext i1 %580 to i8
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %581, i8* %582, align 1
  %583 = trunc i128 %577 to i32
  %584 = and i32 %583, 255
  %585 = call i32 @llvm.ctpop.i32(i32 %584)
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  %588 = xor i8 %587, 1
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %588, i8* %589, align 1
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %590, align 1
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %591, align 1
  %592 = lshr i64 %578, 63
  %593 = trunc i64 %592 to i8
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %593, i8* %594, align 1
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %581, i8* %595, align 1
  store %struct.Memory* %loadMem_44d24a, %struct.Memory** %MEMORY
  %loadMem_44d24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 33
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 1
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %601 to i64*
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 5
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %RCX.i548 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %RAX.i547
  %606 = load i64, i64* %RCX.i548
  %607 = load i64, i64* %PC.i546
  %608 = add i64 %607, 3
  store i64 %608, i64* %PC.i546
  %609 = add i64 %606, %605
  store i64 %609, i64* %RAX.i547, align 8
  %610 = icmp ult i64 %609, %605
  %611 = icmp ult i64 %609, %606
  %612 = or i1 %610, %611
  %613 = zext i1 %612 to i8
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %613, i8* %614, align 1
  %615 = trunc i64 %609 to i32
  %616 = and i32 %615, 255
  %617 = call i32 @llvm.ctpop.i32(i32 %616)
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %620, i8* %621, align 1
  %622 = xor i64 %606, %605
  %623 = xor i64 %622, %609
  %624 = lshr i64 %623, 4
  %625 = trunc i64 %624 to i8
  %626 = and i8 %625, 1
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %626, i8* %627, align 1
  %628 = icmp eq i64 %609, 0
  %629 = zext i1 %628 to i8
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %629, i8* %630, align 1
  %631 = lshr i64 %609, 63
  %632 = trunc i64 %631 to i8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %632, i8* %633, align 1
  %634 = lshr i64 %605, 63
  %635 = lshr i64 %606, 63
  %636 = xor i64 %631, %634
  %637 = xor i64 %631, %635
  %638 = add i64 %636, %637
  %639 = icmp eq i64 %638, 2
  %640 = zext i1 %639 to i8
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %640, i8* %641, align 1
  store %struct.Memory* %loadMem_44d24e, %struct.Memory** %MEMORY
  %loadMem_44d251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 33
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %644 to i64*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 1
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %RAX.i544 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 11
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RDI.i545 = bitcast %union.anon* %650 to i64*
  %651 = load i64, i64* %RAX.i544
  %652 = add i64 %651, 40
  %653 = load i64, i64* %PC.i543
  %654 = add i64 %653, 4
  store i64 %654, i64* %PC.i543
  %655 = inttoptr i64 %652 to i64*
  %656 = load i64, i64* %655
  store i64 %656, i64* %RDI.i545, align 8
  store %struct.Memory* %loadMem_44d251, %struct.Memory** %MEMORY
  %loadMem1_44d255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 33
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %659 to i64*
  %660 = load i64, i64* %PC.i542
  %661 = add i64 %660, -310773
  %662 = load i64, i64* %PC.i542
  %663 = add i64 %662, 5
  %664 = load i64, i64* %PC.i542
  %665 = add i64 %664, 5
  store i64 %665, i64* %PC.i542
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %667 = load i64, i64* %666, align 8
  %668 = add i64 %667, -8
  %669 = inttoptr i64 %668 to i64*
  store i64 %663, i64* %669
  store i64 %668, i64* %666, align 8
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %661, i64* %670, align 8
  store %struct.Memory* %loadMem1_44d255, %struct.Memory** %MEMORY
  %loadMem2_44d255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d255 = load i64, i64* %3
  %671 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_44d255)
  store %struct.Memory* %671, %struct.Memory** %MEMORY
  %loadMem_44d25a = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 1
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %677 to i64*
  %678 = load i64, i64* %RAX.i538
  %679 = load i64, i64* %PC.i537
  %680 = add i64 %679, 4
  store i64 %680, i64* %PC.i537
  %681 = add i64 1, %678
  store i64 %681, i64* %RAX.i538, align 8
  %682 = icmp ult i64 %681, %678
  %683 = icmp ult i64 %681, 1
  %684 = or i1 %682, %683
  %685 = zext i1 %684 to i8
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %685, i8* %686, align 1
  %687 = trunc i64 %681 to i32
  %688 = and i32 %687, 255
  %689 = call i32 @llvm.ctpop.i32(i32 %688)
  %690 = trunc i32 %689 to i8
  %691 = and i8 %690, 1
  %692 = xor i8 %691, 1
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %692, i8* %693, align 1
  %694 = xor i64 1, %678
  %695 = xor i64 %694, %681
  %696 = lshr i64 %695, 4
  %697 = trunc i64 %696 to i8
  %698 = and i8 %697, 1
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %698, i8* %699, align 1
  %700 = icmp eq i64 %681, 0
  %701 = zext i1 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %701, i8* %702, align 1
  %703 = lshr i64 %681, 63
  %704 = trunc i64 %703 to i8
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %704, i8* %705, align 1
  %706 = lshr i64 %678, 63
  %707 = xor i64 %703, %706
  %708 = add i64 %707, %703
  %709 = icmp eq i64 %708, 2
  %710 = zext i1 %709 to i8
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %710, i8* %711, align 1
  store %struct.Memory* %loadMem_44d25a, %struct.Memory** %MEMORY
  %loadMem_44d25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 33
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 5
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %717 to i64*
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 15
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %720 to i64*
  %721 = load i64, i64* %RBP.i536
  %722 = sub i64 %721, 28
  %723 = load i64, i64* %PC.i534
  %724 = add i64 %723, 4
  store i64 %724, i64* %PC.i534
  %725 = inttoptr i64 %722 to i32*
  %726 = load i32, i32* %725
  %727 = sext i32 %726 to i64
  store i64 %727, i64* %RCX.i535, align 8
  store %struct.Memory* %loadMem_44d25e, %struct.Memory** %MEMORY
  %loadMem_44d262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i531 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 1
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %RAX.i532 = bitcast %union.anon* %733 to i64*
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %735 = getelementptr inbounds %struct.GPR, %struct.GPR* %734, i32 0, i32 5
  %736 = getelementptr inbounds %struct.Reg, %struct.Reg* %735, i32 0, i32 0
  %RCX.i533 = bitcast %union.anon* %736 to i64*
  %737 = load i64, i64* %RCX.i533
  %738 = load i64, i64* %RAX.i532
  %739 = load i64, i64* %PC.i531
  %740 = add i64 %739, 3
  store i64 %740, i64* %PC.i531
  %741 = add i64 %738, %737
  store i64 %741, i64* %RCX.i533, align 8
  %742 = icmp ult i64 %741, %737
  %743 = icmp ult i64 %741, %738
  %744 = or i1 %742, %743
  %745 = zext i1 %744 to i8
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %745, i8* %746, align 1
  %747 = trunc i64 %741 to i32
  %748 = and i32 %747, 255
  %749 = call i32 @llvm.ctpop.i32(i32 %748)
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %752, i8* %753, align 1
  %754 = xor i64 %738, %737
  %755 = xor i64 %754, %741
  %756 = lshr i64 %755, 4
  %757 = trunc i64 %756 to i8
  %758 = and i8 %757, 1
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %758, i8* %759, align 1
  %760 = icmp eq i64 %741, 0
  %761 = zext i1 %760 to i8
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %761, i8* %762, align 1
  %763 = lshr i64 %741, 63
  %764 = trunc i64 %763 to i8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %764, i8* %765, align 1
  %766 = lshr i64 %737, 63
  %767 = lshr i64 %738, 63
  %768 = xor i64 %763, %766
  %769 = xor i64 %763, %767
  %770 = add i64 %768, %769
  %771 = icmp eq i64 %770, 2
  %772 = zext i1 %771 to i8
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %772, i8* %773, align 1
  store %struct.Memory* %loadMem_44d262, %struct.Memory** %MEMORY
  %loadMem_44d265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 5
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %ECX.i529 = bitcast %union.anon* %779 to i32*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 7
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RDX.i530 = bitcast %union.anon* %782 to i64*
  %783 = load i32, i32* %ECX.i529
  %784 = zext i32 %783 to i64
  %785 = load i64, i64* %PC.i528
  %786 = add i64 %785, 2
  store i64 %786, i64* %PC.i528
  %787 = and i64 %784, 4294967295
  store i64 %787, i64* %RDX.i530, align 8
  store %struct.Memory* %loadMem_44d265, %struct.Memory** %MEMORY
  %loadMem_44d267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 7
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %EDX.i526 = bitcast %union.anon* %793 to i32*
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 15
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %796 to i64*
  %797 = load i64, i64* %RBP.i527
  %798 = sub i64 %797, 28
  %799 = load i32, i32* %EDX.i526
  %800 = zext i32 %799 to i64
  %801 = load i64, i64* %PC.i525
  %802 = add i64 %801, 3
  store i64 %802, i64* %PC.i525
  %803 = inttoptr i64 %798 to i32*
  store i32 %799, i32* %803
  store %struct.Memory* %loadMem_44d267, %struct.Memory** %MEMORY
  br label %block_.L_44d26a

block_.L_44d26a:                                  ; preds = %block_44d23e, %block_44d220
  %loadMem_44d26a = load %struct.Memory*, %struct.Memory** %MEMORY
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %805 = getelementptr inbounds %struct.GPR, %struct.GPR* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.Reg, %struct.Reg* %805, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %806 to i64*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %808 = getelementptr inbounds %struct.GPR, %struct.GPR* %807, i32 0, i32 1
  %809 = getelementptr inbounds %struct.Reg, %struct.Reg* %808, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %809 to i64*
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 15
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %812 to i64*
  %813 = load i64, i64* %RBP.i524
  %814 = sub i64 %813, 8
  %815 = load i64, i64* %PC.i522
  %816 = add i64 %815, 4
  store i64 %816, i64* %PC.i522
  %817 = inttoptr i64 %814 to i64*
  %818 = load i64, i64* %817
  store i64 %818, i64* %RAX.i523, align 8
  store %struct.Memory* %loadMem_44d26a, %struct.Memory** %MEMORY
  %loadMem_44d26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 33
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 1
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %RAX.i521
  %826 = add i64 %825, 8
  %827 = load i64, i64* %PC.i520
  %828 = add i64 %827, 4
  store i64 %828, i64* %PC.i520
  %829 = inttoptr i64 %826 to i64*
  %830 = load i64, i64* %829
  store i64 %830, i64* %RAX.i521, align 8
  store %struct.Memory* %loadMem_44d26e, %struct.Memory** %MEMORY
  %loadMem_44d272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 33
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 5
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %RCX.i518 = bitcast %union.anon* %836 to i64*
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %838 = getelementptr inbounds %struct.GPR, %struct.GPR* %837, i32 0, i32 15
  %839 = getelementptr inbounds %struct.Reg, %struct.Reg* %838, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %839 to i64*
  %840 = load i64, i64* %RBP.i519
  %841 = sub i64 %840, 24
  %842 = load i64, i64* %PC.i517
  %843 = add i64 %842, 4
  store i64 %843, i64* %PC.i517
  %844 = inttoptr i64 %841 to i32*
  %845 = load i32, i32* %844
  %846 = sext i32 %845 to i64
  store i64 %846, i64* %RCX.i518, align 8
  store %struct.Memory* %loadMem_44d272, %struct.Memory** %MEMORY
  %loadMem_44d276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 33
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 5
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %RCX.i516
  %854 = load i64, i64* %PC.i515
  %855 = add i64 %854, 4
  store i64 %855, i64* %PC.i515
  %856 = sext i64 %853 to i128
  %857 = and i128 %856, -18446744073709551616
  %858 = zext i64 %853 to i128
  %859 = or i128 %857, %858
  %860 = mul i128 104, %859
  %861 = trunc i128 %860 to i64
  store i64 %861, i64* %RCX.i516, align 8
  %862 = sext i64 %861 to i128
  %863 = icmp ne i128 %862, %860
  %864 = zext i1 %863 to i8
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %864, i8* %865, align 1
  %866 = trunc i128 %860 to i32
  %867 = and i32 %866, 255
  %868 = call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %871, i8* %872, align 1
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %873, align 1
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %874, align 1
  %875 = lshr i64 %861, 63
  %876 = trunc i64 %875 to i8
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %876, i8* %877, align 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %864, i8* %878, align 1
  store %struct.Memory* %loadMem_44d276, %struct.Memory** %MEMORY
  %loadMem_44d27a = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 1
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 5
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RCX.i514 = bitcast %union.anon* %887 to i64*
  %888 = load i64, i64* %RAX.i513
  %889 = load i64, i64* %RCX.i514
  %890 = load i64, i64* %PC.i512
  %891 = add i64 %890, 3
  store i64 %891, i64* %PC.i512
  %892 = add i64 %889, %888
  store i64 %892, i64* %RAX.i513, align 8
  %893 = icmp ult i64 %892, %888
  %894 = icmp ult i64 %892, %889
  %895 = or i1 %893, %894
  %896 = zext i1 %895 to i8
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %896, i8* %897, align 1
  %898 = trunc i64 %892 to i32
  %899 = and i32 %898, 255
  %900 = call i32 @llvm.ctpop.i32(i32 %899)
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %903, i8* %904, align 1
  %905 = xor i64 %889, %888
  %906 = xor i64 %905, %892
  %907 = lshr i64 %906, 4
  %908 = trunc i64 %907 to i8
  %909 = and i8 %908, 1
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %909, i8* %910, align 1
  %911 = icmp eq i64 %892, 0
  %912 = zext i1 %911 to i8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %912, i8* %913, align 1
  %914 = lshr i64 %892, 63
  %915 = trunc i64 %914 to i8
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %915, i8* %916, align 1
  %917 = lshr i64 %888, 63
  %918 = lshr i64 %889, 63
  %919 = xor i64 %914, %917
  %920 = xor i64 %914, %918
  %921 = add i64 %919, %920
  %922 = icmp eq i64 %921, 2
  %923 = zext i1 %922 to i8
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %923, i8* %924, align 1
  store %struct.Memory* %loadMem_44d27a, %struct.Memory** %MEMORY
  %loadMem_44d27d = load %struct.Memory*, %struct.Memory** %MEMORY
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 33
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 1
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %930 to i64*
  %931 = load i64, i64* %RAX.i511
  %932 = add i64 %931, 48
  %933 = load i64, i64* %PC.i510
  %934 = add i64 %933, 5
  store i64 %934, i64* %PC.i510
  %935 = inttoptr i64 %932 to i64*
  %936 = load i64, i64* %935
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %937, align 1
  %938 = trunc i64 %936 to i32
  %939 = and i32 %938, 255
  %940 = call i32 @llvm.ctpop.i32(i32 %939)
  %941 = trunc i32 %940 to i8
  %942 = and i8 %941, 1
  %943 = xor i8 %942, 1
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %943, i8* %944, align 1
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %945, align 1
  %946 = icmp eq i64 %936, 0
  %947 = zext i1 %946 to i8
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %947, i8* %948, align 1
  %949 = lshr i64 %936, 63
  %950 = trunc i64 %949 to i8
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %950, i8* %951, align 1
  %952 = lshr i64 %936, 63
  %953 = xor i64 %949, %952
  %954 = add i64 %953, %952
  %955 = icmp eq i64 %954, 2
  %956 = zext i1 %955 to i8
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %956, i8* %957, align 1
  store %struct.Memory* %loadMem_44d27d, %struct.Memory** %MEMORY
  %loadMem_44d282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %960 to i64*
  %961 = load i64, i64* %PC.i509
  %962 = add i64 %961, 50
  %963 = load i64, i64* %PC.i509
  %964 = add i64 %963, 6
  %965 = load i64, i64* %PC.i509
  %966 = add i64 %965, 6
  store i64 %966, i64* %PC.i509
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %968 = load i8, i8* %967, align 1
  store i8 %968, i8* %BRANCH_TAKEN, align 1
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %970 = icmp ne i8 %968, 0
  %971 = select i1 %970, i64 %962, i64 %964
  store i64 %971, i64* %969, align 8
  store %struct.Memory* %loadMem_44d282, %struct.Memory** %MEMORY
  %loadBr_44d282 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d282 = icmp eq i8 %loadBr_44d282, 1
  br i1 %cmpBr_44d282, label %block_.L_44d2b4, label %block_44d288

block_44d288:                                     ; preds = %block_.L_44d26a
  %loadMem_44d288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 33
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %974 to i64*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 1
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %RAX.i507 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 15
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %980 to i64*
  %981 = load i64, i64* %RBP.i508
  %982 = sub i64 %981, 8
  %983 = load i64, i64* %PC.i506
  %984 = add i64 %983, 4
  store i64 %984, i64* %PC.i506
  %985 = inttoptr i64 %982 to i64*
  %986 = load i64, i64* %985
  store i64 %986, i64* %RAX.i507, align 8
  store %struct.Memory* %loadMem_44d288, %struct.Memory** %MEMORY
  %loadMem_44d28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %988 = getelementptr inbounds %struct.GPR, %struct.GPR* %987, i32 0, i32 33
  %989 = getelementptr inbounds %struct.Reg, %struct.Reg* %988, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %989 to i64*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %991 = getelementptr inbounds %struct.GPR, %struct.GPR* %990, i32 0, i32 1
  %992 = getelementptr inbounds %struct.Reg, %struct.Reg* %991, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %992 to i64*
  %993 = load i64, i64* %RAX.i505
  %994 = add i64 %993, 8
  %995 = load i64, i64* %PC.i504
  %996 = add i64 %995, 4
  store i64 %996, i64* %PC.i504
  %997 = inttoptr i64 %994 to i64*
  %998 = load i64, i64* %997
  store i64 %998, i64* %RAX.i505, align 8
  store %struct.Memory* %loadMem_44d28c, %struct.Memory** %MEMORY
  %loadMem_44d290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 33
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %1001 to i64*
  %1002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1003 = getelementptr inbounds %struct.GPR, %struct.GPR* %1002, i32 0, i32 5
  %1004 = getelementptr inbounds %struct.Reg, %struct.Reg* %1003, i32 0, i32 0
  %RCX.i502 = bitcast %union.anon* %1004 to i64*
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 15
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %1007 to i64*
  %1008 = load i64, i64* %RBP.i503
  %1009 = sub i64 %1008, 24
  %1010 = load i64, i64* %PC.i501
  %1011 = add i64 %1010, 4
  store i64 %1011, i64* %PC.i501
  %1012 = inttoptr i64 %1009 to i32*
  %1013 = load i32, i32* %1012
  %1014 = sext i32 %1013 to i64
  store i64 %1014, i64* %RCX.i502, align 8
  store %struct.Memory* %loadMem_44d290, %struct.Memory** %MEMORY
  %loadMem_44d294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 33
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %1017 to i64*
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 5
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %RCX.i500 = bitcast %union.anon* %1020 to i64*
  %1021 = load i64, i64* %RCX.i500
  %1022 = load i64, i64* %PC.i499
  %1023 = add i64 %1022, 4
  store i64 %1023, i64* %PC.i499
  %1024 = sext i64 %1021 to i128
  %1025 = and i128 %1024, -18446744073709551616
  %1026 = zext i64 %1021 to i128
  %1027 = or i128 %1025, %1026
  %1028 = mul i128 104, %1027
  %1029 = trunc i128 %1028 to i64
  store i64 %1029, i64* %RCX.i500, align 8
  %1030 = sext i64 %1029 to i128
  %1031 = icmp ne i128 %1030, %1028
  %1032 = zext i1 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1032, i8* %1033, align 1
  %1034 = trunc i128 %1028 to i32
  %1035 = and i32 %1034, 255
  %1036 = call i32 @llvm.ctpop.i32(i32 %1035)
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = xor i8 %1038, 1
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1039, i8* %1040, align 1
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1041, align 1
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1042, align 1
  %1043 = lshr i64 %1029, 63
  %1044 = trunc i64 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1044, i8* %1045, align 1
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1032, i8* %1046, align 1
  store %struct.Memory* %loadMem_44d294, %struct.Memory** %MEMORY
  %loadMem_44d298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 33
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %1049 to i64*
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 1
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %1052 to i64*
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 5
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %RCX.i498 = bitcast %union.anon* %1055 to i64*
  %1056 = load i64, i64* %RAX.i497
  %1057 = load i64, i64* %RCX.i498
  %1058 = load i64, i64* %PC.i496
  %1059 = add i64 %1058, 3
  store i64 %1059, i64* %PC.i496
  %1060 = add i64 %1057, %1056
  store i64 %1060, i64* %RAX.i497, align 8
  %1061 = icmp ult i64 %1060, %1056
  %1062 = icmp ult i64 %1060, %1057
  %1063 = or i1 %1061, %1062
  %1064 = zext i1 %1063 to i8
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1064, i8* %1065, align 1
  %1066 = trunc i64 %1060 to i32
  %1067 = and i32 %1066, 255
  %1068 = call i32 @llvm.ctpop.i32(i32 %1067)
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  %1071 = xor i8 %1070, 1
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1071, i8* %1072, align 1
  %1073 = xor i64 %1057, %1056
  %1074 = xor i64 %1073, %1060
  %1075 = lshr i64 %1074, 4
  %1076 = trunc i64 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1077, i8* %1078, align 1
  %1079 = icmp eq i64 %1060, 0
  %1080 = zext i1 %1079 to i8
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1080, i8* %1081, align 1
  %1082 = lshr i64 %1060, 63
  %1083 = trunc i64 %1082 to i8
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1083, i8* %1084, align 1
  %1085 = lshr i64 %1056, 63
  %1086 = lshr i64 %1057, 63
  %1087 = xor i64 %1082, %1085
  %1088 = xor i64 %1082, %1086
  %1089 = add i64 %1087, %1088
  %1090 = icmp eq i64 %1089, 2
  %1091 = zext i1 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1091, i8* %1092, align 1
  store %struct.Memory* %loadMem_44d298, %struct.Memory** %MEMORY
  %loadMem_44d29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1094 = getelementptr inbounds %struct.GPR, %struct.GPR* %1093, i32 0, i32 33
  %1095 = getelementptr inbounds %struct.Reg, %struct.Reg* %1094, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1095 to i64*
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 1
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %RAX.i494 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 11
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %RDI.i495 = bitcast %union.anon* %1101 to i64*
  %1102 = load i64, i64* %RAX.i494
  %1103 = add i64 %1102, 48
  %1104 = load i64, i64* %PC.i493
  %1105 = add i64 %1104, 4
  store i64 %1105, i64* %PC.i493
  %1106 = inttoptr i64 %1103 to i64*
  %1107 = load i64, i64* %1106
  store i64 %1107, i64* %RDI.i495, align 8
  store %struct.Memory* %loadMem_44d29b, %struct.Memory** %MEMORY
  %loadMem1_44d29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 33
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %1110 to i64*
  %1111 = load i64, i64* %PC.i492
  %1112 = add i64 %1111, -310847
  %1113 = load i64, i64* %PC.i492
  %1114 = add i64 %1113, 5
  %1115 = load i64, i64* %PC.i492
  %1116 = add i64 %1115, 5
  store i64 %1116, i64* %PC.i492
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1118 = load i64, i64* %1117, align 8
  %1119 = add i64 %1118, -8
  %1120 = inttoptr i64 %1119 to i64*
  store i64 %1114, i64* %1120
  store i64 %1119, i64* %1117, align 8
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1112, i64* %1121, align 8
  store %struct.Memory* %loadMem1_44d29f, %struct.Memory** %MEMORY
  %loadMem2_44d29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d29f = load i64, i64* %3
  %1122 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_44d29f)
  store %struct.Memory* %1122, %struct.Memory** %MEMORY
  %loadMem_44d2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 33
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %1125 to i64*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 1
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %1128 to i64*
  %1129 = load i64, i64* %RAX.i489
  %1130 = load i64, i64* %PC.i488
  %1131 = add i64 %1130, 4
  store i64 %1131, i64* %PC.i488
  %1132 = add i64 1, %1129
  store i64 %1132, i64* %RAX.i489, align 8
  %1133 = icmp ult i64 %1132, %1129
  %1134 = icmp ult i64 %1132, 1
  %1135 = or i1 %1133, %1134
  %1136 = zext i1 %1135 to i8
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1136, i8* %1137, align 1
  %1138 = trunc i64 %1132 to i32
  %1139 = and i32 %1138, 255
  %1140 = call i32 @llvm.ctpop.i32(i32 %1139)
  %1141 = trunc i32 %1140 to i8
  %1142 = and i8 %1141, 1
  %1143 = xor i8 %1142, 1
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1143, i8* %1144, align 1
  %1145 = xor i64 1, %1129
  %1146 = xor i64 %1145, %1132
  %1147 = lshr i64 %1146, 4
  %1148 = trunc i64 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1149, i8* %1150, align 1
  %1151 = icmp eq i64 %1132, 0
  %1152 = zext i1 %1151 to i8
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1152, i8* %1153, align 1
  %1154 = lshr i64 %1132, 63
  %1155 = trunc i64 %1154 to i8
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1155, i8* %1156, align 1
  %1157 = lshr i64 %1129, 63
  %1158 = xor i64 %1154, %1157
  %1159 = add i64 %1158, %1154
  %1160 = icmp eq i64 %1159, 2
  %1161 = zext i1 %1160 to i8
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1161, i8* %1162, align 1
  store %struct.Memory* %loadMem_44d2a4, %struct.Memory** %MEMORY
  %loadMem_44d2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 5
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 15
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %RBP.i487
  %1173 = sub i64 %1172, 28
  %1174 = load i64, i64* %PC.i485
  %1175 = add i64 %1174, 4
  store i64 %1175, i64* %PC.i485
  %1176 = inttoptr i64 %1173 to i32*
  %1177 = load i32, i32* %1176
  %1178 = sext i32 %1177 to i64
  store i64 %1178, i64* %RCX.i486, align 8
  store %struct.Memory* %loadMem_44d2a8, %struct.Memory** %MEMORY
  %loadMem_44d2ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 33
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 1
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %1184 to i64*
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 5
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %1187 to i64*
  %1188 = load i64, i64* %RCX.i484
  %1189 = load i64, i64* %RAX.i483
  %1190 = load i64, i64* %PC.i482
  %1191 = add i64 %1190, 3
  store i64 %1191, i64* %PC.i482
  %1192 = add i64 %1189, %1188
  store i64 %1192, i64* %RCX.i484, align 8
  %1193 = icmp ult i64 %1192, %1188
  %1194 = icmp ult i64 %1192, %1189
  %1195 = or i1 %1193, %1194
  %1196 = zext i1 %1195 to i8
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1196, i8* %1197, align 1
  %1198 = trunc i64 %1192 to i32
  %1199 = and i32 %1198, 255
  %1200 = call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1203, i8* %1204, align 1
  %1205 = xor i64 %1189, %1188
  %1206 = xor i64 %1205, %1192
  %1207 = lshr i64 %1206, 4
  %1208 = trunc i64 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1209, i8* %1210, align 1
  %1211 = icmp eq i64 %1192, 0
  %1212 = zext i1 %1211 to i8
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1212, i8* %1213, align 1
  %1214 = lshr i64 %1192, 63
  %1215 = trunc i64 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1215, i8* %1216, align 1
  %1217 = lshr i64 %1188, 63
  %1218 = lshr i64 %1189, 63
  %1219 = xor i64 %1214, %1217
  %1220 = xor i64 %1214, %1218
  %1221 = add i64 %1219, %1220
  %1222 = icmp eq i64 %1221, 2
  %1223 = zext i1 %1222 to i8
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1223, i8* %1224, align 1
  store %struct.Memory* %loadMem_44d2ac, %struct.Memory** %MEMORY
  %loadMem_44d2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 5
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %ECX.i480 = bitcast %union.anon* %1230 to i32*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 7
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %RDX.i481 = bitcast %union.anon* %1233 to i64*
  %1234 = load i32, i32* %ECX.i480
  %1235 = zext i32 %1234 to i64
  %1236 = load i64, i64* %PC.i479
  %1237 = add i64 %1236, 2
  store i64 %1237, i64* %PC.i479
  %1238 = and i64 %1235, 4294967295
  store i64 %1238, i64* %RDX.i481, align 8
  store %struct.Memory* %loadMem_44d2af, %struct.Memory** %MEMORY
  %loadMem_44d2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 7
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %EDX.i477 = bitcast %union.anon* %1244 to i32*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 15
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %1247 to i64*
  %1248 = load i64, i64* %RBP.i478
  %1249 = sub i64 %1248, 28
  %1250 = load i32, i32* %EDX.i477
  %1251 = zext i32 %1250 to i64
  %1252 = load i64, i64* %PC.i476
  %1253 = add i64 %1252, 3
  store i64 %1253, i64* %PC.i476
  %1254 = inttoptr i64 %1249 to i32*
  store i32 %1250, i32* %1254
  store %struct.Memory* %loadMem_44d2b1, %struct.Memory** %MEMORY
  br label %block_.L_44d2b4

block_.L_44d2b4:                                  ; preds = %block_44d288, %block_.L_44d26a
  %loadMem_44d2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 1
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 15
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RBP.i475
  %1265 = sub i64 %1264, 8
  %1266 = load i64, i64* %PC.i473
  %1267 = add i64 %1266, 4
  store i64 %1267, i64* %PC.i473
  %1268 = inttoptr i64 %1265 to i64*
  %1269 = load i64, i64* %1268
  store i64 %1269, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_44d2b4, %struct.Memory** %MEMORY
  %loadMem_44d2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 1
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %1275 to i64*
  %1276 = load i64, i64* %RAX.i472
  %1277 = add i64 %1276, 8
  %1278 = load i64, i64* %PC.i471
  %1279 = add i64 %1278, 4
  store i64 %1279, i64* %PC.i471
  %1280 = inttoptr i64 %1277 to i64*
  %1281 = load i64, i64* %1280
  store i64 %1281, i64* %RAX.i472, align 8
  store %struct.Memory* %loadMem_44d2b8, %struct.Memory** %MEMORY
  %loadMem_44d2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1283 = getelementptr inbounds %struct.GPR, %struct.GPR* %1282, i32 0, i32 33
  %1284 = getelementptr inbounds %struct.Reg, %struct.Reg* %1283, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %1284 to i64*
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 5
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %RCX.i469 = bitcast %union.anon* %1287 to i64*
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 15
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %1290 to i64*
  %1291 = load i64, i64* %RBP.i470
  %1292 = sub i64 %1291, 24
  %1293 = load i64, i64* %PC.i468
  %1294 = add i64 %1293, 4
  store i64 %1294, i64* %PC.i468
  %1295 = inttoptr i64 %1292 to i32*
  %1296 = load i32, i32* %1295
  %1297 = sext i32 %1296 to i64
  store i64 %1297, i64* %RCX.i469, align 8
  store %struct.Memory* %loadMem_44d2bc, %struct.Memory** %MEMORY
  %loadMem_44d2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 33
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %1300 to i64*
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 5
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %RCX.i467 = bitcast %union.anon* %1303 to i64*
  %1304 = load i64, i64* %RCX.i467
  %1305 = load i64, i64* %PC.i466
  %1306 = add i64 %1305, 4
  store i64 %1306, i64* %PC.i466
  %1307 = sext i64 %1304 to i128
  %1308 = and i128 %1307, -18446744073709551616
  %1309 = zext i64 %1304 to i128
  %1310 = or i128 %1308, %1309
  %1311 = mul i128 104, %1310
  %1312 = trunc i128 %1311 to i64
  store i64 %1312, i64* %RCX.i467, align 8
  %1313 = sext i64 %1312 to i128
  %1314 = icmp ne i128 %1313, %1311
  %1315 = zext i1 %1314 to i8
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1315, i8* %1316, align 1
  %1317 = trunc i128 %1311 to i32
  %1318 = and i32 %1317, 255
  %1319 = call i32 @llvm.ctpop.i32(i32 %1318)
  %1320 = trunc i32 %1319 to i8
  %1321 = and i8 %1320, 1
  %1322 = xor i8 %1321, 1
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1322, i8* %1323, align 1
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1324, align 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1325, align 1
  %1326 = lshr i64 %1312, 63
  %1327 = trunc i64 %1326 to i8
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1327, i8* %1328, align 1
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1315, i8* %1329, align 1
  store %struct.Memory* %loadMem_44d2c0, %struct.Memory** %MEMORY
  %loadMem_44d2c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 33
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 1
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 5
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %RCX.i465 = bitcast %union.anon* %1338 to i64*
  %1339 = load i64, i64* %RAX.i464
  %1340 = load i64, i64* %RCX.i465
  %1341 = load i64, i64* %PC.i463
  %1342 = add i64 %1341, 3
  store i64 %1342, i64* %PC.i463
  %1343 = add i64 %1340, %1339
  store i64 %1343, i64* %RAX.i464, align 8
  %1344 = icmp ult i64 %1343, %1339
  %1345 = icmp ult i64 %1343, %1340
  %1346 = or i1 %1344, %1345
  %1347 = zext i1 %1346 to i8
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1347, i8* %1348, align 1
  %1349 = trunc i64 %1343 to i32
  %1350 = and i32 %1349, 255
  %1351 = call i32 @llvm.ctpop.i32(i32 %1350)
  %1352 = trunc i32 %1351 to i8
  %1353 = and i8 %1352, 1
  %1354 = xor i8 %1353, 1
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1354, i8* %1355, align 1
  %1356 = xor i64 %1340, %1339
  %1357 = xor i64 %1356, %1343
  %1358 = lshr i64 %1357, 4
  %1359 = trunc i64 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1360, i8* %1361, align 1
  %1362 = icmp eq i64 %1343, 0
  %1363 = zext i1 %1362 to i8
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1363, i8* %1364, align 1
  %1365 = lshr i64 %1343, 63
  %1366 = trunc i64 %1365 to i8
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1366, i8* %1367, align 1
  %1368 = lshr i64 %1339, 63
  %1369 = lshr i64 %1340, 63
  %1370 = xor i64 %1365, %1368
  %1371 = xor i64 %1365, %1369
  %1372 = add i64 %1370, %1371
  %1373 = icmp eq i64 %1372, 2
  %1374 = zext i1 %1373 to i8
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1374, i8* %1375, align 1
  store %struct.Memory* %loadMem_44d2c4, %struct.Memory** %MEMORY
  %loadMem_44d2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1377 = getelementptr inbounds %struct.GPR, %struct.GPR* %1376, i32 0, i32 33
  %1378 = getelementptr inbounds %struct.Reg, %struct.Reg* %1377, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %1378 to i64*
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1380 = getelementptr inbounds %struct.GPR, %struct.GPR* %1379, i32 0, i32 1
  %1381 = getelementptr inbounds %struct.Reg, %struct.Reg* %1380, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %1381 to i64*
  %1382 = load i64, i64* %RAX.i462
  %1383 = add i64 %1382, 56
  %1384 = load i64, i64* %PC.i461
  %1385 = add i64 %1384, 5
  store i64 %1385, i64* %PC.i461
  %1386 = inttoptr i64 %1383 to i64*
  %1387 = load i64, i64* %1386
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1388, align 1
  %1389 = trunc i64 %1387 to i32
  %1390 = and i32 %1389, 255
  %1391 = call i32 @llvm.ctpop.i32(i32 %1390)
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  %1394 = xor i8 %1393, 1
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1394, i8* %1395, align 1
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1396, align 1
  %1397 = icmp eq i64 %1387, 0
  %1398 = zext i1 %1397 to i8
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1398, i8* %1399, align 1
  %1400 = lshr i64 %1387, 63
  %1401 = trunc i64 %1400 to i8
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1401, i8* %1402, align 1
  %1403 = lshr i64 %1387, 63
  %1404 = xor i64 %1400, %1403
  %1405 = add i64 %1404, %1403
  %1406 = icmp eq i64 %1405, 2
  %1407 = zext i1 %1406 to i8
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1407, i8* %1408, align 1
  store %struct.Memory* %loadMem_44d2c7, %struct.Memory** %MEMORY
  %loadMem_44d2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %1411 to i64*
  %1412 = load i64, i64* %PC.i460
  %1413 = add i64 %1412, 50
  %1414 = load i64, i64* %PC.i460
  %1415 = add i64 %1414, 6
  %1416 = load i64, i64* %PC.i460
  %1417 = add i64 %1416, 6
  store i64 %1417, i64* %PC.i460
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1419 = load i8, i8* %1418, align 1
  store i8 %1419, i8* %BRANCH_TAKEN, align 1
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1421 = icmp ne i8 %1419, 0
  %1422 = select i1 %1421, i64 %1413, i64 %1415
  store i64 %1422, i64* %1420, align 8
  store %struct.Memory* %loadMem_44d2cc, %struct.Memory** %MEMORY
  %loadBr_44d2cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d2cc = icmp eq i8 %loadBr_44d2cc, 1
  br i1 %cmpBr_44d2cc, label %block_.L_44d2fe, label %block_44d2d2

block_44d2d2:                                     ; preds = %block_.L_44d2b4
  %loadMem_44d2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1424 = getelementptr inbounds %struct.GPR, %struct.GPR* %1423, i32 0, i32 33
  %1425 = getelementptr inbounds %struct.Reg, %struct.Reg* %1424, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %1425 to i64*
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 1
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 15
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %1431 to i64*
  %1432 = load i64, i64* %RBP.i459
  %1433 = sub i64 %1432, 8
  %1434 = load i64, i64* %PC.i457
  %1435 = add i64 %1434, 4
  store i64 %1435, i64* %PC.i457
  %1436 = inttoptr i64 %1433 to i64*
  %1437 = load i64, i64* %1436
  store i64 %1437, i64* %RAX.i458, align 8
  store %struct.Memory* %loadMem_44d2d2, %struct.Memory** %MEMORY
  %loadMem_44d2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 33
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 1
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %1443 to i64*
  %1444 = load i64, i64* %RAX.i456
  %1445 = add i64 %1444, 8
  %1446 = load i64, i64* %PC.i455
  %1447 = add i64 %1446, 4
  store i64 %1447, i64* %PC.i455
  %1448 = inttoptr i64 %1445 to i64*
  %1449 = load i64, i64* %1448
  store i64 %1449, i64* %RAX.i456, align 8
  store %struct.Memory* %loadMem_44d2d6, %struct.Memory** %MEMORY
  %loadMem_44d2da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 33
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 5
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %RCX.i453 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 15
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %1458 to i64*
  %1459 = load i64, i64* %RBP.i454
  %1460 = sub i64 %1459, 24
  %1461 = load i64, i64* %PC.i452
  %1462 = add i64 %1461, 4
  store i64 %1462, i64* %PC.i452
  %1463 = inttoptr i64 %1460 to i32*
  %1464 = load i32, i32* %1463
  %1465 = sext i32 %1464 to i64
  store i64 %1465, i64* %RCX.i453, align 8
  store %struct.Memory* %loadMem_44d2da, %struct.Memory** %MEMORY
  %loadMem_44d2de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 33
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1468 to i64*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 5
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %1471 to i64*
  %1472 = load i64, i64* %RCX.i451
  %1473 = load i64, i64* %PC.i450
  %1474 = add i64 %1473, 4
  store i64 %1474, i64* %PC.i450
  %1475 = sext i64 %1472 to i128
  %1476 = and i128 %1475, -18446744073709551616
  %1477 = zext i64 %1472 to i128
  %1478 = or i128 %1476, %1477
  %1479 = mul i128 104, %1478
  %1480 = trunc i128 %1479 to i64
  store i64 %1480, i64* %RCX.i451, align 8
  %1481 = sext i64 %1480 to i128
  %1482 = icmp ne i128 %1481, %1479
  %1483 = zext i1 %1482 to i8
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1483, i8* %1484, align 1
  %1485 = trunc i128 %1479 to i32
  %1486 = and i32 %1485, 255
  %1487 = call i32 @llvm.ctpop.i32(i32 %1486)
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  %1490 = xor i8 %1489, 1
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1490, i8* %1491, align 1
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1492, align 1
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1493, align 1
  %1494 = lshr i64 %1480, 63
  %1495 = trunc i64 %1494 to i8
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1495, i8* %1496, align 1
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1483, i8* %1497, align 1
  store %struct.Memory* %loadMem_44d2de, %struct.Memory** %MEMORY
  %loadMem_44d2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 33
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 1
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %1503 to i64*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 5
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %RCX.i449 = bitcast %union.anon* %1506 to i64*
  %1507 = load i64, i64* %RAX.i448
  %1508 = load i64, i64* %RCX.i449
  %1509 = load i64, i64* %PC.i447
  %1510 = add i64 %1509, 3
  store i64 %1510, i64* %PC.i447
  %1511 = add i64 %1508, %1507
  store i64 %1511, i64* %RAX.i448, align 8
  %1512 = icmp ult i64 %1511, %1507
  %1513 = icmp ult i64 %1511, %1508
  %1514 = or i1 %1512, %1513
  %1515 = zext i1 %1514 to i8
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1515, i8* %1516, align 1
  %1517 = trunc i64 %1511 to i32
  %1518 = and i32 %1517, 255
  %1519 = call i32 @llvm.ctpop.i32(i32 %1518)
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  %1522 = xor i8 %1521, 1
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1522, i8* %1523, align 1
  %1524 = xor i64 %1508, %1507
  %1525 = xor i64 %1524, %1511
  %1526 = lshr i64 %1525, 4
  %1527 = trunc i64 %1526 to i8
  %1528 = and i8 %1527, 1
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1528, i8* %1529, align 1
  %1530 = icmp eq i64 %1511, 0
  %1531 = zext i1 %1530 to i8
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1531, i8* %1532, align 1
  %1533 = lshr i64 %1511, 63
  %1534 = trunc i64 %1533 to i8
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1534, i8* %1535, align 1
  %1536 = lshr i64 %1507, 63
  %1537 = lshr i64 %1508, 63
  %1538 = xor i64 %1533, %1536
  %1539 = xor i64 %1533, %1537
  %1540 = add i64 %1538, %1539
  %1541 = icmp eq i64 %1540, 2
  %1542 = zext i1 %1541 to i8
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1542, i8* %1543, align 1
  store %struct.Memory* %loadMem_44d2e2, %struct.Memory** %MEMORY
  %loadMem_44d2e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 1
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %1549 to i64*
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 11
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %RDI.i446 = bitcast %union.anon* %1552 to i64*
  %1553 = load i64, i64* %RAX.i445
  %1554 = add i64 %1553, 56
  %1555 = load i64, i64* %PC.i444
  %1556 = add i64 %1555, 4
  store i64 %1556, i64* %PC.i444
  %1557 = inttoptr i64 %1554 to i64*
  %1558 = load i64, i64* %1557
  store i64 %1558, i64* %RDI.i446, align 8
  store %struct.Memory* %loadMem_44d2e5, %struct.Memory** %MEMORY
  %loadMem1_44d2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 33
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1561 to i64*
  %1562 = load i64, i64* %PC.i443
  %1563 = add i64 %1562, -310921
  %1564 = load i64, i64* %PC.i443
  %1565 = add i64 %1564, 5
  %1566 = load i64, i64* %PC.i443
  %1567 = add i64 %1566, 5
  store i64 %1567, i64* %PC.i443
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1569 = load i64, i64* %1568, align 8
  %1570 = add i64 %1569, -8
  %1571 = inttoptr i64 %1570 to i64*
  store i64 %1565, i64* %1571
  store i64 %1570, i64* %1568, align 8
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1563, i64* %1572, align 8
  store %struct.Memory* %loadMem1_44d2e9, %struct.Memory** %MEMORY
  %loadMem2_44d2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d2e9 = load i64, i64* %3
  %1573 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_44d2e9)
  store %struct.Memory* %1573, %struct.Memory** %MEMORY
  %loadMem_44d2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 33
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %1576 to i64*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 1
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %1579 to i64*
  %1580 = load i64, i64* %RAX.i440
  %1581 = load i64, i64* %PC.i439
  %1582 = add i64 %1581, 4
  store i64 %1582, i64* %PC.i439
  %1583 = add i64 1, %1580
  store i64 %1583, i64* %RAX.i440, align 8
  %1584 = icmp ult i64 %1583, %1580
  %1585 = icmp ult i64 %1583, 1
  %1586 = or i1 %1584, %1585
  %1587 = zext i1 %1586 to i8
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1587, i8* %1588, align 1
  %1589 = trunc i64 %1583 to i32
  %1590 = and i32 %1589, 255
  %1591 = call i32 @llvm.ctpop.i32(i32 %1590)
  %1592 = trunc i32 %1591 to i8
  %1593 = and i8 %1592, 1
  %1594 = xor i8 %1593, 1
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1594, i8* %1595, align 1
  %1596 = xor i64 1, %1580
  %1597 = xor i64 %1596, %1583
  %1598 = lshr i64 %1597, 4
  %1599 = trunc i64 %1598 to i8
  %1600 = and i8 %1599, 1
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1600, i8* %1601, align 1
  %1602 = icmp eq i64 %1583, 0
  %1603 = zext i1 %1602 to i8
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1603, i8* %1604, align 1
  %1605 = lshr i64 %1583, 63
  %1606 = trunc i64 %1605 to i8
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1606, i8* %1607, align 1
  %1608 = lshr i64 %1580, 63
  %1609 = xor i64 %1605, %1608
  %1610 = add i64 %1609, %1605
  %1611 = icmp eq i64 %1610, 2
  %1612 = zext i1 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1612, i8* %1613, align 1
  store %struct.Memory* %loadMem_44d2ee, %struct.Memory** %MEMORY
  %loadMem_44d2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 5
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %RCX.i437 = bitcast %union.anon* %1619 to i64*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 15
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %1622 to i64*
  %1623 = load i64, i64* %RBP.i438
  %1624 = sub i64 %1623, 28
  %1625 = load i64, i64* %PC.i436
  %1626 = add i64 %1625, 4
  store i64 %1626, i64* %PC.i436
  %1627 = inttoptr i64 %1624 to i32*
  %1628 = load i32, i32* %1627
  %1629 = sext i32 %1628 to i64
  store i64 %1629, i64* %RCX.i437, align 8
  store %struct.Memory* %loadMem_44d2f2, %struct.Memory** %MEMORY
  %loadMem_44d2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 1
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 5
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %1638 to i64*
  %1639 = load i64, i64* %RCX.i435
  %1640 = load i64, i64* %RAX.i434
  %1641 = load i64, i64* %PC.i433
  %1642 = add i64 %1641, 3
  store i64 %1642, i64* %PC.i433
  %1643 = add i64 %1640, %1639
  store i64 %1643, i64* %RCX.i435, align 8
  %1644 = icmp ult i64 %1643, %1639
  %1645 = icmp ult i64 %1643, %1640
  %1646 = or i1 %1644, %1645
  %1647 = zext i1 %1646 to i8
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1647, i8* %1648, align 1
  %1649 = trunc i64 %1643 to i32
  %1650 = and i32 %1649, 255
  %1651 = call i32 @llvm.ctpop.i32(i32 %1650)
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  %1654 = xor i8 %1653, 1
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1654, i8* %1655, align 1
  %1656 = xor i64 %1640, %1639
  %1657 = xor i64 %1656, %1643
  %1658 = lshr i64 %1657, 4
  %1659 = trunc i64 %1658 to i8
  %1660 = and i8 %1659, 1
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1660, i8* %1661, align 1
  %1662 = icmp eq i64 %1643, 0
  %1663 = zext i1 %1662 to i8
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1663, i8* %1664, align 1
  %1665 = lshr i64 %1643, 63
  %1666 = trunc i64 %1665 to i8
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1666, i8* %1667, align 1
  %1668 = lshr i64 %1639, 63
  %1669 = lshr i64 %1640, 63
  %1670 = xor i64 %1665, %1668
  %1671 = xor i64 %1665, %1669
  %1672 = add i64 %1670, %1671
  %1673 = icmp eq i64 %1672, 2
  %1674 = zext i1 %1673 to i8
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1674, i8* %1675, align 1
  store %struct.Memory* %loadMem_44d2f6, %struct.Memory** %MEMORY
  %loadMem_44d2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 33
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1678 to i64*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 5
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %ECX.i431 = bitcast %union.anon* %1681 to i32*
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 7
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %RDX.i432 = bitcast %union.anon* %1684 to i64*
  %1685 = load i32, i32* %ECX.i431
  %1686 = zext i32 %1685 to i64
  %1687 = load i64, i64* %PC.i430
  %1688 = add i64 %1687, 2
  store i64 %1688, i64* %PC.i430
  %1689 = and i64 %1686, 4294967295
  store i64 %1689, i64* %RDX.i432, align 8
  store %struct.Memory* %loadMem_44d2f9, %struct.Memory** %MEMORY
  %loadMem_44d2fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 33
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %1692 to i64*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 7
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %EDX.i428 = bitcast %union.anon* %1695 to i32*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 15
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %1698 to i64*
  %1699 = load i64, i64* %RBP.i429
  %1700 = sub i64 %1699, 28
  %1701 = load i32, i32* %EDX.i428
  %1702 = zext i32 %1701 to i64
  %1703 = load i64, i64* %PC.i427
  %1704 = add i64 %1703, 3
  store i64 %1704, i64* %PC.i427
  %1705 = inttoptr i64 %1700 to i32*
  store i32 %1701, i32* %1705
  store %struct.Memory* %loadMem_44d2fb, %struct.Memory** %MEMORY
  br label %block_.L_44d2fe

block_.L_44d2fe:                                  ; preds = %block_44d2d2, %block_.L_44d2b4
  %loadMem_44d2fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 1
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 15
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %1714 to i64*
  %1715 = load i64, i64* %RBP.i426
  %1716 = sub i64 %1715, 8
  %1717 = load i64, i64* %PC.i424
  %1718 = add i64 %1717, 4
  store i64 %1718, i64* %PC.i424
  %1719 = inttoptr i64 %1716 to i64*
  %1720 = load i64, i64* %1719
  store i64 %1720, i64* %RAX.i425, align 8
  store %struct.Memory* %loadMem_44d2fe, %struct.Memory** %MEMORY
  %loadMem_44d302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 33
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1723 to i64*
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 1
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %1726 to i64*
  %1727 = load i64, i64* %RAX.i423
  %1728 = add i64 %1727, 8
  %1729 = load i64, i64* %PC.i422
  %1730 = add i64 %1729, 4
  store i64 %1730, i64* %PC.i422
  %1731 = inttoptr i64 %1728 to i64*
  %1732 = load i64, i64* %1731
  store i64 %1732, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_44d302, %struct.Memory** %MEMORY
  %loadMem_44d306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1734 = getelementptr inbounds %struct.GPR, %struct.GPR* %1733, i32 0, i32 33
  %1735 = getelementptr inbounds %struct.Reg, %struct.Reg* %1734, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1735 to i64*
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1737 = getelementptr inbounds %struct.GPR, %struct.GPR* %1736, i32 0, i32 5
  %1738 = getelementptr inbounds %struct.Reg, %struct.Reg* %1737, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %1738 to i64*
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 15
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %1741 to i64*
  %1742 = load i64, i64* %RBP.i421
  %1743 = sub i64 %1742, 24
  %1744 = load i64, i64* %PC.i419
  %1745 = add i64 %1744, 4
  store i64 %1745, i64* %PC.i419
  %1746 = inttoptr i64 %1743 to i32*
  %1747 = load i32, i32* %1746
  %1748 = sext i32 %1747 to i64
  store i64 %1748, i64* %RCX.i420, align 8
  store %struct.Memory* %loadMem_44d306, %struct.Memory** %MEMORY
  %loadMem_44d30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 5
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %1754 to i64*
  %1755 = load i64, i64* %RCX.i418
  %1756 = load i64, i64* %PC.i417
  %1757 = add i64 %1756, 4
  store i64 %1757, i64* %PC.i417
  %1758 = sext i64 %1755 to i128
  %1759 = and i128 %1758, -18446744073709551616
  %1760 = zext i64 %1755 to i128
  %1761 = or i128 %1759, %1760
  %1762 = mul i128 104, %1761
  %1763 = trunc i128 %1762 to i64
  store i64 %1763, i64* %RCX.i418, align 8
  %1764 = sext i64 %1763 to i128
  %1765 = icmp ne i128 %1764, %1762
  %1766 = zext i1 %1765 to i8
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1766, i8* %1767, align 1
  %1768 = trunc i128 %1762 to i32
  %1769 = and i32 %1768, 255
  %1770 = call i32 @llvm.ctpop.i32(i32 %1769)
  %1771 = trunc i32 %1770 to i8
  %1772 = and i8 %1771, 1
  %1773 = xor i8 %1772, 1
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1773, i8* %1774, align 1
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1775, align 1
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1776, align 1
  %1777 = lshr i64 %1763, 63
  %1778 = trunc i64 %1777 to i8
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1778, i8* %1779, align 1
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1766, i8* %1780, align 1
  store %struct.Memory* %loadMem_44d30a, %struct.Memory** %MEMORY
  %loadMem_44d30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 33
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 1
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 5
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %1789 to i64*
  %1790 = load i64, i64* %RAX.i415
  %1791 = load i64, i64* %RCX.i416
  %1792 = load i64, i64* %PC.i414
  %1793 = add i64 %1792, 3
  store i64 %1793, i64* %PC.i414
  %1794 = add i64 %1791, %1790
  store i64 %1794, i64* %RAX.i415, align 8
  %1795 = icmp ult i64 %1794, %1790
  %1796 = icmp ult i64 %1794, %1791
  %1797 = or i1 %1795, %1796
  %1798 = zext i1 %1797 to i8
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1798, i8* %1799, align 1
  %1800 = trunc i64 %1794 to i32
  %1801 = and i32 %1800, 255
  %1802 = call i32 @llvm.ctpop.i32(i32 %1801)
  %1803 = trunc i32 %1802 to i8
  %1804 = and i8 %1803, 1
  %1805 = xor i8 %1804, 1
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1805, i8* %1806, align 1
  %1807 = xor i64 %1791, %1790
  %1808 = xor i64 %1807, %1794
  %1809 = lshr i64 %1808, 4
  %1810 = trunc i64 %1809 to i8
  %1811 = and i8 %1810, 1
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1811, i8* %1812, align 1
  %1813 = icmp eq i64 %1794, 0
  %1814 = zext i1 %1813 to i8
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1814, i8* %1815, align 1
  %1816 = lshr i64 %1794, 63
  %1817 = trunc i64 %1816 to i8
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1817, i8* %1818, align 1
  %1819 = lshr i64 %1790, 63
  %1820 = lshr i64 %1791, 63
  %1821 = xor i64 %1816, %1819
  %1822 = xor i64 %1816, %1820
  %1823 = add i64 %1821, %1822
  %1824 = icmp eq i64 %1823, 2
  %1825 = zext i1 %1824 to i8
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1825, i8* %1826, align 1
  store %struct.Memory* %loadMem_44d30e, %struct.Memory** %MEMORY
  %loadMem_44d311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 33
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 1
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %1832 to i64*
  %1833 = load i64, i64* %RAX.i413
  %1834 = add i64 %1833, 96
  %1835 = load i64, i64* %PC.i412
  %1836 = add i64 %1835, 5
  store i64 %1836, i64* %PC.i412
  %1837 = inttoptr i64 %1834 to i64*
  %1838 = load i64, i64* %1837
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1839, align 1
  %1840 = trunc i64 %1838 to i32
  %1841 = and i32 %1840, 255
  %1842 = call i32 @llvm.ctpop.i32(i32 %1841)
  %1843 = trunc i32 %1842 to i8
  %1844 = and i8 %1843, 1
  %1845 = xor i8 %1844, 1
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1845, i8* %1846, align 1
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1847, align 1
  %1848 = icmp eq i64 %1838, 0
  %1849 = zext i1 %1848 to i8
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1849, i8* %1850, align 1
  %1851 = lshr i64 %1838, 63
  %1852 = trunc i64 %1851 to i8
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1852, i8* %1853, align 1
  %1854 = lshr i64 %1838, 63
  %1855 = xor i64 %1851, %1854
  %1856 = add i64 %1855, %1854
  %1857 = icmp eq i64 %1856, 2
  %1858 = zext i1 %1857 to i8
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1858, i8* %1859, align 1
  store %struct.Memory* %loadMem_44d311, %struct.Memory** %MEMORY
  %loadMem_44d316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1862 to i64*
  %1863 = load i64, i64* %PC.i411
  %1864 = add i64 %1863, 450
  %1865 = load i64, i64* %PC.i411
  %1866 = add i64 %1865, 6
  %1867 = load i64, i64* %PC.i411
  %1868 = add i64 %1867, 6
  store i64 %1868, i64* %PC.i411
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1870 = load i8, i8* %1869, align 1
  store i8 %1870, i8* %BRANCH_TAKEN, align 1
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1872 = icmp ne i8 %1870, 0
  %1873 = select i1 %1872, i64 %1864, i64 %1866
  store i64 %1873, i64* %1871, align 8
  store %struct.Memory* %loadMem_44d316, %struct.Memory** %MEMORY
  %loadBr_44d316 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d316 = icmp eq i8 %loadBr_44d316, 1
  br i1 %cmpBr_44d316, label %block_.L_44d4d8, label %block_44d31c

block_44d31c:                                     ; preds = %block_.L_44d2fe
  %loadMem_44d31c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 1
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 15
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %1882 to i64*
  %1883 = load i64, i64* %RBP.i410
  %1884 = sub i64 %1883, 28
  %1885 = load i64, i64* %PC.i408
  %1886 = add i64 %1885, 4
  store i64 %1886, i64* %PC.i408
  %1887 = inttoptr i64 %1884 to i32*
  %1888 = load i32, i32* %1887
  %1889 = sext i32 %1888 to i64
  store i64 %1889, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_44d31c, %struct.Memory** %MEMORY
  %loadMem_44d320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 1
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %1895 to i64*
  %1896 = load i64, i64* %RAX.i407
  %1897 = load i64, i64* %PC.i406
  %1898 = add i64 %1897, 4
  store i64 %1898, i64* %PC.i406
  %1899 = add i64 72, %1896
  store i64 %1899, i64* %RAX.i407, align 8
  %1900 = icmp ult i64 %1899, %1896
  %1901 = icmp ult i64 %1899, 72
  %1902 = or i1 %1900, %1901
  %1903 = zext i1 %1902 to i8
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1903, i8* %1904, align 1
  %1905 = trunc i64 %1899 to i32
  %1906 = and i32 %1905, 255
  %1907 = call i32 @llvm.ctpop.i32(i32 %1906)
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  %1910 = xor i8 %1909, 1
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1910, i8* %1911, align 1
  %1912 = xor i64 72, %1896
  %1913 = xor i64 %1912, %1899
  %1914 = lshr i64 %1913, 4
  %1915 = trunc i64 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1916, i8* %1917, align 1
  %1918 = icmp eq i64 %1899, 0
  %1919 = zext i1 %1918 to i8
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1919, i8* %1920, align 1
  %1921 = lshr i64 %1899, 63
  %1922 = trunc i64 %1921 to i8
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1922, i8* %1923, align 1
  %1924 = lshr i64 %1896, 63
  %1925 = xor i64 %1921, %1924
  %1926 = add i64 %1925, %1921
  %1927 = icmp eq i64 %1926, 2
  %1928 = zext i1 %1927 to i8
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1928, i8* %1929, align 1
  store %struct.Memory* %loadMem_44d320, %struct.Memory** %MEMORY
  %loadMem_44d324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 33
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1932 to i64*
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 1
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %EAX.i404 = bitcast %union.anon* %1935 to i32*
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 5
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %RCX.i405 = bitcast %union.anon* %1938 to i64*
  %1939 = load i32, i32* %EAX.i404
  %1940 = zext i32 %1939 to i64
  %1941 = load i64, i64* %PC.i403
  %1942 = add i64 %1941, 2
  store i64 %1942, i64* %PC.i403
  %1943 = and i64 %1940, 4294967295
  store i64 %1943, i64* %RCX.i405, align 8
  store %struct.Memory* %loadMem_44d324, %struct.Memory** %MEMORY
  %loadMem_44d326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 33
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 5
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %ECX.i401 = bitcast %union.anon* %1949 to i32*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 15
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %RBP.i402
  %1954 = sub i64 %1953, 28
  %1955 = load i32, i32* %ECX.i401
  %1956 = zext i32 %1955 to i64
  %1957 = load i64, i64* %PC.i400
  %1958 = add i64 %1957, 3
  store i64 %1958, i64* %PC.i400
  %1959 = inttoptr i64 %1954 to i32*
  store i32 %1955, i32* %1959
  store %struct.Memory* %loadMem_44d326, %struct.Memory** %MEMORY
  %loadMem_44d329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 33
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %1962 to i64*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 15
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %1965 to i64*
  %1966 = load i64, i64* %RBP.i399
  %1967 = sub i64 %1966, 32
  %1968 = load i64, i64* %PC.i398
  %1969 = add i64 %1968, 7
  store i64 %1969, i64* %PC.i398
  %1970 = inttoptr i64 %1967 to i32*
  store i32 0, i32* %1970
  store %struct.Memory* %loadMem_44d329, %struct.Memory** %MEMORY
  %loadMem_44d330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 33
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %1973 to i64*
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 1
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 15
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %RBP.i397
  %1981 = sub i64 %1980, 8
  %1982 = load i64, i64* %PC.i395
  %1983 = add i64 %1982, 4
  store i64 %1983, i64* %PC.i395
  %1984 = inttoptr i64 %1981 to i64*
  %1985 = load i64, i64* %1984
  store i64 %1985, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_44d330, %struct.Memory** %MEMORY
  %loadMem_44d334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1987 = getelementptr inbounds %struct.GPR, %struct.GPR* %1986, i32 0, i32 33
  %1988 = getelementptr inbounds %struct.Reg, %struct.Reg* %1987, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1988 to i64*
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 1
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %1991 to i64*
  %1992 = load i64, i64* %RAX.i394
  %1993 = add i64 %1992, 8
  %1994 = load i64, i64* %PC.i393
  %1995 = add i64 %1994, 4
  store i64 %1995, i64* %PC.i393
  %1996 = inttoptr i64 %1993 to i64*
  %1997 = load i64, i64* %1996
  store i64 %1997, i64* %RAX.i394, align 8
  store %struct.Memory* %loadMem_44d334, %struct.Memory** %MEMORY
  %loadMem_44d338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 33
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 7
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %RDX.i391 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 15
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %2006 to i64*
  %2007 = load i64, i64* %RBP.i392
  %2008 = sub i64 %2007, 24
  %2009 = load i64, i64* %PC.i390
  %2010 = add i64 %2009, 4
  store i64 %2010, i64* %PC.i390
  %2011 = inttoptr i64 %2008 to i32*
  %2012 = load i32, i32* %2011
  %2013 = sext i32 %2012 to i64
  store i64 %2013, i64* %RDX.i391, align 8
  store %struct.Memory* %loadMem_44d338, %struct.Memory** %MEMORY
  %loadMem_44d33c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 7
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RDX.i389 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %RDX.i389
  %2021 = load i64, i64* %PC.i388
  %2022 = add i64 %2021, 4
  store i64 %2022, i64* %PC.i388
  %2023 = sext i64 %2020 to i128
  %2024 = and i128 %2023, -18446744073709551616
  %2025 = zext i64 %2020 to i128
  %2026 = or i128 %2024, %2025
  %2027 = mul i128 104, %2026
  %2028 = trunc i128 %2027 to i64
  store i64 %2028, i64* %RDX.i389, align 8
  %2029 = sext i64 %2028 to i128
  %2030 = icmp ne i128 %2029, %2027
  %2031 = zext i1 %2030 to i8
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2031, i8* %2032, align 1
  %2033 = trunc i128 %2027 to i32
  %2034 = and i32 %2033, 255
  %2035 = call i32 @llvm.ctpop.i32(i32 %2034)
  %2036 = trunc i32 %2035 to i8
  %2037 = and i8 %2036, 1
  %2038 = xor i8 %2037, 1
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2038, i8* %2039, align 1
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2040, align 1
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2041, align 1
  %2042 = lshr i64 %2028, 63
  %2043 = trunc i64 %2042 to i8
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2043, i8* %2044, align 1
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2031, i8* %2045, align 1
  store %struct.Memory* %loadMem_44d33c, %struct.Memory** %MEMORY
  %loadMem_44d340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 33
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %2048 to i64*
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 1
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 7
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RDX.i387 = bitcast %union.anon* %2054 to i64*
  %2055 = load i64, i64* %RAX.i386
  %2056 = load i64, i64* %RDX.i387
  %2057 = load i64, i64* %PC.i385
  %2058 = add i64 %2057, 3
  store i64 %2058, i64* %PC.i385
  %2059 = add i64 %2056, %2055
  store i64 %2059, i64* %RAX.i386, align 8
  %2060 = icmp ult i64 %2059, %2055
  %2061 = icmp ult i64 %2059, %2056
  %2062 = or i1 %2060, %2061
  %2063 = zext i1 %2062 to i8
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2063, i8* %2064, align 1
  %2065 = trunc i64 %2059 to i32
  %2066 = and i32 %2065, 255
  %2067 = call i32 @llvm.ctpop.i32(i32 %2066)
  %2068 = trunc i32 %2067 to i8
  %2069 = and i8 %2068, 1
  %2070 = xor i8 %2069, 1
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2070, i8* %2071, align 1
  %2072 = xor i64 %2056, %2055
  %2073 = xor i64 %2072, %2059
  %2074 = lshr i64 %2073, 4
  %2075 = trunc i64 %2074 to i8
  %2076 = and i8 %2075, 1
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2076, i8* %2077, align 1
  %2078 = icmp eq i64 %2059, 0
  %2079 = zext i1 %2078 to i8
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2079, i8* %2080, align 1
  %2081 = lshr i64 %2059, 63
  %2082 = trunc i64 %2081 to i8
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2082, i8* %2083, align 1
  %2084 = lshr i64 %2055, 63
  %2085 = lshr i64 %2056, 63
  %2086 = xor i64 %2081, %2084
  %2087 = xor i64 %2081, %2085
  %2088 = add i64 %2086, %2087
  %2089 = icmp eq i64 %2088, 2
  %2090 = zext i1 %2089 to i8
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2090, i8* %2091, align 1
  store %struct.Memory* %loadMem_44d340, %struct.Memory** %MEMORY
  %loadMem_44d343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 33
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %2094 to i64*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 1
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %RAX.i384 = bitcast %union.anon* %2097 to i64*
  %2098 = load i64, i64* %RAX.i384
  %2099 = add i64 %2098, 96
  %2100 = load i64, i64* %PC.i383
  %2101 = add i64 %2100, 4
  store i64 %2101, i64* %PC.i383
  %2102 = inttoptr i64 %2099 to i64*
  %2103 = load i64, i64* %2102
  store i64 %2103, i64* %RAX.i384, align 8
  store %struct.Memory* %loadMem_44d343, %struct.Memory** %MEMORY
  %loadMem_44d347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 33
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 1
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %2109 to i64*
  %2110 = load i64, i64* %RAX.i382
  %2111 = load i64, i64* %PC.i381
  %2112 = add i64 %2111, 4
  store i64 %2112, i64* %PC.i381
  %2113 = inttoptr i64 %2110 to i64*
  %2114 = load i64, i64* %2113
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2115, align 1
  %2116 = trunc i64 %2114 to i32
  %2117 = and i32 %2116, 255
  %2118 = call i32 @llvm.ctpop.i32(i32 %2117)
  %2119 = trunc i32 %2118 to i8
  %2120 = and i8 %2119, 1
  %2121 = xor i8 %2120, 1
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2121, i8* %2122, align 1
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2123, align 1
  %2124 = icmp eq i64 %2114, 0
  %2125 = zext i1 %2124 to i8
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2125, i8* %2126, align 1
  %2127 = lshr i64 %2114, 63
  %2128 = trunc i64 %2127 to i8
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2128, i8* %2129, align 1
  %2130 = lshr i64 %2114, 63
  %2131 = xor i64 %2127, %2130
  %2132 = add i64 %2131, %2130
  %2133 = icmp eq i64 %2132, 2
  %2134 = zext i1 %2133 to i8
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2134, i8* %2135, align 1
  store %struct.Memory* %loadMem_44d347, %struct.Memory** %MEMORY
  %loadMem_44d34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 33
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %2138 to i64*
  %2139 = load i64, i64* %PC.i380
  %2140 = add i64 %2139, 15
  %2141 = load i64, i64* %PC.i380
  %2142 = add i64 %2141, 6
  %2143 = load i64, i64* %PC.i380
  %2144 = add i64 %2143, 6
  store i64 %2144, i64* %PC.i380
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2146 = load i8, i8* %2145, align 1
  store i8 %2146, i8* %BRANCH_TAKEN, align 1
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2148 = icmp ne i8 %2146, 0
  %2149 = select i1 %2148, i64 %2140, i64 %2142
  store i64 %2149, i64* %2147, align 8
  store %struct.Memory* %loadMem_44d34b, %struct.Memory** %MEMORY
  %loadBr_44d34b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d34b = icmp eq i8 %loadBr_44d34b, 1
  br i1 %cmpBr_44d34b, label %block_.L_44d35a, label %block_44d351

block_44d351:                                     ; preds = %block_44d31c
  %loadMem_44d351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 33
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2152 to i64*
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 1
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 15
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %2158 to i64*
  %2159 = load i64, i64* %RBP.i379
  %2160 = sub i64 %2159, 32
  %2161 = load i64, i64* %PC.i377
  %2162 = add i64 %2161, 3
  store i64 %2162, i64* %PC.i377
  %2163 = inttoptr i64 %2160 to i32*
  %2164 = load i32, i32* %2163
  %2165 = zext i32 %2164 to i64
  store i64 %2165, i64* %RAX.i378, align 8
  store %struct.Memory* %loadMem_44d351, %struct.Memory** %MEMORY
  %loadMem_44d354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 33
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %2168 to i64*
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 1
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %2171 to i64*
  %2172 = load i64, i64* %RAX.i376
  %2173 = load i64, i64* %PC.i375
  %2174 = add i64 %2173, 3
  store i64 %2174, i64* %PC.i375
  %2175 = trunc i64 %2172 to i32
  %2176 = add i32 1, %2175
  %2177 = zext i32 %2176 to i64
  store i64 %2177, i64* %RAX.i376, align 8
  %2178 = icmp ult i32 %2176, %2175
  %2179 = icmp ult i32 %2176, 1
  %2180 = or i1 %2178, %2179
  %2181 = zext i1 %2180 to i8
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2181, i8* %2182, align 1
  %2183 = and i32 %2176, 255
  %2184 = call i32 @llvm.ctpop.i32(i32 %2183)
  %2185 = trunc i32 %2184 to i8
  %2186 = and i8 %2185, 1
  %2187 = xor i8 %2186, 1
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2187, i8* %2188, align 1
  %2189 = xor i64 1, %2172
  %2190 = trunc i64 %2189 to i32
  %2191 = xor i32 %2190, %2176
  %2192 = lshr i32 %2191, 4
  %2193 = trunc i32 %2192 to i8
  %2194 = and i8 %2193, 1
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2194, i8* %2195, align 1
  %2196 = icmp eq i32 %2176, 0
  %2197 = zext i1 %2196 to i8
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2197, i8* %2198, align 1
  %2199 = lshr i32 %2176, 31
  %2200 = trunc i32 %2199 to i8
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2200, i8* %2201, align 1
  %2202 = lshr i32 %2175, 31
  %2203 = xor i32 %2199, %2202
  %2204 = add i32 %2203, %2199
  %2205 = icmp eq i32 %2204, 2
  %2206 = zext i1 %2205 to i8
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2206, i8* %2207, align 1
  store %struct.Memory* %loadMem_44d354, %struct.Memory** %MEMORY
  %loadMem_44d357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 33
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %2210 to i64*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 1
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %EAX.i373 = bitcast %union.anon* %2213 to i32*
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 15
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %2216 to i64*
  %2217 = load i64, i64* %RBP.i374
  %2218 = sub i64 %2217, 32
  %2219 = load i32, i32* %EAX.i373
  %2220 = zext i32 %2219 to i64
  %2221 = load i64, i64* %PC.i372
  %2222 = add i64 %2221, 3
  store i64 %2222, i64* %PC.i372
  %2223 = inttoptr i64 %2218 to i32*
  store i32 %2219, i32* %2223
  store %struct.Memory* %loadMem_44d357, %struct.Memory** %MEMORY
  br label %block_.L_44d35a

block_.L_44d35a:                                  ; preds = %block_44d351, %block_44d31c
  %loadMem_44d35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 33
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %2226 to i64*
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 1
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %RAX.i370 = bitcast %union.anon* %2229 to i64*
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 15
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %2232 to i64*
  %2233 = load i64, i64* %RBP.i371
  %2234 = sub i64 %2233, 8
  %2235 = load i64, i64* %PC.i369
  %2236 = add i64 %2235, 4
  store i64 %2236, i64* %PC.i369
  %2237 = inttoptr i64 %2234 to i64*
  %2238 = load i64, i64* %2237
  store i64 %2238, i64* %RAX.i370, align 8
  store %struct.Memory* %loadMem_44d35a, %struct.Memory** %MEMORY
  %loadMem_44d35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 33
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 1
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %RAX.i368
  %2246 = add i64 %2245, 8
  %2247 = load i64, i64* %PC.i367
  %2248 = add i64 %2247, 4
  store i64 %2248, i64* %PC.i367
  %2249 = inttoptr i64 %2246 to i64*
  %2250 = load i64, i64* %2249
  store i64 %2250, i64* %RAX.i368, align 8
  store %struct.Memory* %loadMem_44d35e, %struct.Memory** %MEMORY
  %loadMem_44d362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 33
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %2253 to i64*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 5
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %2256 to i64*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 15
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %2259 to i64*
  %2260 = load i64, i64* %RBP.i366
  %2261 = sub i64 %2260, 24
  %2262 = load i64, i64* %PC.i364
  %2263 = add i64 %2262, 4
  store i64 %2263, i64* %PC.i364
  %2264 = inttoptr i64 %2261 to i32*
  %2265 = load i32, i32* %2264
  %2266 = sext i32 %2265 to i64
  store i64 %2266, i64* %RCX.i365, align 8
  store %struct.Memory* %loadMem_44d362, %struct.Memory** %MEMORY
  %loadMem_44d366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 5
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %RCX.i363 = bitcast %union.anon* %2272 to i64*
  %2273 = load i64, i64* %RCX.i363
  %2274 = load i64, i64* %PC.i362
  %2275 = add i64 %2274, 4
  store i64 %2275, i64* %PC.i362
  %2276 = sext i64 %2273 to i128
  %2277 = and i128 %2276, -18446744073709551616
  %2278 = zext i64 %2273 to i128
  %2279 = or i128 %2277, %2278
  %2280 = mul i128 104, %2279
  %2281 = trunc i128 %2280 to i64
  store i64 %2281, i64* %RCX.i363, align 8
  %2282 = sext i64 %2281 to i128
  %2283 = icmp ne i128 %2282, %2280
  %2284 = zext i1 %2283 to i8
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2284, i8* %2285, align 1
  %2286 = trunc i128 %2280 to i32
  %2287 = and i32 %2286, 255
  %2288 = call i32 @llvm.ctpop.i32(i32 %2287)
  %2289 = trunc i32 %2288 to i8
  %2290 = and i8 %2289, 1
  %2291 = xor i8 %2290, 1
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2291, i8* %2292, align 1
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2293, align 1
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2294, align 1
  %2295 = lshr i64 %2281, 63
  %2296 = trunc i64 %2295 to i8
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2296, i8* %2297, align 1
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2284, i8* %2298, align 1
  store %struct.Memory* %loadMem_44d366, %struct.Memory** %MEMORY
  %loadMem_44d36a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 33
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %2301 to i64*
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 1
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 5
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %2307 to i64*
  %2308 = load i64, i64* %RAX.i360
  %2309 = load i64, i64* %RCX.i361
  %2310 = load i64, i64* %PC.i359
  %2311 = add i64 %2310, 3
  store i64 %2311, i64* %PC.i359
  %2312 = add i64 %2309, %2308
  store i64 %2312, i64* %RAX.i360, align 8
  %2313 = icmp ult i64 %2312, %2308
  %2314 = icmp ult i64 %2312, %2309
  %2315 = or i1 %2313, %2314
  %2316 = zext i1 %2315 to i8
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2316, i8* %2317, align 1
  %2318 = trunc i64 %2312 to i32
  %2319 = and i32 %2318, 255
  %2320 = call i32 @llvm.ctpop.i32(i32 %2319)
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  %2323 = xor i8 %2322, 1
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2323, i8* %2324, align 1
  %2325 = xor i64 %2309, %2308
  %2326 = xor i64 %2325, %2312
  %2327 = lshr i64 %2326, 4
  %2328 = trunc i64 %2327 to i8
  %2329 = and i8 %2328, 1
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2329, i8* %2330, align 1
  %2331 = icmp eq i64 %2312, 0
  %2332 = zext i1 %2331 to i8
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2332, i8* %2333, align 1
  %2334 = lshr i64 %2312, 63
  %2335 = trunc i64 %2334 to i8
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2335, i8* %2336, align 1
  %2337 = lshr i64 %2308, 63
  %2338 = lshr i64 %2309, 63
  %2339 = xor i64 %2334, %2337
  %2340 = xor i64 %2334, %2338
  %2341 = add i64 %2339, %2340
  %2342 = icmp eq i64 %2341, 2
  %2343 = zext i1 %2342 to i8
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2343, i8* %2344, align 1
  store %struct.Memory* %loadMem_44d36a, %struct.Memory** %MEMORY
  %loadMem_44d36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 1
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %2350 to i64*
  %2351 = load i64, i64* %RAX.i358
  %2352 = add i64 %2351, 96
  %2353 = load i64, i64* %PC.i357
  %2354 = add i64 %2353, 4
  store i64 %2354, i64* %PC.i357
  %2355 = inttoptr i64 %2352 to i64*
  %2356 = load i64, i64* %2355
  store i64 %2356, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_44d36d, %struct.Memory** %MEMORY
  %loadMem_44d371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 33
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 1
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %2362 to i64*
  %2363 = load i64, i64* %RAX.i356
  %2364 = add i64 %2363, 8
  %2365 = load i64, i64* %PC.i355
  %2366 = add i64 %2365, 5
  store i64 %2366, i64* %PC.i355
  %2367 = inttoptr i64 %2364 to i64*
  %2368 = load i64, i64* %2367
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2369, align 1
  %2370 = trunc i64 %2368 to i32
  %2371 = and i32 %2370, 255
  %2372 = call i32 @llvm.ctpop.i32(i32 %2371)
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  %2375 = xor i8 %2374, 1
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2375, i8* %2376, align 1
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2377, align 1
  %2378 = icmp eq i64 %2368, 0
  %2379 = zext i1 %2378 to i8
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2379, i8* %2380, align 1
  %2381 = lshr i64 %2368, 63
  %2382 = trunc i64 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2382, i8* %2383, align 1
  %2384 = lshr i64 %2368, 63
  %2385 = xor i64 %2381, %2384
  %2386 = add i64 %2385, %2384
  %2387 = icmp eq i64 %2386, 2
  %2388 = zext i1 %2387 to i8
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2388, i8* %2389, align 1
  store %struct.Memory* %loadMem_44d371, %struct.Memory** %MEMORY
  %loadMem_44d376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 33
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %2392 to i64*
  %2393 = load i64, i64* %PC.i354
  %2394 = add i64 %2393, 15
  %2395 = load i64, i64* %PC.i354
  %2396 = add i64 %2395, 6
  %2397 = load i64, i64* %PC.i354
  %2398 = add i64 %2397, 6
  store i64 %2398, i64* %PC.i354
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2400 = load i8, i8* %2399, align 1
  store i8 %2400, i8* %BRANCH_TAKEN, align 1
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2402 = icmp ne i8 %2400, 0
  %2403 = select i1 %2402, i64 %2394, i64 %2396
  store i64 %2403, i64* %2401, align 8
  store %struct.Memory* %loadMem_44d376, %struct.Memory** %MEMORY
  %loadBr_44d376 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d376 = icmp eq i8 %loadBr_44d376, 1
  br i1 %cmpBr_44d376, label %block_.L_44d385, label %block_44d37c

block_44d37c:                                     ; preds = %block_.L_44d35a
  %loadMem_44d37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 33
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 1
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RAX.i352 = bitcast %union.anon* %2409 to i64*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 15
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %2412 to i64*
  %2413 = load i64, i64* %RBP.i353
  %2414 = sub i64 %2413, 32
  %2415 = load i64, i64* %PC.i351
  %2416 = add i64 %2415, 3
  store i64 %2416, i64* %PC.i351
  %2417 = inttoptr i64 %2414 to i32*
  %2418 = load i32, i32* %2417
  %2419 = zext i32 %2418 to i64
  store i64 %2419, i64* %RAX.i352, align 8
  store %struct.Memory* %loadMem_44d37c, %struct.Memory** %MEMORY
  %loadMem_44d37f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 33
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 1
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %RAX.i350 = bitcast %union.anon* %2425 to i64*
  %2426 = load i64, i64* %RAX.i350
  %2427 = load i64, i64* %PC.i349
  %2428 = add i64 %2427, 3
  store i64 %2428, i64* %PC.i349
  %2429 = trunc i64 %2426 to i32
  %2430 = add i32 1, %2429
  %2431 = zext i32 %2430 to i64
  store i64 %2431, i64* %RAX.i350, align 8
  %2432 = icmp ult i32 %2430, %2429
  %2433 = icmp ult i32 %2430, 1
  %2434 = or i1 %2432, %2433
  %2435 = zext i1 %2434 to i8
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2435, i8* %2436, align 1
  %2437 = and i32 %2430, 255
  %2438 = call i32 @llvm.ctpop.i32(i32 %2437)
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  %2441 = xor i8 %2440, 1
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2441, i8* %2442, align 1
  %2443 = xor i64 1, %2426
  %2444 = trunc i64 %2443 to i32
  %2445 = xor i32 %2444, %2430
  %2446 = lshr i32 %2445, 4
  %2447 = trunc i32 %2446 to i8
  %2448 = and i8 %2447, 1
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2448, i8* %2449, align 1
  %2450 = icmp eq i32 %2430, 0
  %2451 = zext i1 %2450 to i8
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2451, i8* %2452, align 1
  %2453 = lshr i32 %2430, 31
  %2454 = trunc i32 %2453 to i8
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2454, i8* %2455, align 1
  %2456 = lshr i32 %2429, 31
  %2457 = xor i32 %2453, %2456
  %2458 = add i32 %2457, %2453
  %2459 = icmp eq i32 %2458, 2
  %2460 = zext i1 %2459 to i8
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2460, i8* %2461, align 1
  store %struct.Memory* %loadMem_44d37f, %struct.Memory** %MEMORY
  %loadMem_44d382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 33
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 1
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %EAX.i347 = bitcast %union.anon* %2467 to i32*
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 15
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %2470 to i64*
  %2471 = load i64, i64* %RBP.i348
  %2472 = sub i64 %2471, 32
  %2473 = load i32, i32* %EAX.i347
  %2474 = zext i32 %2473 to i64
  %2475 = load i64, i64* %PC.i346
  %2476 = add i64 %2475, 3
  store i64 %2476, i64* %PC.i346
  %2477 = inttoptr i64 %2472 to i32*
  store i32 %2473, i32* %2477
  store %struct.Memory* %loadMem_44d382, %struct.Memory** %MEMORY
  br label %block_.L_44d385

block_.L_44d385:                                  ; preds = %block_44d37c, %block_.L_44d35a
  %loadMem_44d385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 1
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 15
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %2486 to i64*
  %2487 = load i64, i64* %RBP.i345
  %2488 = sub i64 %2487, 8
  %2489 = load i64, i64* %PC.i343
  %2490 = add i64 %2489, 4
  store i64 %2490, i64* %PC.i343
  %2491 = inttoptr i64 %2488 to i64*
  %2492 = load i64, i64* %2491
  store i64 %2492, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_44d385, %struct.Memory** %MEMORY
  %loadMem_44d389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 33
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %2495 to i64*
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2497 = getelementptr inbounds %struct.GPR, %struct.GPR* %2496, i32 0, i32 1
  %2498 = getelementptr inbounds %struct.Reg, %struct.Reg* %2497, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %2498 to i64*
  %2499 = load i64, i64* %RAX.i342
  %2500 = add i64 %2499, 8
  %2501 = load i64, i64* %PC.i341
  %2502 = add i64 %2501, 4
  store i64 %2502, i64* %PC.i341
  %2503 = inttoptr i64 %2500 to i64*
  %2504 = load i64, i64* %2503
  store i64 %2504, i64* %RAX.i342, align 8
  store %struct.Memory* %loadMem_44d389, %struct.Memory** %MEMORY
  %loadMem_44d38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 33
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %2507 to i64*
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 5
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %2510 to i64*
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 15
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %2513 to i64*
  %2514 = load i64, i64* %RBP.i340
  %2515 = sub i64 %2514, 24
  %2516 = load i64, i64* %PC.i338
  %2517 = add i64 %2516, 4
  store i64 %2517, i64* %PC.i338
  %2518 = inttoptr i64 %2515 to i32*
  %2519 = load i32, i32* %2518
  %2520 = sext i32 %2519 to i64
  store i64 %2520, i64* %RCX.i339, align 8
  store %struct.Memory* %loadMem_44d38d, %struct.Memory** %MEMORY
  %loadMem_44d391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 33
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %2523 to i64*
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 5
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %2526 to i64*
  %2527 = load i64, i64* %RCX.i337
  %2528 = load i64, i64* %PC.i336
  %2529 = add i64 %2528, 4
  store i64 %2529, i64* %PC.i336
  %2530 = sext i64 %2527 to i128
  %2531 = and i128 %2530, -18446744073709551616
  %2532 = zext i64 %2527 to i128
  %2533 = or i128 %2531, %2532
  %2534 = mul i128 104, %2533
  %2535 = trunc i128 %2534 to i64
  store i64 %2535, i64* %RCX.i337, align 8
  %2536 = sext i64 %2535 to i128
  %2537 = icmp ne i128 %2536, %2534
  %2538 = zext i1 %2537 to i8
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2538, i8* %2539, align 1
  %2540 = trunc i128 %2534 to i32
  %2541 = and i32 %2540, 255
  %2542 = call i32 @llvm.ctpop.i32(i32 %2541)
  %2543 = trunc i32 %2542 to i8
  %2544 = and i8 %2543, 1
  %2545 = xor i8 %2544, 1
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2545, i8* %2546, align 1
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2547, align 1
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2548, align 1
  %2549 = lshr i64 %2535, 63
  %2550 = trunc i64 %2549 to i8
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2550, i8* %2551, align 1
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2538, i8* %2552, align 1
  store %struct.Memory* %loadMem_44d391, %struct.Memory** %MEMORY
  %loadMem_44d395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 33
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 1
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 5
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %RAX.i334
  %2563 = load i64, i64* %RCX.i335
  %2564 = load i64, i64* %PC.i333
  %2565 = add i64 %2564, 3
  store i64 %2565, i64* %PC.i333
  %2566 = add i64 %2563, %2562
  store i64 %2566, i64* %RAX.i334, align 8
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
  store %struct.Memory* %loadMem_44d395, %struct.Memory** %MEMORY
  %loadMem_44d398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 33
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2601 to i64*
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 1
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %2604 to i64*
  %2605 = load i64, i64* %RAX.i332
  %2606 = add i64 %2605, 96
  %2607 = load i64, i64* %PC.i331
  %2608 = add i64 %2607, 4
  store i64 %2608, i64* %PC.i331
  %2609 = inttoptr i64 %2606 to i64*
  %2610 = load i64, i64* %2609
  store i64 %2610, i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_44d398, %struct.Memory** %MEMORY
  %loadMem_44d39c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 33
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %2613 to i64*
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2615 = getelementptr inbounds %struct.GPR, %struct.GPR* %2614, i32 0, i32 1
  %2616 = getelementptr inbounds %struct.Reg, %struct.Reg* %2615, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %2616 to i64*
  %2617 = load i64, i64* %RAX.i330
  %2618 = add i64 %2617, 16
  %2619 = load i64, i64* %PC.i329
  %2620 = add i64 %2619, 5
  store i64 %2620, i64* %PC.i329
  %2621 = inttoptr i64 %2618 to i64*
  %2622 = load i64, i64* %2621
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2623, align 1
  %2624 = trunc i64 %2622 to i32
  %2625 = and i32 %2624, 255
  %2626 = call i32 @llvm.ctpop.i32(i32 %2625)
  %2627 = trunc i32 %2626 to i8
  %2628 = and i8 %2627, 1
  %2629 = xor i8 %2628, 1
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2629, i8* %2630, align 1
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2631, align 1
  %2632 = icmp eq i64 %2622, 0
  %2633 = zext i1 %2632 to i8
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2633, i8* %2634, align 1
  %2635 = lshr i64 %2622, 63
  %2636 = trunc i64 %2635 to i8
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2636, i8* %2637, align 1
  %2638 = lshr i64 %2622, 63
  %2639 = xor i64 %2635, %2638
  %2640 = add i64 %2639, %2638
  %2641 = icmp eq i64 %2640, 2
  %2642 = zext i1 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2642, i8* %2643, align 1
  store %struct.Memory* %loadMem_44d39c, %struct.Memory** %MEMORY
  %loadMem_44d3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 33
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %2646 to i64*
  %2647 = load i64, i64* %PC.i328
  %2648 = add i64 %2647, 15
  %2649 = load i64, i64* %PC.i328
  %2650 = add i64 %2649, 6
  %2651 = load i64, i64* %PC.i328
  %2652 = add i64 %2651, 6
  store i64 %2652, i64* %PC.i328
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2654 = load i8, i8* %2653, align 1
  store i8 %2654, i8* %BRANCH_TAKEN, align 1
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2656 = icmp ne i8 %2654, 0
  %2657 = select i1 %2656, i64 %2648, i64 %2650
  store i64 %2657, i64* %2655, align 8
  store %struct.Memory* %loadMem_44d3a1, %struct.Memory** %MEMORY
  %loadBr_44d3a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d3a1 = icmp eq i8 %loadBr_44d3a1, 1
  br i1 %cmpBr_44d3a1, label %block_.L_44d3b0, label %block_44d3a7

block_44d3a7:                                     ; preds = %block_.L_44d385
  %loadMem_44d3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2659 = getelementptr inbounds %struct.GPR, %struct.GPR* %2658, i32 0, i32 33
  %2660 = getelementptr inbounds %struct.Reg, %struct.Reg* %2659, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %2660 to i64*
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 1
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 15
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %2666 to i64*
  %2667 = load i64, i64* %RBP.i327
  %2668 = sub i64 %2667, 32
  %2669 = load i64, i64* %PC.i325
  %2670 = add i64 %2669, 3
  store i64 %2670, i64* %PC.i325
  %2671 = inttoptr i64 %2668 to i32*
  %2672 = load i32, i32* %2671
  %2673 = zext i32 %2672 to i64
  store i64 %2673, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_44d3a7, %struct.Memory** %MEMORY
  %loadMem_44d3aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 1
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %2679 to i64*
  %2680 = load i64, i64* %RAX.i324
  %2681 = load i64, i64* %PC.i323
  %2682 = add i64 %2681, 3
  store i64 %2682, i64* %PC.i323
  %2683 = trunc i64 %2680 to i32
  %2684 = add i32 1, %2683
  %2685 = zext i32 %2684 to i64
  store i64 %2685, i64* %RAX.i324, align 8
  %2686 = icmp ult i32 %2684, %2683
  %2687 = icmp ult i32 %2684, 1
  %2688 = or i1 %2686, %2687
  %2689 = zext i1 %2688 to i8
  %2690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2689, i8* %2690, align 1
  %2691 = and i32 %2684, 255
  %2692 = call i32 @llvm.ctpop.i32(i32 %2691)
  %2693 = trunc i32 %2692 to i8
  %2694 = and i8 %2693, 1
  %2695 = xor i8 %2694, 1
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2695, i8* %2696, align 1
  %2697 = xor i64 1, %2680
  %2698 = trunc i64 %2697 to i32
  %2699 = xor i32 %2698, %2684
  %2700 = lshr i32 %2699, 4
  %2701 = trunc i32 %2700 to i8
  %2702 = and i8 %2701, 1
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2702, i8* %2703, align 1
  %2704 = icmp eq i32 %2684, 0
  %2705 = zext i1 %2704 to i8
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2705, i8* %2706, align 1
  %2707 = lshr i32 %2684, 31
  %2708 = trunc i32 %2707 to i8
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2708, i8* %2709, align 1
  %2710 = lshr i32 %2683, 31
  %2711 = xor i32 %2707, %2710
  %2712 = add i32 %2711, %2707
  %2713 = icmp eq i32 %2712, 2
  %2714 = zext i1 %2713 to i8
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2714, i8* %2715, align 1
  store %struct.Memory* %loadMem_44d3aa, %struct.Memory** %MEMORY
  %loadMem_44d3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 33
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2718 to i64*
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 1
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %EAX.i321 = bitcast %union.anon* %2721 to i32*
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 15
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %2724 to i64*
  %2725 = load i64, i64* %RBP.i322
  %2726 = sub i64 %2725, 32
  %2727 = load i32, i32* %EAX.i321
  %2728 = zext i32 %2727 to i64
  %2729 = load i64, i64* %PC.i320
  %2730 = add i64 %2729, 3
  store i64 %2730, i64* %PC.i320
  %2731 = inttoptr i64 %2726 to i32*
  store i32 %2727, i32* %2731
  store %struct.Memory* %loadMem_44d3ad, %struct.Memory** %MEMORY
  br label %block_.L_44d3b0

block_.L_44d3b0:                                  ; preds = %block_44d3a7, %block_.L_44d385
  %loadMem_44d3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 33
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 1
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 15
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %2740 to i64*
  %2741 = load i64, i64* %RBP.i319
  %2742 = sub i64 %2741, 8
  %2743 = load i64, i64* %PC.i317
  %2744 = add i64 %2743, 4
  store i64 %2744, i64* %PC.i317
  %2745 = inttoptr i64 %2742 to i64*
  %2746 = load i64, i64* %2745
  store i64 %2746, i64* %RAX.i318, align 8
  store %struct.Memory* %loadMem_44d3b0, %struct.Memory** %MEMORY
  %loadMem_44d3b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 33
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2749 to i64*
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 1
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %2752 to i64*
  %2753 = load i64, i64* %RAX.i316
  %2754 = add i64 %2753, 8
  %2755 = load i64, i64* %PC.i315
  %2756 = add i64 %2755, 4
  store i64 %2756, i64* %PC.i315
  %2757 = inttoptr i64 %2754 to i64*
  %2758 = load i64, i64* %2757
  store i64 %2758, i64* %RAX.i316, align 8
  store %struct.Memory* %loadMem_44d3b4, %struct.Memory** %MEMORY
  %loadMem_44d3b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 33
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 5
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %2764 to i64*
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 15
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %2767 to i64*
  %2768 = load i64, i64* %RBP.i314
  %2769 = sub i64 %2768, 24
  %2770 = load i64, i64* %PC.i312
  %2771 = add i64 %2770, 4
  store i64 %2771, i64* %PC.i312
  %2772 = inttoptr i64 %2769 to i32*
  %2773 = load i32, i32* %2772
  %2774 = sext i32 %2773 to i64
  store i64 %2774, i64* %RCX.i313, align 8
  store %struct.Memory* %loadMem_44d3b8, %struct.Memory** %MEMORY
  %loadMem_44d3bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 33
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %2777 to i64*
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 5
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %2780 to i64*
  %2781 = load i64, i64* %RCX.i311
  %2782 = load i64, i64* %PC.i310
  %2783 = add i64 %2782, 4
  store i64 %2783, i64* %PC.i310
  %2784 = sext i64 %2781 to i128
  %2785 = and i128 %2784, -18446744073709551616
  %2786 = zext i64 %2781 to i128
  %2787 = or i128 %2785, %2786
  %2788 = mul i128 104, %2787
  %2789 = trunc i128 %2788 to i64
  store i64 %2789, i64* %RCX.i311, align 8
  %2790 = sext i64 %2789 to i128
  %2791 = icmp ne i128 %2790, %2788
  %2792 = zext i1 %2791 to i8
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2792, i8* %2793, align 1
  %2794 = trunc i128 %2788 to i32
  %2795 = and i32 %2794, 255
  %2796 = call i32 @llvm.ctpop.i32(i32 %2795)
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  %2799 = xor i8 %2798, 1
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2799, i8* %2800, align 1
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2801, align 1
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2802, align 1
  %2803 = lshr i64 %2789, 63
  %2804 = trunc i64 %2803 to i8
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2804, i8* %2805, align 1
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2792, i8* %2806, align 1
  store %struct.Memory* %loadMem_44d3bc, %struct.Memory** %MEMORY
  %loadMem_44d3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 33
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 1
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %2812 to i64*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 5
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %2815 to i64*
  %2816 = load i64, i64* %RAX.i308
  %2817 = load i64, i64* %RCX.i309
  %2818 = load i64, i64* %PC.i307
  %2819 = add i64 %2818, 3
  store i64 %2819, i64* %PC.i307
  %2820 = add i64 %2817, %2816
  store i64 %2820, i64* %RAX.i308, align 8
  %2821 = icmp ult i64 %2820, %2816
  %2822 = icmp ult i64 %2820, %2817
  %2823 = or i1 %2821, %2822
  %2824 = zext i1 %2823 to i8
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2824, i8* %2825, align 1
  %2826 = trunc i64 %2820 to i32
  %2827 = and i32 %2826, 255
  %2828 = call i32 @llvm.ctpop.i32(i32 %2827)
  %2829 = trunc i32 %2828 to i8
  %2830 = and i8 %2829, 1
  %2831 = xor i8 %2830, 1
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2831, i8* %2832, align 1
  %2833 = xor i64 %2817, %2816
  %2834 = xor i64 %2833, %2820
  %2835 = lshr i64 %2834, 4
  %2836 = trunc i64 %2835 to i8
  %2837 = and i8 %2836, 1
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2837, i8* %2838, align 1
  %2839 = icmp eq i64 %2820, 0
  %2840 = zext i1 %2839 to i8
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2840, i8* %2841, align 1
  %2842 = lshr i64 %2820, 63
  %2843 = trunc i64 %2842 to i8
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2843, i8* %2844, align 1
  %2845 = lshr i64 %2816, 63
  %2846 = lshr i64 %2817, 63
  %2847 = xor i64 %2842, %2845
  %2848 = xor i64 %2842, %2846
  %2849 = add i64 %2847, %2848
  %2850 = icmp eq i64 %2849, 2
  %2851 = zext i1 %2850 to i8
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2851, i8* %2852, align 1
  store %struct.Memory* %loadMem_44d3c0, %struct.Memory** %MEMORY
  %loadMem_44d3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 33
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2855 to i64*
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 1
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %2858 to i64*
  %2859 = load i64, i64* %RAX.i306
  %2860 = add i64 %2859, 96
  %2861 = load i64, i64* %PC.i305
  %2862 = add i64 %2861, 4
  store i64 %2862, i64* %PC.i305
  %2863 = inttoptr i64 %2860 to i64*
  %2864 = load i64, i64* %2863
  store i64 %2864, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_44d3c3, %struct.Memory** %MEMORY
  %loadMem_44d3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 33
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %2867 to i64*
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 1
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %RAX.i304 = bitcast %union.anon* %2870 to i64*
  %2871 = load i64, i64* %RAX.i304
  %2872 = add i64 %2871, 24
  %2873 = load i64, i64* %PC.i303
  %2874 = add i64 %2873, 5
  store i64 %2874, i64* %PC.i303
  %2875 = inttoptr i64 %2872 to i64*
  %2876 = load i64, i64* %2875
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2877, align 1
  %2878 = trunc i64 %2876 to i32
  %2879 = and i32 %2878, 255
  %2880 = call i32 @llvm.ctpop.i32(i32 %2879)
  %2881 = trunc i32 %2880 to i8
  %2882 = and i8 %2881, 1
  %2883 = xor i8 %2882, 1
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2883, i8* %2884, align 1
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2885, align 1
  %2886 = icmp eq i64 %2876, 0
  %2887 = zext i1 %2886 to i8
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2887, i8* %2888, align 1
  %2889 = lshr i64 %2876, 63
  %2890 = trunc i64 %2889 to i8
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2890, i8* %2891, align 1
  %2892 = lshr i64 %2876, 63
  %2893 = xor i64 %2889, %2892
  %2894 = add i64 %2893, %2892
  %2895 = icmp eq i64 %2894, 2
  %2896 = zext i1 %2895 to i8
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2896, i8* %2897, align 1
  store %struct.Memory* %loadMem_44d3c7, %struct.Memory** %MEMORY
  %loadMem_44d3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 33
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2900 to i64*
  %2901 = load i64, i64* %PC.i302
  %2902 = add i64 %2901, 15
  %2903 = load i64, i64* %PC.i302
  %2904 = add i64 %2903, 6
  %2905 = load i64, i64* %PC.i302
  %2906 = add i64 %2905, 6
  store i64 %2906, i64* %PC.i302
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2908 = load i8, i8* %2907, align 1
  store i8 %2908, i8* %BRANCH_TAKEN, align 1
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2910 = icmp ne i8 %2908, 0
  %2911 = select i1 %2910, i64 %2902, i64 %2904
  store i64 %2911, i64* %2909, align 8
  store %struct.Memory* %loadMem_44d3cc, %struct.Memory** %MEMORY
  %loadBr_44d3cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d3cc = icmp eq i8 %loadBr_44d3cc, 1
  br i1 %cmpBr_44d3cc, label %block_.L_44d3db, label %block_44d3d2

block_44d3d2:                                     ; preds = %block_.L_44d3b0
  %loadMem_44d3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 33
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2914 to i64*
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 1
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 15
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %RBP.i301
  %2922 = sub i64 %2921, 32
  %2923 = load i64, i64* %PC.i299
  %2924 = add i64 %2923, 3
  store i64 %2924, i64* %PC.i299
  %2925 = inttoptr i64 %2922 to i32*
  %2926 = load i32, i32* %2925
  %2927 = zext i32 %2926 to i64
  store i64 %2927, i64* %RAX.i300, align 8
  store %struct.Memory* %loadMem_44d3d2, %struct.Memory** %MEMORY
  %loadMem_44d3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 1
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %2933 to i64*
  %2934 = load i64, i64* %RAX.i298
  %2935 = load i64, i64* %PC.i297
  %2936 = add i64 %2935, 3
  store i64 %2936, i64* %PC.i297
  %2937 = trunc i64 %2934 to i32
  %2938 = add i32 1, %2937
  %2939 = zext i32 %2938 to i64
  store i64 %2939, i64* %RAX.i298, align 8
  %2940 = icmp ult i32 %2938, %2937
  %2941 = icmp ult i32 %2938, 1
  %2942 = or i1 %2940, %2941
  %2943 = zext i1 %2942 to i8
  %2944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2943, i8* %2944, align 1
  %2945 = and i32 %2938, 255
  %2946 = call i32 @llvm.ctpop.i32(i32 %2945)
  %2947 = trunc i32 %2946 to i8
  %2948 = and i8 %2947, 1
  %2949 = xor i8 %2948, 1
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2949, i8* %2950, align 1
  %2951 = xor i64 1, %2934
  %2952 = trunc i64 %2951 to i32
  %2953 = xor i32 %2952, %2938
  %2954 = lshr i32 %2953, 4
  %2955 = trunc i32 %2954 to i8
  %2956 = and i8 %2955, 1
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2956, i8* %2957, align 1
  %2958 = icmp eq i32 %2938, 0
  %2959 = zext i1 %2958 to i8
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2959, i8* %2960, align 1
  %2961 = lshr i32 %2938, 31
  %2962 = trunc i32 %2961 to i8
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2962, i8* %2963, align 1
  %2964 = lshr i32 %2937, 31
  %2965 = xor i32 %2961, %2964
  %2966 = add i32 %2965, %2961
  %2967 = icmp eq i32 %2966, 2
  %2968 = zext i1 %2967 to i8
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2968, i8* %2969, align 1
  store %struct.Memory* %loadMem_44d3d5, %struct.Memory** %MEMORY
  %loadMem_44d3d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 1
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %EAX.i295 = bitcast %union.anon* %2975 to i32*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 15
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %2978 to i64*
  %2979 = load i64, i64* %RBP.i296
  %2980 = sub i64 %2979, 32
  %2981 = load i32, i32* %EAX.i295
  %2982 = zext i32 %2981 to i64
  %2983 = load i64, i64* %PC.i294
  %2984 = add i64 %2983, 3
  store i64 %2984, i64* %PC.i294
  %2985 = inttoptr i64 %2980 to i32*
  store i32 %2981, i32* %2985
  store %struct.Memory* %loadMem_44d3d8, %struct.Memory** %MEMORY
  br label %block_.L_44d3db

block_.L_44d3db:                                  ; preds = %block_44d3d2, %block_.L_44d3b0
  %loadMem_44d3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 33
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2988 to i64*
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2990 = getelementptr inbounds %struct.GPR, %struct.GPR* %2989, i32 0, i32 1
  %2991 = getelementptr inbounds %struct.Reg, %struct.Reg* %2990, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %2991 to i64*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2993 = getelementptr inbounds %struct.GPR, %struct.GPR* %2992, i32 0, i32 15
  %2994 = getelementptr inbounds %struct.Reg, %struct.Reg* %2993, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %2994 to i64*
  %2995 = load i64, i64* %RBP.i293
  %2996 = sub i64 %2995, 8
  %2997 = load i64, i64* %PC.i291
  %2998 = add i64 %2997, 4
  store i64 %2998, i64* %PC.i291
  %2999 = inttoptr i64 %2996 to i64*
  %3000 = load i64, i64* %2999
  store i64 %3000, i64* %RAX.i292, align 8
  store %struct.Memory* %loadMem_44d3db, %struct.Memory** %MEMORY
  %loadMem_44d3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 33
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 1
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %3006 to i64*
  %3007 = load i64, i64* %RAX.i290
  %3008 = add i64 %3007, 8
  %3009 = load i64, i64* %PC.i289
  %3010 = add i64 %3009, 4
  store i64 %3010, i64* %PC.i289
  %3011 = inttoptr i64 %3008 to i64*
  %3012 = load i64, i64* %3011
  store i64 %3012, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_44d3df, %struct.Memory** %MEMORY
  %loadMem_44d3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 33
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %3015 to i64*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 5
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 15
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %3021 to i64*
  %3022 = load i64, i64* %RBP.i288
  %3023 = sub i64 %3022, 24
  %3024 = load i64, i64* %PC.i286
  %3025 = add i64 %3024, 4
  store i64 %3025, i64* %PC.i286
  %3026 = inttoptr i64 %3023 to i32*
  %3027 = load i32, i32* %3026
  %3028 = sext i32 %3027 to i64
  store i64 %3028, i64* %RCX.i287, align 8
  store %struct.Memory* %loadMem_44d3e3, %struct.Memory** %MEMORY
  %loadMem_44d3e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 33
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 5
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %3034 to i64*
  %3035 = load i64, i64* %RCX.i285
  %3036 = load i64, i64* %PC.i284
  %3037 = add i64 %3036, 4
  store i64 %3037, i64* %PC.i284
  %3038 = sext i64 %3035 to i128
  %3039 = and i128 %3038, -18446744073709551616
  %3040 = zext i64 %3035 to i128
  %3041 = or i128 %3039, %3040
  %3042 = mul i128 104, %3041
  %3043 = trunc i128 %3042 to i64
  store i64 %3043, i64* %RCX.i285, align 8
  %3044 = sext i64 %3043 to i128
  %3045 = icmp ne i128 %3044, %3042
  %3046 = zext i1 %3045 to i8
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3046, i8* %3047, align 1
  %3048 = trunc i128 %3042 to i32
  %3049 = and i32 %3048, 255
  %3050 = call i32 @llvm.ctpop.i32(i32 %3049)
  %3051 = trunc i32 %3050 to i8
  %3052 = and i8 %3051, 1
  %3053 = xor i8 %3052, 1
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3053, i8* %3054, align 1
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3055, align 1
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3056, align 1
  %3057 = lshr i64 %3043, 63
  %3058 = trunc i64 %3057 to i8
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3058, i8* %3059, align 1
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3046, i8* %3060, align 1
  store %struct.Memory* %loadMem_44d3e7, %struct.Memory** %MEMORY
  %loadMem_44d3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 33
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 1
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %3066 to i64*
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 5
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %3069 to i64*
  %3070 = load i64, i64* %RAX.i282
  %3071 = load i64, i64* %RCX.i283
  %3072 = load i64, i64* %PC.i281
  %3073 = add i64 %3072, 3
  store i64 %3073, i64* %PC.i281
  %3074 = add i64 %3071, %3070
  store i64 %3074, i64* %RAX.i282, align 8
  %3075 = icmp ult i64 %3074, %3070
  %3076 = icmp ult i64 %3074, %3071
  %3077 = or i1 %3075, %3076
  %3078 = zext i1 %3077 to i8
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3078, i8* %3079, align 1
  %3080 = trunc i64 %3074 to i32
  %3081 = and i32 %3080, 255
  %3082 = call i32 @llvm.ctpop.i32(i32 %3081)
  %3083 = trunc i32 %3082 to i8
  %3084 = and i8 %3083, 1
  %3085 = xor i8 %3084, 1
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3085, i8* %3086, align 1
  %3087 = xor i64 %3071, %3070
  %3088 = xor i64 %3087, %3074
  %3089 = lshr i64 %3088, 4
  %3090 = trunc i64 %3089 to i8
  %3091 = and i8 %3090, 1
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3091, i8* %3092, align 1
  %3093 = icmp eq i64 %3074, 0
  %3094 = zext i1 %3093 to i8
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3094, i8* %3095, align 1
  %3096 = lshr i64 %3074, 63
  %3097 = trunc i64 %3096 to i8
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3097, i8* %3098, align 1
  %3099 = lshr i64 %3070, 63
  %3100 = lshr i64 %3071, 63
  %3101 = xor i64 %3096, %3099
  %3102 = xor i64 %3096, %3100
  %3103 = add i64 %3101, %3102
  %3104 = icmp eq i64 %3103, 2
  %3105 = zext i1 %3104 to i8
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3105, i8* %3106, align 1
  store %struct.Memory* %loadMem_44d3eb, %struct.Memory** %MEMORY
  %loadMem_44d3ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 33
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 1
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %3112 to i64*
  %3113 = load i64, i64* %RAX.i280
  %3114 = add i64 %3113, 96
  %3115 = load i64, i64* %PC.i279
  %3116 = add i64 %3115, 4
  store i64 %3116, i64* %PC.i279
  %3117 = inttoptr i64 %3114 to i64*
  %3118 = load i64, i64* %3117
  store i64 %3118, i64* %RAX.i280, align 8
  store %struct.Memory* %loadMem_44d3ee, %struct.Memory** %MEMORY
  %loadMem_44d3f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 33
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3121 to i64*
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 1
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %3124 to i64*
  %3125 = load i64, i64* %RAX.i278
  %3126 = add i64 %3125, 32
  %3127 = load i64, i64* %PC.i277
  %3128 = add i64 %3127, 5
  store i64 %3128, i64* %PC.i277
  %3129 = inttoptr i64 %3126 to i64*
  %3130 = load i64, i64* %3129
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3131, align 1
  %3132 = trunc i64 %3130 to i32
  %3133 = and i32 %3132, 255
  %3134 = call i32 @llvm.ctpop.i32(i32 %3133)
  %3135 = trunc i32 %3134 to i8
  %3136 = and i8 %3135, 1
  %3137 = xor i8 %3136, 1
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3137, i8* %3138, align 1
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3139, align 1
  %3140 = icmp eq i64 %3130, 0
  %3141 = zext i1 %3140 to i8
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3141, i8* %3142, align 1
  %3143 = lshr i64 %3130, 63
  %3144 = trunc i64 %3143 to i8
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3144, i8* %3145, align 1
  %3146 = lshr i64 %3130, 63
  %3147 = xor i64 %3143, %3146
  %3148 = add i64 %3147, %3146
  %3149 = icmp eq i64 %3148, 2
  %3150 = zext i1 %3149 to i8
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3150, i8* %3151, align 1
  store %struct.Memory* %loadMem_44d3f2, %struct.Memory** %MEMORY
  %loadMem_44d3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 33
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %3154 to i64*
  %3155 = load i64, i64* %PC.i276
  %3156 = add i64 %3155, 15
  %3157 = load i64, i64* %PC.i276
  %3158 = add i64 %3157, 6
  %3159 = load i64, i64* %PC.i276
  %3160 = add i64 %3159, 6
  store i64 %3160, i64* %PC.i276
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3162 = load i8, i8* %3161, align 1
  store i8 %3162, i8* %BRANCH_TAKEN, align 1
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3164 = icmp ne i8 %3162, 0
  %3165 = select i1 %3164, i64 %3156, i64 %3158
  store i64 %3165, i64* %3163, align 8
  store %struct.Memory* %loadMem_44d3f7, %struct.Memory** %MEMORY
  %loadBr_44d3f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d3f7 = icmp eq i8 %loadBr_44d3f7, 1
  br i1 %cmpBr_44d3f7, label %block_.L_44d406, label %block_44d3fd

block_44d3fd:                                     ; preds = %block_.L_44d3db
  %loadMem_44d3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 33
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %3168 to i64*
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3170 = getelementptr inbounds %struct.GPR, %struct.GPR* %3169, i32 0, i32 1
  %3171 = getelementptr inbounds %struct.Reg, %struct.Reg* %3170, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %3171 to i64*
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 15
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %3174 to i64*
  %3175 = load i64, i64* %RBP.i275
  %3176 = sub i64 %3175, 32
  %3177 = load i64, i64* %PC.i273
  %3178 = add i64 %3177, 3
  store i64 %3178, i64* %PC.i273
  %3179 = inttoptr i64 %3176 to i32*
  %3180 = load i32, i32* %3179
  %3181 = zext i32 %3180 to i64
  store i64 %3181, i64* %RAX.i274, align 8
  store %struct.Memory* %loadMem_44d3fd, %struct.Memory** %MEMORY
  %loadMem_44d400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 33
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3184 to i64*
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 1
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %3187 to i64*
  %3188 = load i64, i64* %RAX.i272
  %3189 = load i64, i64* %PC.i271
  %3190 = add i64 %3189, 3
  store i64 %3190, i64* %PC.i271
  %3191 = trunc i64 %3188 to i32
  %3192 = add i32 1, %3191
  %3193 = zext i32 %3192 to i64
  store i64 %3193, i64* %RAX.i272, align 8
  %3194 = icmp ult i32 %3192, %3191
  %3195 = icmp ult i32 %3192, 1
  %3196 = or i1 %3194, %3195
  %3197 = zext i1 %3196 to i8
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3197, i8* %3198, align 1
  %3199 = and i32 %3192, 255
  %3200 = call i32 @llvm.ctpop.i32(i32 %3199)
  %3201 = trunc i32 %3200 to i8
  %3202 = and i8 %3201, 1
  %3203 = xor i8 %3202, 1
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3203, i8* %3204, align 1
  %3205 = xor i64 1, %3188
  %3206 = trunc i64 %3205 to i32
  %3207 = xor i32 %3206, %3192
  %3208 = lshr i32 %3207, 4
  %3209 = trunc i32 %3208 to i8
  %3210 = and i8 %3209, 1
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3210, i8* %3211, align 1
  %3212 = icmp eq i32 %3192, 0
  %3213 = zext i1 %3212 to i8
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3213, i8* %3214, align 1
  %3215 = lshr i32 %3192, 31
  %3216 = trunc i32 %3215 to i8
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3216, i8* %3217, align 1
  %3218 = lshr i32 %3191, 31
  %3219 = xor i32 %3215, %3218
  %3220 = add i32 %3219, %3215
  %3221 = icmp eq i32 %3220, 2
  %3222 = zext i1 %3221 to i8
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3222, i8* %3223, align 1
  store %struct.Memory* %loadMem_44d400, %struct.Memory** %MEMORY
  %loadMem_44d403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 33
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %3226 to i64*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 1
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %EAX.i269 = bitcast %union.anon* %3229 to i32*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 15
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %3232 to i64*
  %3233 = load i64, i64* %RBP.i270
  %3234 = sub i64 %3233, 32
  %3235 = load i32, i32* %EAX.i269
  %3236 = zext i32 %3235 to i64
  %3237 = load i64, i64* %PC.i268
  %3238 = add i64 %3237, 3
  store i64 %3238, i64* %PC.i268
  %3239 = inttoptr i64 %3234 to i32*
  store i32 %3235, i32* %3239
  store %struct.Memory* %loadMem_44d403, %struct.Memory** %MEMORY
  br label %block_.L_44d406

block_.L_44d406:                                  ; preds = %block_44d3fd, %block_.L_44d3db
  %loadMem_44d406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 33
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %3242 to i64*
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3244 = getelementptr inbounds %struct.GPR, %struct.GPR* %3243, i32 0, i32 1
  %3245 = getelementptr inbounds %struct.Reg, %struct.Reg* %3244, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %3245 to i64*
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 15
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %3248 to i64*
  %3249 = load i64, i64* %RBP.i267
  %3250 = sub i64 %3249, 32
  %3251 = load i64, i64* %PC.i265
  %3252 = add i64 %3251, 3
  store i64 %3252, i64* %PC.i265
  %3253 = inttoptr i64 %3250 to i32*
  %3254 = load i32, i32* %3253
  %3255 = zext i32 %3254 to i64
  store i64 %3255, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_44d406, %struct.Memory** %MEMORY
  %loadMem_44d409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 33
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %3258 to i64*
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3260 = getelementptr inbounds %struct.GPR, %struct.GPR* %3259, i32 0, i32 5
  %3261 = getelementptr inbounds %struct.Reg, %struct.Reg* %3260, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %3261 to i64*
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 15
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %3264 to i64*
  %3265 = load i64, i64* %RBP.i264
  %3266 = sub i64 %3265, 8
  %3267 = load i64, i64* %PC.i262
  %3268 = add i64 %3267, 4
  store i64 %3268, i64* %PC.i262
  %3269 = inttoptr i64 %3266 to i64*
  %3270 = load i64, i64* %3269
  store i64 %3270, i64* %RCX.i263, align 8
  store %struct.Memory* %loadMem_44d409, %struct.Memory** %MEMORY
  %loadMem_44d40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 33
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %3273 to i64*
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 5
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %3276 to i64*
  %3277 = load i64, i64* %RCX.i261
  %3278 = add i64 %3277, 8
  %3279 = load i64, i64* %PC.i260
  %3280 = add i64 %3279, 4
  store i64 %3280, i64* %PC.i260
  %3281 = inttoptr i64 %3278 to i64*
  %3282 = load i64, i64* %3281
  store i64 %3282, i64* %RCX.i261, align 8
  store %struct.Memory* %loadMem_44d40d, %struct.Memory** %MEMORY
  %loadMem_44d411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 33
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %3285 to i64*
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 7
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %3288 to i64*
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 15
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %3291 to i64*
  %3292 = load i64, i64* %RBP.i259
  %3293 = sub i64 %3292, 24
  %3294 = load i64, i64* %PC.i257
  %3295 = add i64 %3294, 4
  store i64 %3295, i64* %PC.i257
  %3296 = inttoptr i64 %3293 to i32*
  %3297 = load i32, i32* %3296
  %3298 = sext i32 %3297 to i64
  store i64 %3298, i64* %RDX.i258, align 8
  store %struct.Memory* %loadMem_44d411, %struct.Memory** %MEMORY
  %loadMem_44d415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3300 = getelementptr inbounds %struct.GPR, %struct.GPR* %3299, i32 0, i32 33
  %3301 = getelementptr inbounds %struct.Reg, %struct.Reg* %3300, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %3301 to i64*
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3303 = getelementptr inbounds %struct.GPR, %struct.GPR* %3302, i32 0, i32 7
  %3304 = getelementptr inbounds %struct.Reg, %struct.Reg* %3303, i32 0, i32 0
  %RDX.i256 = bitcast %union.anon* %3304 to i64*
  %3305 = load i64, i64* %RDX.i256
  %3306 = load i64, i64* %PC.i255
  %3307 = add i64 %3306, 4
  store i64 %3307, i64* %PC.i255
  %3308 = sext i64 %3305 to i128
  %3309 = and i128 %3308, -18446744073709551616
  %3310 = zext i64 %3305 to i128
  %3311 = or i128 %3309, %3310
  %3312 = mul i128 104, %3311
  %3313 = trunc i128 %3312 to i64
  store i64 %3313, i64* %RDX.i256, align 8
  %3314 = sext i64 %3313 to i128
  %3315 = icmp ne i128 %3314, %3312
  %3316 = zext i1 %3315 to i8
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3316, i8* %3317, align 1
  %3318 = trunc i128 %3312 to i32
  %3319 = and i32 %3318, 255
  %3320 = call i32 @llvm.ctpop.i32(i32 %3319)
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  %3323 = xor i8 %3322, 1
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3323, i8* %3324, align 1
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3325, align 1
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3326, align 1
  %3327 = lshr i64 %3313, 63
  %3328 = trunc i64 %3327 to i8
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3328, i8* %3329, align 1
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3316, i8* %3330, align 1
  store %struct.Memory* %loadMem_44d415, %struct.Memory** %MEMORY
  %loadMem_44d419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 33
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %3333 to i64*
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3335 = getelementptr inbounds %struct.GPR, %struct.GPR* %3334, i32 0, i32 5
  %3336 = getelementptr inbounds %struct.Reg, %struct.Reg* %3335, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %3336 to i64*
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 7
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %3339 to i64*
  %3340 = load i64, i64* %RCX.i253
  %3341 = load i64, i64* %RDX.i254
  %3342 = load i64, i64* %PC.i252
  %3343 = add i64 %3342, 3
  store i64 %3343, i64* %PC.i252
  %3344 = add i64 %3341, %3340
  store i64 %3344, i64* %RCX.i253, align 8
  %3345 = icmp ult i64 %3344, %3340
  %3346 = icmp ult i64 %3344, %3341
  %3347 = or i1 %3345, %3346
  %3348 = zext i1 %3347 to i8
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3348, i8* %3349, align 1
  %3350 = trunc i64 %3344 to i32
  %3351 = and i32 %3350, 255
  %3352 = call i32 @llvm.ctpop.i32(i32 %3351)
  %3353 = trunc i32 %3352 to i8
  %3354 = and i8 %3353, 1
  %3355 = xor i8 %3354, 1
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3355, i8* %3356, align 1
  %3357 = xor i64 %3341, %3340
  %3358 = xor i64 %3357, %3344
  %3359 = lshr i64 %3358, 4
  %3360 = trunc i64 %3359 to i8
  %3361 = and i8 %3360, 1
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3361, i8* %3362, align 1
  %3363 = icmp eq i64 %3344, 0
  %3364 = zext i1 %3363 to i8
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3364, i8* %3365, align 1
  %3366 = lshr i64 %3344, 63
  %3367 = trunc i64 %3366 to i8
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3367, i8* %3368, align 1
  %3369 = lshr i64 %3340, 63
  %3370 = lshr i64 %3341, 63
  %3371 = xor i64 %3366, %3369
  %3372 = xor i64 %3366, %3370
  %3373 = add i64 %3371, %3372
  %3374 = icmp eq i64 %3373, 2
  %3375 = zext i1 %3374 to i8
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3375, i8* %3376, align 1
  store %struct.Memory* %loadMem_44d419, %struct.Memory** %MEMORY
  %loadMem_44d41c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 33
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %3379 to i64*
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 5
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %RCX.i251 = bitcast %union.anon* %3382 to i64*
  %3383 = load i64, i64* %RCX.i251
  %3384 = add i64 %3383, 96
  %3385 = load i64, i64* %PC.i250
  %3386 = add i64 %3385, 4
  store i64 %3386, i64* %PC.i250
  %3387 = inttoptr i64 %3384 to i64*
  %3388 = load i64, i64* %3387
  store i64 %3388, i64* %RCX.i251, align 8
  store %struct.Memory* %loadMem_44d41c, %struct.Memory** %MEMORY
  %loadMem_44d420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 33
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 5
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 9
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RSI.i249 = bitcast %union.anon* %3397 to i64*
  %3398 = load i64, i64* %RCX.i248
  %3399 = add i64 %3398, 40
  %3400 = load i64, i64* %PC.i247
  %3401 = add i64 %3400, 3
  store i64 %3401, i64* %PC.i247
  %3402 = inttoptr i64 %3399 to i32*
  %3403 = load i32, i32* %3402
  %3404 = zext i32 %3403 to i64
  store i64 %3404, i64* %RSI.i249, align 8
  store %struct.Memory* %loadMem_44d420, %struct.Memory** %MEMORY
  %loadMem_44d423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 9
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RSI.i246 = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %RSI.i246
  %3412 = load i64, i64* %PC.i245
  %3413 = add i64 %3412, 3
  store i64 %3413, i64* %PC.i245
  %3414 = trunc i64 %3411 to i32
  %3415 = add i32 1, %3414
  %3416 = zext i32 %3415 to i64
  store i64 %3416, i64* %RSI.i246, align 8
  %3417 = icmp ult i32 %3415, %3414
  %3418 = icmp ult i32 %3415, 1
  %3419 = or i1 %3417, %3418
  %3420 = zext i1 %3419 to i8
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3420, i8* %3421, align 1
  %3422 = and i32 %3415, 255
  %3423 = call i32 @llvm.ctpop.i32(i32 %3422)
  %3424 = trunc i32 %3423 to i8
  %3425 = and i8 %3424, 1
  %3426 = xor i8 %3425, 1
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3426, i8* %3427, align 1
  %3428 = xor i64 1, %3411
  %3429 = trunc i64 %3428 to i32
  %3430 = xor i32 %3429, %3415
  %3431 = lshr i32 %3430, 4
  %3432 = trunc i32 %3431 to i8
  %3433 = and i8 %3432, 1
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3433, i8* %3434, align 1
  %3435 = icmp eq i32 %3415, 0
  %3436 = zext i1 %3435 to i8
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3436, i8* %3437, align 1
  %3438 = lshr i32 %3415, 31
  %3439 = trunc i32 %3438 to i8
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3439, i8* %3440, align 1
  %3441 = lshr i32 %3414, 31
  %3442 = xor i32 %3438, %3441
  %3443 = add i32 %3442, %3438
  %3444 = icmp eq i32 %3443, 2
  %3445 = zext i1 %3444 to i8
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3445, i8* %3446, align 1
  store %struct.Memory* %loadMem_44d423, %struct.Memory** %MEMORY
  %loadMem_44d426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 33
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3449 to i64*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 9
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %ESI.i243 = bitcast %union.anon* %3452 to i32*
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 1
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %3455 to i64*
  %3456 = load i64, i64* %RAX.i244
  %3457 = load i32, i32* %ESI.i243
  %3458 = zext i32 %3457 to i64
  %3459 = load i64, i64* %PC.i242
  %3460 = add i64 %3459, 3
  store i64 %3460, i64* %PC.i242
  %3461 = shl i64 %3456, 32
  %3462 = ashr exact i64 %3461, 32
  %3463 = shl i64 %3458, 32
  %3464 = ashr exact i64 %3463, 32
  %3465 = mul i64 %3464, %3462
  %3466 = trunc i64 %3465 to i32
  %3467 = and i64 %3465, 4294967295
  store i64 %3467, i64* %RAX.i244, align 8
  %3468 = shl i64 %3465, 32
  %3469 = ashr exact i64 %3468, 32
  %3470 = icmp ne i64 %3469, %3465
  %3471 = zext i1 %3470 to i8
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3471, i8* %3472, align 1
  %3473 = and i32 %3466, 255
  %3474 = call i32 @llvm.ctpop.i32(i32 %3473)
  %3475 = trunc i32 %3474 to i8
  %3476 = and i8 %3475, 1
  %3477 = xor i8 %3476, 1
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3477, i8* %3478, align 1
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3479, align 1
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3480, align 1
  %3481 = lshr i32 %3466, 31
  %3482 = trunc i32 %3481 to i8
  %3483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3482, i8* %3483, align 1
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3471, i8* %3484, align 1
  store %struct.Memory* %loadMem_44d426, %struct.Memory** %MEMORY
  %loadMem_44d429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 33
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 1
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %RAX.i240 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 15
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %3493 to i64*
  %3494 = load i64, i64* %RAX.i240
  %3495 = load i64, i64* %RBP.i241
  %3496 = sub i64 %3495, 28
  %3497 = load i64, i64* %PC.i239
  %3498 = add i64 %3497, 3
  store i64 %3498, i64* %PC.i239
  %3499 = trunc i64 %3494 to i32
  %3500 = inttoptr i64 %3496 to i32*
  %3501 = load i32, i32* %3500
  %3502 = add i32 %3501, %3499
  %3503 = zext i32 %3502 to i64
  store i64 %3503, i64* %RAX.i240, align 8
  %3504 = icmp ult i32 %3502, %3499
  %3505 = icmp ult i32 %3502, %3501
  %3506 = or i1 %3504, %3505
  %3507 = zext i1 %3506 to i8
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3507, i8* %3508, align 1
  %3509 = and i32 %3502, 255
  %3510 = call i32 @llvm.ctpop.i32(i32 %3509)
  %3511 = trunc i32 %3510 to i8
  %3512 = and i8 %3511, 1
  %3513 = xor i8 %3512, 1
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3513, i8* %3514, align 1
  %3515 = xor i32 %3501, %3499
  %3516 = xor i32 %3515, %3502
  %3517 = lshr i32 %3516, 4
  %3518 = trunc i32 %3517 to i8
  %3519 = and i8 %3518, 1
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3519, i8* %3520, align 1
  %3521 = icmp eq i32 %3502, 0
  %3522 = zext i1 %3521 to i8
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3522, i8* %3523, align 1
  %3524 = lshr i32 %3502, 31
  %3525 = trunc i32 %3524 to i8
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3525, i8* %3526, align 1
  %3527 = lshr i32 %3499, 31
  %3528 = lshr i32 %3501, 31
  %3529 = xor i32 %3524, %3527
  %3530 = xor i32 %3524, %3528
  %3531 = add i32 %3529, %3530
  %3532 = icmp eq i32 %3531, 2
  %3533 = zext i1 %3532 to i8
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3533, i8* %3534, align 1
  store %struct.Memory* %loadMem_44d429, %struct.Memory** %MEMORY
  %loadMem_44d42c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3536 = getelementptr inbounds %struct.GPR, %struct.GPR* %3535, i32 0, i32 33
  %3537 = getelementptr inbounds %struct.Reg, %struct.Reg* %3536, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %3537 to i64*
  %3538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3539 = getelementptr inbounds %struct.GPR, %struct.GPR* %3538, i32 0, i32 1
  %3540 = getelementptr inbounds %struct.Reg, %struct.Reg* %3539, i32 0, i32 0
  %EAX.i237 = bitcast %union.anon* %3540 to i32*
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 15
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %3543 to i64*
  %3544 = load i64, i64* %RBP.i238
  %3545 = sub i64 %3544, 28
  %3546 = load i32, i32* %EAX.i237
  %3547 = zext i32 %3546 to i64
  %3548 = load i64, i64* %PC.i236
  %3549 = add i64 %3548, 3
  store i64 %3549, i64* %PC.i236
  %3550 = inttoptr i64 %3545 to i32*
  store i32 %3546, i32* %3550
  store %struct.Memory* %loadMem_44d42c, %struct.Memory** %MEMORY
  %loadMem_44d42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 33
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %3553 to i64*
  %3554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3555 = getelementptr inbounds %struct.GPR, %struct.GPR* %3554, i32 0, i32 5
  %3556 = getelementptr inbounds %struct.Reg, %struct.Reg* %3555, i32 0, i32 0
  %RCX.i234 = bitcast %union.anon* %3556 to i64*
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3558 = getelementptr inbounds %struct.GPR, %struct.GPR* %3557, i32 0, i32 15
  %3559 = getelementptr inbounds %struct.Reg, %struct.Reg* %3558, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %3559 to i64*
  %3560 = load i64, i64* %RBP.i235
  %3561 = sub i64 %3560, 8
  %3562 = load i64, i64* %PC.i233
  %3563 = add i64 %3562, 4
  store i64 %3563, i64* %PC.i233
  %3564 = inttoptr i64 %3561 to i64*
  %3565 = load i64, i64* %3564
  store i64 %3565, i64* %RCX.i234, align 8
  store %struct.Memory* %loadMem_44d42f, %struct.Memory** %MEMORY
  %loadMem_44d433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3567 = getelementptr inbounds %struct.GPR, %struct.GPR* %3566, i32 0, i32 33
  %3568 = getelementptr inbounds %struct.Reg, %struct.Reg* %3567, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %3568 to i64*
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 5
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %RCX.i232 = bitcast %union.anon* %3571 to i64*
  %3572 = load i64, i64* %RCX.i232
  %3573 = add i64 %3572, 8
  %3574 = load i64, i64* %PC.i231
  %3575 = add i64 %3574, 4
  store i64 %3575, i64* %PC.i231
  %3576 = inttoptr i64 %3573 to i64*
  %3577 = load i64, i64* %3576
  store i64 %3577, i64* %RCX.i232, align 8
  store %struct.Memory* %loadMem_44d433, %struct.Memory** %MEMORY
  %loadMem_44d437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3579 = getelementptr inbounds %struct.GPR, %struct.GPR* %3578, i32 0, i32 33
  %3580 = getelementptr inbounds %struct.Reg, %struct.Reg* %3579, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %3580 to i64*
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 7
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %RDX.i229 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 15
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %3586 to i64*
  %3587 = load i64, i64* %RBP.i230
  %3588 = sub i64 %3587, 24
  %3589 = load i64, i64* %PC.i228
  %3590 = add i64 %3589, 4
  store i64 %3590, i64* %PC.i228
  %3591 = inttoptr i64 %3588 to i32*
  %3592 = load i32, i32* %3591
  %3593 = sext i32 %3592 to i64
  store i64 %3593, i64* %RDX.i229, align 8
  store %struct.Memory* %loadMem_44d437, %struct.Memory** %MEMORY
  %loadMem_44d43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 33
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 7
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RDX.i227 = bitcast %union.anon* %3599 to i64*
  %3600 = load i64, i64* %RDX.i227
  %3601 = load i64, i64* %PC.i226
  %3602 = add i64 %3601, 4
  store i64 %3602, i64* %PC.i226
  %3603 = sext i64 %3600 to i128
  %3604 = and i128 %3603, -18446744073709551616
  %3605 = zext i64 %3600 to i128
  %3606 = or i128 %3604, %3605
  %3607 = mul i128 104, %3606
  %3608 = trunc i128 %3607 to i64
  store i64 %3608, i64* %RDX.i227, align 8
  %3609 = sext i64 %3608 to i128
  %3610 = icmp ne i128 %3609, %3607
  %3611 = zext i1 %3610 to i8
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3611, i8* %3612, align 1
  %3613 = trunc i128 %3607 to i32
  %3614 = and i32 %3613, 255
  %3615 = call i32 @llvm.ctpop.i32(i32 %3614)
  %3616 = trunc i32 %3615 to i8
  %3617 = and i8 %3616, 1
  %3618 = xor i8 %3617, 1
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3618, i8* %3619, align 1
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3620, align 1
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3621, align 1
  %3622 = lshr i64 %3608, 63
  %3623 = trunc i64 %3622 to i8
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3623, i8* %3624, align 1
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3611, i8* %3625, align 1
  store %struct.Memory* %loadMem_44d43b, %struct.Memory** %MEMORY
  %loadMem_44d43f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 33
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3628 to i64*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 5
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %RCX.i224 = bitcast %union.anon* %3631 to i64*
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 7
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %RDX.i225 = bitcast %union.anon* %3634 to i64*
  %3635 = load i64, i64* %RCX.i224
  %3636 = load i64, i64* %RDX.i225
  %3637 = load i64, i64* %PC.i223
  %3638 = add i64 %3637, 3
  store i64 %3638, i64* %PC.i223
  %3639 = add i64 %3636, %3635
  store i64 %3639, i64* %RCX.i224, align 8
  %3640 = icmp ult i64 %3639, %3635
  %3641 = icmp ult i64 %3639, %3636
  %3642 = or i1 %3640, %3641
  %3643 = zext i1 %3642 to i8
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3643, i8* %3644, align 1
  %3645 = trunc i64 %3639 to i32
  %3646 = and i32 %3645, 255
  %3647 = call i32 @llvm.ctpop.i32(i32 %3646)
  %3648 = trunc i32 %3647 to i8
  %3649 = and i8 %3648, 1
  %3650 = xor i8 %3649, 1
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3650, i8* %3651, align 1
  %3652 = xor i64 %3636, %3635
  %3653 = xor i64 %3652, %3639
  %3654 = lshr i64 %3653, 4
  %3655 = trunc i64 %3654 to i8
  %3656 = and i8 %3655, 1
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3656, i8* %3657, align 1
  %3658 = icmp eq i64 %3639, 0
  %3659 = zext i1 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3659, i8* %3660, align 1
  %3661 = lshr i64 %3639, 63
  %3662 = trunc i64 %3661 to i8
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3662, i8* %3663, align 1
  %3664 = lshr i64 %3635, 63
  %3665 = lshr i64 %3636, 63
  %3666 = xor i64 %3661, %3664
  %3667 = xor i64 %3661, %3665
  %3668 = add i64 %3666, %3667
  %3669 = icmp eq i64 %3668, 2
  %3670 = zext i1 %3669 to i8
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3670, i8* %3671, align 1
  store %struct.Memory* %loadMem_44d43f, %struct.Memory** %MEMORY
  %loadMem_44d442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 33
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %3674 to i64*
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 5
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %3677 to i64*
  %3678 = load i64, i64* %RCX.i222
  %3679 = add i64 %3678, 96
  %3680 = load i64, i64* %PC.i221
  %3681 = add i64 %3680, 4
  store i64 %3681, i64* %PC.i221
  %3682 = inttoptr i64 %3679 to i64*
  %3683 = load i64, i64* %3682
  store i64 %3683, i64* %RCX.i222, align 8
  store %struct.Memory* %loadMem_44d442, %struct.Memory** %MEMORY
  %loadMem_44d446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3685 = getelementptr inbounds %struct.GPR, %struct.GPR* %3684, i32 0, i32 33
  %3686 = getelementptr inbounds %struct.Reg, %struct.Reg* %3685, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3686 to i64*
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 5
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %3689 to i64*
  %3690 = load i64, i64* %RCX.i220
  %3691 = add i64 %3690, 48
  %3692 = load i64, i64* %PC.i219
  %3693 = add i64 %3692, 5
  store i64 %3693, i64* %PC.i219
  %3694 = inttoptr i64 %3691 to i64*
  %3695 = load i64, i64* %3694
  %3696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3696, align 1
  %3697 = trunc i64 %3695 to i32
  %3698 = and i32 %3697, 255
  %3699 = call i32 @llvm.ctpop.i32(i32 %3698)
  %3700 = trunc i32 %3699 to i8
  %3701 = and i8 %3700, 1
  %3702 = xor i8 %3701, 1
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3702, i8* %3703, align 1
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3704, align 1
  %3705 = icmp eq i64 %3695, 0
  %3706 = zext i1 %3705 to i8
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3706, i8* %3707, align 1
  %3708 = lshr i64 %3695, 63
  %3709 = trunc i64 %3708 to i8
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3709, i8* %3710, align 1
  %3711 = lshr i64 %3695, 63
  %3712 = xor i64 %3708, %3711
  %3713 = add i64 %3712, %3711
  %3714 = icmp eq i64 %3713, 2
  %3715 = zext i1 %3714 to i8
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3715, i8* %3716, align 1
  store %struct.Memory* %loadMem_44d446, %struct.Memory** %MEMORY
  %loadMem_44d44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3718 = getelementptr inbounds %struct.GPR, %struct.GPR* %3717, i32 0, i32 33
  %3719 = getelementptr inbounds %struct.Reg, %struct.Reg* %3718, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %3719 to i64*
  %3720 = load i64, i64* %PC.i218
  %3721 = add i64 %3720, 54
  %3722 = load i64, i64* %PC.i218
  %3723 = add i64 %3722, 6
  %3724 = load i64, i64* %PC.i218
  %3725 = add i64 %3724, 6
  store i64 %3725, i64* %PC.i218
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3727 = load i8, i8* %3726, align 1
  store i8 %3727, i8* %BRANCH_TAKEN, align 1
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3729 = icmp ne i8 %3727, 0
  %3730 = select i1 %3729, i64 %3721, i64 %3723
  store i64 %3730, i64* %3728, align 8
  store %struct.Memory* %loadMem_44d44b, %struct.Memory** %MEMORY
  %loadBr_44d44b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d44b = icmp eq i8 %loadBr_44d44b, 1
  br i1 %cmpBr_44d44b, label %block_.L_44d481, label %block_44d451

block_44d451:                                     ; preds = %block_.L_44d406
  %loadMem_44d451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 33
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %3733 to i64*
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 1
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %3736 to i64*
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 15
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %3739 to i64*
  %3740 = load i64, i64* %RBP.i217
  %3741 = sub i64 %3740, 8
  %3742 = load i64, i64* %PC.i215
  %3743 = add i64 %3742, 4
  store i64 %3743, i64* %PC.i215
  %3744 = inttoptr i64 %3741 to i64*
  %3745 = load i64, i64* %3744
  store i64 %3745, i64* %RAX.i216, align 8
  store %struct.Memory* %loadMem_44d451, %struct.Memory** %MEMORY
  %loadMem_44d455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 33
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %3748 to i64*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 1
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %3751 to i64*
  %3752 = load i64, i64* %RAX.i214
  %3753 = add i64 %3752, 8
  %3754 = load i64, i64* %PC.i213
  %3755 = add i64 %3754, 4
  store i64 %3755, i64* %PC.i213
  %3756 = inttoptr i64 %3753 to i64*
  %3757 = load i64, i64* %3756
  store i64 %3757, i64* %RAX.i214, align 8
  store %struct.Memory* %loadMem_44d455, %struct.Memory** %MEMORY
  %loadMem_44d459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3759 = getelementptr inbounds %struct.GPR, %struct.GPR* %3758, i32 0, i32 33
  %3760 = getelementptr inbounds %struct.Reg, %struct.Reg* %3759, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %3760 to i64*
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 5
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %3763 to i64*
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 15
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %3766 to i64*
  %3767 = load i64, i64* %RBP.i212
  %3768 = sub i64 %3767, 24
  %3769 = load i64, i64* %PC.i210
  %3770 = add i64 %3769, 4
  store i64 %3770, i64* %PC.i210
  %3771 = inttoptr i64 %3768 to i32*
  %3772 = load i32, i32* %3771
  %3773 = sext i32 %3772 to i64
  store i64 %3773, i64* %RCX.i211, align 8
  store %struct.Memory* %loadMem_44d459, %struct.Memory** %MEMORY
  %loadMem_44d45d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3775 = getelementptr inbounds %struct.GPR, %struct.GPR* %3774, i32 0, i32 33
  %3776 = getelementptr inbounds %struct.Reg, %struct.Reg* %3775, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %3776 to i64*
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 5
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %3779 to i64*
  %3780 = load i64, i64* %RCX.i209
  %3781 = load i64, i64* %PC.i208
  %3782 = add i64 %3781, 4
  store i64 %3782, i64* %PC.i208
  %3783 = sext i64 %3780 to i128
  %3784 = and i128 %3783, -18446744073709551616
  %3785 = zext i64 %3780 to i128
  %3786 = or i128 %3784, %3785
  %3787 = mul i128 104, %3786
  %3788 = trunc i128 %3787 to i64
  store i64 %3788, i64* %RCX.i209, align 8
  %3789 = sext i64 %3788 to i128
  %3790 = icmp ne i128 %3789, %3787
  %3791 = zext i1 %3790 to i8
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3791, i8* %3792, align 1
  %3793 = trunc i128 %3787 to i32
  %3794 = and i32 %3793, 255
  %3795 = call i32 @llvm.ctpop.i32(i32 %3794)
  %3796 = trunc i32 %3795 to i8
  %3797 = and i8 %3796, 1
  %3798 = xor i8 %3797, 1
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3798, i8* %3799, align 1
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3800, align 1
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3801, align 1
  %3802 = lshr i64 %3788, 63
  %3803 = trunc i64 %3802 to i8
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3803, i8* %3804, align 1
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3791, i8* %3805, align 1
  store %struct.Memory* %loadMem_44d45d, %struct.Memory** %MEMORY
  %loadMem_44d461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 33
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3808 to i64*
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 1
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %3811 to i64*
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 5
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %3814 to i64*
  %3815 = load i64, i64* %RAX.i206
  %3816 = load i64, i64* %RCX.i207
  %3817 = load i64, i64* %PC.i205
  %3818 = add i64 %3817, 3
  store i64 %3818, i64* %PC.i205
  %3819 = add i64 %3816, %3815
  store i64 %3819, i64* %RAX.i206, align 8
  %3820 = icmp ult i64 %3819, %3815
  %3821 = icmp ult i64 %3819, %3816
  %3822 = or i1 %3820, %3821
  %3823 = zext i1 %3822 to i8
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3823, i8* %3824, align 1
  %3825 = trunc i64 %3819 to i32
  %3826 = and i32 %3825, 255
  %3827 = call i32 @llvm.ctpop.i32(i32 %3826)
  %3828 = trunc i32 %3827 to i8
  %3829 = and i8 %3828, 1
  %3830 = xor i8 %3829, 1
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3830, i8* %3831, align 1
  %3832 = xor i64 %3816, %3815
  %3833 = xor i64 %3832, %3819
  %3834 = lshr i64 %3833, 4
  %3835 = trunc i64 %3834 to i8
  %3836 = and i8 %3835, 1
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3836, i8* %3837, align 1
  %3838 = icmp eq i64 %3819, 0
  %3839 = zext i1 %3838 to i8
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3839, i8* %3840, align 1
  %3841 = lshr i64 %3819, 63
  %3842 = trunc i64 %3841 to i8
  %3843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3842, i8* %3843, align 1
  %3844 = lshr i64 %3815, 63
  %3845 = lshr i64 %3816, 63
  %3846 = xor i64 %3841, %3844
  %3847 = xor i64 %3841, %3845
  %3848 = add i64 %3846, %3847
  %3849 = icmp eq i64 %3848, 2
  %3850 = zext i1 %3849 to i8
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3850, i8* %3851, align 1
  store %struct.Memory* %loadMem_44d461, %struct.Memory** %MEMORY
  %loadMem_44d464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 33
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3854 to i64*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 1
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %3857 to i64*
  %3858 = load i64, i64* %RAX.i204
  %3859 = add i64 %3858, 96
  %3860 = load i64, i64* %PC.i203
  %3861 = add i64 %3860, 4
  store i64 %3861, i64* %PC.i203
  %3862 = inttoptr i64 %3859 to i64*
  %3863 = load i64, i64* %3862
  store i64 %3863, i64* %RAX.i204, align 8
  store %struct.Memory* %loadMem_44d464, %struct.Memory** %MEMORY
  %loadMem_44d468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 33
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3866 to i64*
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 1
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %3869 to i64*
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 11
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %RDI.i202 = bitcast %union.anon* %3872 to i64*
  %3873 = load i64, i64* %RAX.i201
  %3874 = add i64 %3873, 48
  %3875 = load i64, i64* %PC.i200
  %3876 = add i64 %3875, 4
  store i64 %3876, i64* %PC.i200
  %3877 = inttoptr i64 %3874 to i64*
  %3878 = load i64, i64* %3877
  store i64 %3878, i64* %RDI.i202, align 8
  store %struct.Memory* %loadMem_44d468, %struct.Memory** %MEMORY
  %loadMem1_44d46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 33
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3881 to i64*
  %3882 = load i64, i64* %PC.i199
  %3883 = add i64 %3882, -311308
  %3884 = load i64, i64* %PC.i199
  %3885 = add i64 %3884, 5
  %3886 = load i64, i64* %PC.i199
  %3887 = add i64 %3886, 5
  store i64 %3887, i64* %PC.i199
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3889 = load i64, i64* %3888, align 8
  %3890 = add i64 %3889, -8
  %3891 = inttoptr i64 %3890 to i64*
  store i64 %3885, i64* %3891
  store i64 %3890, i64* %3888, align 8
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3883, i64* %3892, align 8
  store %struct.Memory* %loadMem1_44d46c, %struct.Memory** %MEMORY
  %loadMem2_44d46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d46c = load i64, i64* %3
  %3893 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_44d46c)
  store %struct.Memory* %3893, %struct.Memory** %MEMORY
  %loadMem_44d471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3895 = getelementptr inbounds %struct.GPR, %struct.GPR* %3894, i32 0, i32 33
  %3896 = getelementptr inbounds %struct.Reg, %struct.Reg* %3895, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3896 to i64*
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3898 = getelementptr inbounds %struct.GPR, %struct.GPR* %3897, i32 0, i32 1
  %3899 = getelementptr inbounds %struct.Reg, %struct.Reg* %3898, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %3899 to i64*
  %3900 = load i64, i64* %RAX.i196
  %3901 = load i64, i64* %PC.i195
  %3902 = add i64 %3901, 4
  store i64 %3902, i64* %PC.i195
  %3903 = add i64 1, %3900
  store i64 %3903, i64* %RAX.i196, align 8
  %3904 = icmp ult i64 %3903, %3900
  %3905 = icmp ult i64 %3903, 1
  %3906 = or i1 %3904, %3905
  %3907 = zext i1 %3906 to i8
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3907, i8* %3908, align 1
  %3909 = trunc i64 %3903 to i32
  %3910 = and i32 %3909, 255
  %3911 = call i32 @llvm.ctpop.i32(i32 %3910)
  %3912 = trunc i32 %3911 to i8
  %3913 = and i8 %3912, 1
  %3914 = xor i8 %3913, 1
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3914, i8* %3915, align 1
  %3916 = xor i64 1, %3900
  %3917 = xor i64 %3916, %3903
  %3918 = lshr i64 %3917, 4
  %3919 = trunc i64 %3918 to i8
  %3920 = and i8 %3919, 1
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3920, i8* %3921, align 1
  %3922 = icmp eq i64 %3903, 0
  %3923 = zext i1 %3922 to i8
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3923, i8* %3924, align 1
  %3925 = lshr i64 %3903, 63
  %3926 = trunc i64 %3925 to i8
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3926, i8* %3927, align 1
  %3928 = lshr i64 %3900, 63
  %3929 = xor i64 %3925, %3928
  %3930 = add i64 %3929, %3925
  %3931 = icmp eq i64 %3930, 2
  %3932 = zext i1 %3931 to i8
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3932, i8* %3933, align 1
  store %struct.Memory* %loadMem_44d471, %struct.Memory** %MEMORY
  %loadMem_44d475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 33
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3936 to i64*
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3938 = getelementptr inbounds %struct.GPR, %struct.GPR* %3937, i32 0, i32 5
  %3939 = getelementptr inbounds %struct.Reg, %struct.Reg* %3938, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %3939 to i64*
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 15
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %3942 to i64*
  %3943 = load i64, i64* %RBP.i194
  %3944 = sub i64 %3943, 28
  %3945 = load i64, i64* %PC.i192
  %3946 = add i64 %3945, 4
  store i64 %3946, i64* %PC.i192
  %3947 = inttoptr i64 %3944 to i32*
  %3948 = load i32, i32* %3947
  %3949 = sext i32 %3948 to i64
  store i64 %3949, i64* %RCX.i193, align 8
  store %struct.Memory* %loadMem_44d475, %struct.Memory** %MEMORY
  %loadMem_44d479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 33
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3952 to i64*
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 1
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %3955 to i64*
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 5
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %3958 to i64*
  %3959 = load i64, i64* %RCX.i191
  %3960 = load i64, i64* %RAX.i190
  %3961 = load i64, i64* %PC.i189
  %3962 = add i64 %3961, 3
  store i64 %3962, i64* %PC.i189
  %3963 = add i64 %3960, %3959
  store i64 %3963, i64* %RCX.i191, align 8
  %3964 = icmp ult i64 %3963, %3959
  %3965 = icmp ult i64 %3963, %3960
  %3966 = or i1 %3964, %3965
  %3967 = zext i1 %3966 to i8
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3967, i8* %3968, align 1
  %3969 = trunc i64 %3963 to i32
  %3970 = and i32 %3969, 255
  %3971 = call i32 @llvm.ctpop.i32(i32 %3970)
  %3972 = trunc i32 %3971 to i8
  %3973 = and i8 %3972, 1
  %3974 = xor i8 %3973, 1
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3974, i8* %3975, align 1
  %3976 = xor i64 %3960, %3959
  %3977 = xor i64 %3976, %3963
  %3978 = lshr i64 %3977, 4
  %3979 = trunc i64 %3978 to i8
  %3980 = and i8 %3979, 1
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3980, i8* %3981, align 1
  %3982 = icmp eq i64 %3963, 0
  %3983 = zext i1 %3982 to i8
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3983, i8* %3984, align 1
  %3985 = lshr i64 %3963, 63
  %3986 = trunc i64 %3985 to i8
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3986, i8* %3987, align 1
  %3988 = lshr i64 %3959, 63
  %3989 = lshr i64 %3960, 63
  %3990 = xor i64 %3985, %3988
  %3991 = xor i64 %3985, %3989
  %3992 = add i64 %3990, %3991
  %3993 = icmp eq i64 %3992, 2
  %3994 = zext i1 %3993 to i8
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3994, i8* %3995, align 1
  store %struct.Memory* %loadMem_44d479, %struct.Memory** %MEMORY
  %loadMem_44d47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 33
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %3998 to i64*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 5
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %ECX.i187 = bitcast %union.anon* %4001 to i32*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 7
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %RDX.i188 = bitcast %union.anon* %4004 to i64*
  %4005 = load i32, i32* %ECX.i187
  %4006 = zext i32 %4005 to i64
  %4007 = load i64, i64* %PC.i186
  %4008 = add i64 %4007, 2
  store i64 %4008, i64* %PC.i186
  %4009 = and i64 %4006, 4294967295
  store i64 %4009, i64* %RDX.i188, align 8
  store %struct.Memory* %loadMem_44d47c, %struct.Memory** %MEMORY
  %loadMem_44d47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4011 = getelementptr inbounds %struct.GPR, %struct.GPR* %4010, i32 0, i32 33
  %4012 = getelementptr inbounds %struct.Reg, %struct.Reg* %4011, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %4012 to i64*
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4014 = getelementptr inbounds %struct.GPR, %struct.GPR* %4013, i32 0, i32 7
  %4015 = getelementptr inbounds %struct.Reg, %struct.Reg* %4014, i32 0, i32 0
  %EDX.i184 = bitcast %union.anon* %4015 to i32*
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4017 = getelementptr inbounds %struct.GPR, %struct.GPR* %4016, i32 0, i32 15
  %4018 = getelementptr inbounds %struct.Reg, %struct.Reg* %4017, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %4018 to i64*
  %4019 = load i64, i64* %RBP.i185
  %4020 = sub i64 %4019, 28
  %4021 = load i32, i32* %EDX.i184
  %4022 = zext i32 %4021 to i64
  %4023 = load i64, i64* %PC.i183
  %4024 = add i64 %4023, 3
  store i64 %4024, i64* %PC.i183
  %4025 = inttoptr i64 %4020 to i32*
  store i32 %4021, i32* %4025
  store %struct.Memory* %loadMem_44d47e, %struct.Memory** %MEMORY
  br label %block_.L_44d481

block_.L_44d481:                                  ; preds = %block_44d451, %block_.L_44d406
  %loadMem_44d481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 33
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %4028 to i64*
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4030 = getelementptr inbounds %struct.GPR, %struct.GPR* %4029, i32 0, i32 1
  %4031 = getelementptr inbounds %struct.Reg, %struct.Reg* %4030, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %4031 to i64*
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 15
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %4034 to i64*
  %4035 = load i64, i64* %RBP.i182
  %4036 = sub i64 %4035, 8
  %4037 = load i64, i64* %PC.i180
  %4038 = add i64 %4037, 4
  store i64 %4038, i64* %PC.i180
  %4039 = inttoptr i64 %4036 to i64*
  %4040 = load i64, i64* %4039
  store i64 %4040, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_44d481, %struct.Memory** %MEMORY
  %loadMem_44d485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 33
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %4043 to i64*
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 1
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %4046 to i64*
  %4047 = load i64, i64* %RAX.i179
  %4048 = add i64 %4047, 8
  %4049 = load i64, i64* %PC.i178
  %4050 = add i64 %4049, 4
  store i64 %4050, i64* %PC.i178
  %4051 = inttoptr i64 %4048 to i64*
  %4052 = load i64, i64* %4051
  store i64 %4052, i64* %RAX.i179, align 8
  store %struct.Memory* %loadMem_44d485, %struct.Memory** %MEMORY
  %loadMem_44d489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4054 = getelementptr inbounds %struct.GPR, %struct.GPR* %4053, i32 0, i32 33
  %4055 = getelementptr inbounds %struct.Reg, %struct.Reg* %4054, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %4055 to i64*
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 5
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %4058 to i64*
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 15
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %4061 to i64*
  %4062 = load i64, i64* %RBP.i177
  %4063 = sub i64 %4062, 24
  %4064 = load i64, i64* %PC.i175
  %4065 = add i64 %4064, 4
  store i64 %4065, i64* %PC.i175
  %4066 = inttoptr i64 %4063 to i32*
  %4067 = load i32, i32* %4066
  %4068 = sext i32 %4067 to i64
  store i64 %4068, i64* %RCX.i176, align 8
  store %struct.Memory* %loadMem_44d489, %struct.Memory** %MEMORY
  %loadMem_44d48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 33
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %4071 to i64*
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4073 = getelementptr inbounds %struct.GPR, %struct.GPR* %4072, i32 0, i32 5
  %4074 = getelementptr inbounds %struct.Reg, %struct.Reg* %4073, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %4074 to i64*
  %4075 = load i64, i64* %RCX.i174
  %4076 = load i64, i64* %PC.i173
  %4077 = add i64 %4076, 4
  store i64 %4077, i64* %PC.i173
  %4078 = sext i64 %4075 to i128
  %4079 = and i128 %4078, -18446744073709551616
  %4080 = zext i64 %4075 to i128
  %4081 = or i128 %4079, %4080
  %4082 = mul i128 104, %4081
  %4083 = trunc i128 %4082 to i64
  store i64 %4083, i64* %RCX.i174, align 8
  %4084 = sext i64 %4083 to i128
  %4085 = icmp ne i128 %4084, %4082
  %4086 = zext i1 %4085 to i8
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4086, i8* %4087, align 1
  %4088 = trunc i128 %4082 to i32
  %4089 = and i32 %4088, 255
  %4090 = call i32 @llvm.ctpop.i32(i32 %4089)
  %4091 = trunc i32 %4090 to i8
  %4092 = and i8 %4091, 1
  %4093 = xor i8 %4092, 1
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4093, i8* %4094, align 1
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4095, align 1
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4096, align 1
  %4097 = lshr i64 %4083, 63
  %4098 = trunc i64 %4097 to i8
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4098, i8* %4099, align 1
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4086, i8* %4100, align 1
  store %struct.Memory* %loadMem_44d48d, %struct.Memory** %MEMORY
  %loadMem_44d491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 33
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %4103 to i64*
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 1
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 5
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %4109 to i64*
  %4110 = load i64, i64* %RAX.i171
  %4111 = load i64, i64* %RCX.i172
  %4112 = load i64, i64* %PC.i170
  %4113 = add i64 %4112, 3
  store i64 %4113, i64* %PC.i170
  %4114 = add i64 %4111, %4110
  store i64 %4114, i64* %RAX.i171, align 8
  %4115 = icmp ult i64 %4114, %4110
  %4116 = icmp ult i64 %4114, %4111
  %4117 = or i1 %4115, %4116
  %4118 = zext i1 %4117 to i8
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4118, i8* %4119, align 1
  %4120 = trunc i64 %4114 to i32
  %4121 = and i32 %4120, 255
  %4122 = call i32 @llvm.ctpop.i32(i32 %4121)
  %4123 = trunc i32 %4122 to i8
  %4124 = and i8 %4123, 1
  %4125 = xor i8 %4124, 1
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4125, i8* %4126, align 1
  %4127 = xor i64 %4111, %4110
  %4128 = xor i64 %4127, %4114
  %4129 = lshr i64 %4128, 4
  %4130 = trunc i64 %4129 to i8
  %4131 = and i8 %4130, 1
  %4132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4131, i8* %4132, align 1
  %4133 = icmp eq i64 %4114, 0
  %4134 = zext i1 %4133 to i8
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4134, i8* %4135, align 1
  %4136 = lshr i64 %4114, 63
  %4137 = trunc i64 %4136 to i8
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4137, i8* %4138, align 1
  %4139 = lshr i64 %4110, 63
  %4140 = lshr i64 %4111, 63
  %4141 = xor i64 %4136, %4139
  %4142 = xor i64 %4136, %4140
  %4143 = add i64 %4141, %4142
  %4144 = icmp eq i64 %4143, 2
  %4145 = zext i1 %4144 to i8
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4145, i8* %4146, align 1
  store %struct.Memory* %loadMem_44d491, %struct.Memory** %MEMORY
  %loadMem_44d494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 1
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %RAX.i169
  %4154 = add i64 %4153, 96
  %4155 = load i64, i64* %PC.i168
  %4156 = add i64 %4155, 4
  store i64 %4156, i64* %PC.i168
  %4157 = inttoptr i64 %4154 to i64*
  %4158 = load i64, i64* %4157
  store i64 %4158, i64* %RAX.i169, align 8
  store %struct.Memory* %loadMem_44d494, %struct.Memory** %MEMORY
  %loadMem_44d498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4160 = getelementptr inbounds %struct.GPR, %struct.GPR* %4159, i32 0, i32 33
  %4161 = getelementptr inbounds %struct.Reg, %struct.Reg* %4160, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %4161 to i64*
  %4162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4163 = getelementptr inbounds %struct.GPR, %struct.GPR* %4162, i32 0, i32 1
  %4164 = getelementptr inbounds %struct.Reg, %struct.Reg* %4163, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %4164 to i64*
  %4165 = load i64, i64* %RAX.i167
  %4166 = add i64 %4165, 56
  %4167 = load i64, i64* %PC.i166
  %4168 = add i64 %4167, 5
  store i64 %4168, i64* %PC.i166
  %4169 = inttoptr i64 %4166 to i64*
  %4170 = load i64, i64* %4169
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4171, align 1
  %4172 = trunc i64 %4170 to i32
  %4173 = and i32 %4172, 255
  %4174 = call i32 @llvm.ctpop.i32(i32 %4173)
  %4175 = trunc i32 %4174 to i8
  %4176 = and i8 %4175, 1
  %4177 = xor i8 %4176, 1
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4177, i8* %4178, align 1
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4179, align 1
  %4180 = icmp eq i64 %4170, 0
  %4181 = zext i1 %4180 to i8
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4181, i8* %4182, align 1
  %4183 = lshr i64 %4170, 63
  %4184 = trunc i64 %4183 to i8
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4184, i8* %4185, align 1
  %4186 = lshr i64 %4170, 63
  %4187 = xor i64 %4183, %4186
  %4188 = add i64 %4187, %4186
  %4189 = icmp eq i64 %4188, 2
  %4190 = zext i1 %4189 to i8
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4190, i8* %4191, align 1
  store %struct.Memory* %loadMem_44d498, %struct.Memory** %MEMORY
  %loadMem_44d49d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 33
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %4194 to i64*
  %4195 = load i64, i64* %PC.i165
  %4196 = add i64 %4195, 54
  %4197 = load i64, i64* %PC.i165
  %4198 = add i64 %4197, 6
  %4199 = load i64, i64* %PC.i165
  %4200 = add i64 %4199, 6
  store i64 %4200, i64* %PC.i165
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4202 = load i8, i8* %4201, align 1
  store i8 %4202, i8* %BRANCH_TAKEN, align 1
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4204 = icmp ne i8 %4202, 0
  %4205 = select i1 %4204, i64 %4196, i64 %4198
  store i64 %4205, i64* %4203, align 8
  store %struct.Memory* %loadMem_44d49d, %struct.Memory** %MEMORY
  %loadBr_44d49d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d49d = icmp eq i8 %loadBr_44d49d, 1
  br i1 %cmpBr_44d49d, label %block_.L_44d4d3, label %block_44d4a3

block_44d4a3:                                     ; preds = %block_.L_44d481
  %loadMem_44d4a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 33
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %4208 to i64*
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 1
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %4211 to i64*
  %4212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4213 = getelementptr inbounds %struct.GPR, %struct.GPR* %4212, i32 0, i32 15
  %4214 = getelementptr inbounds %struct.Reg, %struct.Reg* %4213, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %4214 to i64*
  %4215 = load i64, i64* %RBP.i164
  %4216 = sub i64 %4215, 8
  %4217 = load i64, i64* %PC.i162
  %4218 = add i64 %4217, 4
  store i64 %4218, i64* %PC.i162
  %4219 = inttoptr i64 %4216 to i64*
  %4220 = load i64, i64* %4219
  store i64 %4220, i64* %RAX.i163, align 8
  store %struct.Memory* %loadMem_44d4a3, %struct.Memory** %MEMORY
  %loadMem_44d4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 33
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %4223 to i64*
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4225 = getelementptr inbounds %struct.GPR, %struct.GPR* %4224, i32 0, i32 1
  %4226 = getelementptr inbounds %struct.Reg, %struct.Reg* %4225, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %4226 to i64*
  %4227 = load i64, i64* %RAX.i161
  %4228 = add i64 %4227, 8
  %4229 = load i64, i64* %PC.i160
  %4230 = add i64 %4229, 4
  store i64 %4230, i64* %PC.i160
  %4231 = inttoptr i64 %4228 to i64*
  %4232 = load i64, i64* %4231
  store i64 %4232, i64* %RAX.i161, align 8
  store %struct.Memory* %loadMem_44d4a7, %struct.Memory** %MEMORY
  %loadMem_44d4ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 33
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4235 to i64*
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 5
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %RCX.i158 = bitcast %union.anon* %4238 to i64*
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 15
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %4241 to i64*
  %4242 = load i64, i64* %RBP.i159
  %4243 = sub i64 %4242, 24
  %4244 = load i64, i64* %PC.i157
  %4245 = add i64 %4244, 4
  store i64 %4245, i64* %PC.i157
  %4246 = inttoptr i64 %4243 to i32*
  %4247 = load i32, i32* %4246
  %4248 = sext i32 %4247 to i64
  store i64 %4248, i64* %RCX.i158, align 8
  store %struct.Memory* %loadMem_44d4ab, %struct.Memory** %MEMORY
  %loadMem_44d4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4250 = getelementptr inbounds %struct.GPR, %struct.GPR* %4249, i32 0, i32 33
  %4251 = getelementptr inbounds %struct.Reg, %struct.Reg* %4250, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %4251 to i64*
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 5
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %RCX.i156 = bitcast %union.anon* %4254 to i64*
  %4255 = load i64, i64* %RCX.i156
  %4256 = load i64, i64* %PC.i155
  %4257 = add i64 %4256, 4
  store i64 %4257, i64* %PC.i155
  %4258 = sext i64 %4255 to i128
  %4259 = and i128 %4258, -18446744073709551616
  %4260 = zext i64 %4255 to i128
  %4261 = or i128 %4259, %4260
  %4262 = mul i128 104, %4261
  %4263 = trunc i128 %4262 to i64
  store i64 %4263, i64* %RCX.i156, align 8
  %4264 = sext i64 %4263 to i128
  %4265 = icmp ne i128 %4264, %4262
  %4266 = zext i1 %4265 to i8
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4266, i8* %4267, align 1
  %4268 = trunc i128 %4262 to i32
  %4269 = and i32 %4268, 255
  %4270 = call i32 @llvm.ctpop.i32(i32 %4269)
  %4271 = trunc i32 %4270 to i8
  %4272 = and i8 %4271, 1
  %4273 = xor i8 %4272, 1
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4273, i8* %4274, align 1
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4275, align 1
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4276, align 1
  %4277 = lshr i64 %4263, 63
  %4278 = trunc i64 %4277 to i8
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4278, i8* %4279, align 1
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4266, i8* %4280, align 1
  store %struct.Memory* %loadMem_44d4af, %struct.Memory** %MEMORY
  %loadMem_44d4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 33
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4283 to i64*
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 1
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %4286 to i64*
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 5
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %RCX.i154 = bitcast %union.anon* %4289 to i64*
  %4290 = load i64, i64* %RAX.i153
  %4291 = load i64, i64* %RCX.i154
  %4292 = load i64, i64* %PC.i152
  %4293 = add i64 %4292, 3
  store i64 %4293, i64* %PC.i152
  %4294 = add i64 %4291, %4290
  store i64 %4294, i64* %RAX.i153, align 8
  %4295 = icmp ult i64 %4294, %4290
  %4296 = icmp ult i64 %4294, %4291
  %4297 = or i1 %4295, %4296
  %4298 = zext i1 %4297 to i8
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4298, i8* %4299, align 1
  %4300 = trunc i64 %4294 to i32
  %4301 = and i32 %4300, 255
  %4302 = call i32 @llvm.ctpop.i32(i32 %4301)
  %4303 = trunc i32 %4302 to i8
  %4304 = and i8 %4303, 1
  %4305 = xor i8 %4304, 1
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4305, i8* %4306, align 1
  %4307 = xor i64 %4291, %4290
  %4308 = xor i64 %4307, %4294
  %4309 = lshr i64 %4308, 4
  %4310 = trunc i64 %4309 to i8
  %4311 = and i8 %4310, 1
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4311, i8* %4312, align 1
  %4313 = icmp eq i64 %4294, 0
  %4314 = zext i1 %4313 to i8
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4314, i8* %4315, align 1
  %4316 = lshr i64 %4294, 63
  %4317 = trunc i64 %4316 to i8
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4317, i8* %4318, align 1
  %4319 = lshr i64 %4290, 63
  %4320 = lshr i64 %4291, 63
  %4321 = xor i64 %4316, %4319
  %4322 = xor i64 %4316, %4320
  %4323 = add i64 %4321, %4322
  %4324 = icmp eq i64 %4323, 2
  %4325 = zext i1 %4324 to i8
  %4326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4325, i8* %4326, align 1
  store %struct.Memory* %loadMem_44d4b3, %struct.Memory** %MEMORY
  %loadMem_44d4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 33
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4329 to i64*
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 1
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %4332 to i64*
  %4333 = load i64, i64* %RAX.i151
  %4334 = add i64 %4333, 96
  %4335 = load i64, i64* %PC.i150
  %4336 = add i64 %4335, 4
  store i64 %4336, i64* %PC.i150
  %4337 = inttoptr i64 %4334 to i64*
  %4338 = load i64, i64* %4337
  store i64 %4338, i64* %RAX.i151, align 8
  store %struct.Memory* %loadMem_44d4b6, %struct.Memory** %MEMORY
  %loadMem_44d4ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 33
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4341 to i64*
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4343 = getelementptr inbounds %struct.GPR, %struct.GPR* %4342, i32 0, i32 1
  %4344 = getelementptr inbounds %struct.Reg, %struct.Reg* %4343, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %4344 to i64*
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4346 = getelementptr inbounds %struct.GPR, %struct.GPR* %4345, i32 0, i32 11
  %4347 = getelementptr inbounds %struct.Reg, %struct.Reg* %4346, i32 0, i32 0
  %RDI.i149 = bitcast %union.anon* %4347 to i64*
  %4348 = load i64, i64* %RAX.i148
  %4349 = add i64 %4348, 56
  %4350 = load i64, i64* %PC.i147
  %4351 = add i64 %4350, 4
  store i64 %4351, i64* %PC.i147
  %4352 = inttoptr i64 %4349 to i64*
  %4353 = load i64, i64* %4352
  store i64 %4353, i64* %RDI.i149, align 8
  store %struct.Memory* %loadMem_44d4ba, %struct.Memory** %MEMORY
  %loadMem1_44d4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 33
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %4356 to i64*
  %4357 = load i64, i64* %PC.i146
  %4358 = add i64 %4357, -311390
  %4359 = load i64, i64* %PC.i146
  %4360 = add i64 %4359, 5
  %4361 = load i64, i64* %PC.i146
  %4362 = add i64 %4361, 5
  store i64 %4362, i64* %PC.i146
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4364 = load i64, i64* %4363, align 8
  %4365 = add i64 %4364, -8
  %4366 = inttoptr i64 %4365 to i64*
  store i64 %4360, i64* %4366
  store i64 %4365, i64* %4363, align 8
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4358, i64* %4367, align 8
  store %struct.Memory* %loadMem1_44d4be, %struct.Memory** %MEMORY
  %loadMem2_44d4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d4be = load i64, i64* %3
  %4368 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_44d4be)
  store %struct.Memory* %4368, %struct.Memory** %MEMORY
  %loadMem_44d4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4370 = getelementptr inbounds %struct.GPR, %struct.GPR* %4369, i32 0, i32 33
  %4371 = getelementptr inbounds %struct.Reg, %struct.Reg* %4370, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %4371 to i64*
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 1
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %4374 to i64*
  %4375 = load i64, i64* %RAX.i143
  %4376 = load i64, i64* %PC.i142
  %4377 = add i64 %4376, 4
  store i64 %4377, i64* %PC.i142
  %4378 = add i64 1, %4375
  store i64 %4378, i64* %RAX.i143, align 8
  %4379 = icmp ult i64 %4378, %4375
  %4380 = icmp ult i64 %4378, 1
  %4381 = or i1 %4379, %4380
  %4382 = zext i1 %4381 to i8
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4382, i8* %4383, align 1
  %4384 = trunc i64 %4378 to i32
  %4385 = and i32 %4384, 255
  %4386 = call i32 @llvm.ctpop.i32(i32 %4385)
  %4387 = trunc i32 %4386 to i8
  %4388 = and i8 %4387, 1
  %4389 = xor i8 %4388, 1
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4389, i8* %4390, align 1
  %4391 = xor i64 1, %4375
  %4392 = xor i64 %4391, %4378
  %4393 = lshr i64 %4392, 4
  %4394 = trunc i64 %4393 to i8
  %4395 = and i8 %4394, 1
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4395, i8* %4396, align 1
  %4397 = icmp eq i64 %4378, 0
  %4398 = zext i1 %4397 to i8
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4398, i8* %4399, align 1
  %4400 = lshr i64 %4378, 63
  %4401 = trunc i64 %4400 to i8
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4401, i8* %4402, align 1
  %4403 = lshr i64 %4375, 63
  %4404 = xor i64 %4400, %4403
  %4405 = add i64 %4404, %4400
  %4406 = icmp eq i64 %4405, 2
  %4407 = zext i1 %4406 to i8
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4407, i8* %4408, align 1
  store %struct.Memory* %loadMem_44d4c3, %struct.Memory** %MEMORY
  %loadMem_44d4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 33
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %4411 to i64*
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 5
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %4414 to i64*
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 15
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %4417 to i64*
  %4418 = load i64, i64* %RBP.i141
  %4419 = sub i64 %4418, 28
  %4420 = load i64, i64* %PC.i139
  %4421 = add i64 %4420, 4
  store i64 %4421, i64* %PC.i139
  %4422 = inttoptr i64 %4419 to i32*
  %4423 = load i32, i32* %4422
  %4424 = sext i32 %4423 to i64
  store i64 %4424, i64* %RCX.i140, align 8
  store %struct.Memory* %loadMem_44d4c7, %struct.Memory** %MEMORY
  %loadMem_44d4cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 33
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %4427 to i64*
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 1
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %4430 to i64*
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4432 = getelementptr inbounds %struct.GPR, %struct.GPR* %4431, i32 0, i32 5
  %4433 = getelementptr inbounds %struct.Reg, %struct.Reg* %4432, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %4433 to i64*
  %4434 = load i64, i64* %RCX.i138
  %4435 = load i64, i64* %RAX.i137
  %4436 = load i64, i64* %PC.i136
  %4437 = add i64 %4436, 3
  store i64 %4437, i64* %PC.i136
  %4438 = add i64 %4435, %4434
  store i64 %4438, i64* %RCX.i138, align 8
  %4439 = icmp ult i64 %4438, %4434
  %4440 = icmp ult i64 %4438, %4435
  %4441 = or i1 %4439, %4440
  %4442 = zext i1 %4441 to i8
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4442, i8* %4443, align 1
  %4444 = trunc i64 %4438 to i32
  %4445 = and i32 %4444, 255
  %4446 = call i32 @llvm.ctpop.i32(i32 %4445)
  %4447 = trunc i32 %4446 to i8
  %4448 = and i8 %4447, 1
  %4449 = xor i8 %4448, 1
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4449, i8* %4450, align 1
  %4451 = xor i64 %4435, %4434
  %4452 = xor i64 %4451, %4438
  %4453 = lshr i64 %4452, 4
  %4454 = trunc i64 %4453 to i8
  %4455 = and i8 %4454, 1
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4455, i8* %4456, align 1
  %4457 = icmp eq i64 %4438, 0
  %4458 = zext i1 %4457 to i8
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4458, i8* %4459, align 1
  %4460 = lshr i64 %4438, 63
  %4461 = trunc i64 %4460 to i8
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4461, i8* %4462, align 1
  %4463 = lshr i64 %4434, 63
  %4464 = lshr i64 %4435, 63
  %4465 = xor i64 %4460, %4463
  %4466 = xor i64 %4460, %4464
  %4467 = add i64 %4465, %4466
  %4468 = icmp eq i64 %4467, 2
  %4469 = zext i1 %4468 to i8
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4469, i8* %4470, align 1
  store %struct.Memory* %loadMem_44d4cb, %struct.Memory** %MEMORY
  %loadMem_44d4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 33
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4473 to i64*
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 5
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4476 to i32*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 7
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %RDX.i135 = bitcast %union.anon* %4479 to i64*
  %4480 = load i32, i32* %ECX.i
  %4481 = zext i32 %4480 to i64
  %4482 = load i64, i64* %PC.i134
  %4483 = add i64 %4482, 2
  store i64 %4483, i64* %PC.i134
  %4484 = and i64 %4481, 4294967295
  store i64 %4484, i64* %RDX.i135, align 8
  store %struct.Memory* %loadMem_44d4ce, %struct.Memory** %MEMORY
  %loadMem_44d4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 33
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4487 to i64*
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 7
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %EDX.i132 = bitcast %union.anon* %4490 to i32*
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 15
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %4493 to i64*
  %4494 = load i64, i64* %RBP.i133
  %4495 = sub i64 %4494, 28
  %4496 = load i32, i32* %EDX.i132
  %4497 = zext i32 %4496 to i64
  %4498 = load i64, i64* %PC.i131
  %4499 = add i64 %4498, 3
  store i64 %4499, i64* %PC.i131
  %4500 = inttoptr i64 %4495 to i32*
  store i32 %4496, i32* %4500
  store %struct.Memory* %loadMem_44d4d0, %struct.Memory** %MEMORY
  br label %block_.L_44d4d3

block_.L_44d4d3:                                  ; preds = %block_44d4a3, %block_.L_44d481
  %loadMem_44d4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 33
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %4503 to i64*
  %4504 = load i64, i64* %PC.i130
  %4505 = add i64 %4504, 5
  %4506 = load i64, i64* %PC.i130
  %4507 = add i64 %4506, 5
  store i64 %4507, i64* %PC.i130
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4505, i64* %4508, align 8
  store %struct.Memory* %loadMem_44d4d3, %struct.Memory** %MEMORY
  br label %block_.L_44d4d8

block_.L_44d4d8:                                  ; preds = %block_.L_44d4d3, %block_.L_44d2fe
  %loadMem_44d4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 33
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %4511 to i64*
  %4512 = load i64, i64* %PC.i129
  %4513 = add i64 %4512, 5
  %4514 = load i64, i64* %PC.i129
  %4515 = add i64 %4514, 5
  store i64 %4515, i64* %PC.i129
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4513, i64* %4516, align 8
  store %struct.Memory* %loadMem_44d4d8, %struct.Memory** %MEMORY
  br label %block_.L_44d4dd

block_.L_44d4dd:                                  ; preds = %block_.L_44d4d8
  %loadMem_44d4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 33
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %4519 to i64*
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 1
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %4522 to i64*
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 15
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %4525 to i64*
  %4526 = load i64, i64* %RBP.i128
  %4527 = sub i64 %4526, 24
  %4528 = load i64, i64* %PC.i126
  %4529 = add i64 %4528, 3
  store i64 %4529, i64* %PC.i126
  %4530 = inttoptr i64 %4527 to i32*
  %4531 = load i32, i32* %4530
  %4532 = zext i32 %4531 to i64
  store i64 %4532, i64* %RAX.i127, align 8
  store %struct.Memory* %loadMem_44d4dd, %struct.Memory** %MEMORY
  %loadMem_44d4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 33
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4535 to i64*
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4537 = getelementptr inbounds %struct.GPR, %struct.GPR* %4536, i32 0, i32 1
  %4538 = getelementptr inbounds %struct.Reg, %struct.Reg* %4537, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %4538 to i64*
  %4539 = load i64, i64* %RAX.i125
  %4540 = load i64, i64* %PC.i124
  %4541 = add i64 %4540, 3
  store i64 %4541, i64* %PC.i124
  %4542 = trunc i64 %4539 to i32
  %4543 = add i32 1, %4542
  %4544 = zext i32 %4543 to i64
  store i64 %4544, i64* %RAX.i125, align 8
  %4545 = icmp ult i32 %4543, %4542
  %4546 = icmp ult i32 %4543, 1
  %4547 = or i1 %4545, %4546
  %4548 = zext i1 %4547 to i8
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4548, i8* %4549, align 1
  %4550 = and i32 %4543, 255
  %4551 = call i32 @llvm.ctpop.i32(i32 %4550)
  %4552 = trunc i32 %4551 to i8
  %4553 = and i8 %4552, 1
  %4554 = xor i8 %4553, 1
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4554, i8* %4555, align 1
  %4556 = xor i64 1, %4539
  %4557 = trunc i64 %4556 to i32
  %4558 = xor i32 %4557, %4543
  %4559 = lshr i32 %4558, 4
  %4560 = trunc i32 %4559 to i8
  %4561 = and i8 %4560, 1
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4561, i8* %4562, align 1
  %4563 = icmp eq i32 %4543, 0
  %4564 = zext i1 %4563 to i8
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4564, i8* %4565, align 1
  %4566 = lshr i32 %4543, 31
  %4567 = trunc i32 %4566 to i8
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4567, i8* %4568, align 1
  %4569 = lshr i32 %4542, 31
  %4570 = xor i32 %4566, %4569
  %4571 = add i32 %4570, %4566
  %4572 = icmp eq i32 %4571, 2
  %4573 = zext i1 %4572 to i8
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4573, i8* %4574, align 1
  store %struct.Memory* %loadMem_44d4e0, %struct.Memory** %MEMORY
  %loadMem_44d4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 33
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %4577 to i64*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 1
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %EAX.i122 = bitcast %union.anon* %4580 to i32*
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 15
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %4583 to i64*
  %4584 = load i64, i64* %RBP.i123
  %4585 = sub i64 %4584, 24
  %4586 = load i32, i32* %EAX.i122
  %4587 = zext i32 %4586 to i64
  %4588 = load i64, i64* %PC.i121
  %4589 = add i64 %4588, 3
  store i64 %4589, i64* %PC.i121
  %4590 = inttoptr i64 %4585 to i32*
  store i32 %4586, i32* %4590
  store %struct.Memory* %loadMem_44d4e3, %struct.Memory** %MEMORY
  %loadMem_44d4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4592 = getelementptr inbounds %struct.GPR, %struct.GPR* %4591, i32 0, i32 33
  %4593 = getelementptr inbounds %struct.Reg, %struct.Reg* %4592, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4593 to i64*
  %4594 = load i64, i64* %PC.i120
  %4595 = add i64 %4594, -726
  %4596 = load i64, i64* %PC.i120
  %4597 = add i64 %4596, 5
  store i64 %4597, i64* %PC.i120
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4595, i64* %4598, align 8
  store %struct.Memory* %loadMem_44d4e6, %struct.Memory** %MEMORY
  br label %block_.L_44d210

block_.L_44d4eb:                                  ; preds = %block_.L_44d210
  %loadMem_44d4eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4600 = getelementptr inbounds %struct.GPR, %struct.GPR* %4599, i32 0, i32 33
  %4601 = getelementptr inbounds %struct.Reg, %struct.Reg* %4600, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %4601 to i64*
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4603 = getelementptr inbounds %struct.GPR, %struct.GPR* %4602, i32 0, i32 15
  %4604 = getelementptr inbounds %struct.Reg, %struct.Reg* %4603, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %4604 to i64*
  %4605 = load i64, i64* %RBP.i119
  %4606 = sub i64 %4605, 36
  %4607 = load i64, i64* %PC.i118
  %4608 = add i64 %4607, 7
  store i64 %4608, i64* %PC.i118
  %4609 = inttoptr i64 %4606 to i32*
  store i32 0, i32* %4609
  store %struct.Memory* %loadMem_44d4eb, %struct.Memory** %MEMORY
  %loadMem_44d4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 33
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %4612 to i64*
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4614 = getelementptr inbounds %struct.GPR, %struct.GPR* %4613, i32 0, i32 15
  %4615 = getelementptr inbounds %struct.Reg, %struct.Reg* %4614, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %4615 to i64*
  %4616 = load i64, i64* %RBP.i117
  %4617 = sub i64 %4616, 24
  %4618 = load i64, i64* %PC.i116
  %4619 = add i64 %4618, 7
  store i64 %4619, i64* %PC.i116
  %4620 = inttoptr i64 %4617 to i32*
  store i32 0, i32* %4620
  store %struct.Memory* %loadMem_44d4f2, %struct.Memory** %MEMORY
  br label %block_.L_44d4f9

block_.L_44d4f9:                                  ; preds = %block_.L_44d536, %block_.L_44d4eb
  %loadMem_44d4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 33
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %4623 to i64*
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4625 = getelementptr inbounds %struct.GPR, %struct.GPR* %4624, i32 0, i32 1
  %4626 = getelementptr inbounds %struct.Reg, %struct.Reg* %4625, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %4626 to i64*
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4628 = getelementptr inbounds %struct.GPR, %struct.GPR* %4627, i32 0, i32 15
  %4629 = getelementptr inbounds %struct.Reg, %struct.Reg* %4628, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %4629 to i64*
  %4630 = load i64, i64* %RBP.i115
  %4631 = sub i64 %4630, 24
  %4632 = load i64, i64* %PC.i113
  %4633 = add i64 %4632, 3
  store i64 %4633, i64* %PC.i113
  %4634 = inttoptr i64 %4631 to i32*
  %4635 = load i32, i32* %4634
  %4636 = zext i32 %4635 to i64
  store i64 %4636, i64* %RAX.i114, align 8
  store %struct.Memory* %loadMem_44d4f9, %struct.Memory** %MEMORY
  %loadMem_44d4fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4638 = getelementptr inbounds %struct.GPR, %struct.GPR* %4637, i32 0, i32 33
  %4639 = getelementptr inbounds %struct.Reg, %struct.Reg* %4638, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %4639 to i64*
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 5
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %4642 to i64*
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 15
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %4645 to i64*
  %4646 = load i64, i64* %RBP.i112
  %4647 = sub i64 %4646, 8
  %4648 = load i64, i64* %PC.i110
  %4649 = add i64 %4648, 4
  store i64 %4649, i64* %PC.i110
  %4650 = inttoptr i64 %4647 to i64*
  %4651 = load i64, i64* %4650
  store i64 %4651, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_44d4fc, %struct.Memory** %MEMORY
  %loadMem_44d500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 33
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4654 to i64*
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4656 = getelementptr inbounds %struct.GPR, %struct.GPR* %4655, i32 0, i32 1
  %4657 = getelementptr inbounds %struct.Reg, %struct.Reg* %4656, i32 0, i32 0
  %EAX.i108 = bitcast %union.anon* %4657 to i32*
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 5
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %4660 to i64*
  %4661 = load i32, i32* %EAX.i108
  %4662 = zext i32 %4661 to i64
  %4663 = load i64, i64* %RCX.i109
  %4664 = add i64 %4663, 20
  %4665 = load i64, i64* %PC.i107
  %4666 = add i64 %4665, 3
  store i64 %4666, i64* %PC.i107
  %4667 = inttoptr i64 %4664 to i32*
  %4668 = load i32, i32* %4667
  %4669 = sub i32 %4661, %4668
  %4670 = icmp ult i32 %4661, %4668
  %4671 = zext i1 %4670 to i8
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4671, i8* %4672, align 1
  %4673 = and i32 %4669, 255
  %4674 = call i32 @llvm.ctpop.i32(i32 %4673)
  %4675 = trunc i32 %4674 to i8
  %4676 = and i8 %4675, 1
  %4677 = xor i8 %4676, 1
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4677, i8* %4678, align 1
  %4679 = xor i32 %4668, %4661
  %4680 = xor i32 %4679, %4669
  %4681 = lshr i32 %4680, 4
  %4682 = trunc i32 %4681 to i8
  %4683 = and i8 %4682, 1
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4683, i8* %4684, align 1
  %4685 = icmp eq i32 %4669, 0
  %4686 = zext i1 %4685 to i8
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4686, i8* %4687, align 1
  %4688 = lshr i32 %4669, 31
  %4689 = trunc i32 %4688 to i8
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4689, i8* %4690, align 1
  %4691 = lshr i32 %4661, 31
  %4692 = lshr i32 %4668, 31
  %4693 = xor i32 %4692, %4691
  %4694 = xor i32 %4688, %4691
  %4695 = add i32 %4694, %4693
  %4696 = icmp eq i32 %4695, 2
  %4697 = zext i1 %4696 to i8
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4697, i8* %4698, align 1
  store %struct.Memory* %loadMem_44d500, %struct.Memory** %MEMORY
  %loadMem_44d503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 33
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4701 to i64*
  %4702 = load i64, i64* %PC.i106
  %4703 = add i64 %4702, 74
  %4704 = load i64, i64* %PC.i106
  %4705 = add i64 %4704, 6
  %4706 = load i64, i64* %PC.i106
  %4707 = add i64 %4706, 6
  store i64 %4707, i64* %PC.i106
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4709 = load i8, i8* %4708, align 1
  %4710 = icmp ne i8 %4709, 0
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4712 = load i8, i8* %4711, align 1
  %4713 = icmp ne i8 %4712, 0
  %4714 = xor i1 %4710, %4713
  %4715 = xor i1 %4714, true
  %4716 = zext i1 %4715 to i8
  store i8 %4716, i8* %BRANCH_TAKEN, align 1
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4718 = select i1 %4714, i64 %4705, i64 %4703
  store i64 %4718, i64* %4717, align 8
  store %struct.Memory* %loadMem_44d503, %struct.Memory** %MEMORY
  %loadBr_44d503 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d503 = icmp eq i8 %loadBr_44d503, 1
  br i1 %cmpBr_44d503, label %block_.L_44d54d, label %block_44d509

block_44d509:                                     ; preds = %block_.L_44d4f9
  %loadMem_44d509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 33
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4721 to i64*
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4723 = getelementptr inbounds %struct.GPR, %struct.GPR* %4722, i32 0, i32 1
  %4724 = getelementptr inbounds %struct.Reg, %struct.Reg* %4723, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %4724 to i64*
  %4725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4726 = getelementptr inbounds %struct.GPR, %struct.GPR* %4725, i32 0, i32 15
  %4727 = getelementptr inbounds %struct.Reg, %struct.Reg* %4726, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %4727 to i64*
  %4728 = load i64, i64* %RBP.i105
  %4729 = sub i64 %4728, 8
  %4730 = load i64, i64* %PC.i103
  %4731 = add i64 %4730, 4
  store i64 %4731, i64* %PC.i103
  %4732 = inttoptr i64 %4729 to i64*
  %4733 = load i64, i64* %4732
  store i64 %4733, i64* %RAX.i104, align 8
  store %struct.Memory* %loadMem_44d509, %struct.Memory** %MEMORY
  %loadMem_44d50d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4735 = getelementptr inbounds %struct.GPR, %struct.GPR* %4734, i32 0, i32 33
  %4736 = getelementptr inbounds %struct.Reg, %struct.Reg* %4735, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4736 to i64*
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 1
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %4739 to i64*
  %4740 = load i64, i64* %RAX.i102
  %4741 = load i64, i64* %PC.i101
  %4742 = add i64 %4741, 3
  store i64 %4742, i64* %PC.i101
  %4743 = inttoptr i64 %4740 to i64*
  %4744 = load i64, i64* %4743
  store i64 %4744, i64* %RAX.i102, align 8
  store %struct.Memory* %loadMem_44d50d, %struct.Memory** %MEMORY
  %loadMem_44d510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 33
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4747 to i64*
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 5
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %4750 to i64*
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 15
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %4753 to i64*
  %4754 = load i64, i64* %RBP.i100
  %4755 = sub i64 %4754, 24
  %4756 = load i64, i64* %PC.i98
  %4757 = add i64 %4756, 4
  store i64 %4757, i64* %PC.i98
  %4758 = inttoptr i64 %4755 to i32*
  %4759 = load i32, i32* %4758
  %4760 = sext i32 %4759 to i64
  store i64 %4760, i64* %RCX.i99, align 8
  store %struct.Memory* %loadMem_44d510, %struct.Memory** %MEMORY
  %loadMem_44d514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 33
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %4763 to i64*
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 1
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %4766 to i64*
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 5
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %4769 to i64*
  %4770 = load i64, i64* %RAX.i96
  %4771 = load i64, i64* %RCX.i97
  %4772 = mul i64 %4771, 8
  %4773 = add i64 %4772, %4770
  %4774 = load i64, i64* %PC.i95
  %4775 = add i64 %4774, 4
  store i64 %4775, i64* %PC.i95
  %4776 = inttoptr i64 %4773 to i64*
  %4777 = load i64, i64* %4776
  store i64 %4777, i64* %RAX.i96, align 8
  store %struct.Memory* %loadMem_44d514, %struct.Memory** %MEMORY
  %loadMem_44d518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4779 = getelementptr inbounds %struct.GPR, %struct.GPR* %4778, i32 0, i32 33
  %4780 = getelementptr inbounds %struct.Reg, %struct.Reg* %4779, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %4780 to i64*
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4782 = getelementptr inbounds %struct.GPR, %struct.GPR* %4781, i32 0, i32 1
  %4783 = getelementptr inbounds %struct.Reg, %struct.Reg* %4782, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %4783 to i64*
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4785 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4784, i64 0, i64 0
  %YMM0.i94 = bitcast %union.VectorReg* %4785 to %"class.std::bitset"*
  %4786 = bitcast %"class.std::bitset"* %YMM0.i94 to i8*
  %4787 = load i64, i64* %RAX.i93
  %4788 = add i64 %4787, 16
  %4789 = load i64, i64* %PC.i92
  %4790 = add i64 %4789, 5
  store i64 %4790, i64* %PC.i92
  %4791 = inttoptr i64 %4788 to double*
  %4792 = load double, double* %4791
  %4793 = bitcast i8* %4786 to double*
  store double %4792, double* %4793, align 1
  %4794 = getelementptr inbounds i8, i8* %4786, i64 8
  %4795 = bitcast i8* %4794 to double*
  store double 0.000000e+00, double* %4795, align 1
  store %struct.Memory* %loadMem_44d518, %struct.Memory** %MEMORY
  %loadMem_44d51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4797 = getelementptr inbounds %struct.GPR, %struct.GPR* %4796, i32 0, i32 33
  %4798 = getelementptr inbounds %struct.Reg, %struct.Reg* %4797, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4798 to i64*
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 15
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %4801 to i64*
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4803 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4802, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %4803 to %"class.std::bitset"*
  %4804 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %4805 = load i64, i64* %RBP.i91
  %4806 = sub i64 %4805, 20
  %4807 = load i64, i64* %PC.i90
  %4808 = add i64 %4807, 5
  store i64 %4808, i64* %PC.i90
  %4809 = inttoptr i64 %4806 to i32*
  %4810 = load i32, i32* %4809
  %4811 = sitofp i32 %4810 to double
  %4812 = bitcast i8* %4804 to double*
  store double %4811, double* %4812, align 1
  store %struct.Memory* %loadMem_44d51d, %struct.Memory** %MEMORY
  %loadMem_44d522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 33
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %4815 to i64*
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4817 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4816, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %4817 to %"class.std::bitset"*
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4819 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4818, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %4819 to %union.vec128_t*
  %4820 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4821 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %4822 = bitcast %union.vec128_t* %XMM1.i to i8*
  %4823 = load i64, i64* %PC.i89
  %4824 = add i64 %4823, 4
  store i64 %4824, i64* %PC.i89
  %4825 = bitcast i8* %4821 to double*
  %4826 = load double, double* %4825, align 1
  %4827 = getelementptr inbounds i8, i8* %4821, i64 8
  %4828 = bitcast i8* %4827 to i64*
  %4829 = load i64, i64* %4828, align 1
  %4830 = bitcast i8* %4822 to double*
  %4831 = load double, double* %4830, align 1
  %4832 = fmul double %4826, %4831
  %4833 = bitcast i8* %4820 to double*
  store double %4832, double* %4833, align 1
  %4834 = getelementptr inbounds i8, i8* %4820, i64 8
  %4835 = bitcast i8* %4834 to i64*
  store i64 %4829, i64* %4835, align 1
  store %struct.Memory* %loadMem_44d522, %struct.Memory** %MEMORY
  %loadMem_44d526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4837 = getelementptr inbounds %struct.GPR, %struct.GPR* %4836, i32 0, i32 33
  %4838 = getelementptr inbounds %struct.Reg, %struct.Reg* %4837, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4838 to i64*
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4840 = getelementptr inbounds %struct.GPR, %struct.GPR* %4839, i32 0, i32 15
  %4841 = getelementptr inbounds %struct.Reg, %struct.Reg* %4840, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %4841 to i64*
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4843 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4842, i64 0, i64 0
  %XMM0.i85 = bitcast %union.VectorReg* %4843 to %union.vec128_t*
  %4844 = bitcast %union.vec128_t* %XMM0.i85 to i8*
  %4845 = load i64, i64* %RBP.i84
  %4846 = sub i64 %4845, 16
  %4847 = load i64, i64* %PC.i83
  %4848 = add i64 %4847, 5
  store i64 %4848, i64* %PC.i83
  %4849 = bitcast i8* %4844 to double*
  %4850 = load double, double* %4849, align 1
  %4851 = inttoptr i64 %4846 to double*
  %4852 = load double, double* %4851
  %4853 = fcmp uno double %4850, %4852
  br i1 %4853, label %4854, label %4866

; <label>:4854:                                   ; preds = %block_44d509
  %4855 = fadd double %4850, %4852
  %4856 = bitcast double %4855 to i64
  %4857 = and i64 %4856, 9221120237041090560
  %4858 = icmp eq i64 %4857, 9218868437227405312
  %4859 = and i64 %4856, 2251799813685247
  %4860 = icmp ne i64 %4859, 0
  %4861 = and i1 %4858, %4860
  br i1 %4861, label %4862, label %4872

; <label>:4862:                                   ; preds = %4854
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4864 = load i64, i64* %4863, align 8
  %4865 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4864, %struct.Memory* %loadMem_44d526)
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit

; <label>:4866:                                   ; preds = %block_44d509
  %4867 = fcmp ogt double %4850, %4852
  br i1 %4867, label %4872, label %4868

; <label>:4868:                                   ; preds = %4866
  %4869 = fcmp olt double %4850, %4852
  br i1 %4869, label %4872, label %4870

; <label>:4870:                                   ; preds = %4868
  %4871 = fcmp oeq double %4850, %4852
  br i1 %4871, label %4872, label %4879

; <label>:4872:                                   ; preds = %4870, %4868, %4866, %4854
  %4873 = phi i8 [ 0, %4866 ], [ 0, %4868 ], [ 1, %4870 ], [ 1, %4854 ]
  %4874 = phi i8 [ 0, %4866 ], [ 0, %4868 ], [ 0, %4870 ], [ 1, %4854 ]
  %4875 = phi i8 [ 0, %4866 ], [ 1, %4868 ], [ 0, %4870 ], [ 1, %4854 ]
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4873, i8* %4876, align 1
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4874, i8* %4877, align 1
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4875, i8* %4878, align 1
  br label %4879

; <label>:4879:                                   ; preds = %4872, %4870
  %4880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4880, align 1
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4881, align 1
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4882, align 1
  br label %routine_ucomisd_MINUS0x10__rbp____xmm0.exit

routine_ucomisd_MINUS0x10__rbp____xmm0.exit:      ; preds = %4862, %4879
  %4883 = phi %struct.Memory* [ %4865, %4862 ], [ %loadMem_44d526, %4879 ]
  store %struct.Memory* %4883, %struct.Memory** %MEMORY
  %loadMem_44d52b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 33
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %4886 to i64*
  %4887 = load i64, i64* %PC.i82
  %4888 = add i64 %4887, 11
  %4889 = load i64, i64* %PC.i82
  %4890 = add i64 %4889, 6
  %4891 = load i64, i64* %PC.i82
  %4892 = add i64 %4891, 6
  store i64 %4892, i64* %PC.i82
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4894 = load i8, i8* %4893, align 1
  store i8 %4894, i8* %BRANCH_TAKEN, align 1
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4896 = icmp ne i8 %4894, 0
  %4897 = select i1 %4896, i64 %4888, i64 %4890
  store i64 %4897, i64* %4895, align 8
  store %struct.Memory* %loadMem_44d52b, %struct.Memory** %MEMORY
  %loadBr_44d52b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44d52b = icmp eq i8 %loadBr_44d52b, 1
  br i1 %cmpBr_44d52b, label %block_.L_44d536, label %block_44d531

block_44d531:                                     ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit
  %loadMem_44d531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4899 = getelementptr inbounds %struct.GPR, %struct.GPR* %4898, i32 0, i32 33
  %4900 = getelementptr inbounds %struct.Reg, %struct.Reg* %4899, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4900 to i64*
  %4901 = load i64, i64* %PC.i81
  %4902 = add i64 %4901, 28
  %4903 = load i64, i64* %PC.i81
  %4904 = add i64 %4903, 5
  store i64 %4904, i64* %PC.i81
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4902, i64* %4905, align 8
  store %struct.Memory* %loadMem_44d531, %struct.Memory** %MEMORY
  br label %block_.L_44d54d

block_.L_44d536:                                  ; preds = %routine_ucomisd_MINUS0x10__rbp____xmm0.exit
  %loadMem_44d536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4907 = getelementptr inbounds %struct.GPR, %struct.GPR* %4906, i32 0, i32 33
  %4908 = getelementptr inbounds %struct.Reg, %struct.Reg* %4907, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4908 to i64*
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 1
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %4911 to i64*
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 15
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %4914 to i64*
  %4915 = load i64, i64* %RBP.i80
  %4916 = sub i64 %4915, 36
  %4917 = load i64, i64* %PC.i78
  %4918 = add i64 %4917, 3
  store i64 %4918, i64* %PC.i78
  %4919 = inttoptr i64 %4916 to i32*
  %4920 = load i32, i32* %4919
  %4921 = zext i32 %4920 to i64
  store i64 %4921, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_44d536, %struct.Memory** %MEMORY
  %loadMem_44d539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 33
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4924 to i64*
  %4925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4926 = getelementptr inbounds %struct.GPR, %struct.GPR* %4925, i32 0, i32 1
  %4927 = getelementptr inbounds %struct.Reg, %struct.Reg* %4926, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %4927 to i64*
  %4928 = load i64, i64* %RAX.i77
  %4929 = load i64, i64* %PC.i76
  %4930 = add i64 %4929, 3
  store i64 %4930, i64* %PC.i76
  %4931 = trunc i64 %4928 to i32
  %4932 = add i32 1, %4931
  %4933 = zext i32 %4932 to i64
  store i64 %4933, i64* %RAX.i77, align 8
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
  store %struct.Memory* %loadMem_44d539, %struct.Memory** %MEMORY
  %loadMem_44d53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4965 = getelementptr inbounds %struct.GPR, %struct.GPR* %4964, i32 0, i32 33
  %4966 = getelementptr inbounds %struct.Reg, %struct.Reg* %4965, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4966 to i64*
  %4967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4968 = getelementptr inbounds %struct.GPR, %struct.GPR* %4967, i32 0, i32 1
  %4969 = getelementptr inbounds %struct.Reg, %struct.Reg* %4968, i32 0, i32 0
  %EAX.i74 = bitcast %union.anon* %4969 to i32*
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4971 = getelementptr inbounds %struct.GPR, %struct.GPR* %4970, i32 0, i32 15
  %4972 = getelementptr inbounds %struct.Reg, %struct.Reg* %4971, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %4972 to i64*
  %4973 = load i64, i64* %RBP.i75
  %4974 = sub i64 %4973, 36
  %4975 = load i32, i32* %EAX.i74
  %4976 = zext i32 %4975 to i64
  %4977 = load i64, i64* %PC.i73
  %4978 = add i64 %4977, 3
  store i64 %4978, i64* %PC.i73
  %4979 = inttoptr i64 %4974 to i32*
  store i32 %4975, i32* %4979
  store %struct.Memory* %loadMem_44d53c, %struct.Memory** %MEMORY
  %loadMem_44d53f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4981 = getelementptr inbounds %struct.GPR, %struct.GPR* %4980, i32 0, i32 33
  %4982 = getelementptr inbounds %struct.Reg, %struct.Reg* %4981, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4982 to i64*
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4984 = getelementptr inbounds %struct.GPR, %struct.GPR* %4983, i32 0, i32 1
  %4985 = getelementptr inbounds %struct.Reg, %struct.Reg* %4984, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %4985 to i64*
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4987 = getelementptr inbounds %struct.GPR, %struct.GPR* %4986, i32 0, i32 15
  %4988 = getelementptr inbounds %struct.Reg, %struct.Reg* %4987, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %4988 to i64*
  %4989 = load i64, i64* %RBP.i72
  %4990 = sub i64 %4989, 24
  %4991 = load i64, i64* %PC.i70
  %4992 = add i64 %4991, 3
  store i64 %4992, i64* %PC.i70
  %4993 = inttoptr i64 %4990 to i32*
  %4994 = load i32, i32* %4993
  %4995 = zext i32 %4994 to i64
  store i64 %4995, i64* %RAX.i71, align 8
  store %struct.Memory* %loadMem_44d53f, %struct.Memory** %MEMORY
  %loadMem_44d542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 33
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4998 to i64*
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5000 = getelementptr inbounds %struct.GPR, %struct.GPR* %4999, i32 0, i32 1
  %5001 = getelementptr inbounds %struct.Reg, %struct.Reg* %5000, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %5001 to i64*
  %5002 = load i64, i64* %RAX.i69
  %5003 = load i64, i64* %PC.i68
  %5004 = add i64 %5003, 3
  store i64 %5004, i64* %PC.i68
  %5005 = trunc i64 %5002 to i32
  %5006 = add i32 1, %5005
  %5007 = zext i32 %5006 to i64
  store i64 %5007, i64* %RAX.i69, align 8
  %5008 = icmp ult i32 %5006, %5005
  %5009 = icmp ult i32 %5006, 1
  %5010 = or i1 %5008, %5009
  %5011 = zext i1 %5010 to i8
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5011, i8* %5012, align 1
  %5013 = and i32 %5006, 255
  %5014 = call i32 @llvm.ctpop.i32(i32 %5013)
  %5015 = trunc i32 %5014 to i8
  %5016 = and i8 %5015, 1
  %5017 = xor i8 %5016, 1
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5017, i8* %5018, align 1
  %5019 = xor i64 1, %5002
  %5020 = trunc i64 %5019 to i32
  %5021 = xor i32 %5020, %5006
  %5022 = lshr i32 %5021, 4
  %5023 = trunc i32 %5022 to i8
  %5024 = and i8 %5023, 1
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5024, i8* %5025, align 1
  %5026 = icmp eq i32 %5006, 0
  %5027 = zext i1 %5026 to i8
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5027, i8* %5028, align 1
  %5029 = lshr i32 %5006, 31
  %5030 = trunc i32 %5029 to i8
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5030, i8* %5031, align 1
  %5032 = lshr i32 %5005, 31
  %5033 = xor i32 %5029, %5032
  %5034 = add i32 %5033, %5029
  %5035 = icmp eq i32 %5034, 2
  %5036 = zext i1 %5035 to i8
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5036, i8* %5037, align 1
  store %struct.Memory* %loadMem_44d542, %struct.Memory** %MEMORY
  %loadMem_44d545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5039 = getelementptr inbounds %struct.GPR, %struct.GPR* %5038, i32 0, i32 33
  %5040 = getelementptr inbounds %struct.Reg, %struct.Reg* %5039, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %5040 to i64*
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5042 = getelementptr inbounds %struct.GPR, %struct.GPR* %5041, i32 0, i32 1
  %5043 = getelementptr inbounds %struct.Reg, %struct.Reg* %5042, i32 0, i32 0
  %EAX.i66 = bitcast %union.anon* %5043 to i32*
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5045 = getelementptr inbounds %struct.GPR, %struct.GPR* %5044, i32 0, i32 15
  %5046 = getelementptr inbounds %struct.Reg, %struct.Reg* %5045, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %5046 to i64*
  %5047 = load i64, i64* %RBP.i67
  %5048 = sub i64 %5047, 24
  %5049 = load i32, i32* %EAX.i66
  %5050 = zext i32 %5049 to i64
  %5051 = load i64, i64* %PC.i65
  %5052 = add i64 %5051, 3
  store i64 %5052, i64* %PC.i65
  %5053 = inttoptr i64 %5048 to i32*
  store i32 %5049, i32* %5053
  store %struct.Memory* %loadMem_44d545, %struct.Memory** %MEMORY
  %loadMem_44d548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5055 = getelementptr inbounds %struct.GPR, %struct.GPR* %5054, i32 0, i32 33
  %5056 = getelementptr inbounds %struct.Reg, %struct.Reg* %5055, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5056 to i64*
  %5057 = load i64, i64* %PC.i64
  %5058 = add i64 %5057, -79
  %5059 = load i64, i64* %PC.i64
  %5060 = add i64 %5059, 5
  store i64 %5060, i64* %PC.i64
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5058, i64* %5061, align 8
  store %struct.Memory* %loadMem_44d548, %struct.Memory** %MEMORY
  br label %block_.L_44d4f9

block_.L_44d54d:                                  ; preds = %block_44d531, %block_.L_44d4f9
  %loadMem_44d54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5063 = getelementptr inbounds %struct.GPR, %struct.GPR* %5062, i32 0, i32 33
  %5064 = getelementptr inbounds %struct.Reg, %struct.Reg* %5063, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5064 to i64*
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5066 = getelementptr inbounds %struct.GPR, %struct.GPR* %5065, i32 0, i32 11
  %5067 = getelementptr inbounds %struct.Reg, %struct.Reg* %5066, i32 0, i32 0
  %RDI.i63 = bitcast %union.anon* %5067 to i64*
  %5068 = load i64, i64* %PC.i62
  %5069 = add i64 %5068, 10
  store i64 %5069, i64* %PC.i62
  store i64 ptrtoint (%G__0x45b227_type* @G__0x45b227 to i64), i64* %RDI.i63, align 8
  store %struct.Memory* %loadMem_44d54d, %struct.Memory** %MEMORY
  %loadMem_44d557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5071 = getelementptr inbounds %struct.GPR, %struct.GPR* %5070, i32 0, i32 33
  %5072 = getelementptr inbounds %struct.Reg, %struct.Reg* %5071, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5072 to i64*
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 1
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %5076 = bitcast %union.anon* %5075 to %struct.anon.2*
  %AL.i61 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5076, i32 0, i32 0
  %5077 = load i64, i64* %PC.i60
  %5078 = add i64 %5077, 2
  store i64 %5078, i64* %PC.i60
  store i8 0, i8* %AL.i61, align 1
  store %struct.Memory* %loadMem_44d557, %struct.Memory** %MEMORY
  %loadMem1_44d559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 33
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %5081 to i64*
  %5082 = load i64, i64* %PC.i59
  %5083 = add i64 %5082, -311497
  %5084 = load i64, i64* %PC.i59
  %5085 = add i64 %5084, 5
  %5086 = load i64, i64* %PC.i59
  %5087 = add i64 %5086, 5
  store i64 %5087, i64* %PC.i59
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5089 = load i64, i64* %5088, align 8
  %5090 = add i64 %5089, -8
  %5091 = inttoptr i64 %5090 to i64*
  store i64 %5085, i64* %5091
  store i64 %5090, i64* %5088, align 8
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5083, i64* %5092, align 8
  store %struct.Memory* %loadMem1_44d559, %struct.Memory** %MEMORY
  %loadMem2_44d559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d559 = load i64, i64* %3
  %5093 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_44d559)
  store %struct.Memory* %5093, %struct.Memory** %MEMORY
  %loadMem_44d55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5095 = getelementptr inbounds %struct.GPR, %struct.GPR* %5094, i32 0, i32 33
  %5096 = getelementptr inbounds %struct.Reg, %struct.Reg* %5095, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %5096 to i64*
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5098 = getelementptr inbounds %struct.GPR, %struct.GPR* %5097, i32 0, i32 11
  %5099 = getelementptr inbounds %struct.Reg, %struct.Reg* %5098, i32 0, i32 0
  %RDI.i55 = bitcast %union.anon* %5099 to i64*
  %5100 = load i64, i64* %PC.i54
  %5101 = add i64 %5100, 10
  store i64 %5101, i64* %PC.i54
  store i64 ptrtoint (%G__0x45b23a_type* @G__0x45b23a to i64), i64* %RDI.i55, align 8
  store %struct.Memory* %loadMem_44d55e, %struct.Memory** %MEMORY
  %loadMem_44d568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 33
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %5104 to i64*
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5106 = getelementptr inbounds %struct.GPR, %struct.GPR* %5105, i32 0, i32 5
  %5107 = getelementptr inbounds %struct.Reg, %struct.Reg* %5106, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %5107 to i64*
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 15
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %5110 to i64*
  %5111 = load i64, i64* %RBP.i53
  %5112 = sub i64 %5111, 8
  %5113 = load i64, i64* %PC.i51
  %5114 = add i64 %5113, 4
  store i64 %5114, i64* %PC.i51
  %5115 = inttoptr i64 %5112 to i64*
  %5116 = load i64, i64* %5115
  store i64 %5116, i64* %RCX.i52, align 8
  store %struct.Memory* %loadMem_44d568, %struct.Memory** %MEMORY
  %loadMem_44d56c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 33
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %5119 to i64*
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5121 = getelementptr inbounds %struct.GPR, %struct.GPR* %5120, i32 0, i32 5
  %5122 = getelementptr inbounds %struct.Reg, %struct.Reg* %5121, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5122 to i64*
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5124 = getelementptr inbounds %struct.GPR, %struct.GPR* %5123, i32 0, i32 9
  %5125 = getelementptr inbounds %struct.Reg, %struct.Reg* %5124, i32 0, i32 0
  %RSI.i50 = bitcast %union.anon* %5125 to i64*
  %5126 = load i64, i64* %RCX.i
  %5127 = add i64 %5126, 20
  %5128 = load i64, i64* %PC.i49
  %5129 = add i64 %5128, 3
  store i64 %5129, i64* %PC.i49
  %5130 = inttoptr i64 %5127 to i32*
  %5131 = load i32, i32* %5130
  %5132 = zext i32 %5131 to i64
  store i64 %5132, i64* %RSI.i50, align 8
  store %struct.Memory* %loadMem_44d56c, %struct.Memory** %MEMORY
  %loadMem_44d56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 33
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %5135 to i64*
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5137 = getelementptr inbounds %struct.GPR, %struct.GPR* %5136, i32 0, i32 1
  %5138 = getelementptr inbounds %struct.Reg, %struct.Reg* %5137, i32 0, i32 0
  %EAX.i47 = bitcast %union.anon* %5138 to i32*
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 15
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %5141 to i64*
  %5142 = load i64, i64* %RBP.i48
  %5143 = sub i64 %5142, 40
  %5144 = load i32, i32* %EAX.i47
  %5145 = zext i32 %5144 to i64
  %5146 = load i64, i64* %PC.i46
  %5147 = add i64 %5146, 3
  store i64 %5147, i64* %PC.i46
  %5148 = inttoptr i64 %5143 to i32*
  store i32 %5144, i32* %5148
  store %struct.Memory* %loadMem_44d56f, %struct.Memory** %MEMORY
  %loadMem_44d572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5150 = getelementptr inbounds %struct.GPR, %struct.GPR* %5149, i32 0, i32 33
  %5151 = getelementptr inbounds %struct.Reg, %struct.Reg* %5150, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %5151 to i64*
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5153 = getelementptr inbounds %struct.GPR, %struct.GPR* %5152, i32 0, i32 1
  %5154 = getelementptr inbounds %struct.Reg, %struct.Reg* %5153, i32 0, i32 0
  %5155 = bitcast %union.anon* %5154 to %struct.anon.2*
  %AL.i45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5155, i32 0, i32 0
  %5156 = load i64, i64* %PC.i44
  %5157 = add i64 %5156, 2
  store i64 %5157, i64* %PC.i44
  store i8 0, i8* %AL.i45, align 1
  store %struct.Memory* %loadMem_44d572, %struct.Memory** %MEMORY
  %loadMem1_44d574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5159 = getelementptr inbounds %struct.GPR, %struct.GPR* %5158, i32 0, i32 33
  %5160 = getelementptr inbounds %struct.Reg, %struct.Reg* %5159, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %5160 to i64*
  %5161 = load i64, i64* %PC.i43
  %5162 = add i64 %5161, -311524
  %5163 = load i64, i64* %PC.i43
  %5164 = add i64 %5163, 5
  %5165 = load i64, i64* %PC.i43
  %5166 = add i64 %5165, 5
  store i64 %5166, i64* %PC.i43
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5168 = load i64, i64* %5167, align 8
  %5169 = add i64 %5168, -8
  %5170 = inttoptr i64 %5169 to i64*
  store i64 %5164, i64* %5170
  store i64 %5169, i64* %5167, align 8
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5162, i64* %5171, align 8
  store %struct.Memory* %loadMem1_44d574, %struct.Memory** %MEMORY
  %loadMem2_44d574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d574 = load i64, i64* %3
  %5172 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_44d574)
  store %struct.Memory* %5172, %struct.Memory** %MEMORY
  %loadMem_44d579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 33
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %5175 to i64*
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 11
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %RDI.i40 = bitcast %union.anon* %5178 to i64*
  %5179 = load i64, i64* %PC.i39
  %5180 = add i64 %5179, 10
  store i64 %5180, i64* %PC.i39
  store i64 ptrtoint (%G__0x45b259_type* @G__0x45b259 to i64), i64* %RDI.i40, align 8
  store %struct.Memory* %loadMem_44d579, %struct.Memory** %MEMORY
  %loadMem_44d583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 33
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5183 to i64*
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5185 = getelementptr inbounds %struct.GPR, %struct.GPR* %5184, i32 0, i32 9
  %5186 = getelementptr inbounds %struct.Reg, %struct.Reg* %5185, i32 0, i32 0
  %RSI.i37 = bitcast %union.anon* %5186 to i64*
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5188 = getelementptr inbounds %struct.GPR, %struct.GPR* %5187, i32 0, i32 15
  %5189 = getelementptr inbounds %struct.Reg, %struct.Reg* %5188, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %5189 to i64*
  %5190 = load i64, i64* %RBP.i38
  %5191 = sub i64 %5190, 36
  %5192 = load i64, i64* %PC.i36
  %5193 = add i64 %5192, 3
  store i64 %5193, i64* %PC.i36
  %5194 = inttoptr i64 %5191 to i32*
  %5195 = load i32, i32* %5194
  %5196 = zext i32 %5195 to i64
  store i64 %5196, i64* %RSI.i37, align 8
  store %struct.Memory* %loadMem_44d583, %struct.Memory** %MEMORY
  %loadMem_44d586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 33
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %5199 to i64*
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5201 = getelementptr inbounds %struct.GPR, %struct.GPR* %5200, i32 0, i32 1
  %5202 = getelementptr inbounds %struct.Reg, %struct.Reg* %5201, i32 0, i32 0
  %EAX.i34 = bitcast %union.anon* %5202 to i32*
  %5203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5204 = getelementptr inbounds %struct.GPR, %struct.GPR* %5203, i32 0, i32 15
  %5205 = getelementptr inbounds %struct.Reg, %struct.Reg* %5204, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %5205 to i64*
  %5206 = load i64, i64* %RBP.i35
  %5207 = sub i64 %5206, 44
  %5208 = load i32, i32* %EAX.i34
  %5209 = zext i32 %5208 to i64
  %5210 = load i64, i64* %PC.i33
  %5211 = add i64 %5210, 3
  store i64 %5211, i64* %PC.i33
  %5212 = inttoptr i64 %5207 to i32*
  store i32 %5208, i32* %5212
  store %struct.Memory* %loadMem_44d586, %struct.Memory** %MEMORY
  %loadMem_44d589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5214 = getelementptr inbounds %struct.GPR, %struct.GPR* %5213, i32 0, i32 33
  %5215 = getelementptr inbounds %struct.Reg, %struct.Reg* %5214, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5215 to i64*
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5217 = getelementptr inbounds %struct.GPR, %struct.GPR* %5216, i32 0, i32 1
  %5218 = getelementptr inbounds %struct.Reg, %struct.Reg* %5217, i32 0, i32 0
  %5219 = bitcast %union.anon* %5218 to %struct.anon.2*
  %AL.i32 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5219, i32 0, i32 0
  %5220 = load i64, i64* %PC.i31
  %5221 = add i64 %5220, 2
  store i64 %5221, i64* %PC.i31
  store i8 0, i8* %AL.i32, align 1
  store %struct.Memory* %loadMem_44d589, %struct.Memory** %MEMORY
  %loadMem1_44d58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 33
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %5224 to i64*
  %5225 = load i64, i64* %PC.i30
  %5226 = add i64 %5225, -311547
  %5227 = load i64, i64* %PC.i30
  %5228 = add i64 %5227, 5
  %5229 = load i64, i64* %PC.i30
  %5230 = add i64 %5229, 5
  store i64 %5230, i64* %PC.i30
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5232 = load i64, i64* %5231, align 8
  %5233 = add i64 %5232, -8
  %5234 = inttoptr i64 %5233 to i64*
  store i64 %5228, i64* %5234
  store i64 %5233, i64* %5231, align 8
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5226, i64* %5235, align 8
  store %struct.Memory* %loadMem1_44d58b, %struct.Memory** %MEMORY
  %loadMem2_44d58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d58b = load i64, i64* %3
  %5236 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_44d58b)
  store %struct.Memory* %5236, %struct.Memory** %MEMORY
  %loadMem_44d590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5238 = getelementptr inbounds %struct.GPR, %struct.GPR* %5237, i32 0, i32 33
  %5239 = getelementptr inbounds %struct.Reg, %struct.Reg* %5238, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5239 to i64*
  %5240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5241 = getelementptr inbounds %struct.GPR, %struct.GPR* %5240, i32 0, i32 11
  %5242 = getelementptr inbounds %struct.Reg, %struct.Reg* %5241, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5242 to i64*
  %5243 = load i64, i64* %PC.i26
  %5244 = add i64 %5243, 10
  store i64 %5244, i64* %PC.i26
  store i64 ptrtoint (%G__0x45b278_type* @G__0x45b278 to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_44d590, %struct.Memory** %MEMORY
  %loadMem_44d59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 33
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %5247 to i64*
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5249 = getelementptr inbounds %struct.GPR, %struct.GPR* %5248, i32 0, i32 9
  %5250 = getelementptr inbounds %struct.Reg, %struct.Reg* %5249, i32 0, i32 0
  %RSI.i25 = bitcast %union.anon* %5250 to i64*
  %5251 = load i64, i64* %PC.i24
  %5252 = add i64 %5251, 5
  store i64 %5252, i64* %PC.i24
  store i64 1000, i64* %RSI.i25, align 8
  store %struct.Memory* %loadMem_44d59a, %struct.Memory** %MEMORY
  %loadMem_44d59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 33
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5255 to i64*
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 7
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5258 to i64*
  %5259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5260 = getelementptr inbounds %struct.GPR, %struct.GPR* %5259, i32 0, i32 15
  %5261 = getelementptr inbounds %struct.Reg, %struct.Reg* %5260, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %5261 to i64*
  %5262 = load i64, i64* %RBP.i23
  %5263 = sub i64 %5262, 28
  %5264 = load i64, i64* %PC.i22
  %5265 = add i64 %5264, 3
  store i64 %5265, i64* %PC.i22
  %5266 = inttoptr i64 %5263 to i32*
  %5267 = load i32, i32* %5266
  %5268 = zext i32 %5267 to i64
  store i64 %5268, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_44d59f, %struct.Memory** %MEMORY
  %loadMem_44d5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5270 = getelementptr inbounds %struct.GPR, %struct.GPR* %5269, i32 0, i32 33
  %5271 = getelementptr inbounds %struct.Reg, %struct.Reg* %5270, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5271 to i64*
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 1
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %EAX.i20 = bitcast %union.anon* %5274 to i32*
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 15
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %5277 to i64*
  %5278 = load i64, i64* %RBP.i21
  %5279 = sub i64 %5278, 48
  %5280 = load i32, i32* %EAX.i20
  %5281 = zext i32 %5280 to i64
  %5282 = load i64, i64* %PC.i19
  %5283 = add i64 %5282, 3
  store i64 %5283, i64* %PC.i19
  %5284 = inttoptr i64 %5279 to i32*
  store i32 %5280, i32* %5284
  store %struct.Memory* %loadMem_44d5a2, %struct.Memory** %MEMORY
  %loadMem_44d5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5286 = getelementptr inbounds %struct.GPR, %struct.GPR* %5285, i32 0, i32 33
  %5287 = getelementptr inbounds %struct.Reg, %struct.Reg* %5286, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5287 to i64*
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 7
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5290 to i32*
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5292 = getelementptr inbounds %struct.GPR, %struct.GPR* %5291, i32 0, i32 1
  %5293 = getelementptr inbounds %struct.Reg, %struct.Reg* %5292, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5293 to i64*
  %5294 = load i32, i32* %EDX.i
  %5295 = zext i32 %5294 to i64
  %5296 = load i64, i64* %PC.i18
  %5297 = add i64 %5296, 2
  store i64 %5297, i64* %PC.i18
  %5298 = and i64 %5295, 4294967295
  store i64 %5298, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_44d5a5, %struct.Memory** %MEMORY
  %loadMem_44d5a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 33
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5301 to i64*
  %5302 = load i64, i64* %PC.i17
  %5303 = add i64 %5302, 1
  store i64 %5303, i64* %PC.i17
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5306 = bitcast %union.anon* %5305 to i32*
  %5307 = load i32, i32* %5306, align 8
  %5308 = sext i32 %5307 to i64
  %5309 = lshr i64 %5308, 32
  store i64 %5309, i64* %5304, align 8
  store %struct.Memory* %loadMem_44d5a7, %struct.Memory** %MEMORY
  %loadMem_44d5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5311 = getelementptr inbounds %struct.GPR, %struct.GPR* %5310, i32 0, i32 33
  %5312 = getelementptr inbounds %struct.Reg, %struct.Reg* %5311, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5312 to i64*
  %5313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5314 = getelementptr inbounds %struct.GPR, %struct.GPR* %5313, i32 0, i32 9
  %5315 = getelementptr inbounds %struct.Reg, %struct.Reg* %5314, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %5315 to i32*
  %5316 = load i32, i32* %ESI.i
  %5317 = zext i32 %5316 to i64
  %5318 = load i64, i64* %PC.i14
  %5319 = add i64 %5318, 2
  store i64 %5319, i64* %PC.i14
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5321 = bitcast %union.anon* %5320 to i32*
  %5322 = load i32, i32* %5321, align 8
  %5323 = zext i32 %5322 to i64
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5325 = bitcast %union.anon* %5324 to i32*
  %5326 = load i32, i32* %5325, align 8
  %5327 = zext i32 %5326 to i64
  %5328 = shl i64 %5317, 32
  %5329 = ashr exact i64 %5328, 32
  %5330 = shl i64 %5327, 32
  %5331 = or i64 %5330, %5323
  %5332 = sdiv i64 %5331, %5329
  %5333 = shl i64 %5332, 32
  %5334 = ashr exact i64 %5333, 32
  %5335 = icmp eq i64 %5332, %5334
  br i1 %5335, label %5340, label %5336

; <label>:5336:                                   ; preds = %block_.L_44d54d
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5338 = load i64, i64* %5337, align 8
  %5339 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5338, %struct.Memory* %loadMem_44d5a8)
  br label %routine_idivl__esi.exit

; <label>:5340:                                   ; preds = %block_.L_44d54d
  %5341 = srem i64 %5331, %5329
  %5342 = getelementptr inbounds %union.anon, %union.anon* %5320, i64 0, i32 0
  %5343 = and i64 %5332, 4294967295
  store i64 %5343, i64* %5342, align 8
  %5344 = getelementptr inbounds %union.anon, %union.anon* %5324, i64 0, i32 0
  %5345 = and i64 %5341, 4294967295
  store i64 %5345, i64* %5344, align 8
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5346, align 1
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5347, align 1
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5348, align 1
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5349, align 1
  %5350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5350, align 1
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5351, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %5336, %5340
  %5352 = phi %struct.Memory* [ %5339, %5336 ], [ %loadMem_44d5a8, %5340 ]
  store %struct.Memory* %5352, %struct.Memory** %MEMORY
  %loadMem_44d5aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5354 = getelementptr inbounds %struct.GPR, %struct.GPR* %5353, i32 0, i32 33
  %5355 = getelementptr inbounds %struct.Reg, %struct.Reg* %5354, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5355 to i64*
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 1
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %EAX.i13 = bitcast %union.anon* %5358 to i32*
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5360 = getelementptr inbounds %struct.GPR, %struct.GPR* %5359, i32 0, i32 9
  %5361 = getelementptr inbounds %struct.Reg, %struct.Reg* %5360, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5361 to i64*
  %5362 = load i32, i32* %EAX.i13
  %5363 = zext i32 %5362 to i64
  %5364 = load i64, i64* %PC.i12
  %5365 = add i64 %5364, 2
  store i64 %5365, i64* %PC.i12
  %5366 = and i64 %5363, 4294967295
  store i64 %5366, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_44d5aa, %struct.Memory** %MEMORY
  %loadMem_44d5ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5368 = getelementptr inbounds %struct.GPR, %struct.GPR* %5367, i32 0, i32 33
  %5369 = getelementptr inbounds %struct.Reg, %struct.Reg* %5368, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %5369 to i64*
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 1
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %5373 = bitcast %union.anon* %5372 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %5373, i32 0, i32 0
  %5374 = load i64, i64* %PC.i11
  %5375 = add i64 %5374, 2
  store i64 %5375, i64* %PC.i11
  store i8 0, i8* %AL.i, align 1
  store %struct.Memory* %loadMem_44d5ac, %struct.Memory** %MEMORY
  %loadMem1_44d5ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5377 = getelementptr inbounds %struct.GPR, %struct.GPR* %5376, i32 0, i32 33
  %5378 = getelementptr inbounds %struct.Reg, %struct.Reg* %5377, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5378 to i64*
  %5379 = load i64, i64* %PC.i10
  %5380 = add i64 %5379, -311582
  %5381 = load i64, i64* %PC.i10
  %5382 = add i64 %5381, 5
  %5383 = load i64, i64* %PC.i10
  %5384 = add i64 %5383, 5
  store i64 %5384, i64* %PC.i10
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5386 = load i64, i64* %5385, align 8
  %5387 = add i64 %5386, -8
  %5388 = inttoptr i64 %5387 to i64*
  store i64 %5382, i64* %5388
  store i64 %5387, i64* %5385, align 8
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5380, i64* %5389, align 8
  store %struct.Memory* %loadMem1_44d5ae, %struct.Memory** %MEMORY
  %loadMem2_44d5ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44d5ae = load i64, i64* %3
  %5390 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %loadMem2_44d5ae)
  store %struct.Memory* %5390, %struct.Memory** %MEMORY
  %loadMem_44d5b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 33
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5393 to i64*
  %5394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5395 = getelementptr inbounds %struct.GPR, %struct.GPR* %5394, i32 0, i32 1
  %5396 = getelementptr inbounds %struct.Reg, %struct.Reg* %5395, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5396 to i32*
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 15
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5399 to i64*
  %5400 = load i64, i64* %RBP.i6
  %5401 = sub i64 %5400, 52
  %5402 = load i32, i32* %EAX.i
  %5403 = zext i32 %5402 to i64
  %5404 = load i64, i64* %PC.i5
  %5405 = add i64 %5404, 3
  store i64 %5405, i64* %PC.i5
  %5406 = inttoptr i64 %5401 to i32*
  store i32 %5402, i32* %5406
  store %struct.Memory* %loadMem_44d5b3, %struct.Memory** %MEMORY
  %loadMem_44d5b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5408 = getelementptr inbounds %struct.GPR, %struct.GPR* %5407, i32 0, i32 33
  %5409 = getelementptr inbounds %struct.Reg, %struct.Reg* %5408, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5409 to i64*
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5411 = getelementptr inbounds %struct.GPR, %struct.GPR* %5410, i32 0, i32 13
  %5412 = getelementptr inbounds %struct.Reg, %struct.Reg* %5411, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5412 to i64*
  %5413 = load i64, i64* %RSP.i
  %5414 = load i64, i64* %PC.i4
  %5415 = add i64 %5414, 4
  store i64 %5415, i64* %PC.i4
  %5416 = add i64 64, %5413
  store i64 %5416, i64* %RSP.i, align 8
  %5417 = icmp ult i64 %5416, %5413
  %5418 = icmp ult i64 %5416, 64
  %5419 = or i1 %5417, %5418
  %5420 = zext i1 %5419 to i8
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5420, i8* %5421, align 1
  %5422 = trunc i64 %5416 to i32
  %5423 = and i32 %5422, 255
  %5424 = call i32 @llvm.ctpop.i32(i32 %5423)
  %5425 = trunc i32 %5424 to i8
  %5426 = and i8 %5425, 1
  %5427 = xor i8 %5426, 1
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5427, i8* %5428, align 1
  %5429 = xor i64 64, %5413
  %5430 = xor i64 %5429, %5416
  %5431 = lshr i64 %5430, 4
  %5432 = trunc i64 %5431 to i8
  %5433 = and i8 %5432, 1
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5433, i8* %5434, align 1
  %5435 = icmp eq i64 %5416, 0
  %5436 = zext i1 %5435 to i8
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5436, i8* %5437, align 1
  %5438 = lshr i64 %5416, 63
  %5439 = trunc i64 %5438 to i8
  %5440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5439, i8* %5440, align 1
  %5441 = lshr i64 %5413, 63
  %5442 = xor i64 %5438, %5441
  %5443 = add i64 %5442, %5438
  %5444 = icmp eq i64 %5443, 2
  %5445 = zext i1 %5444 to i8
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5445, i8* %5446, align 1
  store %struct.Memory* %loadMem_44d5b6, %struct.Memory** %MEMORY
  %loadMem_44d5ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5448 = getelementptr inbounds %struct.GPR, %struct.GPR* %5447, i32 0, i32 33
  %5449 = getelementptr inbounds %struct.Reg, %struct.Reg* %5448, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5449 to i64*
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5451 = getelementptr inbounds %struct.GPR, %struct.GPR* %5450, i32 0, i32 15
  %5452 = getelementptr inbounds %struct.Reg, %struct.Reg* %5451, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5452 to i64*
  %5453 = load i64, i64* %PC.i2
  %5454 = add i64 %5453, 1
  store i64 %5454, i64* %PC.i2
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5456 = load i64, i64* %5455, align 8
  %5457 = add i64 %5456, 8
  %5458 = inttoptr i64 %5456 to i64*
  %5459 = load i64, i64* %5458
  store i64 %5459, i64* %RBP.i3, align 8
  store i64 %5457, i64* %5455, align 8
  store %struct.Memory* %loadMem_44d5ba, %struct.Memory** %MEMORY
  %loadMem_44d5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 33
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5462 to i64*
  %5463 = load i64, i64* %PC.i1
  %5464 = add i64 %5463, 1
  store i64 %5464, i64* %PC.i1
  %5465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5467 = load i64, i64* %5466, align 8
  %5468 = inttoptr i64 %5467 to i64*
  %5469 = load i64, i64* %5468
  store i64 %5469, i64* %5465, align 8
  %5470 = add i64 %5467, 8
  store i64 %5470, i64* %5466, align 8
  store %struct.Memory* %loadMem_44d5bb, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_44d5bb
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 16
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

define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movslq_0x10__rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x68___rdi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 104, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__0x20___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 32, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 32
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
  %25 = xor i64 32, %9
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

define %struct.Memory* @routine_movl__edi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl_0x14__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 20
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

define %struct.Memory* @routine_jge_.L_44d4eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_imulq__0x68___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 104, %15
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

define %struct.Memory* @routine_cmpq__0x0__0x28__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44d26a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x28__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x1___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 1, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1
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
  %25 = xor i64 1, %9
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

define %struct.Memory* @routine_addq__rax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x30__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44d2b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x30__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x38__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44d2fe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x38__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0__0x60__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44d4d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x48___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 72, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 72
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
  %25 = xor i64 72, %9
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

define %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 104, %15
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

define %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpq__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = trunc i64 %13 to i32
  %16 = and i32 %15, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = icmp eq i64 %13, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %13, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %13, 63
  %30 = xor i64 %26, %29
  %31 = add i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44d35a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44d385(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44d3b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44d3db(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__0x20__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44d406(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_0x60__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x28__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_imull__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
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

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 28
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

define %struct.Memory* @routine_cmpq__0x0__0x30__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = icmp eq i64 %14, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %14, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %14, 63
  %31 = xor i64 %27, %30
  %32 = add i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_44d481(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_44d4d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_44d4d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_44d4dd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_44d210(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_44d54d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x10__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x14__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %13 to double*
  %19 = load double, double* %18
  %20 = fcmp uno double %17, %19
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %block_400488
  %22 = fadd double %17, %19
  %23 = bitcast double %22 to i64
  %24 = and i64 %23, 9221120237041090560
  %25 = icmp eq i64 %24, 9218868437227405312
  %26 = and i64 %23, 2251799813685247
  %27 = icmp ne i64 %26, 0
  %28 = and i1 %25, %27
  br i1 %28, label %29, label %39

; <label>:29:                                     ; preds = %21
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:33:                                     ; preds = %block_400488
  %34 = fcmp ogt double %17, %19
  br i1 %34, label %39, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp olt double %17, %19
  br i1 %36, label %39, label %37

; <label>:37:                                     ; preds = %35
  %38 = fcmp oeq double %17, %19
  br i1 %38, label %39, label %46

; <label>:39:                                     ; preds = %37, %35, %33, %21
  %40 = phi i8 [ 0, %33 ], [ 0, %35 ], [ 1, %37 ], [ 1, %21 ]
  %41 = phi i8 [ 0, %33 ], [ 0, %35 ], [ 0, %37 ], [ 1, %21 ]
  %42 = phi i8 [ 0, %33 ], [ 1, %35 ], [ 0, %37 ], [ 1, %21 ]
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %40, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %41, i8* %44, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %42, i8* %45, align 1
  br label %46

; <label>:46:                                     ; preds = %39, %37
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %49, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %29, %46
  %50 = phi %struct.Memory* [ %32, %29 ], [ %2, %46 ]
  ret %struct.Memory* %50
}

define %struct.Memory* @routine_jb_.L_44d536(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_44d54d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_44d4f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x45b227___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45b227_type* @G__0x45b227 to i64), i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__0x45b23a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45b23a_type* @G__0x45b23a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x14__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__0x45b259___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45b259_type* @G__0x45b259 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__0x45b278___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45b278_type* @G__0x45b278 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3e8___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1000, i64* %RSI, align 8
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
