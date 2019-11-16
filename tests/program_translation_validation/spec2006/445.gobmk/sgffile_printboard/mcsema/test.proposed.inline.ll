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
%G__0x58129c_type = type <{ [8 x i8] }>
%G__0x58136d_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G__0x58129c = global %G__0x58129c_type zeroinitializer
@G__0x58136d = global %G__0x58136d_type zeroinitializer

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

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_402530.sgfAddChild(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4022a0.sgfAddStone(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_404990.sgftreeSetLastNode(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @sgffile_printboard(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_472ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_472ae0, %struct.Memory** %MEMORY
  %loadMem_472ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i176 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i176
  %27 = load i64, i64* %PC.i175
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i175
  store i64 %26, i64* %RBP.i177, align 8
  store %struct.Memory* %loadMem_472ae1, %struct.Memory** %MEMORY
  %loadMem_472ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i174 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i174
  %36 = load i64, i64* %PC.i173
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i173
  %38 = sub i64 %35, 48
  store i64 %38, i64* %RSP.i174, align 8
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
  store %struct.Memory* %loadMem_472ae4, %struct.Memory** %MEMORY
  %loadMem_472ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i171 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i172
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i171
  %79 = load i64, i64* %PC.i170
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i170
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_472ae8, %struct.Memory** %MEMORY
  %loadMem_472aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 15
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %87 to i64*
  %88 = load i64, i64* %RBP.i169
  %89 = sub i64 %88, 8
  %90 = load i64, i64* %PC.i168
  %91 = add i64 %90, 5
  store i64 %91, i64* %PC.i168
  %92 = inttoptr i64 %89 to i64*
  %93 = load i64, i64* %92
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %94, align 1
  %95 = trunc i64 %93 to i32
  %96 = and i32 %95, 255
  %97 = call i32 @llvm.ctpop.i32(i32 %96)
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %100, i8* %101, align 1
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %102, align 1
  %103 = icmp eq i64 %93, 0
  %104 = zext i1 %103 to i8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %104, i8* %105, align 1
  %106 = lshr i64 %93, 63
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %107, i8* %108, align 1
  %109 = lshr i64 %93, 63
  %110 = xor i64 %106, %109
  %111 = add i64 %110, %109
  %112 = icmp eq i64 %111, 2
  %113 = zext i1 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %113, i8* %114, align 1
  store %struct.Memory* %loadMem_472aec, %struct.Memory** %MEMORY
  %loadMem_472af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 33
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %117 to i64*
  %118 = load i64, i64* %PC.i167
  %119 = add i64 %118, 11
  %120 = load i64, i64* %PC.i167
  %121 = add i64 %120, 6
  %122 = load i64, i64* %PC.i167
  %123 = add i64 %122, 6
  store i64 %123, i64* %PC.i167
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %125 = load i8, i8* %124, align 1
  store i8 %125, i8* %BRANCH_TAKEN, align 1
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %127 = icmp ne i8 %125, 0
  %128 = select i1 %127, i64 %119, i64 %121
  store i64 %128, i64* %126, align 8
  store %struct.Memory* %loadMem_472af1, %struct.Memory** %MEMORY
  %loadBr_472af1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_472af1 = icmp eq i8 %loadBr_472af1, 1
  br i1 %cmpBr_472af1, label %block_.L_472afc, label %block_472af7

block_472af7:                                     ; preds = %entry
  %loadMem_472af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %PC.i166
  %133 = add i64 %132, 45
  %134 = load i64, i64* %PC.i166
  %135 = add i64 %134, 5
  store i64 %135, i64* %PC.i166
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %133, i64* %136, align 8
  store %struct.Memory* %loadMem_472af7, %struct.Memory** %MEMORY
  br label %block_.L_472b24

block_.L_472afc:                                  ; preds = %entry
  %loadMem_472afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 11
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RDI.i165 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %PC.i164
  %144 = add i64 %143, 10
  store i64 %144, i64* %PC.i164
  store i64 ptrtoint (%G__0x58129c_type* @G__0x58129c to i64), i64* %RDI.i165, align 8
  store %struct.Memory* %loadMem_472afc, %struct.Memory** %MEMORY
  %loadMem_472b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 9
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RSI.i163 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %PC.i162
  %152 = add i64 %151, 5
  store i64 %152, i64* %PC.i162
  store i64 199, i64* %RSI.i163, align 8
  store %struct.Memory* %loadMem_472b06, %struct.Memory** %MEMORY
  %loadMem_472b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 7
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RDX.i161 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %PC.i160
  %160 = add i64 %159, 10
  store i64 %160, i64* %PC.i160
  store i64 ptrtoint (%G__0x58136d_type* @G__0x58136d to i64), i64* %RDX.i161, align 8
  store %struct.Memory* %loadMem_472b0b, %struct.Memory** %MEMORY
  %loadMem_472b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 33
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %163 to i64*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %RAX.i159 = bitcast %union.anon* %166 to i64*
  %167 = load i64, i64* %PC.i158
  %168 = add i64 %167, 5
  store i64 %168, i64* %PC.i158
  store i64 4294967295, i64* %RAX.i159, align 8
  store %struct.Memory* %loadMem_472b15, %struct.Memory** %MEMORY
  %loadMem_472b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %EAX.i156 = bitcast %union.anon* %174 to i32*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %177 to i64*
  %178 = load i32, i32* %EAX.i156
  %179 = zext i32 %178 to i64
  %180 = load i64, i64* %PC.i155
  %181 = add i64 %180, 2
  store i64 %181, i64* %PC.i155
  %182 = and i64 %179, 4294967295
  store i64 %182, i64* %RCX.i157, align 8
  store %struct.Memory* %loadMem_472b1a, %struct.Memory** %MEMORY
  %loadMem_472b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 33
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %EAX.i154 = bitcast %union.anon* %188 to i32*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 17
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %191 to i32*
  %192 = bitcast i32* %R8D.i to i64*
  %193 = load i32, i32* %EAX.i154
  %194 = zext i32 %193 to i64
  %195 = load i64, i64* %PC.i153
  %196 = add i64 %195, 3
  store i64 %196, i64* %PC.i153
  %197 = and i64 %194, 4294967295
  store i64 %197, i64* %192, align 8
  store %struct.Memory* %loadMem_472b1c, %struct.Memory** %MEMORY
  %loadMem1_472b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %200 to i64*
  %201 = load i64, i64* %PC.i152
  %202 = add i64 %201, -133775
  %203 = load i64, i64* %PC.i152
  %204 = add i64 %203, 5
  %205 = load i64, i64* %PC.i152
  %206 = add i64 %205, 5
  store i64 %206, i64* %PC.i152
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %208, -8
  %210 = inttoptr i64 %209 to i64*
  store i64 %204, i64* %210
  store i64 %209, i64* %207, align 8
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %202, i64* %211, align 8
  store %struct.Memory* %loadMem1_472b1f, %struct.Memory** %MEMORY
  %loadMem2_472b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_472b1f = load i64, i64* %3
  %call2_472b1f = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_472b1f, %struct.Memory* %loadMem2_472b1f)
  store %struct.Memory* %call2_472b1f, %struct.Memory** %MEMORY
  br label %block_.L_472b24

block_.L_472b24:                                  ; preds = %block_.L_472afc, %block_472af7
  %loadMem_472b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %213 = getelementptr inbounds %struct.GPR, %struct.GPR* %212, i32 0, i32 33
  %214 = getelementptr inbounds %struct.Reg, %struct.Reg* %213, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %214 to i64*
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 15
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %220 to i64*
  %221 = load i64, i64* %RBP.i151
  %222 = sub i64 %221, 8
  %223 = load i64, i64* %PC.i149
  %224 = add i64 %223, 4
  store i64 %224, i64* %PC.i149
  %225 = inttoptr i64 %222 to i64*
  %226 = load i64, i64* %225
  store i64 %226, i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_472b24, %struct.Memory** %MEMORY
  %loadMem_472b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 11
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RDI.i148 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %RAX.i147
  %237 = add i64 %236, 8
  %238 = load i64, i64* %PC.i146
  %239 = add i64 %238, 4
  store i64 %239, i64* %PC.i146
  %240 = inttoptr i64 %237 to i64*
  %241 = load i64, i64* %240
  store i64 %241, i64* %RDI.i148, align 8
  store %struct.Memory* %loadMem_472b28, %struct.Memory** %MEMORY
  %loadMem1_472b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %244 to i64*
  %245 = load i64, i64* %PC.i145
  %246 = add i64 %245, -460284
  %247 = load i64, i64* %PC.i145
  %248 = add i64 %247, 5
  %249 = load i64, i64* %PC.i145
  %250 = add i64 %249, 5
  store i64 %250, i64* %PC.i145
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = add i64 %252, -8
  %254 = inttoptr i64 %253 to i64*
  store i64 %248, i64* %254
  store i64 %253, i64* %251, align 8
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %246, i64* %255, align 8
  store %struct.Memory* %loadMem1_472b2c, %struct.Memory** %MEMORY
  %loadMem2_472b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_472b2c = load i64, i64* %3
  %call2_472b2c = call %struct.Memory* @sub_402530.sgfAddChild(%struct.State* %0, i64 %loadPC_472b2c, %struct.Memory* %loadMem2_472b2c)
  store %struct.Memory* %call2_472b2c, %struct.Memory** %MEMORY
  %loadMem_472b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %260 = getelementptr inbounds %struct.GPR, %struct.GPR* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.Reg, %struct.Reg* %260, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %261 to i64*
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 15
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %RBP.i144
  %266 = sub i64 %265, 24
  %267 = load i64, i64* %RAX.i143
  %268 = load i64, i64* %PC.i142
  %269 = add i64 %268, 4
  store i64 %269, i64* %PC.i142
  %270 = inttoptr i64 %266 to i64*
  store i64 %267, i64* %270
  store %struct.Memory* %loadMem_472b31, %struct.Memory** %MEMORY
  %loadMem_472b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 33
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 15
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %276 to i64*
  %277 = load i64, i64* %RBP.i141
  %278 = sub i64 %277, 12
  %279 = load i64, i64* %PC.i140
  %280 = add i64 %279, 7
  store i64 %280, i64* %PC.i140
  %281 = inttoptr i64 %278 to i32*
  store i32 0, i32* %281
  store %struct.Memory* %loadMem_472b35, %struct.Memory** %MEMORY
  br label %block_.L_472b3c

block_.L_472b3c:                                  ; preds = %block_.L_472bb1, %block_.L_472b24
  %loadMem_472b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 15
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %290 to i64*
  %291 = load i64, i64* %RBP.i139
  %292 = sub i64 %291, 12
  %293 = load i64, i64* %PC.i137
  %294 = add i64 %293, 3
  store i64 %294, i64* %PC.i137
  %295 = inttoptr i64 %292 to i32*
  %296 = load i32, i32* %295
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RAX.i138, align 8
  store %struct.Memory* %loadMem_472b3c, %struct.Memory** %MEMORY
  %loadMem_472b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %EAX.i136 = bitcast %union.anon* %303 to i32*
  %304 = load i32, i32* %EAX.i136
  %305 = zext i32 %304 to i64
  %306 = load i64, i64* %PC.i135
  %307 = add i64 %306, 7
  store i64 %307, i64* %PC.i135
  %308 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %309 = sub i32 %304, %308
  %310 = icmp ult i32 %304, %308
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %311, i8* %312, align 1
  %313 = and i32 %309, 255
  %314 = call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %317, i8* %318, align 1
  %319 = xor i32 %308, %304
  %320 = xor i32 %319, %309
  %321 = lshr i32 %320, 4
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %323, i8* %324, align 1
  %325 = icmp eq i32 %309, 0
  %326 = zext i1 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %326, i8* %327, align 1
  %328 = lshr i32 %309, 31
  %329 = trunc i32 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %329, i8* %330, align 1
  %331 = lshr i32 %304, 31
  %332 = lshr i32 %308, 31
  %333 = xor i32 %332, %331
  %334 = xor i32 %328, %331
  %335 = add i32 %334, %333
  %336 = icmp eq i32 %335, 2
  %337 = zext i1 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %337, i8* %338, align 1
  store %struct.Memory* %loadMem_472b3f, %struct.Memory** %MEMORY
  %loadMem_472b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 33
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %341 to i64*
  %342 = load i64, i64* %PC.i134
  %343 = add i64 %342, 121
  %344 = load i64, i64* %PC.i134
  %345 = add i64 %344, 6
  %346 = load i64, i64* %PC.i134
  %347 = add i64 %346, 6
  store i64 %347, i64* %PC.i134
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %349 = load i8, i8* %348, align 1
  %350 = icmp ne i8 %349, 0
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %352 = load i8, i8* %351, align 1
  %353 = icmp ne i8 %352, 0
  %354 = xor i1 %350, %353
  %355 = xor i1 %354, true
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %BRANCH_TAKEN, align 1
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %358 = select i1 %354, i64 %345, i64 %343
  store i64 %358, i64* %357, align 8
  store %struct.Memory* %loadMem_472b46, %struct.Memory** %MEMORY
  %loadBr_472b46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_472b46 = icmp eq i8 %loadBr_472b46, 1
  br i1 %cmpBr_472b46, label %block_.L_472bbf, label %block_472b4c

block_472b4c:                                     ; preds = %block_.L_472b3c
  %loadMem_472b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 33
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 15
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %364 to i64*
  %365 = load i64, i64* %RBP.i133
  %366 = sub i64 %365, 16
  %367 = load i64, i64* %PC.i132
  %368 = add i64 %367, 7
  store i64 %368, i64* %PC.i132
  %369 = inttoptr i64 %366 to i32*
  store i32 0, i32* %369
  store %struct.Memory* %loadMem_472b4c, %struct.Memory** %MEMORY
  br label %block_.L_472b53

block_.L_472b53:                                  ; preds = %block_.L_472b9e, %block_472b4c
  %loadMem_472b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 15
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %378 to i64*
  %379 = load i64, i64* %RBP.i131
  %380 = sub i64 %379, 16
  %381 = load i64, i64* %PC.i129
  %382 = add i64 %381, 3
  store i64 %382, i64* %PC.i129
  %383 = inttoptr i64 %380 to i32*
  %384 = load i32, i32* %383
  %385 = zext i32 %384 to i64
  store i64 %385, i64* %RAX.i130, align 8
  store %struct.Memory* %loadMem_472b53, %struct.Memory** %MEMORY
  %loadMem_472b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 33
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %EAX.i128 = bitcast %union.anon* %391 to i32*
  %392 = load i32, i32* %EAX.i128
  %393 = zext i32 %392 to i64
  %394 = load i64, i64* %PC.i127
  %395 = add i64 %394, 7
  store i64 %395, i64* %PC.i127
  %396 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %397 = sub i32 %392, %396
  %398 = icmp ult i32 %392, %396
  %399 = zext i1 %398 to i8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %399, i8* %400, align 1
  %401 = and i32 %397, 255
  %402 = call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %405, i8* %406, align 1
  %407 = xor i32 %396, %392
  %408 = xor i32 %407, %397
  %409 = lshr i32 %408, 4
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %411, i8* %412, align 1
  %413 = icmp eq i32 %397, 0
  %414 = zext i1 %413 to i8
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %414, i8* %415, align 1
  %416 = lshr i32 %397, 31
  %417 = trunc i32 %416 to i8
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %417, i8* %418, align 1
  %419 = lshr i32 %392, 31
  %420 = lshr i32 %396, 31
  %421 = xor i32 %420, %419
  %422 = xor i32 %416, %419
  %423 = add i32 %422, %421
  %424 = icmp eq i32 %423, 2
  %425 = zext i1 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %425, i8* %426, align 1
  store %struct.Memory* %loadMem_472b56, %struct.Memory** %MEMORY
  %loadMem_472b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 33
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %429 to i64*
  %430 = load i64, i64* %PC.i126
  %431 = add i64 %430, 79
  %432 = load i64, i64* %PC.i126
  %433 = add i64 %432, 6
  %434 = load i64, i64* %PC.i126
  %435 = add i64 %434, 6
  store i64 %435, i64* %PC.i126
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %437 = load i8, i8* %436, align 1
  %438 = icmp ne i8 %437, 0
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %440 = load i8, i8* %439, align 1
  %441 = icmp ne i8 %440, 0
  %442 = xor i1 %438, %441
  %443 = xor i1 %442, true
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %BRANCH_TAKEN, align 1
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %446 = select i1 %442, i64 %433, i64 %431
  store i64 %446, i64* %445, align 8
  store %struct.Memory* %loadMem_472b5d, %struct.Memory** %MEMORY
  %loadBr_472b5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_472b5d = icmp eq i8 %loadBr_472b5d, 1
  br i1 %cmpBr_472b5d, label %block_.L_472bac, label %block_472b63

block_472b63:                                     ; preds = %block_.L_472b53
  %loadMem_472b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 33
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %449 to i64*
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 15
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %455 to i64*
  %456 = load i64, i64* %RBP.i125
  %457 = sub i64 %456, 12
  %458 = load i64, i64* %PC.i123
  %459 = add i64 %458, 4
  store i64 %459, i64* %PC.i123
  %460 = inttoptr i64 %457 to i32*
  %461 = load i32, i32* %460
  %462 = sext i32 %461 to i64
  %463 = mul i64 %462, 20
  %464 = trunc i64 %463 to i32
  %465 = and i64 %463, 4294967295
  store i64 %465, i64* %RAX.i124, align 8
  %466 = shl i64 %463, 32
  %467 = ashr exact i64 %466, 32
  %468 = icmp ne i64 %467, %463
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
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %477, align 1
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %478, align 1
  %479 = lshr i32 %464, 31
  %480 = trunc i32 %479 to i8
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %480, i8* %481, align 1
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %469, i8* %482, align 1
  store %struct.Memory* %loadMem_472b63, %struct.Memory** %MEMORY
  %loadMem_472b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 1
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %488 to i64*
  %489 = load i64, i64* %RAX.i122
  %490 = load i64, i64* %PC.i121
  %491 = add i64 %490, 3
  store i64 %491, i64* %PC.i121
  %492 = trunc i64 %489 to i32
  %493 = add i32 21, %492
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RAX.i122, align 8
  %495 = icmp ult i32 %493, %492
  %496 = icmp ult i32 %493, 21
  %497 = or i1 %495, %496
  %498 = zext i1 %497 to i8
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %498, i8* %499, align 1
  %500 = and i32 %493, 255
  %501 = call i32 @llvm.ctpop.i32(i32 %500)
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %504, i8* %505, align 1
  %506 = xor i64 21, %489
  %507 = trunc i64 %506 to i32
  %508 = xor i32 %507, %493
  %509 = lshr i32 %508, 4
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %511, i8* %512, align 1
  %513 = icmp eq i32 %493, 0
  %514 = zext i1 %513 to i8
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %514, i8* %515, align 1
  %516 = lshr i32 %493, 31
  %517 = trunc i32 %516 to i8
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %517, i8* %518, align 1
  %519 = lshr i32 %492, 31
  %520 = xor i32 %516, %519
  %521 = add i32 %520, %516
  %522 = icmp eq i32 %521, 2
  %523 = zext i1 %522 to i8
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %523, i8* %524, align 1
  store %struct.Memory* %loadMem_472b67, %struct.Memory** %MEMORY
  %loadMem_472b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 33
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %527 to i64*
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %529 = getelementptr inbounds %struct.GPR, %struct.GPR* %528, i32 0, i32 1
  %530 = getelementptr inbounds %struct.Reg, %struct.Reg* %529, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %530 to i64*
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 15
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %533 to i64*
  %534 = load i64, i64* %RAX.i119
  %535 = load i64, i64* %RBP.i120
  %536 = sub i64 %535, 16
  %537 = load i64, i64* %PC.i118
  %538 = add i64 %537, 3
  store i64 %538, i64* %PC.i118
  %539 = trunc i64 %534 to i32
  %540 = inttoptr i64 %536 to i32*
  %541 = load i32, i32* %540
  %542 = add i32 %541, %539
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %RAX.i119, align 8
  %544 = icmp ult i32 %542, %539
  %545 = icmp ult i32 %542, %541
  %546 = or i1 %544, %545
  %547 = zext i1 %546 to i8
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %547, i8* %548, align 1
  %549 = and i32 %542, 255
  %550 = call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %553, i8* %554, align 1
  %555 = xor i32 %541, %539
  %556 = xor i32 %555, %542
  %557 = lshr i32 %556, 4
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %559, i8* %560, align 1
  %561 = icmp eq i32 %542, 0
  %562 = zext i1 %561 to i8
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %562, i8* %563, align 1
  %564 = lshr i32 %542, 31
  %565 = trunc i32 %564 to i8
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %565, i8* %566, align 1
  %567 = lshr i32 %539, 31
  %568 = lshr i32 %541, 31
  %569 = xor i32 %564, %567
  %570 = xor i32 %564, %568
  %571 = add i32 %569, %570
  %572 = icmp eq i32 %571, 2
  %573 = zext i1 %572 to i8
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %573, i8* %574, align 1
  store %struct.Memory* %loadMem_472b6a, %struct.Memory** %MEMORY
  %loadMem_472b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 33
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 1
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %EAX.i116 = bitcast %union.anon* %580 to i32*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 5
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %583 to i64*
  %584 = load i32, i32* %EAX.i116
  %585 = zext i32 %584 to i64
  %586 = load i64, i64* %PC.i115
  %587 = add i64 %586, 3
  store i64 %587, i64* %PC.i115
  %588 = shl i64 %585, 32
  %589 = ashr exact i64 %588, 32
  store i64 %589, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_472b6d, %struct.Memory** %MEMORY
  %loadMem_472b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 33
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %592 to i64*
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 5
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %598 to i64*
  %599 = load i64, i64* %RCX.i114
  %600 = add i64 %599, 12099168
  %601 = load i64, i64* %PC.i112
  %602 = add i64 %601, 8
  store i64 %602, i64* %PC.i112
  %603 = inttoptr i64 %600 to i8*
  %604 = load i8, i8* %603
  %605 = zext i8 %604 to i64
  store i64 %605, i64* %RAX.i113, align 8
  store %struct.Memory* %loadMem_472b70, %struct.Memory** %MEMORY
  %loadMem_472b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 33
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %608 to i64*
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 1
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %EAX.i111 = bitcast %union.anon* %611 to i32*
  %612 = load i32, i32* %EAX.i111
  %613 = zext i32 %612 to i64
  %614 = load i64, i64* %PC.i110
  %615 = add i64 %614, 3
  store i64 %615, i64* %PC.i110
  %616 = sub i32 %612, 1
  %617 = icmp ult i32 %612, 1
  %618 = zext i1 %617 to i8
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %618, i8* %619, align 1
  %620 = and i32 %616, 255
  %621 = call i32 @llvm.ctpop.i32(i32 %620)
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %624, i8* %625, align 1
  %626 = xor i64 1, %613
  %627 = trunc i64 %626 to i32
  %628 = xor i32 %627, %616
  %629 = lshr i32 %628, 4
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %631, i8* %632, align 1
  %633 = icmp eq i32 %616, 0
  %634 = zext i1 %633 to i8
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %634, i8* %635, align 1
  %636 = lshr i32 %616, 31
  %637 = trunc i32 %636 to i8
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %637, i8* %638, align 1
  %639 = lshr i32 %612, 31
  %640 = xor i32 %636, %639
  %641 = add i32 %640, %639
  %642 = icmp eq i32 %641, 2
  %643 = zext i1 %642 to i8
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %643, i8* %644, align 1
  store %struct.Memory* %loadMem_472b78, %struct.Memory** %MEMORY
  %loadMem_472b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %647 to i64*
  %648 = load i64, i64* %PC.i109
  %649 = add i64 %648, 30
  %650 = load i64, i64* %PC.i109
  %651 = add i64 %650, 6
  %652 = load i64, i64* %PC.i109
  %653 = add i64 %652, 6
  store i64 %653, i64* %PC.i109
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %655 = load i8, i8* %654, align 1
  %656 = icmp eq i8 %655, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %BRANCH_TAKEN, align 1
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %659 = select i1 %656, i64 %649, i64 %651
  store i64 %659, i64* %658, align 8
  store %struct.Memory* %loadMem_472b7b, %struct.Memory** %MEMORY
  %loadBr_472b7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_472b7b = icmp eq i8 %loadBr_472b7b, 1
  br i1 %cmpBr_472b7b, label %block_.L_472b99, label %block_472b81

block_472b81:                                     ; preds = %block_472b63
  %loadMem_472b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 9
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %RSI.i108 = bitcast %union.anon* %665 to i64*
  %666 = load i64, i64* %PC.i107
  %667 = add i64 %666, 5
  store i64 %667, i64* %PC.i107
  store i64 1, i64* %RSI.i108, align 8
  store %struct.Memory* %loadMem_472b81, %struct.Memory** %MEMORY
  %loadMem_472b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 33
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %670 to i64*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 11
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RDI.i105 = bitcast %union.anon* %673 to i64*
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 15
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %676 to i64*
  %677 = load i64, i64* %RBP.i106
  %678 = sub i64 %677, 24
  %679 = load i64, i64* %PC.i104
  %680 = add i64 %679, 4
  store i64 %680, i64* %PC.i104
  %681 = inttoptr i64 %678 to i64*
  %682 = load i64, i64* %681
  store i64 %682, i64* %RDI.i105, align 8
  store %struct.Memory* %loadMem_472b86, %struct.Memory** %MEMORY
  %loadMem_472b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 33
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 7
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %RDX.i102 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 15
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %691 to i64*
  %692 = load i64, i64* %RBP.i103
  %693 = sub i64 %692, 12
  %694 = load i64, i64* %PC.i101
  %695 = add i64 %694, 3
  store i64 %695, i64* %PC.i101
  %696 = inttoptr i64 %693 to i32*
  %697 = load i32, i32* %696
  %698 = zext i32 %697 to i64
  store i64 %698, i64* %RDX.i102, align 8
  store %struct.Memory* %loadMem_472b8a, %struct.Memory** %MEMORY
  %loadMem_472b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 33
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 5
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %704 to i64*
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 15
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %707 to i64*
  %708 = load i64, i64* %RBP.i100
  %709 = sub i64 %708, 16
  %710 = load i64, i64* %PC.i98
  %711 = add i64 %710, 3
  store i64 %711, i64* %PC.i98
  %712 = inttoptr i64 %709 to i32*
  %713 = load i32, i32* %712
  %714 = zext i32 %713 to i64
  store i64 %714, i64* %RCX.i99, align 8
  store %struct.Memory* %loadMem_472b8d, %struct.Memory** %MEMORY
  %loadMem1_472b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 33
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %717 to i64*
  %718 = load i64, i64* %PC.i97
  %719 = add i64 %718, -461040
  %720 = load i64, i64* %PC.i97
  %721 = add i64 %720, 5
  %722 = load i64, i64* %PC.i97
  %723 = add i64 %722, 5
  store i64 %723, i64* %PC.i97
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %725 = load i64, i64* %724, align 8
  %726 = add i64 %725, -8
  %727 = inttoptr i64 %726 to i64*
  store i64 %721, i64* %727
  store i64 %726, i64* %724, align 8
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %719, i64* %728, align 8
  store %struct.Memory* %loadMem1_472b90, %struct.Memory** %MEMORY
  %loadMem2_472b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_472b90 = load i64, i64* %3
  %call2_472b90 = call %struct.Memory* @sub_4022a0.sgfAddStone(%struct.State* %0, i64 %loadPC_472b90, %struct.Memory* %loadMem2_472b90)
  store %struct.Memory* %call2_472b90, %struct.Memory** %MEMORY
  %loadMem_472b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 1
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %734 to i64*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 15
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %737 to i64*
  %738 = load i64, i64* %RBP.i96
  %739 = sub i64 %738, 32
  %740 = load i64, i64* %RAX.i95
  %741 = load i64, i64* %PC.i94
  %742 = add i64 %741, 4
  store i64 %742, i64* %PC.i94
  %743 = inttoptr i64 %739 to i64*
  store i64 %740, i64* %743
  store %struct.Memory* %loadMem_472b95, %struct.Memory** %MEMORY
  br label %block_.L_472b99

block_.L_472b99:                                  ; preds = %block_472b81, %block_472b63
  %loadMem_472b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 33
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %PC.i93
  %748 = add i64 %747, 5
  %749 = load i64, i64* %PC.i93
  %750 = add i64 %749, 5
  store i64 %750, i64* %PC.i93
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %748, i64* %751, align 8
  store %struct.Memory* %loadMem_472b99, %struct.Memory** %MEMORY
  br label %block_.L_472b9e

block_.L_472b9e:                                  ; preds = %block_.L_472b99
  %loadMem_472b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 1
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %757 to i64*
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 15
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %760 to i64*
  %761 = load i64, i64* %RBP.i92
  %762 = sub i64 %761, 16
  %763 = load i64, i64* %PC.i90
  %764 = add i64 %763, 3
  store i64 %764, i64* %PC.i90
  %765 = inttoptr i64 %762 to i32*
  %766 = load i32, i32* %765
  %767 = zext i32 %766 to i64
  store i64 %767, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_472b9e, %struct.Memory** %MEMORY
  %loadMem_472ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 33
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %770 to i64*
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 1
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %773 to i64*
  %774 = load i64, i64* %RAX.i89
  %775 = load i64, i64* %PC.i88
  %776 = add i64 %775, 3
  store i64 %776, i64* %PC.i88
  %777 = trunc i64 %774 to i32
  %778 = add i32 1, %777
  %779 = zext i32 %778 to i64
  store i64 %779, i64* %RAX.i89, align 8
  %780 = icmp ult i32 %778, %777
  %781 = icmp ult i32 %778, 1
  %782 = or i1 %780, %781
  %783 = zext i1 %782 to i8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %783, i8* %784, align 1
  %785 = and i32 %778, 255
  %786 = call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %789, i8* %790, align 1
  %791 = xor i64 1, %774
  %792 = trunc i64 %791 to i32
  %793 = xor i32 %792, %778
  %794 = lshr i32 %793, 4
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %796, i8* %797, align 1
  %798 = icmp eq i32 %778, 0
  %799 = zext i1 %798 to i8
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %799, i8* %800, align 1
  %801 = lshr i32 %778, 31
  %802 = trunc i32 %801 to i8
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %802, i8* %803, align 1
  %804 = lshr i32 %777, 31
  %805 = xor i32 %801, %804
  %806 = add i32 %805, %801
  %807 = icmp eq i32 %806, 2
  %808 = zext i1 %807 to i8
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %808, i8* %809, align 1
  store %struct.Memory* %loadMem_472ba1, %struct.Memory** %MEMORY
  %loadMem_472ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 33
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %812 to i64*
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 1
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %EAX.i86 = bitcast %union.anon* %815 to i32*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 15
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %818 to i64*
  %819 = load i64, i64* %RBP.i87
  %820 = sub i64 %819, 16
  %821 = load i32, i32* %EAX.i86
  %822 = zext i32 %821 to i64
  %823 = load i64, i64* %PC.i85
  %824 = add i64 %823, 3
  store i64 %824, i64* %PC.i85
  %825 = inttoptr i64 %820 to i32*
  store i32 %821, i32* %825
  store %struct.Memory* %loadMem_472ba4, %struct.Memory** %MEMORY
  %loadMem_472ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %828 to i64*
  %829 = load i64, i64* %PC.i84
  %830 = add i64 %829, -84
  %831 = load i64, i64* %PC.i84
  %832 = add i64 %831, 5
  store i64 %832, i64* %PC.i84
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %830, i64* %833, align 8
  store %struct.Memory* %loadMem_472ba7, %struct.Memory** %MEMORY
  br label %block_.L_472b53

block_.L_472bac:                                  ; preds = %block_.L_472b53
  %loadMem_472bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 33
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %836 to i64*
  %837 = load i64, i64* %PC.i83
  %838 = add i64 %837, 5
  %839 = load i64, i64* %PC.i83
  %840 = add i64 %839, 5
  store i64 %840, i64* %PC.i83
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %838, i64* %841, align 8
  store %struct.Memory* %loadMem_472bac, %struct.Memory** %MEMORY
  br label %block_.L_472bb1

block_.L_472bb1:                                  ; preds = %block_.L_472bac
  %loadMem_472bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 1
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 15
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %850 to i64*
  %851 = load i64, i64* %RBP.i82
  %852 = sub i64 %851, 12
  %853 = load i64, i64* %PC.i80
  %854 = add i64 %853, 3
  store i64 %854, i64* %PC.i80
  %855 = inttoptr i64 %852 to i32*
  %856 = load i32, i32* %855
  %857 = zext i32 %856 to i64
  store i64 %857, i64* %RAX.i81, align 8
  store %struct.Memory* %loadMem_472bb1, %struct.Memory** %MEMORY
  %loadMem_472bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 1
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %863 to i64*
  %864 = load i64, i64* %RAX.i79
  %865 = load i64, i64* %PC.i78
  %866 = add i64 %865, 3
  store i64 %866, i64* %PC.i78
  %867 = trunc i64 %864 to i32
  %868 = add i32 1, %867
  %869 = zext i32 %868 to i64
  store i64 %869, i64* %RAX.i79, align 8
  %870 = icmp ult i32 %868, %867
  %871 = icmp ult i32 %868, 1
  %872 = or i1 %870, %871
  %873 = zext i1 %872 to i8
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %873, i8* %874, align 1
  %875 = and i32 %868, 255
  %876 = call i32 @llvm.ctpop.i32(i32 %875)
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %879, i8* %880, align 1
  %881 = xor i64 1, %864
  %882 = trunc i64 %881 to i32
  %883 = xor i32 %882, %868
  %884 = lshr i32 %883, 4
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %886, i8* %887, align 1
  %888 = icmp eq i32 %868, 0
  %889 = zext i1 %888 to i8
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %889, i8* %890, align 1
  %891 = lshr i32 %868, 31
  %892 = trunc i32 %891 to i8
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %892, i8* %893, align 1
  %894 = lshr i32 %867, 31
  %895 = xor i32 %891, %894
  %896 = add i32 %895, %891
  %897 = icmp eq i32 %896, 2
  %898 = zext i1 %897 to i8
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %898, i8* %899, align 1
  store %struct.Memory* %loadMem_472bb4, %struct.Memory** %MEMORY
  %loadMem_472bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 33
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %902 to i64*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %904 = getelementptr inbounds %struct.GPR, %struct.GPR* %903, i32 0, i32 1
  %905 = getelementptr inbounds %struct.Reg, %struct.Reg* %904, i32 0, i32 0
  %EAX.i76 = bitcast %union.anon* %905 to i32*
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 15
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %908 to i64*
  %909 = load i64, i64* %RBP.i77
  %910 = sub i64 %909, 12
  %911 = load i32, i32* %EAX.i76
  %912 = zext i32 %911 to i64
  %913 = load i64, i64* %PC.i75
  %914 = add i64 %913, 3
  store i64 %914, i64* %PC.i75
  %915 = inttoptr i64 %910 to i32*
  store i32 %911, i32* %915
  store %struct.Memory* %loadMem_472bb7, %struct.Memory** %MEMORY
  %loadMem_472bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %918 to i64*
  %919 = load i64, i64* %PC.i74
  %920 = add i64 %919, -126
  %921 = load i64, i64* %PC.i74
  %922 = add i64 %921, 5
  store i64 %922, i64* %PC.i74
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %920, i64* %923, align 8
  store %struct.Memory* %loadMem_472bba, %struct.Memory** %MEMORY
  br label %block_.L_472b3c

block_.L_472bbf:                                  ; preds = %block_.L_472b3c
  %loadMem_472bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 33
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 15
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %929 to i64*
  %930 = load i64, i64* %RBP.i73
  %931 = sub i64 %930, 12
  %932 = load i64, i64* %PC.i72
  %933 = add i64 %932, 7
  store i64 %933, i64* %PC.i72
  %934 = inttoptr i64 %931 to i32*
  store i32 0, i32* %934
  store %struct.Memory* %loadMem_472bbf, %struct.Memory** %MEMORY
  br label %block_.L_472bc6

block_.L_472bc6:                                  ; preds = %block_.L_472c3b, %block_.L_472bbf
  %loadMem_472bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 1
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %940 to i64*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 15
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %943 to i64*
  %944 = load i64, i64* %RBP.i71
  %945 = sub i64 %944, 12
  %946 = load i64, i64* %PC.i69
  %947 = add i64 %946, 3
  store i64 %947, i64* %PC.i69
  %948 = inttoptr i64 %945 to i32*
  %949 = load i32, i32* %948
  %950 = zext i32 %949 to i64
  store i64 %950, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_472bc6, %struct.Memory** %MEMORY
  %loadMem_472bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 1
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %EAX.i68 = bitcast %union.anon* %956 to i32*
  %957 = load i32, i32* %EAX.i68
  %958 = zext i32 %957 to i64
  %959 = load i64, i64* %PC.i67
  %960 = add i64 %959, 7
  store i64 %960, i64* %PC.i67
  %961 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %962 = sub i32 %957, %961
  %963 = icmp ult i32 %957, %961
  %964 = zext i1 %963 to i8
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %964, i8* %965, align 1
  %966 = and i32 %962, 255
  %967 = call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %970, i8* %971, align 1
  %972 = xor i32 %961, %957
  %973 = xor i32 %972, %962
  %974 = lshr i32 %973, 4
  %975 = trunc i32 %974 to i8
  %976 = and i8 %975, 1
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %976, i8* %977, align 1
  %978 = icmp eq i32 %962, 0
  %979 = zext i1 %978 to i8
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %979, i8* %980, align 1
  %981 = lshr i32 %962, 31
  %982 = trunc i32 %981 to i8
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %982, i8* %983, align 1
  %984 = lshr i32 %957, 31
  %985 = lshr i32 %961, 31
  %986 = xor i32 %985, %984
  %987 = xor i32 %981, %984
  %988 = add i32 %987, %986
  %989 = icmp eq i32 %988, 2
  %990 = zext i1 %989 to i8
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %990, i8* %991, align 1
  store %struct.Memory* %loadMem_472bc9, %struct.Memory** %MEMORY
  %loadMem_472bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %994 to i64*
  %995 = load i64, i64* %PC.i66
  %996 = add i64 %995, 121
  %997 = load i64, i64* %PC.i66
  %998 = add i64 %997, 6
  %999 = load i64, i64* %PC.i66
  %1000 = add i64 %999, 6
  store i64 %1000, i64* %PC.i66
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1002 = load i8, i8* %1001, align 1
  %1003 = icmp ne i8 %1002, 0
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1005 = load i8, i8* %1004, align 1
  %1006 = icmp ne i8 %1005, 0
  %1007 = xor i1 %1003, %1006
  %1008 = xor i1 %1007, true
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %BRANCH_TAKEN, align 1
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1011 = select i1 %1007, i64 %998, i64 %996
  store i64 %1011, i64* %1010, align 8
  store %struct.Memory* %loadMem_472bd0, %struct.Memory** %MEMORY
  %loadBr_472bd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_472bd0 = icmp eq i8 %loadBr_472bd0, 1
  br i1 %cmpBr_472bd0, label %block_.L_472c49, label %block_472bd6

block_472bd6:                                     ; preds = %block_.L_472bc6
  %loadMem_472bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 33
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 15
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %1017 to i64*
  %1018 = load i64, i64* %RBP.i65
  %1019 = sub i64 %1018, 16
  %1020 = load i64, i64* %PC.i64
  %1021 = add i64 %1020, 7
  store i64 %1021, i64* %PC.i64
  %1022 = inttoptr i64 %1019 to i32*
  store i32 0, i32* %1022
  store %struct.Memory* %loadMem_472bd6, %struct.Memory** %MEMORY
  br label %block_.L_472bdd

block_.L_472bdd:                                  ; preds = %block_.L_472c28, %block_472bd6
  %loadMem_472bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 33
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 1
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RAX.i62 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 15
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %1031 to i64*
  %1032 = load i64, i64* %RBP.i63
  %1033 = sub i64 %1032, 16
  %1034 = load i64, i64* %PC.i61
  %1035 = add i64 %1034, 3
  store i64 %1035, i64* %PC.i61
  %1036 = inttoptr i64 %1033 to i32*
  %1037 = load i32, i32* %1036
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RAX.i62, align 8
  store %struct.Memory* %loadMem_472bdd, %struct.Memory** %MEMORY
  %loadMem_472be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 33
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 1
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %EAX.i60 = bitcast %union.anon* %1044 to i32*
  %1045 = load i32, i32* %EAX.i60
  %1046 = zext i32 %1045 to i64
  %1047 = load i64, i64* %PC.i59
  %1048 = add i64 %1047, 7
  store i64 %1048, i64* %PC.i59
  %1049 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  %1050 = sub i32 %1045, %1049
  %1051 = icmp ult i32 %1045, %1049
  %1052 = zext i1 %1051 to i8
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1052, i8* %1053, align 1
  %1054 = and i32 %1050, 255
  %1055 = call i32 @llvm.ctpop.i32(i32 %1054)
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = xor i8 %1057, 1
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1058, i8* %1059, align 1
  %1060 = xor i32 %1049, %1045
  %1061 = xor i32 %1060, %1050
  %1062 = lshr i32 %1061, 4
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1064, i8* %1065, align 1
  %1066 = icmp eq i32 %1050, 0
  %1067 = zext i1 %1066 to i8
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1067, i8* %1068, align 1
  %1069 = lshr i32 %1050, 31
  %1070 = trunc i32 %1069 to i8
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1070, i8* %1071, align 1
  %1072 = lshr i32 %1045, 31
  %1073 = lshr i32 %1049, 31
  %1074 = xor i32 %1073, %1072
  %1075 = xor i32 %1069, %1072
  %1076 = add i32 %1075, %1074
  %1077 = icmp eq i32 %1076, 2
  %1078 = zext i1 %1077 to i8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1078, i8* %1079, align 1
  store %struct.Memory* %loadMem_472be0, %struct.Memory** %MEMORY
  %loadMem_472be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 33
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %1082 to i64*
  %1083 = load i64, i64* %PC.i58
  %1084 = add i64 %1083, 79
  %1085 = load i64, i64* %PC.i58
  %1086 = add i64 %1085, 6
  %1087 = load i64, i64* %PC.i58
  %1088 = add i64 %1087, 6
  store i64 %1088, i64* %PC.i58
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1090 = load i8, i8* %1089, align 1
  %1091 = icmp ne i8 %1090, 0
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1093 = load i8, i8* %1092, align 1
  %1094 = icmp ne i8 %1093, 0
  %1095 = xor i1 %1091, %1094
  %1096 = xor i1 %1095, true
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %BRANCH_TAKEN, align 1
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1099 = select i1 %1095, i64 %1086, i64 %1084
  store i64 %1099, i64* %1098, align 8
  store %struct.Memory* %loadMem_472be7, %struct.Memory** %MEMORY
  %loadBr_472be7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_472be7 = icmp eq i8 %loadBr_472be7, 1
  br i1 %cmpBr_472be7, label %block_.L_472c36, label %block_472bed

block_472bed:                                     ; preds = %block_.L_472bdd
  %loadMem_472bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 33
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %1102 to i64*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 1
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %1105 to i64*
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 15
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %1108 to i64*
  %1109 = load i64, i64* %RBP.i57
  %1110 = sub i64 %1109, 12
  %1111 = load i64, i64* %PC.i55
  %1112 = add i64 %1111, 4
  store i64 %1112, i64* %PC.i55
  %1113 = inttoptr i64 %1110 to i32*
  %1114 = load i32, i32* %1113
  %1115 = sext i32 %1114 to i64
  %1116 = mul i64 %1115, 20
  %1117 = trunc i64 %1116 to i32
  %1118 = and i64 %1116, 4294967295
  store i64 %1118, i64* %RAX.i56, align 8
  %1119 = shl i64 %1116, 32
  %1120 = ashr exact i64 %1119, 32
  %1121 = icmp ne i64 %1120, %1116
  %1122 = zext i1 %1121 to i8
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1122, i8* %1123, align 1
  %1124 = and i32 %1117, 255
  %1125 = call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1128, i8* %1129, align 1
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1130, align 1
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1131, align 1
  %1132 = lshr i32 %1117, 31
  %1133 = trunc i32 %1132 to i8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1133, i8* %1134, align 1
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1122, i8* %1135, align 1
  store %struct.Memory* %loadMem_472bed, %struct.Memory** %MEMORY
  %loadMem_472bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 33
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 1
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %1141 to i64*
  %1142 = load i64, i64* %RAX.i54
  %1143 = load i64, i64* %PC.i53
  %1144 = add i64 %1143, 3
  store i64 %1144, i64* %PC.i53
  %1145 = trunc i64 %1142 to i32
  %1146 = add i32 21, %1145
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RAX.i54, align 8
  %1148 = icmp ult i32 %1146, %1145
  %1149 = icmp ult i32 %1146, 21
  %1150 = or i1 %1148, %1149
  %1151 = zext i1 %1150 to i8
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1151, i8* %1152, align 1
  %1153 = and i32 %1146, 255
  %1154 = call i32 @llvm.ctpop.i32(i32 %1153)
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  %1157 = xor i8 %1156, 1
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1157, i8* %1158, align 1
  %1159 = xor i64 21, %1142
  %1160 = trunc i64 %1159 to i32
  %1161 = xor i32 %1160, %1146
  %1162 = lshr i32 %1161, 4
  %1163 = trunc i32 %1162 to i8
  %1164 = and i8 %1163, 1
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1164, i8* %1165, align 1
  %1166 = icmp eq i32 %1146, 0
  %1167 = zext i1 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1167, i8* %1168, align 1
  %1169 = lshr i32 %1146, 31
  %1170 = trunc i32 %1169 to i8
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1170, i8* %1171, align 1
  %1172 = lshr i32 %1145, 31
  %1173 = xor i32 %1169, %1172
  %1174 = add i32 %1173, %1169
  %1175 = icmp eq i32 %1174, 2
  %1176 = zext i1 %1175 to i8
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1176, i8* %1177, align 1
  store %struct.Memory* %loadMem_472bf1, %struct.Memory** %MEMORY
  %loadMem_472bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 33
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 1
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %1183 to i64*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 15
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %1186 to i64*
  %1187 = load i64, i64* %RAX.i51
  %1188 = load i64, i64* %RBP.i52
  %1189 = sub i64 %1188, 16
  %1190 = load i64, i64* %PC.i50
  %1191 = add i64 %1190, 3
  store i64 %1191, i64* %PC.i50
  %1192 = trunc i64 %1187 to i32
  %1193 = inttoptr i64 %1189 to i32*
  %1194 = load i32, i32* %1193
  %1195 = add i32 %1194, %1192
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %RAX.i51, align 8
  %1197 = icmp ult i32 %1195, %1192
  %1198 = icmp ult i32 %1195, %1194
  %1199 = or i1 %1197, %1198
  %1200 = zext i1 %1199 to i8
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1200, i8* %1201, align 1
  %1202 = and i32 %1195, 255
  %1203 = call i32 @llvm.ctpop.i32(i32 %1202)
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  %1206 = xor i8 %1205, 1
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1206, i8* %1207, align 1
  %1208 = xor i32 %1194, %1192
  %1209 = xor i32 %1208, %1195
  %1210 = lshr i32 %1209, 4
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1212, i8* %1213, align 1
  %1214 = icmp eq i32 %1195, 0
  %1215 = zext i1 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1215, i8* %1216, align 1
  %1217 = lshr i32 %1195, 31
  %1218 = trunc i32 %1217 to i8
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1218, i8* %1219, align 1
  %1220 = lshr i32 %1192, 31
  %1221 = lshr i32 %1194, 31
  %1222 = xor i32 %1217, %1220
  %1223 = xor i32 %1217, %1221
  %1224 = add i32 %1222, %1223
  %1225 = icmp eq i32 %1224, 2
  %1226 = zext i1 %1225 to i8
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1226, i8* %1227, align 1
  store %struct.Memory* %loadMem_472bf4, %struct.Memory** %MEMORY
  %loadMem_472bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 33
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %1230 to i64*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 1
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %EAX.i48 = bitcast %union.anon* %1233 to i32*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 5
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %1236 to i64*
  %1237 = load i32, i32* %EAX.i48
  %1238 = zext i32 %1237 to i64
  %1239 = load i64, i64* %PC.i47
  %1240 = add i64 %1239, 3
  store i64 %1240, i64* %PC.i47
  %1241 = shl i64 %1238, 32
  %1242 = ashr exact i64 %1241, 32
  store i64 %1242, i64* %RCX.i49, align 8
  store %struct.Memory* %loadMem_472bf7, %struct.Memory** %MEMORY
  %loadMem_472bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 33
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %1245 to i64*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 1
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 5
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RCX.i46 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %RCX.i46
  %1253 = add i64 %1252, 12099168
  %1254 = load i64, i64* %PC.i44
  %1255 = add i64 %1254, 8
  store i64 %1255, i64* %PC.i44
  %1256 = inttoptr i64 %1253 to i8*
  %1257 = load i8, i8* %1256
  %1258 = zext i8 %1257 to i64
  store i64 %1258, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_472bfa, %struct.Memory** %MEMORY
  %loadMem_472c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1260 = getelementptr inbounds %struct.GPR, %struct.GPR* %1259, i32 0, i32 33
  %1261 = getelementptr inbounds %struct.Reg, %struct.Reg* %1260, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %1261 to i64*
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.GPR, %struct.GPR* %1262, i32 0, i32 1
  %1264 = getelementptr inbounds %struct.Reg, %struct.Reg* %1263, i32 0, i32 0
  %EAX.i43 = bitcast %union.anon* %1264 to i32*
  %1265 = load i32, i32* %EAX.i43
  %1266 = zext i32 %1265 to i64
  %1267 = load i64, i64* %PC.i42
  %1268 = add i64 %1267, 3
  store i64 %1268, i64* %PC.i42
  %1269 = sub i32 %1265, 2
  %1270 = icmp ult i32 %1265, 2
  %1271 = zext i1 %1270 to i8
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1271, i8* %1272, align 1
  %1273 = and i32 %1269, 255
  %1274 = call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1277, i8* %1278, align 1
  %1279 = xor i64 2, %1266
  %1280 = trunc i64 %1279 to i32
  %1281 = xor i32 %1280, %1269
  %1282 = lshr i32 %1281, 4
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1284, i8* %1285, align 1
  %1286 = icmp eq i32 %1269, 0
  %1287 = zext i1 %1286 to i8
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1287, i8* %1288, align 1
  %1289 = lshr i32 %1269, 31
  %1290 = trunc i32 %1289 to i8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1290, i8* %1291, align 1
  %1292 = lshr i32 %1265, 31
  %1293 = xor i32 %1289, %1292
  %1294 = add i32 %1293, %1292
  %1295 = icmp eq i32 %1294, 2
  %1296 = zext i1 %1295 to i8
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1296, i8* %1297, align 1
  store %struct.Memory* %loadMem_472c02, %struct.Memory** %MEMORY
  %loadMem_472c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 33
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %1300 to i64*
  %1301 = load i64, i64* %PC.i41
  %1302 = add i64 %1301, 30
  %1303 = load i64, i64* %PC.i41
  %1304 = add i64 %1303, 6
  %1305 = load i64, i64* %PC.i41
  %1306 = add i64 %1305, 6
  store i64 %1306, i64* %PC.i41
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1308 = load i8, i8* %1307, align 1
  %1309 = icmp eq i8 %1308, 0
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %BRANCH_TAKEN, align 1
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1312 = select i1 %1309, i64 %1302, i64 %1304
  store i64 %1312, i64* %1311, align 8
  store %struct.Memory* %loadMem_472c05, %struct.Memory** %MEMORY
  %loadBr_472c05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_472c05 = icmp eq i8 %loadBr_472c05, 1
  br i1 %cmpBr_472c05, label %block_.L_472c23, label %block_472c0b

block_472c0b:                                     ; preds = %block_472bed
  %loadMem_472c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 33
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %1315 to i64*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 9
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %RSI.i40 = bitcast %union.anon* %1318 to i64*
  %1319 = load i64, i64* %PC.i39
  %1320 = add i64 %1319, 5
  store i64 %1320, i64* %PC.i39
  store i64 2, i64* %RSI.i40, align 8
  store %struct.Memory* %loadMem_472c0b, %struct.Memory** %MEMORY
  %loadMem_472c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 33
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %1323 to i64*
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 11
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %RDI.i37 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 15
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %1329 to i64*
  %1330 = load i64, i64* %RBP.i38
  %1331 = sub i64 %1330, 24
  %1332 = load i64, i64* %PC.i36
  %1333 = add i64 %1332, 4
  store i64 %1333, i64* %PC.i36
  %1334 = inttoptr i64 %1331 to i64*
  %1335 = load i64, i64* %1334
  store i64 %1335, i64* %RDI.i37, align 8
  store %struct.Memory* %loadMem_472c10, %struct.Memory** %MEMORY
  %loadMem_472c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 33
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %1338 to i64*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 7
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 15
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %1344 to i64*
  %1345 = load i64, i64* %RBP.i35
  %1346 = sub i64 %1345, 12
  %1347 = load i64, i64* %PC.i34
  %1348 = add i64 %1347, 3
  store i64 %1348, i64* %PC.i34
  %1349 = inttoptr i64 %1346 to i32*
  %1350 = load i32, i32* %1349
  %1351 = zext i32 %1350 to i64
  store i64 %1351, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_472c14, %struct.Memory** %MEMORY
  %loadMem_472c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 5
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 15
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RBP.i33
  %1362 = sub i64 %1361, 16
  %1363 = load i64, i64* %PC.i32
  %1364 = add i64 %1363, 3
  store i64 %1364, i64* %PC.i32
  %1365 = inttoptr i64 %1362 to i32*
  %1366 = load i32, i32* %1365
  %1367 = zext i32 %1366 to i64
  store i64 %1367, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_472c17, %struct.Memory** %MEMORY
  %loadMem1_472c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 33
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %1370 to i64*
  %1371 = load i64, i64* %PC.i31
  %1372 = add i64 %1371, -461178
  %1373 = load i64, i64* %PC.i31
  %1374 = add i64 %1373, 5
  %1375 = load i64, i64* %PC.i31
  %1376 = add i64 %1375, 5
  store i64 %1376, i64* %PC.i31
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1378 = load i64, i64* %1377, align 8
  %1379 = add i64 %1378, -8
  %1380 = inttoptr i64 %1379 to i64*
  store i64 %1374, i64* %1380
  store i64 %1379, i64* %1377, align 8
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1372, i64* %1381, align 8
  store %struct.Memory* %loadMem1_472c1a, %struct.Memory** %MEMORY
  %loadMem2_472c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_472c1a = load i64, i64* %3
  %call2_472c1a = call %struct.Memory* @sub_4022a0.sgfAddStone(%struct.State* %0, i64 %loadPC_472c1a, %struct.Memory* %loadMem2_472c1a)
  store %struct.Memory* %call2_472c1a, %struct.Memory** %MEMORY
  %loadMem_472c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1383 = getelementptr inbounds %struct.GPR, %struct.GPR* %1382, i32 0, i32 33
  %1384 = getelementptr inbounds %struct.Reg, %struct.Reg* %1383, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %1384 to i64*
  %1385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1386 = getelementptr inbounds %struct.GPR, %struct.GPR* %1385, i32 0, i32 1
  %1387 = getelementptr inbounds %struct.Reg, %struct.Reg* %1386, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %1387 to i64*
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 15
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %1390 to i64*
  %1391 = load i64, i64* %RBP.i30
  %1392 = sub i64 %1391, 40
  %1393 = load i64, i64* %RAX.i29
  %1394 = load i64, i64* %PC.i28
  %1395 = add i64 %1394, 4
  store i64 %1395, i64* %PC.i28
  %1396 = inttoptr i64 %1392 to i64*
  store i64 %1393, i64* %1396
  store %struct.Memory* %loadMem_472c1f, %struct.Memory** %MEMORY
  br label %block_.L_472c23

block_.L_472c23:                                  ; preds = %block_472c0b, %block_472bed
  %loadMem_472c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 33
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %1399 to i64*
  %1400 = load i64, i64* %PC.i27
  %1401 = add i64 %1400, 5
  %1402 = load i64, i64* %PC.i27
  %1403 = add i64 %1402, 5
  store i64 %1403, i64* %PC.i27
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1401, i64* %1404, align 8
  store %struct.Memory* %loadMem_472c23, %struct.Memory** %MEMORY
  br label %block_.L_472c28

block_.L_472c28:                                  ; preds = %block_.L_472c23
  %loadMem_472c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 33
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %1407 to i64*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 1
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 15
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %1413 to i64*
  %1414 = load i64, i64* %RBP.i26
  %1415 = sub i64 %1414, 16
  %1416 = load i64, i64* %PC.i24
  %1417 = add i64 %1416, 3
  store i64 %1417, i64* %PC.i24
  %1418 = inttoptr i64 %1415 to i32*
  %1419 = load i32, i32* %1418
  %1420 = zext i32 %1419 to i64
  store i64 %1420, i64* %RAX.i25, align 8
  store %struct.Memory* %loadMem_472c28, %struct.Memory** %MEMORY
  %loadMem_472c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 33
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 1
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %1426 to i64*
  %1427 = load i64, i64* %RAX.i23
  %1428 = load i64, i64* %PC.i22
  %1429 = add i64 %1428, 3
  store i64 %1429, i64* %PC.i22
  %1430 = trunc i64 %1427 to i32
  %1431 = add i32 1, %1430
  %1432 = zext i32 %1431 to i64
  store i64 %1432, i64* %RAX.i23, align 8
  %1433 = icmp ult i32 %1431, %1430
  %1434 = icmp ult i32 %1431, 1
  %1435 = or i1 %1433, %1434
  %1436 = zext i1 %1435 to i8
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1436, i8* %1437, align 1
  %1438 = and i32 %1431, 255
  %1439 = call i32 @llvm.ctpop.i32(i32 %1438)
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  %1442 = xor i8 %1441, 1
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1442, i8* %1443, align 1
  %1444 = xor i64 1, %1427
  %1445 = trunc i64 %1444 to i32
  %1446 = xor i32 %1445, %1431
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1449, i8* %1450, align 1
  %1451 = icmp eq i32 %1431, 0
  %1452 = zext i1 %1451 to i8
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1452, i8* %1453, align 1
  %1454 = lshr i32 %1431, 31
  %1455 = trunc i32 %1454 to i8
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1455, i8* %1456, align 1
  %1457 = lshr i32 %1430, 31
  %1458 = xor i32 %1454, %1457
  %1459 = add i32 %1458, %1454
  %1460 = icmp eq i32 %1459, 2
  %1461 = zext i1 %1460 to i8
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1461, i8* %1462, align 1
  store %struct.Memory* %loadMem_472c2b, %struct.Memory** %MEMORY
  %loadMem_472c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 33
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %1465 to i64*
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 1
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %EAX.i20 = bitcast %union.anon* %1468 to i32*
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1470 = getelementptr inbounds %struct.GPR, %struct.GPR* %1469, i32 0, i32 15
  %1471 = getelementptr inbounds %struct.Reg, %struct.Reg* %1470, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %1471 to i64*
  %1472 = load i64, i64* %RBP.i21
  %1473 = sub i64 %1472, 16
  %1474 = load i32, i32* %EAX.i20
  %1475 = zext i32 %1474 to i64
  %1476 = load i64, i64* %PC.i19
  %1477 = add i64 %1476, 3
  store i64 %1477, i64* %PC.i19
  %1478 = inttoptr i64 %1473 to i32*
  store i32 %1474, i32* %1478
  store %struct.Memory* %loadMem_472c2e, %struct.Memory** %MEMORY
  %loadMem_472c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 33
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %1481 to i64*
  %1482 = load i64, i64* %PC.i18
  %1483 = add i64 %1482, -84
  %1484 = load i64, i64* %PC.i18
  %1485 = add i64 %1484, 5
  store i64 %1485, i64* %PC.i18
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1483, i64* %1486, align 8
  store %struct.Memory* %loadMem_472c31, %struct.Memory** %MEMORY
  br label %block_.L_472bdd

block_.L_472c36:                                  ; preds = %block_.L_472bdd
  %loadMem_472c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1488 = getelementptr inbounds %struct.GPR, %struct.GPR* %1487, i32 0, i32 33
  %1489 = getelementptr inbounds %struct.Reg, %struct.Reg* %1488, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %1489 to i64*
  %1490 = load i64, i64* %PC.i17
  %1491 = add i64 %1490, 5
  %1492 = load i64, i64* %PC.i17
  %1493 = add i64 %1492, 5
  store i64 %1493, i64* %PC.i17
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1491, i64* %1494, align 8
  store %struct.Memory* %loadMem_472c36, %struct.Memory** %MEMORY
  br label %block_.L_472c3b

block_.L_472c3b:                                  ; preds = %block_.L_472c36
  %loadMem_472c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 33
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 1
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 15
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %1503 to i64*
  %1504 = load i64, i64* %RBP.i16
  %1505 = sub i64 %1504, 12
  %1506 = load i64, i64* %PC.i14
  %1507 = add i64 %1506, 3
  store i64 %1507, i64* %PC.i14
  %1508 = inttoptr i64 %1505 to i32*
  %1509 = load i32, i32* %1508
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_472c3b, %struct.Memory** %MEMORY
  %loadMem_472c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 1
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1516 to i64*
  %1517 = load i64, i64* %RAX.i
  %1518 = load i64, i64* %PC.i13
  %1519 = add i64 %1518, 3
  store i64 %1519, i64* %PC.i13
  %1520 = trunc i64 %1517 to i32
  %1521 = add i32 1, %1520
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RAX.i, align 8
  %1523 = icmp ult i32 %1521, %1520
  %1524 = icmp ult i32 %1521, 1
  %1525 = or i1 %1523, %1524
  %1526 = zext i1 %1525 to i8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1526, i8* %1527, align 1
  %1528 = and i32 %1521, 255
  %1529 = call i32 @llvm.ctpop.i32(i32 %1528)
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  %1532 = xor i8 %1531, 1
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1532, i8* %1533, align 1
  %1534 = xor i64 1, %1517
  %1535 = trunc i64 %1534 to i32
  %1536 = xor i32 %1535, %1521
  %1537 = lshr i32 %1536, 4
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1539, i8* %1540, align 1
  %1541 = icmp eq i32 %1521, 0
  %1542 = zext i1 %1541 to i8
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1542, i8* %1543, align 1
  %1544 = lshr i32 %1521, 31
  %1545 = trunc i32 %1544 to i8
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1545, i8* %1546, align 1
  %1547 = lshr i32 %1520, 31
  %1548 = xor i32 %1544, %1547
  %1549 = add i32 %1548, %1544
  %1550 = icmp eq i32 %1549, 2
  %1551 = zext i1 %1550 to i8
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1551, i8* %1552, align 1
  store %struct.Memory* %loadMem_472c3e, %struct.Memory** %MEMORY
  %loadMem_472c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 33
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %1555 to i64*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 1
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1558 to i32*
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 15
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %1561 to i64*
  %1562 = load i64, i64* %RBP.i12
  %1563 = sub i64 %1562, 12
  %1564 = load i32, i32* %EAX.i
  %1565 = zext i32 %1564 to i64
  %1566 = load i64, i64* %PC.i11
  %1567 = add i64 %1566, 3
  store i64 %1567, i64* %PC.i11
  %1568 = inttoptr i64 %1563 to i32*
  store i32 %1564, i32* %1568
  store %struct.Memory* %loadMem_472c41, %struct.Memory** %MEMORY
  %loadMem_472c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 33
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %1571 to i64*
  %1572 = load i64, i64* %PC.i10
  %1573 = add i64 %1572, -126
  %1574 = load i64, i64* %PC.i10
  %1575 = add i64 %1574, 5
  store i64 %1575, i64* %PC.i10
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1573, i64* %1576, align 8
  store %struct.Memory* %loadMem_472c44, %struct.Memory** %MEMORY
  br label %block_.L_472bc6

block_.L_472c49:                                  ; preds = %block_.L_472bc6
  %loadMem_472c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 33
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %1579 to i64*
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 11
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %1582 to i64*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 15
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %1585 to i64*
  %1586 = load i64, i64* %RBP.i9
  %1587 = sub i64 %1586, 8
  %1588 = load i64, i64* %PC.i8
  %1589 = add i64 %1588, 4
  store i64 %1589, i64* %PC.i8
  %1590 = inttoptr i64 %1587 to i64*
  %1591 = load i64, i64* %1590
  store i64 %1591, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_472c49, %struct.Memory** %MEMORY
  %loadMem_472c4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %1594 to i64*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 9
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 15
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %1600 to i64*
  %1601 = load i64, i64* %RBP.i7
  %1602 = sub i64 %1601, 24
  %1603 = load i64, i64* %PC.i6
  %1604 = add i64 %1603, 4
  store i64 %1604, i64* %PC.i6
  %1605 = inttoptr i64 %1602 to i64*
  %1606 = load i64, i64* %1605
  store i64 %1606, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_472c4d, %struct.Memory** %MEMORY
  %loadMem1_472c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 33
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1609 to i64*
  %1610 = load i64, i64* %PC.i5
  %1611 = add i64 %1610, -451265
  %1612 = load i64, i64* %PC.i5
  %1613 = add i64 %1612, 5
  %1614 = load i64, i64* %PC.i5
  %1615 = add i64 %1614, 5
  store i64 %1615, i64* %PC.i5
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1617 = load i64, i64* %1616, align 8
  %1618 = add i64 %1617, -8
  %1619 = inttoptr i64 %1618 to i64*
  store i64 %1613, i64* %1619
  store i64 %1618, i64* %1616, align 8
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1611, i64* %1620, align 8
  store %struct.Memory* %loadMem1_472c51, %struct.Memory** %MEMORY
  %loadMem2_472c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_472c51 = load i64, i64* %3
  %call2_472c51 = call %struct.Memory* @sub_404990.sgftreeSetLastNode(%struct.State* %0, i64 %loadPC_472c51, %struct.Memory* %loadMem2_472c51)
  store %struct.Memory* %call2_472c51, %struct.Memory** %MEMORY
  %loadMem_472c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 33
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1623 to i64*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 13
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %1626 to i64*
  %1627 = load i64, i64* %RSP.i
  %1628 = load i64, i64* %PC.i4
  %1629 = add i64 %1628, 4
  store i64 %1629, i64* %PC.i4
  %1630 = add i64 48, %1627
  store i64 %1630, i64* %RSP.i, align 8
  %1631 = icmp ult i64 %1630, %1627
  %1632 = icmp ult i64 %1630, 48
  %1633 = or i1 %1631, %1632
  %1634 = zext i1 %1633 to i8
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1634, i8* %1635, align 1
  %1636 = trunc i64 %1630 to i32
  %1637 = and i32 %1636, 255
  %1638 = call i32 @llvm.ctpop.i32(i32 %1637)
  %1639 = trunc i32 %1638 to i8
  %1640 = and i8 %1639, 1
  %1641 = xor i8 %1640, 1
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1641, i8* %1642, align 1
  %1643 = xor i64 48, %1627
  %1644 = xor i64 %1643, %1630
  %1645 = lshr i64 %1644, 4
  %1646 = trunc i64 %1645 to i8
  %1647 = and i8 %1646, 1
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1647, i8* %1648, align 1
  %1649 = icmp eq i64 %1630, 0
  %1650 = zext i1 %1649 to i8
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1650, i8* %1651, align 1
  %1652 = lshr i64 %1630, 63
  %1653 = trunc i64 %1652 to i8
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1653, i8* %1654, align 1
  %1655 = lshr i64 %1627, 63
  %1656 = xor i64 %1652, %1655
  %1657 = add i64 %1656, %1652
  %1658 = icmp eq i64 %1657, 2
  %1659 = zext i1 %1658 to i8
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1659, i8* %1660, align 1
  store %struct.Memory* %loadMem_472c56, %struct.Memory** %MEMORY
  %loadMem_472c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1662 = getelementptr inbounds %struct.GPR, %struct.GPR* %1661, i32 0, i32 33
  %1663 = getelementptr inbounds %struct.Reg, %struct.Reg* %1662, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1663 to i64*
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 15
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1666 to i64*
  %1667 = load i64, i64* %PC.i2
  %1668 = add i64 %1667, 1
  store i64 %1668, i64* %PC.i2
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1670 = load i64, i64* %1669, align 8
  %1671 = add i64 %1670, 8
  %1672 = inttoptr i64 %1670 to i64*
  %1673 = load i64, i64* %1672
  store i64 %1673, i64* %RBP.i3, align 8
  store i64 %1671, i64* %1669, align 8
  store %struct.Memory* %loadMem_472c5a, %struct.Memory** %MEMORY
  %loadMem_472c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 33
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1676 to i64*
  %1677 = load i64, i64* %PC.i1
  %1678 = add i64 %1677, 1
  store i64 %1678, i64* %PC.i1
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1681 = load i64, i64* %1680, align 8
  %1682 = inttoptr i64 %1681 to i64*
  %1683 = load i64, i64* %1682
  store i64 %1683, i64* %1679, align 8
  %1684 = add i64 %1681, 8
  store i64 %1684, i64* %1680, align 8
  store %struct.Memory* %loadMem_472c5b, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_472c5b
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_472afc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_472b24(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x58129c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58129c_type* @G__0x58129c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc7___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 199, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x58136d___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x58136d_type* @G__0x58136d to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967295, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.abortgo(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x8__rax____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sgfAddChild(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_jge_.L_472bbf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_472bac(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 1
  %14 = icmp ult i32 %9, 1
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
  %23 = xor i64 1, %10
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

define %struct.Memory* @routine_jne_.L_472b99(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.sgfAddStone(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_472b9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_472b53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_472bb1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_472b3c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_472c49(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_472c36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_472c23(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_472c28(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_472bdd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_472c3b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_472bc6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sgftreeSetLastNode(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
